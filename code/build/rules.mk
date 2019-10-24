VERB := @

%.c :
	@echo Preprocessing $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_PP) $(SDCC_PP_FLGS) -o $@ $<

%.s :
	@echo Compiling $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_CC) $(SDCC_CC_FLGS) -o $@ $<

%.rel :
	@echo Assembling $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_ASM) $(SDCC_ASM_FLGS) $@ $<

%.lib :
	@echo Generating $@...
	$(VERB)$(SDCC_LIB) $(SDCC_LIB_FLGS) $@ $^
	
%.h :
	@echo Copying Header File $^... 
	$(VERB)cp -f $^ $@

%.ihx :
	@echo Linking $@...
	@mkdir -p $(dir $@)
	$(SDCC_LNK) $(SDCC_LNK_FLGS) -i $@ $^

%.bin :
	@echo Converting $@...
	@mkdir -p $(dir $@)
	$(SDCC_BIN) $(SDCC_BIN_FLGS) $< $@

%-clean :
	@echo Cleaning Module $(@:%-clean=%)...
	$(VERB)rm -rf $(call DB_GET_CLEANTGTS,$(@:%-clean=%))

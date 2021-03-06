VERB := 

%.c :
	@echo Preprocessing $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_PP) $(SDCC_PP_FLGS) $(call DB_GET_DEFS_FMT,$<) -o $@ $<

%.s :
	@echo Compiling $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_CC) $(SDCC_CC_FLGS) --codeseg $(call DB_GET_SEG,$<) -o $@ $<

%.rel :
	@echo Assembling $^...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_ASM) $(SDCC_ASM_FLGS) $@ $<

%.lib :
	@echo Generating $@...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_LIB) $(SDCC_LIB_FLGS) $@ $^
	
%.h :
	@echo Copying Header File $^... 
	@mkdir -p $(dir $@)
	$(VERB)cp -f $^ $@

%.ihx :
	@echo Linking $@...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_LNK) $(SDCC_LNK_FLGS) $(call DB_GET_LIBS_FMT,$(notdir $(@:%.ihx=%))) -i $@ $^

%.bin :
	@echo Converting $@...
	@mkdir -p $(dir $@)
	$(VERB)$(SDCC_BIN) $(SDCC_BIN_FLGS) $< $@

%-clean :
	@echo Cleaning Module $(@:%-clean=%)...
	$(VERB)rm -rf $(call DB_GET_CLNTGTS,$(@:%-clean=%))

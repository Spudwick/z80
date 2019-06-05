
VERB := @

FORCE :

print : 
	$(call gui_header)
	@echo Selected Modules :
	@echo    $(MODULES)
	$(call gui_minor_div)
	@echo $(call GET_MODDIR,prog/test)
	
%.def :
	@echo Generating Dependancies for $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CDEF) $(CPPFLG_STD) $(CPPFLG_DEF) -o $@ $<

%.c :
	@echo Pre-Processing $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CPP) $(CPPFLG_STD) $(CPPFLG_DEF) -I $(call GET_LCL_INC,$<) -o $@ $<

%.s :
	@echo Compiling $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CC) $(CCFLAGS) --codeseg $(call GET_SRC_AREA,$<) -o $@ $<

%.rel :
	@echo Assembling $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(ASM) $(ASMFLAGS) $@ $<
	
%.ihx : 
	@echo Linking $@...
	$(VERB)$(call MK_DIR,$(dir $@))
	
%.bin : 
	@echo Converting $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	
%.CLEAN : FORCE
	@echo Cleaning $(call GET_MODDIR,$(subst $(suffix $@),,$(@)))/$(OUT_TREE)...
	$(VERB)$(call RM_DIR,$(call GET_MODDIR,$(subst $(suffix $@),,$(@)))/$(OUT_TREE))
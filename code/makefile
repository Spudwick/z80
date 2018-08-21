include build-sys/build-sources.mk
include build-sys/build-tools.mk
include build-sys/build-dirs.mk

ifeq ($(MODULES),)
$(error ERROR: No Module Specified! Usage is 'make MODULES=<module1>[;module2][;...] [clean|build|cbuild|print]')
endif

TGTS := $(subst ;, ,$(MODULES))
$(foreach FL,$(MODULES),$(eval include $(FL)/$(notdir $(FL)).mk))

include mem_map.mk

VERB := @

print :
	@echo MODULES		= $(REG_MODS)
	@echo ----------------------------------------------------------------------------------
	@echo SRCS_C 		= $(notdir $(SRCS_C))
	@echo SRCS_S 		= $(notdir $(SRCS_S))
	@echo ASMS 		= $(notdir $(ASMS))
	@echo OBJS 		= $(notdir $(OBJS))	
	@echo ----------------------------------------------------------------------------------
	@echo IHX File 	= $(IHEX)
	@echo BIN File 	= $(BIN)
	@echo $(call GET_SEGLOC,BOOT)

.PHONY : all build print clean cbuild $(CLN_TRGS)

.DEFAULT_GOAL := cbuild

all : print cbuild

cbuild : clean build

build : $(BIN)

%.c :
	@echo Preprocessing $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CPP) $(CPPFLAGS) -o $@ $<
	
%.s :
	@echo Assembling $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CC) $(CCFLAGS) --codeseg $(call GET_SRCAREA,$<) -o $@ $<
	
%.rel :
	@echo Compiling $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(ASM) $(ASMFLAGS) $@ $<

%.ihx : $(OBJS)
	@echo Linking $@...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(LNK) $(LNKFLAGS) $(foreach SEG,$(SEGS),-b _$(SEG)=$(SEG_$(SEG))) -i $@ $^

$(BIN) : $(IHEX)
	@echo Converting $@...
	$(VERB)$(call MK_DIR,$(dir $@))
ifeq ($(OS),Windows_NT)
	$(VERB)$(BIN_CP) $@ $<
	$(VERB)$(call CP,$(<:%.ihx=%.bin),$@)
	$(VERB)$(call RM_FILE,$(<:%.ihx=%.bin))
else
	$(VERB)$(BIN_CP) $< $@
endif
	@echo --------------------------------------------------------------------------------------
	@echo Binary File available at $@
	
clean : $(CLN_TRGS)

$(CLN_TRGS) : clean-% :
	$(call RM_DIR,$(subst clean-,,$(subst @,:,$@)))

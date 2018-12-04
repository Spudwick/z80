include build-sys/build-sources.mk
include build-sys/build-tools.mk
include build-sys/build-dirs.mk

ifeq ($(MODULES),)
$(error ERROR: No Module Specified! Usage is 'make MODULES="<module1> [module2] [...]" [clean|build|cbuild|print]')
endif

TGTS := $(subst ;, ,$(MODULES))
$(foreach FL,$(MODULES),$(eval include $(FL)/$(notdir $(FL)).mk))

include mem_map.mk

VERB := @

print :
	@echo MODULES   = $(REG_MODS)
	@echo ----------------------------------------------------------------------------------
	@echo LIBS      = $(MOD_LIBS)
	@echo ----------------------------------------------------------------------------------
	@echo SRCS_C    = $(notdir $(SRCS_C))
	@echo SRCS_S    = $(notdir $(SRCS_S))
	@echo ASMS      = $(notdir $(ASMS))
	@echo OBJS      = $(notdir $(OBJS))	
	@echo ----------------------------------------------------------------------------------
	@echo IHX File  = $(IHEX)
	@echo BIN File  = $(BIN)
	@echo LIB File  = $(LIB)

.PHONY : all build print clean cbuild $(CLN_TRGS)

.DEFAULT_GOAL := cbuild

all : print cbuild

cbuild : clean build

build : $(BIN) $(LIB)

%.c :
	@echo Preprocessing $<...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(CPP) $(CPPFLAGS) $(addprefix -isystem,$(call GET_LIBINCS)) $(addprefix -I,$(call GET_MODINCS)) -o $@ $<
	
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
	$(VERB)$(LNK) $(LNKFLAGS) $(foreach SEG,$(SEGS),-b _$(SEG)=$(SEG_$(SEG))) $(addprefix -k ,$(call GET_LIBDIRS)) $(addprefix -l ,$(call GET_LIBS)) -i $@ $^

%.lib : $(OBJS)
	@echo Generating Library $@...
	$(VERB)$(CLIB) $@ $^
	@echo --------------------------------------------------------------------------------------
	@echo Library File available at $@

$(BIN) : $(IHEX)
#%.bin : $(IHEX)			# Mystery rm appears after run? No idea why!!
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
	@echo Cleaning $(subst clean-,,$(subst @,:,$@))...
	$(VERB)$(call RM_DIR,$(subst clean-,,$(subst @,:,$@)))

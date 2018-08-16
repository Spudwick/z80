ifeq ($(MODULES),)
$(error ERROR: No Module Specified! Usage is 'make MODULES=<module1>[;module2][;...] [clean|build|cbuild|print]')
endif

include build-sys/build-sources.mk
include build-sys/build-tools.mk
include build-sys/build-dirs.mk

TGTS := $(subst ;, ,$(MODULES))
$(foreach FL,$(TGTS),$(eval include $(FL)/$(notdir $(FL)).mk))

VERB := @

print :
	@echo SRCS_C 		= $(notdir $(SRCS_C))
	@echo SRCS_S 		= $(notdir $(SRCS_S))
	@echo ASMS 		= $(notdir $(ASMS))
	@echo OBJS 		= $(notdir $(OBJS))
	@echo ----------------------------------------------------------------------------------
	@echo IHX File 	= $(IHEX)
	@echo BIN File 	= $(BIN)

.PHONY : all build print clean cbuild $(CLN_TRGS)

.DEFAULT_GOAL := cbuild

all : print cbuild

cbuild : clean build

build : $(IHEX)

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
	$(VERB)$(LNK) $(LNKFLAGS) -i $@ $^

$(OUT_DIR)boot.bin : $(LNK_DIR)boot.ihx
	@echo Converting $@...
	$(VERB)$(call MK_DIR,$(dir $@))
	$(VERB)$(call BIN_CP,$<,$@)
	
clean : $(CLN_TRGS)

$(CLN_TRGS) : clean-% :
	$(call RM_DIR,$(subst clean-,,$(subst @,:,$@)))
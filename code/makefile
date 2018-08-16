include build-sys/build-sources.mk
include build-sys/build-tools.mk
include build-sys/build-dirs.mk

include boot/boot.mk
include boot2/boot2.mk

print :
	@echo SRCS_C = $(notdir $(SRCS_C))
	@echo SRCS_S = $(notdir $(SRCS_S))
	@echo ASMS = $(notdir $(ASMS))
	@echo OBJS = $(notdir $(OBJS))

.PHONY : all build print clean $(CLN_TRGS)

all : build

build : $(OBJS)

%.s :
	@echo Assembling $@...
	$(call MK_DIR,$(dir $@))
	$(call MK_DIR,$(DEP_DIR))
	$(CC) $(CCFLAGS) $(CCINC) $(CCDEF) --codeseg $(call GET_SRCAREA,$<) -o $@ $<
	
%.rel :
	@echo Compiling $@...
	$(call MK_DIR,$(dir $@))
	$(ASM) $(ASMFLAGS) $@ $<

$(LNK_DIR)boot.ihx : $(OBJS)
	@echo Linking $@...
	$(call MK_DIR,$(dir $@))
	$(LNK) $(LNKFLAGS) -i $@ $^

$(OUT_DIR)boot.bin : $(LNK_DIR)boot.ihx
	@echo Converting $@...
	$(call MK_DIR,$(dir $@))
	$(call BIN_CP,$<,$@)
	
clean : $(CLN_TRGS)

$(CLN_TRGS) : clean-% :
	$(call RM_DIR,$(subst clean-,,$(subst @,:,$@)))
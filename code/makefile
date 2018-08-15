include build-sys/build-sources.mk
include build-sys/build-tools.mk

MOD_DIR := C:/Users/TO01/Documents/GitHub/z80/code/boot/
OUT_DIR := $(MOD_DIR)out/

ASM_DIR := $(OUT_DIR)asm/
OBJ_DIR := $(OUT_DIR)obj/
LNK_DIR := $(OUT_DIR)lnk/
SRC_DIR := $(MOD_DIR)src/

.PHONY : build print

$(eval $(call ADD_CSRC,$(SRC_DIR)boot.c))
$(eval $(call ADD_SSRC,$(SRC_DIR)info.s))
$(eval $(call ADD_SSRC,$(SRC_DIR)vectors.s))

print :
	@echo SRCS_C = $(SRCS_C)
	@echo SRCS_S = $(SRCS_S)
	@echo ASMS = $(ASMS)
	@echo OBJS = $(OBJS)

build : $(LNK_DIR)boot.ihx

clean :
	$(call RM_DIR,$(OUT_DIR))
	
%.s :
	$(call MK_DIR,$(dir $@))
	@echo Assembling $@...
	$(CC) $(CCFLAGS) $(CCINC) $(CCDEF) -o $@ $<
	
%.rel :
	$(call MK_DIR,$(dir $@))
	@echo Compiling $@...
	$(ASM) $(ASMFLAGS) $@ $<

$(LNK_DIR)boot.ihx : $(OBJS)
	$(call MK_DIR,$(dir $@))
	@echo Linking $@...
	$(LNK) $(LNKFLAGS) -i $@ $^

$(OUT_DIR)boot.bin : $(LNK_DIR)boot.ihx
	$(call MK_DIR,$(dir $@))
	@echo Converting $@...
	$(call BIN_CP,$<,$@)
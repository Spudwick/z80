# SOURCE FILE TOOLS: ======================================================

define TEST1
TST1 += $(1:%.c=%.o)
TST2 += $(1:%.c=%.cpp)
$1 : test.test
endef

TEST2 =									\
$(eval TST1 += $(1:%.c=%.o2))			\
$(eval TST2 += $(1:%.c=%.cpp2))

define ADD_CSRC
SRCS_C += $(1)
ASMS += $(ASM_DIR)$(notdir $(1:%.c=%.s))
OBJS += $(OBJ_DIR)$(notdir $(1:%.c=%.rel))
$(ASM_DIR)$(notdir $(1:%.c=%.s)) : $(1)
$(OBJ_DIR)$(notdir $(1:%.c=%.rel)) : $(ASM_DIR)$(notdir $(1:%.c=%.s))
endef

define ADD_SSRC
SRCS_S += $(1)
OBJS += $(OBJ_DIR)$(notdir $(1:%.s=%.rel))
$(OBJ_DIR)$(notdir $(1:%.s=%.rel)) : $(1)
endef
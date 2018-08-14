# DIRECTORY TOOLS: ======================================================================

# WINDOWS:
ifeq ($(OS),Windows_NT)
GET_CWD			 = $(subst \,/,$(shell cd)/)
OS_SYN       	 = $(subst /,\,$(1))

# LINUX
else

endif

# =======================================================================================

# DIRECTORY DEFINES: ====================================================================

SELF_DIR		:= $(call GET_CWD)
BUILDSYS_DIR 	:= $(SELF_DIR)/build-sys/

OUT_TREE		:= out/
PP_TREE			:= $(OUT_TREE)/pp/
ASM_TREE		:= $(OUT_TREE)/asm/
REL_TREE		:= $(OUT_TREE)/rel/
LNK_TREE		:= $(OUT_TREE)/lnk/

# =======================================================================================
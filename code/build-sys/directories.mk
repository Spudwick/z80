
# Top Level Directories: =========================================
#    Main directories for use by build system.
# ----------------------------------------------------------------
BUILDSYS_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
# ================================================================


# Module Directory Trees: ========================================
#    Directory Trees for organising module files.
# ----------------------------------------------------------------
SRC_TREE 	:= src/
INC_TREE 	:= inc/

OUT_TREE 	:= out/
DEF_TREE 	:= $(OUT_TREE)def/
PP_TREE 	:= $(OUT_TREE)pp/
ASM_TREE 	:= $(OUT_TREE)asm/
REL_TREE 	:= $(OUT_TREE)rel/
LNK_TREE 	:= $(OUT_TREE)lnk/
# ================================================================


# ================================================================
# $(call OS_PATH,<Path>)
# ----------------------------------------------------------------
#    Converts path to OS specific syntax.
# ================================================================
ifeq ($(OS),Windows_NT)

define OS_PATH
$(subst /,\,$(1))
endef

else

define OS_PATH
$(subst \,/,$(1))
endef

endif
# ================================================================
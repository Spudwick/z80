# DIRECTORY TOOLS: ======================================================================

# WINDOWS:
ifeq ($(OS),Windows_NT)
GET_CWD			 = $(subst \,/,$(shell cd)/)
OS_SYN       	 = $(subst /,\,$(1))
MK_SYN       	 = $(subst \,/,$(1))
GET_SDCC_DIR	 = $(subst sdcc.exe,,$(subst \,/,$(shell where sdcc)))

# LINUX
else

endif

# =======================================================================================

# DIRECTORY DEFINES: ====================================================================

SELF_DIR		:= $(call GET_CWD)
BUILDSYS_DIR 	:= $(SELF_DIR)build-sys/

SRC_TREE		:= src/
INC_TREE		:= inc/
OUT_TREE		:= out/
PP_TREE			:= $(OUT_TREE)pp/
DEP_TREE		:= $(PP_TREE)dep/
ASM_TREE		:= $(OUT_TREE)asm/
REL_TREE		:= $(OUT_TREE)rel/
LNK_TREE		:= $(OUT_TREE)lnk/

# =======================================================================================
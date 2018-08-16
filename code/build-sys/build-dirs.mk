# DIRECTORY TOOLS: ======================================================================

# WINDOWS:
ifeq ($(OS),Windows_NT)
GET_CWD		 = $(subst \,/,$(shell cd)/)
OS_SYN       	 = $(subst /,\,$(1))
MK_SYN       	 = $(subst \,/,$(1))
GET_SDCC_DIR	 = $(subst sdcc.exe,,$(subst \,/,$(shell where sdcc)))

# LINUX
else
GET_CWD        	= $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
OS_SYN       	= $(subst \,/,$(1))
MK_SYN      	= $(subst \,/,$(1))
GET_SDCC_DIR	= $(subst $(CC),,$(subst \,/,$(shell which $(CC))))
endif

# =======================================================================================

# DIRECTORY DEFINES: ====================================================================

SELF_DIR		:= $(call GET_CWD)
BUILDSYS_DIR 	:= $(SELF_DIR)build-sys/

SRC_TREE		:= src/
INC_TREE		:= inc/
OUT_TREE		:= out/
PP_TREE			:= $(OUT_TREE)pp/
ASM_TREE		:= $(OUT_TREE)asm/
DEP_TREE		:= $(ASM_TREE)dep/
REL_TREE		:= $(OUT_TREE)rel/
LNK_TREE		:= $(OUT_TREE)lnk/
IMG_TREE		:= image/

# =======================================================================================

CLN_TRGS := clean-$(subst :,@,$(SELF_DIR)$(IMG_TREE))

#===============================================================================================================================================================
# $(eval $(call REG_MODULE))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Initialises directory variables and sets up clean dependancy when including a new module.
# WARNING: "MOD_DIR" MUST BE SET TO POINT TO MODULE DIRECTORY BEFORE THIS IS RUN!
# WARNING: MUST BE RUN BEFORE ADDING SOURCE FILES FOR A MODULE!
#===============================================================================================================================================================
define REG_MODULE
SRC_DIR := $(MOD_DIR)$(SRC_TREE)
OUT_DIR := $(MOD_DIR)$(OUT_TREE)
PP_DIR 	:= $(MOD_DIR)$(PP_TREE)
ASM_DIR := $(MOD_DIR)$(ASM_TREE)
DEP_DIR := $(MOD_DIR)$(DEP_TREE)
OBJ_DIR := $(MOD_DIR)$(REL_TREE)

CLN_TRGS += clean-$(subst :,@,$(MOD_DIR)$(OUT_TREE))

ifeq ($(REG_MODS),)
LNK_DIR := $(MOD_DIR)$(LNK_TREE)
IHEX := $(MOD_DIR)$(LNK_TREE)image.ihx
BIN := $(MOD_DIR)$(OUT_TREE)image.bin
else
LNK_DIR := $(SELF_DIR)$(IMG_TREE)
IHEX := $(SELF_DIR)$(IMG_TREE)lnk/image.ihx
BIN := $(SELF_DIR)$(IMG_TREE)image.bin
endif

REG_MODS += $(MOD_DIR)
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# Definitions of OS specific directory manipulation tools.
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# WINDOWS:
ifeq ($(OS),Windows_NT)
GET_CWD		 = $(subst \,/,$(shell cd)/)
OS_SYN       	 = $(subst /,\,$(1))
MK_SYN       	 = $(subst \,/,$(1))
GET_SDCC_DIR	 = $(subst sdcc.exe,,$(subst \,/,$(shell where sdcc)))

# LINUX:
else
GET_CWD        	= $(shell pwd)/
OS_SYN       	= $(subst \,/,$(1))
MK_SYN      	= $(subst \,/,$(1))
GET_SDCC_DIR	= $(subst $(CC),,$(subst \,/,$(shell which $(CC))))
endif
#===============================================================================================================================================================

#===============================================================================================================================================================
# Directory mappings within build system.
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
SELF_DIR		:= $(call GET_CWD)
BUILDSYS_DIR 	:= $(SELF_DIR)build-sys/
LIB_DIR			:= $(SELF_DIR)lib/

SRC_TREE		:= src/
INC_TREE		:= inc/
OUT_TREE		:= out/
PP_TREE			:= $(OUT_TREE)pp/
ASM_TREE		:= $(OUT_TREE)asm/
DEP_TREE		:= $(ASM_TREE)dep/
REL_TREE		:= $(OUT_TREE)rel/
LNK_TREE		:= $(OUT_TREE)lnk/
IMG_TREE		:= image/
#===============================================================================================================================================================

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
IHEX := $(MOD_DIR)$(LNK_TREE)$(notdir $(patsubst %/,%,$(MOD_DIR))).ihx
BIN := $(MOD_DIR)$(OUT_TREE)$(notdir $(patsubst %/,%,$(MOD_DIR))).bin
else
LNK_DIR := $(SELF_DIR)$(IMG_TREE)
IHEX := $(SELF_DIR)$(IMG_TREE)lnk/img.ihx
BIN := $(SELF_DIR)$(IMG_TREE)img.bin
ifeq ($(words $(CLN_TRGS)),2)
CLN_TRGS += clean-$(subst :,@,$(SELF_DIR)$(IMG_TREE))
endif
endif

REG_MODS += $(MOD_DIR)
MOD_INCS += $(MOD_DIR)inc
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call REG_LIBRARY))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Initialises directory variables and sets up clean dependancy when building a library.
# WARNING: "MOD_DIR" MUST BE SET TO POINT TO LIBRARY DIRECTORY BEFORE THIS IS RUN!
# WARNING: MUST BE RUN BEFORE ADDING SOURCE FILES FOR THE LIBRARY!
# WARNING: Only a single library can be built at any one time.
#===============================================================================================================================================================
define REG_LIBRARY
SRC_DIR := $(MOD_DIR)$(SRC_TREE)
OUT_DIR := $(MOD_DIR)$(OUT_TREE)
PP_DIR 	:= $(MOD_DIR)$(PP_TREE)
ASM_DIR := $(MOD_DIR)$(ASM_TREE)
DEP_DIR := $(MOD_DIR)$(DEP_TREE)
OBJ_DIR := $(MOD_DIR)$(REL_TREE)
LNK_DIR := $(MOD_DIR)$(LNK_TREE)

CLN_TRGS := clean-$(subst :,@,$(MOD_DIR)$(OUT_TREE))
BIN := 
OBJS :=

LIB := $(MOD_DIR)$(OUT_TREE)$(notdir $(patsubst %/,%,$(MOD_DIR))).lib

REG_MODS := $(MOD_DIR)
MOD_INCS := $(MOD_DIR)inc
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_MODINCS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets the list of include directories for all targeted modules.
#===============================================================================================================================================================
define GET_MODINCS
$(MOD_INCS)
endef
#===============================================================================================================================================================

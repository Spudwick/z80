include build-sys/build-dirs.mk

ifeq ($(OS),Windows_NT)
TOOL_PRE	:=
else
TOOL_PRE 	:= sdcc-
endif

# TOOLS AND DEFAULT TOOL FLAGS :=========================================================

# C Pre-Processor and Flags:
CPP				:= $(TOOL_PRE)sdcpp
CPPFLG_STD		:= -nostdinc -Wall -std=c99
CPPFLG_LCLINC	:= $(addprefix -I$(SELF_DIR),$(addsuffix $(INC_TREE),$(wildcard lib/*/)))
CPPFLG_SYSINC	:= -isystem "$(call OS_SYN,$(call GET_SDCC_DIR)include/z80)" -isystem "$(call OS_SYN,$(call GET_SDCC_DIR)include)"
CPPFLG_DEF		:= -obj-ext=.rel -D__SDCC_STACK_AUTO -D__SDCC_CHAR_UNSIGNED -D__SDCC_INT_LONG_REENT -D__SDCC_FLOAT_REENT -D__SDCC=3_6_0 -D__SDCC_VERSION_MAJOR=3 -D__SDCC_VERSION_MINOR=6 -D__SDCC_VERSION_PATCH=0 -DSDCC=360 -D__SDCC_REVISION=9615 -D__SDCC_z80 -D__STDC_NO_COMPLEX__=1 -D__STDC_NO_THREADS__=1 -D__STDC_NO_ATOMICS__=1 -D__STDC_NO_VLA__=1 -D__STDC_ISO_10646__=201409L -D__STDC_UTF_16__=1 -D__STDC_UTF_32__=1
CPPFLG_DEP		:= -M -MP
CPPFLAGS		:= $(CPPFLG_STD) $(CPPFLG_LCLINC) $(CPPFLG_SYSINC) $(CPPFLG_DEF)

# C Compiler and Flags:
CC      	:= $(TOOL_PRE)sdcc
CCFLAGS 	:= --std-sdcc99 -mz80 --no-std-crt0 --vc -S $(CCFLG_DEP)

# Assembler and Assembler Flags:
ASM      := $(TOOL_PRE)sdasz80
ASMFLAGS := -plosgffw

# Linker and Linker Flags:
LNK      := $(TOOL_PRE)sdldz80
LNKFLAGS := -mjwxeun

# Binary Conversion:
ifeq ($(OS),Windows_NT)
BIN_CP       := hex2bin -p 00 -e bin
else
BIN_CP   	 = objcopy -Iihex -Obinary
endif

# Library:
CLIB := $(TOOL_PRE)sdcclib

# File and Folder Manipulation:
ifeq ($(OS),Windows_NT)
CP		= copy $(call OS_SYN,$1) $(call OS_SYN,$2)
MK_DIR		= if not exist $(call OS_SYN,$(1)) mkdir $(call OS_SYN,$(1))
RM_DIR		= if exist $(call OS_SYN,$(1)) rmdir /s /q $(call OS_SYN,$(1))
RM_FILE		= if exist $(call OS_SYN,$(1)) del /f /q $(call OS_SYN,$(1))
else
CP           	= cp $(call OS_SYN,$1) $(call OS_SYN,$2)
MK_DIR       	= mkdir -p $(call OS_SYN,$(1))
RM_DIR       	= rm -rf $(call OS_SYN,$(1))
RM_FILE      	= $(RM_DIR)
endif

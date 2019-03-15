include build-sys/build-dirs.mk

ifeq ($(OS),Windows_NT)
TOOL_PRE	:=
else
TOOL_PRE 	:=
endif

# TOOLS AND DEFAULT TOOL FLAGS :=========================================================

ifeq ($(OS),Windows_NT)
SDCC_INSTALLDIR := "/Program Files/SDCC_3_8_0"
else
SDCC_INSTALLDIR := /system/usr/share/sdcc
endif

# SDCC Toolchain Version:
ifeq ($(OS),Windows_NT)
SDCC_VER := NOT_IMPLEMENTED
SDCC_VER_MAJ := NOT_IMPLEMENTED
SDCC_VER_MIN := NOT_IMPLEMENTED
SDCC_VER_PAT := NOT_IMPLEMENTED
SDCC_REV := NOT_IMPLEMENTED
else
SDCC_VER := $(shell sdcc --version | grep -P '[0-9]*\.[0-9]*\.[0-9]*' -o | tr . _)
SDCC_VER_MAJ := $(shell echo $(SDCC_VER) | cut -d '_' -f 1)
SDCC_VER_MIN := $(shell echo $(SDCC_VER) | cut -d '_' -f 2)
SDCC_VER_PAT := $(shell echo $(SDCC_VER) | cut -d '_' -f 3)
SDCC_REV := $(shell sdcc --version | grep -P '\#[0-9]*' -o | tr -d '\#')
endif

# C Pre-Processor and Flags:
CPP				:= $(TOOL_PRE)sdcpp
CPPFLG_STD		:= -nostdinc -Wall -std=c99
CPPFLG_LCLINC	:= $(patsubst %/,%,$(addprefix -I$(SELF_DIR),$(addsuffix $(INC_TREE),$(wildcard lib/*/))))
CPPFLG_SYSINC	:= -isystem "$(call OS_SYN,$(call GET_SDCC_DIR)..\include)"
CPPFLG_DEF		:= -obj-ext=.rel -D__SDCC_STACK_AUTO -D__SDCC_CHAR_UNSIGNED -D__SDCC_INT_LONG_REENT -D__SDCC_FLOAT_REENT -D__SDCC=$(SDCC_VER) -D__SDCC_VERSION_MAJOR=$(SDCC_VER_MAJ) -D__SDCC_VERSION_MINOR=$(SDCC_VER_MIN) -D__SDCC_VERSION_PATCH=$(SDCC_VER_PAT) -DSDCC=360 -D__SDCC_REVISION=$(SDCC_REV) -D__SDCC_z80 -D__STDC_NO_COMPLEX__=1 -D__STDC_NO_THREADS__=1 -D__STDC_NO_ATOMICS__=1 -D__STDC_NO_VLA__=1 -D__STDC_ISO_10646__=201409L -D__STDC_UTF_16__=1 -D__STDC_UTF_32__=1
CPPFLG_DEP		:= -M -MP
CPPFLAGS		:= $(CPPFLG_STD) $(CPPFLG_DEF)

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
#CLIB := $(TOOL_PRE)sdar -rcv

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

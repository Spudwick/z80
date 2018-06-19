# TOOLS AND DEFAULT TOOL FLAGS :=========================================================

# C Compiler and Flags:
CC      := sdcc
CCFLAGS := --std-sdcc99 -mz80 --no-std-crt0 --vc -S

# Assembler and Assembler Flags:
ASM      := sdasz80
ASMFLAGS := -plosgffw

# Linker and Linker Flags:
LNK      := sdldz80
LNKFLAGS := -mjwxeun

# Binary Conversion:
PAD_BYTE 	:= 00
BIN_CP       = hex2bin -p $(PAD_BYTE) -e bin $(1)

# Library:
CLIB := sdcclib

# File and Folder Manipulation:
CP          := copy
MK_DIR       = if not exist $(call OS_SYN,$(1)) mkdir $(call OS_SYN,$(1))
RM_DIR     	 = if exist $(call OS_SYN,$(1)) rmdir /s /q $(call OS_SYN,$(1))
RM_FILE   	 = if exist $(call OS_SYN,$(1)) del /f /q $(call OS_SYN,$(1))


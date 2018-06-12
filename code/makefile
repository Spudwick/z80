include mem_map.mk

ifeq ($(TARGET),)
$(error ERROR: No Target Specified! Usage is 'make TARGET=<target> [build|clean|print]')
endif

# MULTI-PLATFORM SUPPORT: ===============================================================
# Tested : Windows (10), Linux (Fedora)
#========================================================================================
ifeq ($(OS),Windows_NT)
SELFDIR     := $(subst \,/,$(shell cd)/)
TOOL_PRE    := 
OS_SYN       = $(subst /,\,$(1))
else
SELFDIR     := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
TOOL_PRE    := sdcc-
OS_SYN       = $(subst \,/,$(1))
endif
#========================================================================================

# DIRECTORIES: ==========================================================================
SRCDIR      := $(SELFDIR)$(TARGET)/src
INCDIR      := $(SELFDIR)$(TARGET)/inc
OUTDIR      := $(SELFDIR)$(TARGET)/out
ASMDIR      := $(OUTDIR)/asm
RELDIR      := $(OUTDIR)/rel
LNKDIR      := $(OUTDIR)/lnk
LIBDIR      := $(SELFDIR)lib
COMSRCDIR   := $(SELFDIR)common/src
COMINCDIR   := $(SELFDIR)common/inc

LIBPATHS    := $(wildcard $(LIBDIR)/*)
LIBPATHS    := $(addsuffix /out,$(LIBPATHS))

LIBINCS		:= $(wildcard $(INCDIR)/_*.h)
LIBINCS		:= $(addprefix $(OUTDIR)/,$(LIBINCS:$(INCDIR)/_%=%))
#========================================================================================

# TOOLS AND TOOL FLAGS: =================================================================
# C Compiler and Flags:
CC      := $(TOOL_PRE)sdcc
CCFLAGS := --std-sdcc99 -mz80 --no-std-crt0 --vc -S
CCINC   := -I$(INCDIR) -I$(COMINCDIR) $(addprefix -I,$(LIBPATHS))
CCDEF   := -DSTACK_TOP=$(STACK_TOP)

# Assembler and Assembler Flags:
ASM      := $(TOOL_PRE)sdasz80
ASMFLAGS := -plosgffw
MAINFILE := $(SRCDIR)/main.c

# Linker and Linker Flags:
LNK      := $(TOOL_PRE)sdldz80
LNKFLAGS := -mjwxeun $(addprefix -k ,$(LIBPATHS))

# Binary Conversion:
OUTPUT   := $(TARGET).bin
ifeq ($(OS),Windows_NT)
PAD_BYTE 	:= 00
BIN_CP       = hex2bin -p $(PAD_BYTE) -e bin $(1)
else
BIN_CP   	 = objcopy -Iihex -Obinary $(1) $(2)
endif

# Library:
CLIB := $(TOOL_PRE)sdcclib

# File and Folder Manipulation:
ifeq ($(OS),Windows_NT)
CP          := copy
MK_DIR       = if not exist $(call OS_SYN,$(1)) mkdir $(call OS_SYN,$(1))
RM_DIR     	 = if exist $(call OS_SYN,$(1)) rmdir /s /q $(call OS_SYN,$(1))
RM_FILE   	 = if exist $(call OS_SYN,$(1)) del /f /q $(call OS_SYN,$(1))
else
CP          := cp
MK_DIR       = mkdir -p $(call OS_SYN,$(1))
RM_DIR       = rm -rf $(OS_SYN,$(1))
RM_FILE      = $(RM_DIR)
endif
#========================================================================================

INCFILES := $(notdir $(wildcard $(INCDIR)/*.h))
SRCFILES := $(notdir $(wildcard $(SRCDIR)/*.c) $(wildcard $(SRCDIR)/*.s))

# TARGET SPECIFIC CUSTOMISATION: ========================================================
# 	- Adds required Libraries.
#	- Sets the Main compilation file.
#	- Sets the programs area.
#	- Sets the output file.
MAKEFILES := $(wildcard $(TARGET)/*.mk)
include $(MAKEFILES)
LNKFLAGS  += $(addprefix -l ,$(LIBRARIES))
CCFLAGS   += $(addprefix --codeseg , $(C_AREA))
LNKFLAGS  += $(foreach AREA,$(AREAS),$(addprefix -b ,_$(AREA)=$(SEG_$(AREA))))
#========================================================================================

vpath %.c $(SRCDIR) $(COMSRCDIR)
vpath %.s $(SRCDIR) $(COMSRCDIR)

# TARGET FILES: =========================================================================
SfromS  := $(addprefix $(ASMDIR)/,$(filter %.s,$(notdir $(SRCFILES))))
SfromC  := $(addprefix $(ASMDIR)/,$(filter %.c,$(notdir $(SRCFILES))))
SfromC  := $(SfromC:%.c=%.s)
MAINREL := $(notdir $(MAINFILE:%.c=%.rel))
RELS    := $(notdir $(SfromS)) $(notdir $(SfromC))
RELS    := $(RELS:%.s=%.rel)
RELS    := $(MAINREL) $(filter-out $(MAINREL),$(RELS))
RELS    := $(addprefix $(RELDIR)/,$(RELS))
#========================================================================================

.SECONDARY :
.PHONY : print clean build force-build build-rels

# TOP-LEVEL RULES: ======================================================================
# Target :
#========================================================================================
build : $(OUTDIR)/$(OUTPUT)

force-build : clean build 

clean :
	@echo Cleaning...
	$(call RM_DIR,$(OUTDIR))
	$(call RM_FILE,$(OUTDIR)/$(OUTPUT))

print :
	@echo ------------------------------------------------------------
	@echo Target        = $(call OS_SYN,$(TARGET))
	@echo Makefile      = $(call OS_SYN,$(MAKEFILES))
	@echo Output File   = $(call OS_SYN,$(OUTDIR:$(SELFDIR)%=%)/$(OUTPUT))
	@echo ------------------------------------------------------------
	@echo Source Files  = $(SRCFILES)
	@echo Include Files = $(INCFILES)
	@echo Libraries     = $(LIBRARIES)
	@echo ------------------------------------------------------------
	@echo S from S      = $(notdir $(SfromS))
	@echo S from C      = $(notdir $(SfromC))
	@echo ------------------------------------------------------------
	@echo $(LIBINCS)
	
build-rels : $(RELS)
	@echo ------------------------------------------------------------
	@echo Rel files can be found in $(call OS_SYN,$(RELDIR))
#========================================================================================
	
# STATIC PATTERN RULES: =================================================================
# Targets : Target Pattern : Dependancy Pattern
#========================================================================================
$(SfromC) : $(ASMDIR)/%.s : %.c
	$(call MK_DIR,$(ASMDIR))
	@echo Compiling $(notdir $<)...
	$(CC) $(CCFLAGS) $(CCINC) $(CCDEF) -o $@ $<

$(SfromS) : $(ASMDIR)/%.s : %.s
	$(call MK_DIR,$(ASMDIR))
	@echo Copying $(notdir $<)...
	$(CP) $(call OS_SYN,$< $@)

$(LIBINCS) : $(OUTDIR)/%.h : $(INCDIR)/_%.h
	$(CP) $(call OS_SYN,$^ $@)
#========================================================================================

# PATTERN RULES: ========================================================================
# Target Pattern : Dependancy Pattern
#========================================================================================
$(RELDIR)/%.rel : $(ASMDIR)/%.s
	$(call MK_DIR,$(RELDIR))
	@echo Assembling $(notdir $<)...
	$(ASM) $(ASMFLAGS) $@ $<

$(LNKDIR)/%.ihx : $(RELS) 
	$(call MK_DIR,$(LNKDIR))
	@echo Linking $(notdir $@)...
	$(LNK) $(LNKFLAGS) -i $@ $^

$(OUTDIR)/%.bin : $(LNKDIR)/%.ihx
	@echo Creating binary $(notdir $@)...
	$(call BIN_CP,$<,$@)
ifeq ($(OS),Windows_NT)
	cmd /c move $(call OS_SYN,$(subst ihx,bin,$<) $@)
endif
	@echo ------------------------------------------------------------
	@echo Binary file available at $(call OS_SYN,$@).

$(OUTDIR)/%.lib : $(RELS) $(LIBINCS)
	@echo Creating Library $(notdir $@)...
	$(CLIB) $@ $(filter-out %.h,$^)
	@echo ------------------------------------------------------------
	@echo Library file available at $(call OS_SYN,$@).
#========================================================================================

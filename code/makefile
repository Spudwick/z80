include mem_map.mk

ifeq ($(OS),Windows_NT)
SELFDIR := $(subst \,/,$(shell cd)/)
RM := -rmdir /s /q
CP := copy
MK := -mkdir
BIN_CP = hex2bin -e bin $(1)
OS_SYN = $(subst /,\,$(1))
else
SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
RM := rm -rf
CP := cp
MK := mkdir -p
BIN_CP = objcopy -Iihex -Obinary $(1) $(2)
OS_SYN = $(subst \,/,$(1))
endif

SRCDIR := $(SELFDIR)$(TARGET)/src
INCDIR := $(SELFDIR)$(TARGET)/inc
OUTDIR := $(SELFDIR)$(TARGET)/out
ASMDIR := $(OUTDIR)/asm
RELDIR := $(OUTDIR)/rel
LNKDIR := $(OUTDIR)/lnk
LIBDIR := $(SELFDIR)lib
COMSRCDIR := $(SELFDIR)common/src
COMINCDIR := $(SELFDIR)common/inc

LIBPATHS := $(wildcard $(LIBDIR)/*)
LIBINCPATHS := $(addsuffix /inc,$(LIBPATHS))
LIBPATHS := $(addsuffix /out,$(LIBPATHS))

# C Compiler and Flags:
CC := sdcc
CCFLAGS := --std-sdcc99 -mz80 --no-std-crt0 --vc -S
CCINC := -I$(INCDIR) -I$(COMINCDIR) $(addprefix -I,$(LIBINCPATHS))
CCDEF := -DSTACK_TOP=$(STACK_TOP)

# Assembler and Assembler Flags:
ASM := sdasz80
ASMFLAGS := -plosgffw
MAINFILE := $(SRCDIR)/main.c

# Linker and Linker Flags:
LNK := sdldz80
LNKFLAGS := -mjwxeun $(addprefix -b ,$(CODESEGS)) $(addprefix -k ,$(LIBPATHS))

# Library:
CLIB := sdcclib

INCFILES := $(notdir $(wildcard $(INCDIR)/*.h))
SRCFILES := $(notdir $(wildcard $(SRCDIR)/*.c) $(wildcard $(SRCDIR)/*.s))

# Include Target Makefile:
# 	- Adds required Libraries.
#	- Sets the Main compilation file.
#	- Sets the programs area.
#	- Sets the output file.
MAKEFILES := $(wildcard $(TARGET)/*.mk)
include $(MAKEFILES)
LNKFLAGS += $(addprefix -l ,$(LIBRARIES))
CCFLAGS += $(addprefix --codeseg, $(AREA))

vpath %.c $(SRCDIR) $(COMSRCDIR)
vpath %.s $(SRCDIR) $(COMSRCDIR)

SfromS := $(addprefix $(ASMDIR)/,$(filter %.s,$(notdir $(SRCFILES))))
SfromC := $(addprefix $(ASMDIR)/,$(filter %.c,$(notdir $(SRCFILES))))
SfromC := $(SfromC:%.c=%.s)
MAINREL := $(notdir $(MAINFILE:%.c=%.rel))
RELS := $(notdir $(SfromS)) $(notdir $(SfromC))
RELS := $(RELS:%.s=%.rel)
RELS := $(MAINREL) $(filter-out $(MAINREL),$(RELS))
RELS := $(addprefix $(RELDIR)/,$(RELS))

.SECONDARY :
.PHONY : print clean build clean-build

# TOP-LEVEL RULES: ======================================================================
# Target :
#========================================================================================
build : $(OUTDIR)/$(OUTPUT)

clean-build : clean build

clean :
	@echo Cleaning output directory...
	$(RM) "$(OUTDIR)"

print :
	@echo ------------------------------------------------------------
	@echo Target        = $(call OS_SYN,$(TARGET))
	@echo Makefile      = $(call OS_SYN,$(MAKEFILES))
	@echo Output File   = $(call OS_SYN,$(OUTDIR:$(SELFDIR)%=%)/$(OUTPUT))
	@echo ------------------------------------------------------------
	@echo Source Files  = $(call OS_SYN,$(SRCFILES))
	@echo Include Files = $(call OS_SYN,$(INCFILES))
	@echo ------------------------------------------------------------
	@echo S from S      = $(notdir $(SfromS))
	@echo S from C      = $(notdir $(SfromC))
	@echo ------------------------------------------------------------
#========================================================================================
	
# STATIC PATTERN RULES: =================================================================
# Targets : Target Pattern : Dependancy Pattern
#========================================================================================
$(SfromC) : $(ASMDIR)/%.s : %.c
	$(MK) $(call OS_SYN,$(ASMDIR))
	@echo Compiling $(notdir $<)..."
	$(CC) $(CCFLAGS) $(CCINC) $(CCDEF) -o $@ $<

$(SfromS) : $(ASMDIR)/%.s : %.s
	$(MK) $(call OS_SYN,$(ASMDIR))
	@echo Copying $(notdir $<)...
	$(CP) $(call OS_SYN,$<) $(call OS_SYN,$@)
#========================================================================================

# PATTERN RULES: ========================================================================
# Target Pattern : Dependancy Pattern
#========================================================================================
$(RELDIR)/%.rel : $(ASMDIR)/%.s
	$(MK) $(call OS_SYN,$(RELDIR))
	@echo Assembling $(notdir $<)...
	$(ASM) $(ASMFLAGS) $@ $<

$(LNKDIR)/%.ihx : $(RELS)
	$(MK) $(call OS_SYN,$(LNKDIR))
	@echo Linking $(notdir $@)...
	-$(LNK) $(LNKFLAGS) -i $@ $^

$(OUTDIR)/%.bin : $(LNKDIR)/%.ihx
	@echo Creating binary $(notdir $@)...
	$(call BIN_CP,$<,$@)
	@echo Binary file available at $@.

$(OUTDIR)/%.lib : $(RELS)
	echo Creating Library $(notdir $@)...
	@$(CLIB) $@ $^
	echo Library file available at $@.
#========================================================================================

include mem_map.mk

SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
SRCDIR := $(SELFDIR)$(TARGET)/src
INCDIR := $(SELFDIR)$(TARGET)/inc
OUTDIR := $(SELFDIR)$(TARGET)/out
ASMDIR := $(OUTDIR)/asm
RELDIR := $(OUTDIR)/rel
LNKDIR := $(OUTDIR)/lnk
LIBDIR := $(SELFDIR)lib
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

MAKEFILES := $(wildcard $(TARGET)/*.mk)
include $(MAKEFILES)

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

clean-build : clean build

print :
	@echo "TARGET = $(TARGET)"
	@echo "MAKEFILES = $(MAKEFILES)"
	@echo "------------------------------------------------------------"
	@echo "Source Dir = $(SRCDIR)"
	@echo "Include Dir = $(INCDIR)"
	@echo "------------------------------------------------------------"
	@echo "Include Files = $(INCFILES)"
	@echo "Source Files = $(SRCFILES)"
	@echo "------------------------------------------------------------"
	@echo "S from S = $(SfromS)"
	@echo "S from C = $(SfromC)"
	@echo "$(LNKFLAGS)"

$(SfromC) : $(ASMDIR)/%.s : %.c
	@mkdir -p $(ASMDIR)
	@echo "Compiling $(notdir $<)..."
	@$(CC) $(CCFLAGS) $(CCINC) $(CCDEF) -o $@ $<

$(SfromS) : $(ASMDIR)/%.s : %.s
	@mkdir -p $(ASMDIR)
	@echo "Copying $(notdir $<)..."
	@cp $< $@

$(RELDIR)/%.rel : $(ASMDIR)/%.s
	@mkdir -p $(RELDIR)
	@echo "Assembling $(notdir $<)..."
	@$(ASM) $(ASMFLAGS) $@ $<

$(LNKDIR)%.ihx : $(RELS)
	@mkdir -p $(LNKDIR)
	@echo "Linking $(notdir $@)..."
	@$(LNK) $(LNKFLAGS) -i $@ $^

$(OUTDIR)/%.bin : $(LNKDIR)/%.ihx
	@echo "Creating binary $(notdir $@)..."
	@objcopy -Iihex -Obinary $< $@
	@echo "Binary file available at $@."

$(OUTDIR)/%.lib : $(RELS)
	@echo "Creating Library $(notdir $@)..."
	@$(CLIB) $@ $^
	@echo "Library file available at $@."

clean :
	@echo "Cleaning output directory..."
	@rm -rf $(OUTDIR)


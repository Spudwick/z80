#===============================================
# SDCC Toolchain:
#===============================================
SDCC_PREFIX :=

SDCC_PP := $(SDCC_PREFIX)sdcpp
SDCC_PP_FLGS := -nostdinc -std=c99

SDCC_CC := $(SDCC_PREFIX)sdcc
SDCC_CC_FLGS := --std-sdcc99 -mz80 --no-std-crt0 --vc -S

SDCC_ASM := $(SDCC_PROFIX)sdasz80
SDCC_ASM_FLGS := -plosgffw

SDCC_LNK := $(SDCC_PREFIX)sdldz80
SDCC_LNK_FLGS := -mjwxeun

SDCC_BIN := $(SDCC_PROFIX)sdobjcopy
SDCC_BIN_FLGS := -Iihex -Obinary

SDCC_LIB := $(SDCC_PREFIX)sdcclib
SDCC_LIB_FLGS :=

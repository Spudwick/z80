
BUILD_VER_NAME	:= Z80 Build System SDCC
BUILD_VER_MAJ	:= 0
BUILD_VER_MIN	:= 3

BUILD_TOOLCHAIN	:= SDCC

SDCC_VER 		:= $(shell sdcc --version | sed -n 's/.*\([0-9]\.[0-9]\.[0-9]*\).*/\1/p')
SDCC_VER_MAJ	:= $(word 1,$(subst ., ,$(SDCC_VER)))
SDCC_VER_MIN	:= $(word 2,$(subst ., ,$(SDCC_VER)))
SDCC_VER_SUB	:= $(word 3,$(subst ., ,$(SDCC_VER)))
SDCC_VER_BUILD	:= $(shell sdcc --version | sed -n 's/.*\(\#[0-9]*\).*/\1/p' | sed 's/\#//g')

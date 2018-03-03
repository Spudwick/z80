SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

CCFLAGS += --codeseg CODE

LNKFLAGS += -l z80std

build : $(SELFDIR)out/main.bin

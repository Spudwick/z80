SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

CCFLAGS += --codeseg CODE

MAINFILE :=
build : $(SELFDIR)out/z80core.lib

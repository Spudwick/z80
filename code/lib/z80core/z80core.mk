SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

AREA := CODE
MAINFILE :=
LIBRARIES :=
OUTPUT := $(SELFDIR)out/z80core.lib

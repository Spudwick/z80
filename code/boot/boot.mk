SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

AREA := 
MAINFILE :=
LIBRARIES :=
OUTPUT := $(SELFDIR)out/boot.bin

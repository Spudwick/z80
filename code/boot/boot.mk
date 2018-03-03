SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

MAINFILE :=

build : $(SELFDIR)out/boot.bin

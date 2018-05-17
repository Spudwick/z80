SELFDIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

AREA := CODE
MAINFILE := 
LIBRARIES := z80std
OUTPUT := $(SELFDIR)out/main.bin
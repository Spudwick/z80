
ifeq ($(OS),Windows_NT)
SDCC_INSTALLDIR := "/Program Files/SDCC_3_8_0"
else
SDCC_INSTALLDIR := /system/usr/share/sdcc
endif


ifeq ($(OS),Windows_NT)
CP		= copy $(call OS_PATH,$1) $(call OS_PATH,$2)
MK_DIR		= if not exist $(call OS_PATH,$(1)) mkdir $(call OS_PATH,$(1))
RM_DIR		= if exist $(call OS_PATH,$(1)) rmdir /s /q $(call OS_PATH,$(1))
RM_FILE		= if exist $(call OS_PATH,$(1)) del /f /q $(call OS_PATH,$(1))
else
CP           	= cp $(call OS_PATH,$1) $(call OS_PATH,$2)
MK_DIR       	= mkdir -p $(call OS_PATH,$(1))
RM_DIR       	= rm -rf $(call OS_PATH,$(1))
RM_FILE      	= $(RM_DIR)
endif


CDEF 			:= sdcpp -M

CPP 			:= sdcpp 
CPPFLG_STD		:= -nostdinc -Wall -std=c99
CPPFLG_DEF		:= -obj-ext=.rel -D__SDCC_STACK_AUTO -D__SDCC_CHAR_UNSIGNED -D__SDCC_INT_LONG_REENT -D__SDCC_FLOAT_REENT -D__SDCC=$(SDCC_VER) -D__SDCC_VERSION_MAJOR=$(SDCC_VER_MAJ) -D__SDCC_VERSION_MINOR=$(SDCC_VER_MIN) -D__SDCC_VERSION_PATCH=$(SDCC_VER_PAT) -DSDCC=360 -D__SDCC_REVISION=$(SDCC_REV) -D__SDCC_z80 -D__STDC_NO_COMPLEX__=1 -D__STDC_NO_THREADS__=1 -D__STDC_NO_ATOMICS__=1 -D__STDC_NO_VLA__=1 -D__STDC_ISO_10646__=201409L -D__STDC_UTF_16__=1 -D__STDC_UTF_32__=1


CC      		:= sdcc
CCFLAGS 		:= --std-sdcc99 -mz80 --no-std-crt0 --vc -S


ASM				:= sdasz80
ASMFLAGS		:= -plosgffw
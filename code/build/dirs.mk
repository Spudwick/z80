#===============================================
# $(call GET_ROOT)
#-----------------------------------------------
#    Returns the root directory of the code
#    repository.
#===============================================
_R_DIR_ := $(subst /build/,,$(dir $(abspath $(lastword $(MAKEFILE_LIST)))))
GET_ROOT = $(_R_DIR_)

#===============================================
# $(call GET_CWD)
#-----------------------------------------------
#   Returns the current working directory.
#===============================================
GET_CWD = $(shell pwd)

#===============================================
# Directory Structures:
#===============================================
DIR_PROG		:= $(call GET_ROOT)/prog
DIR_PROG_BUILD	:= $(DIR_PROG)

DIR_LIB			:= $(call GET_ROOT)/lib
DIR_LIB_BUILD	:= $(DIR_LIB)/src
DIR_LIB_INC	    := $(DIR_LIB)/inc
DIR_LIB_BIN	    := $(DIR_LIB)

DIRTREE_OUT		:= out
DIRTREE_PP		:= $(DIRTREE_OUT)/pp
DIRTREE_ASM		:= $(DIRTREE_OUT)/asm
DIRTREE_OBJ		:= $(DIRTREE_OUT)/obj
DIRTREE_LNK		:= $(DIRTREE_OUT)/lnk
DIRTREE_BIN		:= $(DIRTREE_OUT)
DIRTREE_LIBINC	:= inc
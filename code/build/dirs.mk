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
_SRC_TREE_ := src
_INC_TREE_ := inc
_OUT_TREE_ := out
_PRE_TREE_ := $(_OUT_TREE_)/pp
_ASM_TREE_ := $(_OUT_TREE_)/asm
_OBJ_TREE_ := $(_OUT_TREE_)/obj


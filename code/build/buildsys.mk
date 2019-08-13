# Include the core build system utilities:
include ./build/tools.mk
include ./build/dirs.mk
#include ./build/rules.mk


#===============================================
# $(call REG_GLBL_TGT,<Tgts>)
#-----------------------------------------------
#    Registers global makefile targets.
#===============================================
REG_GLBL_TGT = $(eval __GLOBAL_TGTS += $1)

#===============================================
# $(call SET_TGT_DIR,<Tgt>,<Dir>)
# $(call GET_TGT_DIR,<Tgt>)
#-----------------------------------------------
#   Set and Get goal file for given makefile
#   target.
#===============================================
SET_TGT_DIR = $(eval __DIR_$1 := $2)
GET_TGT_DIR = $(__DIR_$1)
GET_TGT_ASMDIR = $(__DIR_$1)/$(_ASM_TREE_)
GET_TGT_OBJDIR = $(__DIR_$1)/$(_OBJ_TREE_)

#===============================================
# $(call ADD_TGT_SRCS,<Tgt>,<Srcs>)
# $(call GET_TGT_SRCS,<Tgt>)
# $(call GET_TGT_CSRCS,<Tgt>)
# $(call GET_TGT_SSRCS,<Tgt>)
#-----------------------------------------------
#    Set and get all source files for a given
#    makefile target.
#===============================================
define ADD_TGT_SRC =
$(eval __SRC_$1 += $2)
ifeq ($(suffix $2),.s)
$(eval $(call GET_TGT_OBJDIR,$1)/$(addsuffix .rel,$(basename $(notdir $2))) : )
endif
endef
GET_TGT_SRCS = $(__SRC_$1)
GET_TGT_CSRCS = $(filter %.c,$(call GET_TGT_SRCS,$1))
GET_TGT_SSRCS = $(filter %.s,$(call GET_TGT_SRCS,$1))

#===============================================
# $(call ADD_TGT_INCDIRS,<Tgt>,<Dir>)
# $(call GET_TGT_INCDIRS,<Tgt>)
#-----------------------------------------------
#    Set and get all include directories for
#    given makefile target.
#===============================================
ADD_TGT_INCDIRS = $(eval __INCDIRS_$1 += $2)
GET_TGT_INCDIRS = $(__INCDIRS_$1)

#===============================================
# $(call SET_TGT_GOAL,<Tgt>,<Goal>)
# $(call GET_TGT_GOAL,<Tgt>)
#-----------------------------------------------
#    Set and get goal for given makefile
#    target.
#===============================================
SET_TGT_GOAL = $(eval __GOAL_$1 := $2)
GET_TGT_GOAL = $(__GOAL_$1)


# Include additional module utilities:
include ./build/libs.mk


$(foreach gl_tgt,$(__GLOBAL_TGTS),\
\
$(eval $(call GET_TGT_GOAL,$(gl_tgt)) : $(__OBJ_$(gl_tgt)))\
\
)



define SAFE_PATH
$(subst /,^,$1)
endef


#======================================================================================
# DATABASE BUILD FUNCTIONS:
#======================================================================================

define DB_SET_DIR
DB_DIR_$1 := $2
endef
define DB_GET_DIR
$(DB_DIR_$1)
endef


define DB_PP_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_PP)
endef


define DB_ASM_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_ASM)
endef


define DB_REL_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_OBJ)
endef


define DB_LNK_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_LNK)
endef


define DB_ADD_LIB
DB_LIBS += $1
DB_TGT_$1 := $(DIR_LIB_BIN)/$1.lib
endef
define DB_GET_LIBS
$(DB_LIBS)
endef


define DB_ADD_PROG
DB_PROGS += $1
DB_TGT_$1 := $(call DB_GET_DIR,$1)/$(DIRTREE_BIN)/$1.bin
endef
define DB_GET_PROGS
$(DB_PROGS)
endef

define DB_GET_TGT
$(DB_TGT_$1)
endef

define DB_GET_MODS
$(DB_LIBS) $(DB_PROGS)
endef


define DB_ADD_SRCDIR
DB_SRCDIRS_$1 += $2
$(foreach source,$(wildcard $2/*.c) $(wildcard $2/*.s),\
	$(call DB_ADD_SRC,$1,$(source))\
)
endef
define DB_GET_SRCDIRS
$(DB_SRCDIRS_$1)
endef


define DB_ADD_SRC
$(if $(filter .c,$(suffix $2)),\
	$(eval $(call DB_ADD_CSRC,$1,$2))\
)
$(if $(filter .s,$(suffix $2)),\
	$(eval $(call DB_ADD_SSRC,$1,$2))\
)
endef
define DB_GET_SRCS
$(call DB_GET_CSRCS,$1) $(call DB_GET_SSRCS,$1)
endef


define DB_ADD_CSRC
DB_CSRC_$1 += $2
endef
define DB_GET_CSRCS
$(DB_CSRC_$1)
endef


define DB_ADD_SSRC
DB_SSRC_$1 += $2
endef
define DB_GET_SSRCS
$(DB_SSRC_$1)
endef


define DB_GET_MOD
$(strip \
$(foreach module,$(call DB_GET_MODS),\
	$(if $(filter $1,$(call DB_GET_SRCS,$(module))),\
		$(module)\
	)\
	$(if $(filter $1,$(call DB_GET_DIR,$(module))/),\
		$(module)\
	)\
	$(if $(filter $1,$(call DB_GET_DIR,$(module))),\
		$(module)\
	)\
)\
)
endef


define DB_SET_SEG
DB_SEG_$1 := $2
endef
define DB_GET_SEG
$(or \
	$(or \
		$(DB_SEG_$1),\
		$(DB_SEG_$(call DB_GET_MOD,$1))\
	),\
	UNDEF\
)
endef


define DB_ADD_CLNTGT
DB_CLN_$1 += $2
endef
define DB_GET_CLNTGTS
$(DB_CLN_$1)
endef


define DB_SEGMENT
$(if $(filter .c,$(suffix $1)),\
	$(eval $(call DB_SET_SEG,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))$1,$2)),\
	$(eval $(call DB_SET_SEG,$(call DB_GET_MOD,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))),$1))\
)
endef


define DB_LOAD_LIBRARY
$(eval $(call DB_SET_DIR,$1,$2))
$(eval $(call DB_ADD_LIB,$1))
$(eval $(call DB_ADD_SRCDIR,$1,$2))
$(foreach mkfile,$(wildcard $2/*.mk),\
	$(eval include $(mkfile))\
)
endef


define DB_LOAD_PROGRAM
$(eval $(call DB_SET_DIR,$1,$2))
$(eval $(call DB_ADD_PROG,$1))
$(eval $(call DB_ADD_SRCDIR,$1,$2))
$(foreach mkfile,$(wildcard $2/*.mk),\
	$(eval include $(mkfile))\
)
endef


define DB_LOAD_LIBS
$(foreach library,$(wildcard $(DIR_LIB_BUILD)/*),\
	$(eval $(call DB_LOAD_LIBRARY,$(notdir $(library)),$(library)))\
)
endef


define DB_LOAD_PROGS
$(foreach program,$(wildcard $(DIR_PROG_BUILD)/*),\
	$(eval $(call DB_LOAD_PROGRAM,$(notdir $(program)),$(program)))\
)
endef


define DB_INITIALISE
$(eval $(call DB_LOAD_LIBS))
$(eval $(call DB_LOAD_PROGS))

$(eval $(call RULES_GENERATE))
endef


#======================================================================================
# DATABASE RULE FUNCTIONS:
#======================================================================================

define RULES_GEN_DEP
$(eval $1 : $2)
endef


define RULES_GEN_LIB_TGT
$(foreach src,$(call DB_GET_SRCS,$1),\
	$(call RULES_GEN_DEP,$(DIR_LIB_BIN)/$1.lib,$(call RULES_GET_REL,$(src)))
)
$(call RULES_GEN_LIB_HDRS,$1)
$(call RULES_GEN_DEP,$1,$(DIR_LIB_BIN)/$1.lib)
$(eval $(call DB_ADD_CLNTGT,$1,$(DIR_LIB_BIN)/$1.lib))
endef


define RULES_GEN_LIB_HDRS
$(foreach hdr,$(wildcard $(call DB_GET_DIR,$1)/$(DIRTREE_LIBINC)/*.h),\
	$(call RULES_GEN_DEP,$(DIR_LIB_INC)/$(notdir $(hdr)),$(hdr))
	$(call RULES_GEN_DEP,$1,$(DIR_LIB_INC)/$(notdir $(hdr)))
	$(eval $(call DB_ADD_CLNTGT,$1,$(DIR_LIB_INC)/$(notdir $(hdr))))
)
endef


define RULES_GEN_PROG_TGT
$(foreach src,$(call DB_GET_SRCS,$1),\
	$(call RULES_GEN_DEP,$(call DB_LNK_DIR,$1)/$1.ihx,$(call RULES_GET_REL,$(src)))
)
$(call RULES_GEN_DEP,$(call DB_GET_DIR,$1)/$(DIRTREE_OUT)/$1.bin,$(call DB_LNK_DIR,$1)/$1.ihx)
$(call RULES_GEN_DEP,$1,$(call DB_GET_DIR,$1)/$(DIRTREE_OUT)/$1.bin)
endef


define RULES_GET_REL
$(call DB_REL_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.rel))
endef


define RULES_GET_PP
$(call DB_PP_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.c))
endef


define RULES_GET_ASM
$(call DB_ASM_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.s))
endef


define RULES_GENERATE
$(foreach module,$(call DB_GET_MODS),\
	$(foreach src,$(call DB_GET_SSRCS,$(module)),\
		$(call RULES_GEN_DEP,$(call RULES_GET_REL,$(src)),$(src))		
	)
	$(foreach src,$(call DB_GET_CSRCS,$(module)),\
		$(call RULES_GEN_DEP,$(call RULES_GET_PP,$(src)),$(src))
		$(call RULES_GEN_DEP,$(call RULES_GET_ASM,$(src)),$(call RULES_GET_PP,$(src)))
		$(call RULES_GEN_DEP,$(call RULES_GET_REL,$(src)),$(call RULES_GET_ASM,$(src)))
	)
	$(call RULES_GEN_DEP,clean,$(module)-clean)
	$(eval $(call DB_ADD_CLNTGT,$(module),$(call DB_GET_DIR,$(module))/$(DIRTREE_OUT)))
)
$(foreach program,$(call DB_GET_PROGS),\
	$(call RULES_GEN_PROG_TGT,$(program))
)
$(foreach library,$(call DB_GET_LIBS),\
	$(call RULES_GEN_LIB_TGT,$(library))
)
$(call RULES_GEN_DEP,build,$(call DB_GET_MODS))
endef


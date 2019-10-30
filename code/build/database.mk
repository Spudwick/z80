

define SAFE_PATH
$(subst /,^,$1)
endef


define DB_SET_DIR
DB_DIR_$1 := $2
endef
define DB_GET_DIR
$(DB_DIR_$1)
endef


define DB_ADD_LIB
DB_LIBS += $1
DB_TGT_$1 := $(DIR_LIB_BIN)/$1.lib
endef
define DB_GET_LIBS
$(DB_LIBS_$1)
endef


define DB_ADD_PROG
DB_PROGS += $1
DB_TGT_$1 := $(call DB_GET_DIR,$1)/$(DIRTREE_BIN)/$1.bin
endef
define DB_GET_PROGS
$(DB_PROGS_$1)
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
endef


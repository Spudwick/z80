
define DB_SET_DIR
DB_DIR_$1 := $2
$(eval $(call DB_ADD_CLEANTGT,$1,$2/$(DIRTREE_OUT)))
endef
define DB_GET_DIR
$(DB_DIR_$1)
endef

define DB_ADD_CLEANTGT
DB_CLNTGTS_$1 += $2
endef
define DB_GET_CLEANTGTS
$(DB_CLNTGTS_$1)
endef

define DB_ADD_CSRC
DB_CSRC_$1 += $2
$(eval $(call DB_GET_DIR,$1)/$(DIRTREE_PP)/$(notdir $2) : $2)
$(eval $(call DB_GET_DIR,$1)/$(DIRTREE_ASM)/$(notdir $(2:%.c=%.s)) : $(call DB_GET_DIR,$1)/$(DIRTREE_PP)/$(notdir $2))
$(eval DB_ADD_SSRC,$1,$(call DB_GET_DIR,$1)/$(DIRTREE_ASM)/$(notdir $(2:%.c=%.s)))
endef
define DB_GET_CSRC
$(DB_CSRC_$1)
endef

define DB_ADD_SSRC
DB_SSRC_$1 += $2
endef
define DB_GET_SSRC
$(DB_SSRC_$1)
endef

define DB_ADD_OBJ
DB_OBJ_$1 += $2
endef
define DB_GET_OBJ
$(DB_OBJ_$1)
endef

define DB_ADD_LIBINC
DB_LIBINC_$1 += $2
$(eval $(call DB_ADD_CLEANTGT,$1,$(DIR_LIB_INC)/$(notdir $2)))
$(eval $(DIR_LIB_INC)/$(notdir $2) : $2)
$(eval $1-hdrs : $(DIR_LIB_INC)/$(notdir $2))
endef
define DB_GET_LIBINC
$(DB_LIBINC_$1)
endef

define DB_ADD_SRCDIR
$(foreach source,$(wildcard $2/*.c),\
	$(eval $(call DB_ADD_CSRC,$1,$(source)))\
)
$(foreach source,$(wildcard $2/*.s),\
	$(eval $(call DB_ADD_SSRC,$1,$(source)))\
)
endef

define DB_ADD_LIBINCDIR
$(foreach source,$(wildcard $2/*.h),\
	$(eval $(call DB_ADD_LIBINC,$1,$(source)))\
)
endef

define DB_LOAD_LIBS
$(foreach library,$(wildcard $(DIR_LIB_BUILD)/*),\
	$(eval DB_LIBS += $(notdir $(library)))\
	$(eval $(call DB_SET_DIR,$(notdir $(library)),$(library)))\
	$(eval $(call DB_ADD_SRCDIR,$(notdir $(library)),$(library)))\
	$(eval $(call DB_ADD_LIBINCDIR,$(notdir $(library)),$(library)/$(DIRTREE_LIBINC)))\
	$(eval $(notdir $(library)) : $(DIR_LIB_BIN)/$(notdir $(library)).lib $(notdir $(library))-hdrs)
	$(eval clean : $(notdir $(library))-clean)
	$(eval headers : $(notdir $(library))-hdrs)
)
endef

define DB_LOAD_PROGS
$(foreach program,$(wildcard $(DIR_PROG_BUILD)/*),\
	$(eval DB_PROGS += $(notdir $(program)))\
	$(eval $(call DB_SET_DIR,$(notdir $(program)),$(program)))\
	$(eval $(call DB_ADD_SRCDIR,$(notdir $(program)),$(program)))\
	$(eval $(notdir $(program)) : $(program)/$(DIRTREE_BIN)/$(notdir $(program)).bin)
	$(eval clean : $(notdir $(program))-clean)
)
endef

define DB_INITIALISE
$(eval $(call DB_LOAD_LIBS))
$(eval $(call DB_LOAD_PROGS))
endef

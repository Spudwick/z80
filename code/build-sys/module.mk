
define ADD_MODULE 
#$(call SET_MODDIR,$(1),$(ROOT_DIR)$(1))				# Want to do this here but all references to MOD_DIR then return nothing.

$(call ADD_SRCDIR,$(ROOT_DIR)$(1)/$(SRC_TREE),$(1))

include $(ROOT_DIR)$(1)/$(notdir $(1)).mod

clean : $(1).CLEAN
endef


define SET_MODDIR
MOD_DIR_$(1) := $(2)
endef


define GET_MODDIR
$(MOD_DIR_$(1))
endef


define SET_REF_FILE
REF_FILE_$(subst :,,$(1)) := $(2)
endef


define GET_REF_FILE
$(REF_FILE_$(subst :,,$(1)))
endef


define SET_SRC_AREA
SRC_AREA_$(subst :,,$(1)) := $(2)
endef


define GET_SRC_AREA
$(SRC_AREA_$(subst :,,$(1)))
endef


define SET_LCL_INC
LCL_INC_$(subst :,,$(1)) := $(2)
endef


define GET_LCL_INC
$(LCL_INC_$(subst :,,$(1)))
endef


# ================================================================
# $(call ADD_SRCDIR,<Directory>,<Module>)
# ----------------------------------------------------------------
#    Adds all source files in given directory to given module.
# ================================================================
define ADD_SRCDIR
$(foreach FL,$(wildcard $1*.c),$(eval $(call ADD_CSRC,$(FL),$(2),CODE)))
$(foreach FL,$(wildcard $1*.s),$(eval $(call ADD_SSRC,$(FL),$(2))))
endef
# ================================================================


# ================================================================
# $(call ADD_CSRC,<File>,<Module>,<Area>)
# ----------------------------------------------------------------
#    Adds given .c source file to given module.
# ================================================================
define ADD_CSRC
SRCS_$(2) += $(1)
CPPS_$(2) += $(call GET_MODDIR,$(2))/$(PP_TREE)$(notdir $(1:%$(suffix $(1))=%.c))
ASMS_$(2) += $(call GET_MODDIR,$(2))/$(ASM_TREE)$(notdir $(1:%$(suffix $(1))=%.s))
OBJS_$(2) += $(call GET_MODDIR,$(2))/$(REL_TREE)$(notdir $(1:%$(suffix $(1))=%.rel))
OBJS_LIST += $(call GET_MODDIR,$(2))/$(REL_TREE)$(notdir $(1:%$(suffix $(1))=%.rel))

$(call SET_SRC_AREA,$(1),$(3))
$(call SET_SRC_AREA,$(call GET_MODDIR,$(2))/$(PP_TREE)$(notdir $(1:%$(suffix $(1))=%.c)),$(3))

$(call SET_REF_FILE,$(1),$(call GET_MODDIR,$(2))/$(DEF_TREE)$(notdir $(1:%$(suffix $(1))=%.def)))
$(call GET_MODDIR,$(2))/$(DEF_TREE)$(notdir $(1:%$(suffix $(1))=%.def)) : $(1)

$(call GET_MODDIR,$(2))/$(PP_TREE)$(notdir $(1:%$(suffix $(1))=%.c)) : $(1) #$(call GET_MODDIR,$(2))/$(DEF_TREE)$(notdir $(1:%$(suffix $(1))=%.def))
$(call GET_MODDIR,$(2))/$(ASM_TREE)$(notdir $(1:%$(suffix $(1))=%.s)) : $(call GET_MODDIR,$(2))/$(PP_TREE)$(notdir $(1:%$(suffix $(1))=%.c))
$(call GET_MODDIR,$(2))/$(REL_TREE)$(notdir $(1:%$(suffix $(1))=%.rel)) : $(call GET_MODDIR,$(2))/$(ASM_TREE)$(notdir $(1:%$(suffix $(1))=%.s))

$(call SET_LCL_INC,$(1),$(call GET_MODDIR,$(2))/$(INC_TREE))
endef
# ================================================================


# ================================================================
# $(call ADD_SSRC,<File>,<Module>)
# ----------------------------------------------------------------
#    Adds given .s source file to given module.
# ================================================================
define ADD_SSRC
ASMS_$(2) += $(1)
OBJS_$(2) += $(call GET_MODDIR,$(2))/$(REL_TREE)$(notdir $(1:%$(suffix $(1))=%.rel))

$(call GET_MODDIR,$(2))/$(REL_TREE)$(notdir $(1:%$(suffix $(1))=%.rel)) : $(1)
endef
# ================================================================
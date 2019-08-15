
#===============================================
# $(call GET_LIB_DIR,<Lib Tgt>)
#-----------------------------------------------
#    Gets the library directory for a given
#    makefile target.
#===============================================
GET_LIB_DIR = $(__DIR_$1)


# Get Library DIrectory:
LIB_DIR := $(call GET_ROOT)/lib

# Get list of all library folders:
LIB_FLDS := $(sort $(wildcard $(LIB_DIR)/*/))

# Build list of Library targets:
LIB_TGTS := $(patsubst $(call GET_ROOT)/%/,%,$(LIB_FLDS))

# Register Library targets as global makefile targets:
$(call REG_GLBL_TGT,$(LIB_TGTS))
# Populate required database fields to allow buildsystem to process:
$(foreach target,$(LIB_TGTS),$(eval $(call SET_TGT_DIR,$(target),$(call GET_ROOT)/$(target))))
$(foreach target,$(LIB_TGTS),$(eval $(call SET_TGT_GOAL,$(target),$(call GET_TGT_DIR,$(target))/$(_OUT_TREE_)/$(patsubst lib/%,%,$(target)).lib)))
$(foreach target,$(LIB_TGTS),$(foreach src,$(filter %.s,$(wildcard $(call GET_TGT_DIR,$(target))/$(_SRC_TREE_)/*)),$(eval $(call ADD_TGT_SSRC,$(target),$(src)))))
$(foreach target,$(LIB_TGTS),$(foreach src,$(filter %.c,$(wildcard $(call GET_TGT_DIR,$(target))/$(_SRC_TREE_)/*)),$(eval $(call ADD_TGT_CSRC,$(target),$(src)))))
#$(foreach target,$(LIB_TGTS),$(eval $(call ADD_TGT_SRCDIR,$(target),$(call GET_LIB_DIR,$(target))/$(_SRC_TREE_))))

#===============================================
# Rules:
#===============================================
# Make imaginary targets phony:
.PHONY : libraries $(LIB_TGTS)

# Rule to link each Library Target to the umbrella 'libraries' target:
libraries : $(LIB_TGTS)



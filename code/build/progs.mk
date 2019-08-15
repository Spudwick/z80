
# Get list of all library folders:
PROG_FLDS := $(sort $(wildcard $(call GET_ROOT)/prog/*/))

# Build list of Library targets:
PROG_TGTS := $(patsubst $(call GET_ROOT)/%/,%,$(PROG_FLDS))

# Register Library targets as global makefile targets:
$(call REG_GLBL_TGT,$(PROG_TGTS))
# Populate required database fields to allow buildsystem to process:
$(foreach target,$(PROG_TGTS),$(eval $(call SET_TGT_DIR,$(target),$(call GET_ROOT)/$(target))))
$(foreach target,$(PROG_TGTS),$(eval $(call SET_TGT_GOAL,$(target),$(call GET_TGT_DIR,$(target))/$(_OUT_TREE_)/$(patsubst prog/%,%,$(target)).ihx)))
$(foreach target,$(PROG_TGTS),$(foreach src,$(filter %.s,$(wildcard $(call GET_TGT_DIR,$(target))/$(_SRC_TREE_)/*)),$(eval $(call ADD_TGT_SSRC,$(target),$(src)))))
$(foreach target,$(PROG_TGTS),$(foreach src,$(filter %.c,$(wildcard $(call GET_TGT_DIR,$(target))/$(_SRC_TREE_)/*)),$(eval $(call ADD_TGT_CSRC,$(target),$(src)))))

#===============================================
# Rules:
#===============================================
# Make imaginary targets phony:
.PHONY : programs $(PROG_TGTS)

# Rule to link each Library Target to the umbrella 'libraries' target:
programs : $(PROG_TGTS)



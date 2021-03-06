# =======================================================================================
# SELECT MODULE DIRECTORY AND REGISTER MODULE:
# =======================================================================================
MOD_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
$(eval $(call REG_MODULE))
# =======================================================================================

# =======================================================================================
# ADD REQUIRED LIBRARIES:
# =======================================================================================
# N/A
# =======================================================================================

# =======================================================================================
# ADD SOURCE FILES:
# =======================================================================================
$(eval $(call ADD_SRCDIR,$(SRC_DIR),CODE))
# =======================================================================================

# =======================================================================================
# SPECIFY ADDITIONAL DEFINED AREAS:
# =======================================================================================
$(eval $(call ADD_SEG,DATA))
# =======================================================================================
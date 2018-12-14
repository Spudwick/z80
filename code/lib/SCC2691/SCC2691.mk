# =======================================================================================
# SELECT MODULE DIRECTORY AND REGISTER LIBRARY:
# =======================================================================================
MOD_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))
$(eval $(call REG_LIBRARY))
# =======================================================================================

# =======================================================================================
# SPECIFY REQUIRED LIBRARIES:
# =======================================================================================
$(eval $(call ADD_LIB,z80std))
$(eval $(call ADD_LIB,z80core))
# =======================================================================================

# =======================================================================================
# ADD SOURCE FILES:
# =======================================================================================
$(eval $(call ADD_SRCDIR,$(SRC_DIR),CODE))
# =======================================================================================

# =======================================================================================
# SPECIFY ADDITIONAL DEFINED AREAS:
# =======================================================================================
# =======================================================================================


# CHeck that user has specified some modules to build:
ifeq ($(MODULES),)
$(error ERROR: No Module Specified! Usage is 'make MODULES="<module1> [module2] [...]" [clean|build|cbuild|print]')
endif

# Get root directory for project:
ROOT_DIR := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

# Include all makefiles in the build-sys directory:
$(foreach MF,$(wildcard $(ROOT_DIR)build-sys/*.mk),$(eval include $(MF)))

# Include the Memory Map defined in the root directory:
include $(ROOT_DIR)memory.map

# Process each selected module:
$(foreach MOD,$(MODULES),$(eval $(call SET_MODDIR,$(MOD),$(ROOT_DIR)$(MOD))))
$(foreach MOD,$(MODULES),$(eval $(call ADD_MODULE,$(MOD))))

$(foreach MOD,$(MODULES),$(eval build : $(OBJS_$(MOD))))
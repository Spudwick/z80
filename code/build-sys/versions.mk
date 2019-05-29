
# Build System Version: ==========================================
#    Strings for Build System Versioning.
# ----------------------------------------------------------------
MAJOR_VER := 1
MINOR_VER := 0

BUILDSYS_VER := $(MAJOR_VER).$(MINOR_VER)

BUILDSYS_VER_STR := Z80 Project Build System V$(BUILDSYS_VER)
# ================================================================

# SDCC Version: ==================================================
#    Get the version string for the installed SDCC toolchain.
# ----------------------------------------------------------------
SDCC_VER_STR := $(shell sdcc --version)

ifeq ($(OS),Windows_NT)

SDCC_VER := NOT_IMPLEMENTED

SDCC_VER_MAJ := NOT_IMPLEMENTED
SDCC_VER_MIN := NOT_IMPLEMENTED
SDCC_VER_PAT := NOT_IMPLEMENTED
SDCC_REV := NOT_IMPLEMENTED

else

SDCC_VER := $(shell sdcc --version | grep -P '[0-9]*\.[0-9]*\.[0-9]*' -o | tr . _)

SDCC_VER_MAJ := $(shell echo $(SDCC_VER) | cut -d '_' -f 1)
SDCC_VER_MIN := $(shell echo $(SDCC_VER) | cut -d '_' -f 2)
SDCC_VER_PAT := $(shell echo $(SDCC_VER) | cut -d '_' -f 3)
SDCC_REV := $(shell sdcc --version | grep -P '\#[0-9]*' -o | tr -d '\#')

endif
# ================================================================

# DIRECTORY TOOLS: ======================================================================

ifeq ($(OS),"Windows_NT")
GET_CWD			 = $(subst \,/,$(shell cd)/)
OS_SYN       	 = $(subst /,\,$(1))
elif

endif

# DIRECTORY DEFINES: ====================================================================

SELF_DIR		:= $(call GET_CWD)
BUILDSYS_DIR 	:= $(SELF_DIR)/build-sys/
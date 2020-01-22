

define SAFE_PATH
$(subst /,^,$1)
endef




#======================================================================================
# DATABASE BUILD FUNCTIONS:
#======================================================================================

#======================================================================================
# $(call DB_SET_DIR, <module>, <directory>)
# $(call DB_GET_DIR, <module>)
#--------------------------------------------------------------------------------------
# Sets or gets the top level directory for a module.
#======================================================================================
define DB_SET_DIR
DB_DIR_$1 := $2
endef
define DB_GET_DIR
$(DB_DIR_$1)
endef


#======================================================================================
# $(call DB_PP_DIR, <module>)
#--------------------------------------------------------------------------------------
# Get the Pre-Proccessor result directory for a module.
#======================================================================================
define DB_PP_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_PP)
endef


#======================================================================================
# $(call DB_ASM_DIR, <module>)
#--------------------------------------------------------------------------------------
# Get the Compiler result directory for a module.
#======================================================================================
define DB_ASM_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_ASM)
endef


#======================================================================================
# $(call DB_REL_DIR, <module>)
#--------------------------------------------------------------------------------------
# Get the Assembler result directory for a module.
#======================================================================================
define DB_REL_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_OBJ)
endef


#======================================================================================
# $(call DB_LNK_DIR, <module>)
#--------------------------------------------------------------------------------------
# Get the Linker result directory for a module.
#======================================================================================
define DB_LNK_DIR
$(call DB_GET_DIR,$1)/$(DIRTREE_LNK)
endef


#======================================================================================
# $(call DB_ADD_LIB, <library>)
# $(call DB_GET_LIBS)
#--------------------------------------------------------------------------------------
# Add a library to the database, or retrieve list of libraries in database.
#======================================================================================
define DB_ADD_LIB
DB_LIBS += $1
DB_TGT_$1 := $(DIR_LIB_BIN)/$1.lib
endef
define DB_GET_LIBS
$(DB_LIBS)
endef


#======================================================================================
# $(call DB_ADD_PROG, <program>)
# $(call DB_GET_PROGS)
#--------------------------------------------------------------------------------------
# Add a program to the database, or retrieve list of programs in database.
#======================================================================================
define DB_ADD_PROG
DB_PROGS += $1
DB_TGT_$1 := $(call DB_GET_DIR,$1)/$(DIRTREE_BIN)/$1.bin
endef
define DB_GET_PROGS
$(DB_PROGS)
endef


define DB_GET_TGT
$(DB_TGT_$1)
endef


#======================================================================================
# $(call DB_GET_MODS)
#--------------------------------------------------------------------------------------
# Get the list of modules (programs and libraries) in the database.
#======================================================================================
define DB_GET_MODS
$(DB_LIBS) $(DB_PROGS)
endef


#======================================================================================
# $(call DB_ADD_SRCDIR, <module>, <directory>)
# $(call DB_GET_SRCDIRS, <module>)
#--------------------------------------------------------------------------------------
# Add a source directory to a module, or retrieve the list of source directories for
# the module.
# Also triggers adding each source file in the directory to the module, see DB_ADD_SRC.
#======================================================================================
define DB_ADD_SRCDIR
DB_SRCDIRS_$1 += $2
$(foreach source,$(wildcard $2/*.c) $(wildcard $2/*.s),\
	$(call DB_ADD_SRC,$1,$(source))\
)
endef
define DB_GET_SRCDIRS
$(DB_SRCDIRS_$1)
endef


#======================================================================================
# $(call DB_ADD_SRC, <module>, <file:.c||.s>)
# $(call DB_GET_SRCS, <module>)
#--------------------------------------------------------------------------------------
# Adds a .c or .s file to a module, or retrieve a list of all source files (.c and .s)
# attached to a module.
#======================================================================================
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


#======================================================================================
# $(call DB_ADD_CSRC, <module>, <file:.c>)
# $(call DB_GET_CSRCS, <module>)
#--------------------------------------------------------------------------------------
# Adds a .c file to a module, or retrieves the list of .c files attached to module.
#======================================================================================
define DB_ADD_CSRC
DB_CSRC_$1 += $2
endef
define DB_GET_CSRCS
$(DB_CSRC_$1)
endef


#======================================================================================
# $(call DB_ADD_SSRC, <module>, <file:.s>)
# $(call DB_GET_SSRCS, <module>)
#--------------------------------------------------------------------------------------
# Adds a .s file to a module, or retrieves the list of .s files attached to module.
#======================================================================================
define DB_ADD_SSRC
DB_SSRC_$1 += $2
endef
define DB_GET_SSRCS
$(DB_SSRC_$1)
endef


#======================================================================================
# $(call DB_GET_MOD, <file>||<directory>)
#--------------------------------------------------------------------------------------
# Find which module a file or directory is asociated with.
#======================================================================================
define DB_GET_MOD
$(firstword \
$(strip \
$(foreach module,$(call DB_GET_MODS),\
	$(if $(findstring $(call DB_GET_DIR,$(module)),$1),\
		$(module)\
	)\
	$(if $(filter $1,$(call DB_GET_SRCS,$(module))),\
		$(module)\
	)\
)\
)\
)
endef


#======================================================================================
# $(call DB_SET_SEG, <file>, <segment>)
# $(call DB_GET_SEG, <segment>)
#--------------------------------------------------------------------------------------
# Set or get the code segment associated with a particular file or module.
#======================================================================================
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


#======================================================================================
# $(call DB_ADD_CLNTGT, <module>, <file>||<directory>)
# $(call DB_GET_CLNTGTS, <module>)
#--------------------------------------------------------------------------------------
# Add a file or directory to the clean targets list of a module, or retrieve the list
# of clean targets.
#======================================================================================
define DB_ADD_CLNTGT
DB_CLN_$1 += $2
endef
define DB_GET_CLNTGTS
$(DB_CLN_$1)
endef


#======================================================================================
# $(call DB_LOAD_LIBRARY, <library>, <directory>)
#--------------------------------------------------------------------------------------
# Adds a library to the database:
# 	- Specifies the libraries directory.
# 	- Adds the library to the library list.
# 	- Adds the default source directory.
# 	- Includes any library specific makefiles located in <lib_dir>/*.mk
# Acceptable functions to use in local makefiles are:
# 	- DB_SEGMENT
# 	- DB_ADD_SRC
# 	- DB_ADD_SRCDIR
#======================================================================================
define DB_LOAD_LIBRARY
$(eval $(call DB_SET_DIR,$1,$2))
$(eval $(call DB_ADD_LIB,$1))
$(eval $(call DB_ADD_SRCDIR,$1,$2))
$(foreach mkfile,$(wildcard $2/*.mk),\
	$(eval include $(mkfile))\
)
endef


#======================================================================================
# $(call DB_LOAD_PROGRAM, <program>, <directory>)
#--------------------------------------------------------------------------------------
# Adds a program to the database:
# 	- Specifies the programs directory.
# 	- Adds the program to the program list.
# 	- Adds the default source directory.
# 	- Includes any program specific makefiles located in <prog_dir>/*.mk
# Acceptable functions to use in local makefiles are:
# 	- DB_SEGMENT
# 	- DB_ADD_SRC
# 	- DB_ADD_SRCDIR
#======================================================================================
define DB_LOAD_PROGRAM
$(eval $(call DB_SET_DIR,$1,$2))
$(eval $(call DB_ADD_PROG,$1))
$(eval $(call DB_ADD_SRCDIR,$1,$2))
$(foreach mkfile,$(wildcard $2/*.mk),\
	$(eval include $(mkfile))\
)
endef


#======================================================================================
# $(call DB_LOAD_LIBS)
#--------------------------------------------------------------------------------------
# Loads all libraries from hardcodes library directory, see rules.mk/DIR_LIB_BUILD.
#======================================================================================
define DB_LOAD_LIBS
$(foreach library,$(wildcard $(DIR_LIB_BUILD)/*),\
	$(eval $(call DB_LOAD_LIBRARY,$(notdir $(library)),$(library)))\
)
endef


#======================================================================================
# $(call DB_LOAD_PROGS)
#--------------------------------------------------------------------------------------
# Loads all programs from hardcodes program directory, see rules.mk/DIR_PROG_BUILD.
#======================================================================================
define DB_LOAD_PROGS
$(foreach program,$(wildcard $(DIR_PROG_BUILD)/*),\
	$(eval $(call DB_LOAD_PROGRAM,$(notdir $(program)),$(program)))\
)
endef


#======================================================================================
# $(call DB_INITIALISE)
#--------------------------------------------------------------------------------------
# Top level entry to initialise the build system. Loads all libraries and programs,
# then calls into the rule generation system to create rules and dependancies.
#======================================================================================
define DB_INITIALISE
$(eval $(call DB_LOAD_LIBS))
$(eval $(call DB_LOAD_PROGS))

$(eval $(call RULES_GENERATE))
endef




#======================================================================================
# DATABASE RULE FUNCTIONS:
#======================================================================================

#======================================================================================
# $(call RULES_GEN_DEP, <target>, <dependancy>)
#--------------------------------------------------------------------------------------
# Generic function for creating a dependacy.
#======================================================================================
define RULES_GEN_DEP
$(eval $1 : $2)
endef


#======================================================================================
# $(call RULES_GEN_LIB_TGT, <library>)
#--------------------------------------------------------------------------------------
# Function to generate top level Library target rules and dependancies. The targets
# that are generated are as below:
# 	- <library>				= Top level target.
# 	- <library>.lib			= Library file target.
# Also triggers the gneration of library header copying rules, see RULES_GEN_LIB_HDRS.
# Also adds the <library>.lib file to the libraries clean targets.
#======================================================================================
define RULES_GEN_LIB_TGT
$(foreach src,$(call DB_GET_SRCS,$1),\
	$(call RULES_GEN_DEP,$(DIR_LIB_BIN)/$1.lib,$(call RULES_GET_REL,$(src)))
)
$(call RULES_GEN_LIB_HDRS,$1)
$(call RULES_GEN_DEP,$1,$(DIR_LIB_BIN)/$1.lib)
$(eval $(call DB_ADD_CLNTGT,$1,$(DIR_LIB_BIN)/$1.lib))
endef


#======================================================================================
# $(call RULES_GEN_LIB_HDRS, <library>)
#--------------------------------------------------------------------------------------
# Function to generate dependancies to trigger copying of library header files into
# the top level library include folder, lib/inc/.
# Only header files in <library>/inc are copied.
#======================================================================================
define RULES_GEN_LIB_HDRS
$(foreach hdr,$(wildcard $(call DB_GET_DIR,$1)/$(DIRTREE_LIBINC)/*.h),\
	$(call RULES_GEN_DEP,$(DIR_LIB_INC)/$(notdir $(hdr)),$(hdr))
	$(call RULES_GEN_DEP,$1,$(DIR_LIB_INC)/$(notdir $(hdr)))
	$(eval $(call DB_ADD_CLNTGT,$1,$(DIR_LIB_INC)/$(notdir $(hdr))))
)
endef


#======================================================================================
# $(call RULES_GEN_PROG_TGT, <program>)
#--------------------------------------------------------------------------------------
# Function to generate top level Program target rules and dependancies. The targets
# that are generated are as below:
# 	- <program>				= Top level target.
# 	- <program>.ihx			= IHX target file.
# 	- <program>.bin			= Final Binary target file.
# Also triggers the gneration of library header copying rules, see RULES_GEN_LIB_HDRS.
# Also adds the <library>.lib file to the libraries clean targets.
#======================================================================================
define RULES_GEN_PROG_TGT
$(foreach src,$(call DB_GET_SRCS,$1),\
	$(call RULES_GEN_DEP,$(call DB_LNK_DIR,$1)/$1.ihx,$(call RULES_GET_REL,$(src)))
)
$(call RULES_GEN_DEP,$(call DB_GET_DIR,$1)/$(DIRTREE_OUT)/$1.bin,$(call DB_LNK_DIR,$1)/$1.ihx)
$(call RULES_GEN_DEP,$1,$(call DB_GET_DIR,$1)/$(DIRTREE_OUT)/$1.bin)
endef


#======================================================================================
# $(call RULES_GET_REL, <file>)
#--------------------------------------------------------------------------------------
# Converts a file to a rel object file. Alters path and suffix.
#======================================================================================
define RULES_GET_REL
$(call DB_REL_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.rel))
endef


#======================================================================================
# $(call RULES_GET_PP, <file>)
#--------------------------------------------------------------------------------------
# Converts a file to a preprocessed file. Alters path and suffix.
#======================================================================================
define RULES_GET_PP
$(call DB_PP_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.c))
endef


#======================================================================================
# $(call RULES_GET_ASM, <file>)
#--------------------------------------------------------------------------------------
# Converts a file to an asm file. Alters path and suffix.
#======================================================================================
define RULES_GET_ASM
$(call DB_ASM_DIR,$(call DB_GET_MOD,$1))/$(notdir $(1:$(suffix $(src))=.s))
endef


#======================================================================================
# $(call RULES_GENERATE)
#--------------------------------------------------------------------------------------
# Entry point to generate all rules from built database.
# For .s sources:
# 	- Dependancy between .s and equivilent .rel file.
# For .c sources:
#   - Dependancy between .c and preproccessed .c.
#   - Dependancy between preproccessed .c and .s.
#   - Dependancy between .s and .rel.
# Generates Clean Targets:
# 	- Dependancy between clean and <module>-clean
# 	- Adds modules out directory to clean list.
# Also triggers top level target generation, see RULES_GEN_LIB_TGT and 
# RULES_GEN_PROG_TGT.
#
# TODO : Find better way of allowing Pre-Proccessed .c file access to it's originals
# Segment.
#======================================================================================
define RULES_GENERATE
$(foreach module,$(call DB_GET_MODS),\
	$(foreach src,$(call DB_GET_SSRCS,$(module)),\
		$(call RULES_GEN_DEP,$(call RULES_GET_REL,$(src)),$(src))		
	)
	$(foreach src,$(call DB_GET_CSRCS,$(module)),\
		$(call RULES_GEN_DEP,$(call RULES_GET_PP,$(src)),$(src))
		$(call DB_SET_SEG,$(call RULES_GET_PP,$(src)),$(call DB_GET_SEG,$(src)))
		$(call RULES_GEN_DEP,$(call RULES_GET_ASM,$(src)),$(call RULES_GET_PP,$(src)))
		$(call RULES_GEN_DEP,$(call RULES_GET_REL,$(src)),$(call RULES_GET_ASM,$(src)))
	)
	$(call RULES_GEN_DEP,clean,$(module)-clean)
	$(eval $(call DB_ADD_CLNTGT,$(module),$(call DB_GET_DIR,$(module))/$(DIRTREE_OUT)))
)
$(foreach program,$(call DB_GET_PROGS),\
	$(call RULES_GEN_PROG_TGT,$(program))
)
$(foreach library,$(call DB_GET_LIBS),\
	$(call RULES_GEN_LIB_TGT,$(library))
)
$(call RULES_GEN_DEP,build,$(call DB_GET_MODS))
endef




#======================================================================================
# DATABASE EXTERNAL FUNCTIONS:
#======================================================================================

#======================================================================================
# $(call DB_SEGMENT, <file>, <segment>)
# $(call DB_SEGMENT, <segment>)
#--------------------------------------------------------------------------------------
# Wrapper for segment system that must be called from modules local makefile.
# Either specifies the default segment for all sources in a module, for specifies a
# segment for a specific source file.
#
# NOTE: All paths are relative to local .mk file.
# WARNING: Only use within specific module .mk file.
#======================================================================================
define DB_SEGMENT
$(if $(filter .c,$(suffix $1)),\
	$(eval $(call DB_SET_SEG,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))$1,$2)),\
	$(eval $(call DB_SET_SEG,$(call DB_GET_MOD,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))),$1))\
)
endef


#======================================================================================
# $(call DB_SOURCE, <file:.c||.s>)
# $(call DB_SOURCE, <directory>)
#--------------------------------------------------------------------------------------
# Wrapper for source file system that must be called from within local makefile.
# Either add a specific source file, or add all files in a directory to a modules
# source list.
#
# NOTE: All paths are relative to local .mk file.
# WARNING: Only use within specific module .mk file.
# WARNING: If adding directory, don't use trailing /, see below.
#          Use "directory/folder" not "directory/folder/".
#======================================================================================
define DB_SOURCE
$(if $(filter .c,$(suffix $1)),\
	$(call DB_ADD_SRC,$(call DB_GET_MOD,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))),$(dir $(abspath $(lastword $(MAKEFILE_LIST))))$1),\
	$(call DB_ADD_SRCDIR,$(call DB_GET_MOD,$(dir $(abspath $(lastword $(MAKEFILE_LIST))))),$(dir $(abspath $(lastword $(MAKEFILE_LIST))))$1)\
)	
endef


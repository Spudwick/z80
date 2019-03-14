# SOURCE FILE TOOLS: ===========================================================================================================================================

#===============================================================================================================================================================
# $(call GET_SRCAREA,<file_path><.c>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Retreives the set Code Area for given file.
#===============================================================================================================================================================
define GET_SRCAREA
$(AREA_$(subst :,,$(1)))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call SET_SRCAREA,<file_path><.c>,<Area>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Sets the Code Area for given file and adds area to list of required areas for use when linking.
#===============================================================================================================================================================
define SET_SRCAREA
AREA_$(subst :,,$(1)) = $(2)
ifeq ($(findstring $2,$(SEGS)),)
SEGS += $2
endif
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call GET_DEPFILE,<file_path><.c>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#===============================================================================================================================================================
define GET_DEPFILE
$(DEP_$(subst :,,$(1)))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call SET_DEPFILE,<file_path><.c>,<dep_file><.dep>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#===============================================================================================================================================================
define SET_DEPFILE
DEP_$(subst :,,$(1)) = $(2)
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call REG_SEG,<Area>,<Location>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#===============================================================================================================================================================
define REG_SEG
SEG_$1 = $2
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call ADD_SEG,<Area>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#===============================================================================================================================================================
define ADD_SEG
SEGS += $1
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(call GET_SEGLOC,<Area>)
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
#===============================================================================================================================================================
define GET_SEGLOC
$(SEG_$1)
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call ADD_SRCDIR,<file_path><.c|.s>,[CODE_AREA]))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Adds all .c and .s files in given directory to module.
#===============================================================================================================================================================
define ADD_SRCDIR
$(foreach FL,$(wildcard $1*.c),$(eval $(call ADD_SRC,$(FL),$2)))
$(foreach FL,$(wildcard $1*.s),$(eval $(call ADD_SRC,$(FL))))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call ADD_SRC,<file_path><.c|.s>,[CODE_AREA]))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Adds a .c or .s Source file and the required dependacies to build the coresponding .s and .rel files.
#===============================================================================================================================================================
define ADD_SRC
# ADD .rel FILE TO LIST OF OBJECT FILES.
OBJS += $(OBJ_DIR)$(notdir $(1:%$(suffix $1)=%.rel))

# IF ADDING A .c SOURCE FILE...
ifeq ($(suffix $1),.c)
# ADD TO LIST OF .c SOURCE FILES.
SRCS_C += $(1)
# ADD CORESPONDING .s FILE TO LIST OF ASSEMBLY FILES.
ASMS += $(ASM_DIR)$(notdir $(1:%$(suffix $1)=%.s))
# IF CODE SEGMENT ISN'T SPECIFIED...
ifeq ($(2),)
# DEFAULT CODE SEGMENT TO "CODE".
$(call SET_SRCAREA,$(PP_DIR)$(notdir $(1:%$(suffix $1)=%.c)),CODE)
else
# ELSE: SET CODE SEGMENT AS SPECIFIED.
$(call SET_SRCAREA,$(PP_DIR)$(notdir $(1:%$(suffix $1)=%.c)),$2)
endif

# SET CORESPONDING .dep FILE.
$(call SET_DEPFILE,$1,$(DEP_DIR)$(notdir $(1:%$(suffix $1)=%.dep)))

# GENERATE DEPENDANCY BETWEEN .c (preprocessed) AND .c FILES.
$(PP_DIR)$(notdir $(1:%$(suffix $1)=%.c)) : $(1)
# GENERATE DEPENDANCY BETWEEN .s AND .c FILES.
$(ASM_DIR)$(notdir $(1:%$(suffix $1)=%.s)) : $(PP_DIR)$(notdir $(1:%$(suffix $1)=%.c))
# GENERATE DEPENDANCY BETWEEN .rel and .s FILES.
$(OBJ_DIR)$(notdir $(1:%$(suffix $1)=%.rel)) : $(ASM_DIR)$(notdir $(1:%$(suffix $1)=%.s))
endif

# IF ADDING A .s SOURCE FILE...
ifeq ($(suffix $1),.s)
# ADD TO LIST OF .s SOURCE FILES.
SRCS_S += $(1)

# GENERATE DEPENDANCY BETWEEN .rel and .s FILES.
$(OBJ_DIR)$(notdir $(1:%$(suffix $1)=%.rel)) : $(1)
endif
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call ADD_LIB,<lib_name>))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Specifies that this module requires the given module.
#===============================================================================================================================================================
define ADD_LIB
MOD_LIBS += $(1)
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_LIBS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets a list of all required Library .lib files.
#===============================================================================================================================================================
define GET_LIBS
$(addsuffix .lib,$(MOD_LIBS))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_LIBDIRS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets a list of all required Libraries directories.
#===============================================================================================================================================================
define GET_LIBDIRS
$(addprefix $(LIB_DIR),$(addsuffix /out,$(MOD_LIBS)))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_LIBINCS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets a list of all required libraries include directories.
#===============================================================================================================================================================
define GET_LIBINCS
$(addprefix $(LIB_DIR),$(addsuffix /inc,$(MOD_LIBS)))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call ADD_SYSLIB,<lib_name>))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Specifies that this module requires the given module.
#===============================================================================================================================================================
define ADD_SYSLIB
SYS_LIBS += $(1)
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_SYSLIBS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets a list of all required Library .lib files.
#===============================================================================================================================================================
define GET_SYSLIBS
$(addsuffix .lib,$(SYS_LIBS))
endef
#===============================================================================================================================================================

#===============================================================================================================================================================
# $(eval $(call GET_SYSLIBDIRS))
#---------------------------------------------------------------------------------------------------------------------------------------------------------------
# Gets a list of all required Libraries directories.
#===============================================================================================================================================================
define GET_SYSLIBDIRS
$(addprefix /usr/share/sdcc/lib/,$(SYS_LIBS))
endef
#===============================================================================================================================================================

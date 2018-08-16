# SOURCE FILE TOOLS: ======================================================

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
# $(call SET_SRCAREA,<file_path><.c>,<CODE_AREA>)
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

define GET_DEPFILE
$(DEP_$(subst :,,$(1)))
endef

define SET_DEPFILE
DEP_$(subst :,,$(1)) = $(2)
endef

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

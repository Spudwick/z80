
include ./build/buildsys.mk

ROOT_DIR = $(call GET_ROOT)

print :
	@echo $(__GLOBAL_TGTS)
	@echo $(ROOT_DIR)
	@echo $(LIB_DIR)
	@echo $(LIB_FLDS)
	@echo $(LIB_TGTS)
	@echo $(call GET_LIB_DIR,lib/core)
	@echo $(call GET_TGT_GOAL,lib/core)
	@echo $(call GET_TGT_SRCS,lib/core)
	@echo $(call GET_TGT_CSRCS,lib/core)
	@echo $(call GET_TGT_SSRCS,lib/core)
	@echo -------------------------------------------
	@echo $(PROG_FLDS)
	@echo $(PROG_TGTS)

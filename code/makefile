
include ./build/buildsys.mk

ROOT_DIR = $(call GET_ROOT)

info : info-dirs info-tools

test :
	@echo Testing...
	@echo C Sources   = $(call DB_GET_CSRCS,test1)
	@echo S Sources   = $(call DB_GET_SSRCS,test1)
	@echo All Sources = $(call DB_GET_SRCS,test1)
	@echo Module      = $(call DB_GET_MOD,/media/sf_GitHub/z80/code/lib/src/test1/test11.c)
	@echo Module      = $(call DB_GET_MOD,/media/sf_GitHub/z80/code/lib/src/test2/test21.c)
	@echo Module      = $(call DB_GET_MOD,/media/sf_GitHub/z80/code/lib/src/test2/)
	@echo Segment     = $(call DB_GET_SEG,test1)
	@echo Segment     = $(call DB_GET_SEG,/media/sf_GitHub/z80/code/lib/src/test1/test11.c)
	@echo Segment     = $(call DB_GET_SEG,/media/sf_GitHub/z80/code/lib/src/test1/test12.c)
	@echo Segment     = $(call DB_GET_SEG,test2)
	@echo Segment     = $(call DB_GET_SEG,/media/sf_GitHub/z80/code/lib/src/test2/test21.c)
	@echo Segment     = $(call DB_GET_SEG,/media/sf_GitHub/z80/code/lib/src/test2/test22.c)

info-dirs :
	@echo --------------------------------------
	@echo $(VER_NAME) V$(VER_MAJ).$(VER_MIN) Directories:
	@echo --------------------------------------
	@echo Root Dir = $(call GET_ROOT)
	@echo Libraries ============================
	@echo Root     = $(DIR_LIB)
	@echo Modules  = $(DIR_LIB_BUILD)
	@echo Binaries: 
	@echo    Source = [module]/$(DIRTREE_LNK)
	@echo    Dest   = $(DIR_LIB_BIN)
	@echo Headers: 
	@echo    Source = [module]/$(DIRTREE_LIBINC)
	@echo    Dest   = $(DIR_LIB_INC)
	@echo ======================================
	@echo Programs =============================
	@echo Root     = $(DIR_PROG)
	@echo Modules  = $(DIR_PROG_BUILD)
	@echo Binaries = [module]/$(DIRTREE_BIN)
	@echo ======================================
	@echo General ==============================
	@echo Out      = [module]/$(DIRTREE_OUT)
	@echo Preproc  = [module]/$(DIRTREE_PP)
	@echo Assembly = [module]/$(DIRTREE_ASM)
	@echo Objects  = [module]/$(DIRTREE_OBJ)
	@echo Linker   = [module]/$(DIRTREE_LNK)
	@echo ======================================
	@echo --------------------------------------
	
info-tools :
	@echo --------------------------------------
	@echo $(VER_NAME) V$(VER_MAJ).$(VER_MIN) Tools:
	@echo --------------------------------------
	@echo Pre-Processor ========================
	@echo Program = $(SDCC_PP)
	@echo Options = $(SDCC_PP_FLGS)
	@echo ======================================
	@echo Compiler =============================
	@echo Program = $(SDCC_CC)
	@echo Options = $(SDCC_CC_FLGS)
	@echo ======================================
	@echo Assembler ============================
	@echo Program = $(SDCC_ASM)
	@echo Options = $(SDCC_ASM_FLGS)
	@echo ======================================
	@echo Linker ===============================
	@echo Program = $(SDCC_LNK)
	@echo Options = $(SDCC_LNK_FLGS)
	@echo ======================================
	@echo Binary Converter =====================
	@echo Program = $(SDCC_BIN)
	@echo Options = $(SDCC_BIN_FLGS)
	@echo ======================================
	
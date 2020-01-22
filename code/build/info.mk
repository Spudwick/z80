
info : info-dirs info-tools

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
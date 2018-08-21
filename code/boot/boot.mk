MOD_DIR := C:/Users/TO01/Documents/GitHub/z80/code/boot/
#MOD_DIR := /home/Tom/Documents/git/z80/code/boot/
$(eval $(call REG_MODULE))

$(eval $(call ADD_SRCDIR,$(SRC_DIR),BOOT))

$(eval $(call ADD_SEG,RESET))
$(eval $(call ADD_SEG,INFO))
$(eval $(call ADD_SEG,TRAP))
$(eval $(call ADD_SEG,MIVECTOR))
$(eval $(call ADD_SEG,NMIVECTOR))

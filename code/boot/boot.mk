MOD_DIR := C:/Users/TO01/Documents/GitHub/z80/code/boot/

$(eval $(call REG_MODULE))

$(eval $(call ADD_SRC,$(SRC_DIR)boot.c,BOOT))
$(eval $(call ADD_SRC,$(SRC_DIR)info.s))
$(eval $(call ADD_SRC,$(SRC_DIR)vectors.s))
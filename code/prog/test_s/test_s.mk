MOD_DIR := C:/Users/TO01/Documents/GitHub/z80/code/prog/test_s/
#MOD_DIR := /home/Tom/Documents/git/z80/code/prog/test_s/
$(eval $(call REG_MODULE))

$(eval $(call ADD_SRC,$(SRC_DIR)test.s))

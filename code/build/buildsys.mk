
include ./build/version.mk
include ./build/dirs.mk
include ./build/tools.mk
include ./build/rules.mk
include ./build/database.mk
include ./build/info.mk


$(eval $(call DB_INITIALISE))


.DEFAULT_GOAL := build


$(eval DB_TEST1 = $(call DB_TEST_GET_MOD,/media/sf_GitHub/z80/code/lib/src/test1/test11.c))


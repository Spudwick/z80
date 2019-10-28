
include ./build/version.mk
include ./build/dirs.mk
include ./build/tools.mk
include ./build/rules.mk
include ./build/database.mk


$(eval $(call DB_INITIALISE))


.DEFAULT_GOAL := clean

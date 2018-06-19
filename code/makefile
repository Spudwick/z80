BUILD_SYS	:= $(wildcard build-sys/*.mk)
include $(BUILD_SYS)

SELFDIR     := $(call GET_CWD)

print :
	@echo $(BUILD_SYS)
	@echo $(call OS_SYN,$(SELFDIR))
	@echo $(CC)
	$(call ADD_SOURCE)
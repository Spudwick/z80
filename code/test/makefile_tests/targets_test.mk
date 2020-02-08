OPT_TARGETS 	:= thing1 thing2 thing3 thing4 thing5					# Get from wildcard of possible target dirs.
AREA_OVRIDES 	:= $(addprefix AREA_,$(OPT_TARGETS))

.PHONY : OPT_TARGETS print

$(OPT_TARGETS) :
	@echo Selecting $@...
	$(eval TARGETS += $@)

print : 
	@echo Selected Targets are $(TARGETS)
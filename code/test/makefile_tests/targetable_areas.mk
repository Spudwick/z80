set_area	=	$(eval $1_AREA := $2)
get_area	=	$(if $($1_AREA),$($1_AREA),CODE)

files		:= \Users\TO01\Documents\GitHub\z80\code\file1 \Users\TO01\Documents\GitHub\z80\code\file2 \Users\TO01\Documents\GitHub\z80\code\file3

$(call set_area,\Users\TO01\Documents\GitHub\z80\code\file2,DATA)

all :
	@echo $(files)
	@echo File 1 Area = $(call get_area,\Users\TO01\Documents\GitHub\z80\code\file1)
	@echo File 2 Area = $(call get_area,\Users\TO01\Documents\GitHub\z80\code\file2)
	@echo File 3 Area = $(call get_area,\Users\TO01\Documents\GitHub\z80\code\file3)

.DEFAULT_GOAL = build
.PHONY : clean build

clean :
	rm -rf ./*.elf

build : readelf.elf
	
readelf.elf : main.c elfscan.c elfshow.c
	gcc -o $@ $^
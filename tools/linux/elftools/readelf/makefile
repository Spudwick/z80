
.DEFAULT_GOAL = build
.PHONY : clean build

clean :
	rm -rf ./*.elf libelf/*.so libelf/*.a libelf/*.o

build : readelf.elf
	
readelf.elf : libelf/libelf.a main.c
	gcc $(filter %.c,$^) $(addprefix -L,$(dir $(filter %.a %.so,$^))) $(addprefix -l,$(patsubst lib%,%,$(basename $(notdir $(filter %.a %.so,$^))))) -o $@

libelf/libelf.a : libelf/fileio.o libelf/scan.o
	ar -rcs $@ $^

libelf/libelf.so : libelf/fileio.c
	gcc -shared $^ -o $@

%.o : %.c
	gcc -c $^ -o $@
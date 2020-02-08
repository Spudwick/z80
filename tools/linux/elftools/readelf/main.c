
#include <stdio.h>

#include "libelf/inc/libelf.h"


int main(int argc, char* argv[])
{
	if(argc < 2)
	{
		printf("ERROR : No file specified!\n");
		return -100;
	}

	elf_t* elf = elf_openfile(argv[1]);
	if(elf == NULL)
	{
		printf("ERROR: Couldn't open ELF file '%s'!\n",argv[1]);
		return -100;
	}

	int err = elf_scan_fh(elf);
	err = elf_scan_ptbl(elf);

	elf_closefile(elf);

	return 0;
}
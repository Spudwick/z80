
#include <stdio.h>

#include "elfhdrs.h"
#include "elfshow.h"


int main(int argc, char* argv[])
{
	if(argc < 2)
	{
		printf("ERROR : No target ELF file specified!\n");
		return 1;
	}

	printf("[main] Target ELF File is '%s'\n", argv[1]);

	FILE* fp = fopen(argv[1], "r");
	if(!fp)
	{
		printf("ERROR : Can't open file '%s'\n", argv[1]);
	}
	
	elf_t elf;
	int err = elf_scan_file(&elf, fp);

	elf_show_fhdr(&(elf.fhdr));
	for(int i = 0; i < elf.fhdr.phnum; i++)
	{
		elf_show_phdr(&(elf.ptbl[i]));
	}

	elf_show_stbl(&elf);


	fclose(fp);

	return 0;
}

#include <sys/mman.h>
#include <sys/stat.h>
#include <stdio.h>
#include <stdlib.h>
#include <fcntl.h>
#include <unistd.h>

#include "inc/libelf.h"
#include "scan.h"


elf_t* elf_openfile(char* path)
{
	printf("Opening ELF file '%s'...\n", path);

	int fd = open(path, O_RDONLY);
	if(!fd)
		return NULL;

	struct stat fs;
	fstat(fd, &fs);

	elf_t* elf = malloc(sizeof(elf_t));
	if(elf == NULL)
		return NULL;

	elf->file.map = mmap(NULL, fs.st_size, PROT_READ, MAP_PRIVATE, fd, 0);
	close(fd);
	if (elf->file.map == MAP_FAILED)
	{
		free(elf);
		return NULL;
	}

	elf->file.size = fs.st_size;

	// File is now fully open.

	printf("%luB @ 0x%p\n",elf->file.size,elf->file.map);
	char* magic = (char*)(elf->file.map);
	if( (magic[0] != 0x7f) || (magic[1] != 'E') || (magic[2] != 'L') || (magic[3] != 'F') )
	{
		elf_closefile(elf);
		return NULL;
	}

	return elf;
}

int elf_closefile(elf_t* elf)
{
	munmap(elf->file.map, elf->file.size);
	free(elf->ptbl.tbl);
	free(elf->stbl.tbl);
	free(elf);
}

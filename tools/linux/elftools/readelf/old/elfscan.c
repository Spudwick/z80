
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "elfhdrs.h"


int elf_scan_fhdr(elf_t* elf, FILE* fp)
{
	memset(elf, 0x00, sizeof(elf_t));					// Initialise the storage location for header info.

	printf("[elf_scan_fh] Decoding FILE Header @ 0x%p...\n",fp);

	uint8_t magic[4];
	fread(&magic, 1, 4, fp);
	if(magic[0] != 0x7f || magic[1] != 'E' || magic[2] != 'L' || magic[3] != 'F')
	{
		printf("[elf_scan_fh] ERROR : ELF File magic not correct!\n");
		return -100;
	}

	fread(&(elf->fhdr.id.class), 1, 1, fp);
	fread(&(elf->fhdr.id.endian), 1, 1, fp);
	fread(&(elf->fhdr.id.version), 1, 1, fp);
	fread(&(elf->fhdr.id.abi_type), 2, 1, fp);
	fread(&(elf->fhdr.id.abi_ver), 1, 1, fp);
	fseek(fp, 6, SEEK_CUR);								// Jump over padding bytes.
	fread(&(elf->fhdr.type), 2, 1, fp);
	fread(&(elf->fhdr.arch), 2, 1, fp);
	fread(&(elf->fhdr.version), 4, 1, fp);
	fread(&(elf->fhdr.entry), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
	fread(&(elf->fhdr.phoff), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
	fread(&(elf->fhdr.shoff), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
	fread(&(elf->fhdr.flags), 4, 1, fp);
	fread(&(elf->fhdr.ehsize), 2, 1, fp);
	fread(&(elf->fhdr.phentsize), 2, 1, fp);
	fread(&(elf->fhdr.phnum), 2, 1, fp);
	fread(&(elf->fhdr.shentsize), 2, 1, fp);
	fread(&(elf->fhdr.shnum), 2, 1, fp);
	fread(&(elf->fhdr.shstrndx), 2, 1, fp);
	
	elf->ptbl = malloc(sizeof(elf_proghdr_t) * elf->fhdr.phnum);
	elf->stbl = malloc(sizeof(elf_secthdr_t) * elf->fhdr.shnum);

	return 0;
}

int elf_scan_ptable(elf_t* elf, FILE* fp)
{
	fseek(fp, elf->fhdr.phoff, SEEK_SET);

	for(int i = 0; i < elf->fhdr.phnum; i++)
	{
		elf_proghdr_t* phdr = &(elf->ptbl[i]);

		fread(&(phdr->type), 4, 1, fp);

		if(elf->fhdr.id.class == ELF_64)
			fread(&(phdr->flags), 4, 1, fp);

		fread(&(phdr->offset), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(phdr->vaddr), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(phdr->paddr), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(phdr->filesz), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(phdr->memsz), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		
		if(elf->fhdr.id.class == ELF_32)
			fread(&(phdr->flags), 4, 1, fp);

		fread(&(phdr->align), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
	}

	return 0;
}

int elf_scan_stable(elf_t* elf, FILE* fp)
{
	fseek(fp, elf->fhdr.shoff, SEEK_SET);

	for(int i = 0; i < elf->fhdr.shnum; i++)
	{
		elf_secthdr_t* shdr = &(elf->stbl[i]);

		fread(&(shdr->name), 4, 1, fp);
		fread(&(shdr->type), 4, 1, fp);
		fread(&(shdr->flags), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(shdr->addr), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(shdr->offset), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(shdr->size), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(shdr->link), 4, 1, fp);
		fread(&(shdr->info), 4, 1, fp);
		fread(&(shdr->addralign), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
		fread(&(shdr->entsize), (elf->fhdr.id.class == ELF_32 ? 4 : 8), 1, fp);
	}

	return 0;
}

int elf_scan_file(elf_t* elf, FILE* fp)
{
	elf_scan_fhdr(elf, fp);
	elf_scan_ptable(elf, fp);
	elf_scan_stable(elf, fp);
}

#define INITIAL_BUF_SIZE	25
char* elf_scan_string(elf_t* elf, FILE* fp, int idx)
{
	char* str = malloc(INITIAL_BUF_SIZE);

	fseek(fp, GET_STRING_FILE_IDX(*elf, idx), SEEK_SET);
	fgets(str, INITIAL_BUF_SIZE, fp);

	int len = strnlen(str, INITIAL_BUF_SIZE);
	str = realloc(str, len);

	return str;
}
#undef INITIAL_BUF_SIZE
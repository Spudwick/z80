
#include <stdio.h>

#include "elfhdrs.h"


void elf_show_fhdr(elf_filehdr_t* hdr)
{
	printf("[elf_show_fh] ELF File Header:\n");
	printf("[elf_show_fh]    | Class         : %s\n",(hdr->id.class == ELF_32 ? "32 Bit" : "64 Bit"));
	printf("[elf_show_fh]    | Endian        : %s\n",(hdr->id.endian == ELF_LSB ? "Little Endian" : "Big Endian"));
	printf("[elf_show_fh]    | ELF Version   : %u %s\n",hdr->id.version, (hdr->id.version == 1 ? "(Current)" : ""));
	printf("[elf_show_fh]    | ABI Type      : %u\n",hdr->id.abi_type);
	printf("[elf_show_fh]    | ABI Version   : %u\n",hdr->id.abi_ver);
	printf("[elf_show_fh]    | Type          : 0x%x\n",hdr->type);
	printf("[elf_show_fh]    | Architecture  : 0x%x\n",hdr->arch);
	printf("[elf_show_fh]    | Version       : %d\n",hdr->version);
	printf("[elf_show_fh]    | Entry Offset  : 0x%016lx (%lu)\n",hdr->entry,hdr->entry);
	printf("[elf_show_fh]    | PH Offset     : 0x%016lx (%lu)\n",hdr->phoff,hdr->phoff);
	printf("[elf_show_fh]    | SH Offset     : 0x%016lx (%lu)\n",hdr->shoff,hdr->shoff);
	printf("[elf_show_fh]    | Flags         : 0x%x\n",hdr->flags);
	printf("[elf_show_fh]    | This Hdr Size : %uB\n",hdr->ehsize);
	printf("[elf_show_fh]    | PH Entry Size : %uB\n",hdr->phentsize);
	printf("[elf_show_fh]    | PH Entry Cnt  : %u\n",hdr->phnum);
	printf("[elf_show_fh]    | SH Entry Size : %uB\n",hdr->shentsize);
	printf("[elf_show_fh]    | SH Entry Cnt  : %u\n",hdr->shnum);
	printf("[elf_show_fh]    | Name Sect Idx : %u\n",hdr->shstrndx);
}

void elf_show_phdr(elf_proghdr_t* hdr)
{
	printf("[elf_show_ph] ELF Program Header:\n");
	printf("[elf_show_ph]    | Type          : 0x%x\n",hdr->type);
	printf("[elf_show_ph]    | Flags         : 0x%x\n",hdr->flags);
	printf("[elf_show_ph]    | Offset        : 0x%016lx (%lu)\n",hdr->offset,hdr->offset);
	printf("[elf_show_ph]    | Virtual Addr  : 0x%016lx\n",hdr->vaddr);
	printf("[elf_show_ph]    | Physical Addr : 0x%016lx\n",hdr->paddr);
	printf("[elf_show_ph]    | Size in File  : %luB\n",hdr->filesz);
	printf("[elf_show_ph]    | Size in Mem   : %luB\n",hdr->memsz);
	printf("[elf_show_ph]    | Alignment     : 0x%lx\n",hdr->align);
}

void elf_show_stbl(elf_t* elf)
{
	char line[100];
	int written = 0;
	char* cursor;

	for(int i = 0; i < elf->fhdr.shnum; i++)
	{
		printf("[elf_show_sh] ELF Section Header:\n");
		printf("[elf_show_sh]    | Name Index    : %u\n",elf->stbl[i].name);
		printf("[elf_show_sh]    | Type          : 0x%x\n",elf->stbl[i].type);
		printf("[elf_show_sh]    | Flags         : 0x%lx\n",elf->stbl[i].flags);
		printf("[elf_show_sh]    | Virtual Addr  : 0x%016lx\n",elf->stbl[i].addr);
		printf("[elf_show_sh]    | Offset        : 0x%016lx (%lu)\n",elf->stbl[i].offset,elf->stbl[i].offset);
		printf("[elf_show_sh]    | Size in File  : %luB\n",elf->stbl[i].size);
		printf("[elf_show_sh]    | Link Index    : %u\n",elf->stbl[i].link);
		printf("[elf_show_sh]    | Info          : 0x%x\n",elf->stbl[i].info);
		printf("[elf_show_sh]    | Req Alignment : 0x%lx\n",elf->stbl[i].addralign);
		printf("[elf_show_sh]    | Entry Size    : %luB\n",elf->stbl[i].entsize);
	}
}
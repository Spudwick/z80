
#include <stdio.h>
#include <string.h>
#include <stdlib.h>

#include "scan.h"


uint8_t elf_chk_endian(void)
{
	volatile uint32_t test = 0x01234567;
	if( (*((uint8_t*)(&test))) == 0x67 )
		return ELF_LSB;
	else
		return ELF_MSB;
}

void* elf_memcpy_endian(void* dest, void* src, uint8_t src_end, size_t cnt)
{
	uint8_t add = 1;
	uint8_t src_idx = 0;
	uint8_t dest_idx = 0;
	if(src_end != elf_chk_endian())
	{
		dest_idx = cnt - 1;
		add = -1;
	}

	for(; src_idx < cnt; src_idx++, dest_idx+=add)
		((uint8_t*)dest)[dest_idx] = ((uint8_t*)src)[src_idx];

	return dest;
}

int elf_scan_fh(elf_t* elf)
{
	if( (elf == NULL) || (elf->file.map == NULL) )
		return -100;
	
	printf("\nScanning File Header...\n");

	char* ptr = (char*)(elf->file.map) + 4;		// Get pointer to beginning of File Header.

	memcpy(&(elf->finfo.class), ptr, 1);
	ptr += 1;
	memcpy(&(elf->finfo.endian), ptr, 1);
	ptr += 1;
	memcpy(&(elf->finfo.version), ptr, 1);
	ptr += 1;
	memcpy(&(elf->finfo.abi.type), ptr, 1);
	ptr += 1;
	memcpy(&(elf->finfo.abi.version), ptr, 1);
	ptr += (1 * 8);

	// FROM HERE FIELDS ARE TARGET ENDIAN-SPECIFIC!!!!
	elf_memcpy_endian(&(elf->finfo.type), ptr, elf->finfo.endian, 2);
	ptr += 2;
	elf_memcpy_endian(&(elf->finfo.arch), ptr, elf->finfo.endian, 2);
	ptr += 2;
	//elf_memcpy_endian(&(elf->finfo.version), ptr, elf->finfo.endian, 4);
	ptr += 4;
	//elf_memcpy_endian(&(elf->finfo.entry), ptr, elf->finfo.endian, 8);
	ptr += 8;

	uint64_t offset = 0;
	// Segment/Program Table Offset -> Pointer
	elf_memcpy_endian(&offset, ptr, elf->finfo.endian, (elf->finfo.class == ELF_32 ? 4 : 8));
	printf("PTBL Offset = 0x%lx (%lu)\n",offset,offset);
	elf->file.ptbl.ptr = (void*)((uint64_t)(elf->file.map) + offset);
	ptr += (elf->finfo.class == ELF_32 ? 4 : 8);

	// Section Table Offset -> Pointer
	elf_memcpy_endian(&offset, ptr, elf->finfo.endian, (elf->finfo.class == ELF_32 ? 4 : 8));
	printf("STBL Offset = 0x%lx (%lu)\n",offset,offset);
	elf->file.stbl.ptr = (void*)((uint64_t)(elf->file.map) + offset);
	ptr += (elf->finfo.class == ELF_32 ? 4 : 8);

	//elf_memcpy_endian(&(elf->finfo.flags), ptr, elf->finfo.endian, 4);
	ptr += 4;
	//elf_memcpy_endian(&(elf->finfo.size), ptr, elf->finfo.endian, 2);						// File Header Size.
	ptr += 2;

	elf_memcpy_endian(&(elf->file.ptbl.entsize), ptr, elf->finfo.endian, 2);				// Segment/Program Header Entry Size.
	ptr += 2;
	elf_memcpy_endian(&(elf->ptbl.cnt), ptr, elf->finfo.endian, 2);							// Number of Segment/Program Entries in table.
	elf->ptbl.tbl = malloc(sizeof(struct elf_sect_s) * elf->ptbl.cnt);
	ptr += 2;

	elf_memcpy_endian(&(elf->file.stbl.entsize), ptr, elf->finfo.endian, 2);				// Section Header Entry Size.
	ptr += 2;
	elf_memcpy_endian(&(elf->stbl.cnt), ptr, elf->finfo.endian, 2);							// Number of Segment/Program Entries in table.
	elf->stbl.tbl = malloc(sizeof(struct elf_seg_s) * elf->stbl.cnt);
	ptr += 2;

	uint16_t idx = 0;
	elf_memcpy_endian(&idx, ptr, elf->finfo.endian, 2);										// Number of entry in Section table that is strings section.
	printf("STR section Idx = %u\n",idx);
	elf->str_sect = &(elf->stbl.tbl[idx]);
	ptr += 2;

	printf("\n------------------------------------------------------\n");
	printf("CLASS        = %s\n",(elf->finfo.class == ELF_32 ? "32 Bit" : "64 Bit"));
	printf("ENDIAN       = %s (%s)\n",(elf->finfo.endian == ELF_LSB ? "Little" : "Big"),(elf_chk_endian() == ELF_LSB ? "Little" : "Big"));
	printf("ELF VERSION  = %u\n",elf->finfo.version);
	printf("ABI TYPE     = %u\n",elf->finfo.abi.type);
	printf("ABI VERSION  = %u\n",elf->finfo.abi.version);
	printf("TYPE         = 0x%02x\n",elf->finfo.type);
	printf("ARCHITECTURE = 0x%02x\n",elf->finfo.arch);
	printf("------------------------------------------------------\n");
	printf("SEGMENT TABLE CNT = %u\n",elf->ptbl.cnt);
	printf("SECTION TABLE CNT = %u\n",elf->stbl.cnt);
	printf("------------------------------------------------------\n\n");

	return 0;
}

int elf_scan_ptbl(elf_t* elf)
{
	if( (elf == NULL) || (elf->file.map == NULL) )
		return -100;

	printf("\nScanning Program Header Table (%u)...\n",elf->ptbl.cnt);
	printf("\n------------------------------------------------------\n");

	for(int i = 0; i < elf->ptbl.cnt; i++)
	{
		uint8_t* ptr = (uint8_t*)(elf->file.ptbl.ptr) + (elf->file.ptbl.entsize * i);

		elf_memcpy_endian(&(elf->ptbl.tbl[i].type), ptr, elf->finfo.endian, 4);
		ptr += 4;
		
		if(elf->finfo.class == ELF_64)
		{
			//elf_memcpy_endian(&(elf->ptbl.tbl[i].flags), ptr, elf->finfo.endian, 4);
			ptr += 4;
		}

		//elf_memcpy_endian(&(elf->ptbl.tbl[i].offset), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);
		//elf_memcpy_endian(&(elf->ptbl.tbl[i].vaddr), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);
		//elf_memcpy_endian(&(elf->ptbl.tbl[i].paddr), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);
		//elf_memcpy_endian(&(elf->ptbl.tbl[i].filesz), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);
		//elf_memcpy_endian(&(elf->ptbl.tbl[i].memsz), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);
		
		if(elf->finfo.class == ELF_32)
		{
			//elf_memcpy_endian(&(elf->ptbl.tbl[i].flags), ptr, elf->finfo.endian, 4);
			ptr += 4;
		}

		//elf_memcpy_endian(&(elf->ptbl.tbl[i].align), ptr, elf->finfo.endian, (elf->finfo.endian == ELF_32 ? 4 : 8));
		ptr += (elf->finfo.endian == ELF_32 ? 4 : 8);

		printf("PROGRAM HEADER %u:\n",i+1);
		printf("TYPE = 0x%08x\n",elf->ptbl.tbl[i].type);
		printf("------------------------------------------------------\n");
	}
}



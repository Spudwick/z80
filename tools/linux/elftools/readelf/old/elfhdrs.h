#ifndef __ELFHDRS_H
#define __ELFHDRS_H

#include <stdio.h>
#include <stdint.h>

#include "elftypes.h"


// ================================================================================
// ELF File Header:
// ================================================================================
typedef struct elf_fileid_s {
	elf_idclass_t class;					// Elf File Class (Bit Width)
	elf_idendian_t endian;					// Endianness
	uint8_t version;						// Version of ELF
	elf_idabi_t abi_type;					// Target OS ABI
	uint8_t abi_ver;						// ABI Version
} elf_fileid_t;
typedef struct elf_filehdr_s {
	elf_fileid_t id;						
	elf_idtype_t type;						// Object File Type
	elf_idmachine_t arch;					// Target Instruction set Architecture
	uint32_t version;						// Version of ELF
	uint64_t entry;							// Offset to process entry point
	uint64_t phoff;							// Offset to beginning of Program Header Table
	uint64_t shoff;							// Offset to beginning of Section Header Table
	uint32_t flags;							// Flags (Architecture Specific)
	uint32_t ehsize;						// Size of this header
	uint32_t phentsize;						// Size of program header table entry
	uint32_t phnum;							// Number of entries in the program header table
	uint32_t shentsize;						// Size of section header table entry
	uint32_t shnum;							// Number of entries in the section header table
	uint32_t shstrndx;						// Offset to Section header table entry that contains section names
} elf_filehdr_t;


// ================================================================================
// ELF Program Header:
// ================================================================================
typedef struct elf_proghdr_s {
	elf_phtype_t type;						// Segment Type
	uint32_t flags;							// Flags (Segment Dependant)
	uint64_t offset;						// Offset of segment in file image
	uint64_t vaddr;							// Virtual address of segment in memory
	uint64_t paddr;							// Physical address of segment in memory (Not always relevant)
	uint64_t filesz;						// Segment size in file (Bytes)
	uint64_t memsz;							// Segment size in memory (Bytes)
	uint64_t align;							// Segment alignment in memory
} elf_proghdr_t;


// ================================================================================
// ELF Section Header:
// ================================================================================
typedef struct elf_secthdr_s {
	uint32_t name;							// Offset in String section to entry that contains sections name
	elf_shtype_t type;						// Header type
	uint64_t flags;							// Section attributes
	uint64_t addr;							// Virtual address of section in memory
	uint64_t offset;						// Offset of section in file image
	uint64_t size;							// Size of section in file image
	uint32_t link;							// Section index of associated section (Type dependant)
	uint32_t info;							// Extra info about section (Type dependant)
	uint64_t addralign;						// Required alignment in memory of section
	uint64_t entsize;						// Size of entries (Bytes)(0 if entries aren't fixed size)
} elf_secthdr_t;


// ================================================================================
// ELF Structure:
// ================================================================================
typedef struct elf_s {
	elf_filehdr_t fhdr;						// File Header Information
	elf_proghdr_t* ptbl;					// Table of Program Headers
	elf_secthdr_t* stbl;					// Table of Section Headers
} elf_t;


#define GET_STRING_FILE_IDX(elf, idx)	((elf).stbl[(elf).fhdr.shstrndx].offset + (uint64_t)(idx))

int elf_scan_fhdr(elf_t* elf, FILE* fp);
int elf_scan_ptable(elf_t* elf, FILE* fp);
int elf_scan_stable(elf_t* elf, FILE* fp);
int elf_scan_file(elf_t* elf, FILE* fp);
char* elf_scan_string(elf_t* elf, FILE* fp, int idx);


#endif
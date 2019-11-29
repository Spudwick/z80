
#ifndef __ELFTYPES_H
#define __ELFTYPES_H


// ================================================================================
// ELF File Header:
// ================================================================================
// --------------------------------------------------------------------------------
// Elf File Bitwidth:
// --------------------------------------------------------------------------------
typedef enum elf_idclass_e {
	ELF_32 = 1,
	ELF_64,
} elf_idclass_t;

// --------------------------------------------------------------------------------
// Elf File Endianness:
// --------------------------------------------------------------------------------
typedef enum elf_idendian_e {
	ELF_LSB = 1,
	ELF_MSB,
} elf_idendian_t;

// --------------------------------------------------------------------------------
// Target ABI:
// --------------------------------------------------------------------------------
typedef enum elf_idabi_e {
	ELF_SYSV,			// System V (UNIX)
	ELF_HPUX,			// HP UNIX
	ELF_NBSD,			// NetBSD
	ELF_LINUX,			// Linux
	ELF_HURD,			// GNU Hurd
	ELF_SOL,			// Solaris
	ELF_AIX,			// AIX
	ELF_IRIX,			// IRIX
	ELF_FBSD,			// FreeBSD
	ELF_TRU64,			// Tru64
	ELF_MODEST,			// Novello Modesto
	ELF_OBSD,			// OpenBSD
	ELF_OVMS,			// OpenVMS
	ELF_NONSTOP,		// NonStop Kernel
	ELF_AROS,			// AROS
	ELF_FENIX,			// Fenix OS
	ELF_CLOUD,			// Cloud ABI
} elf_idabi_t;

// --------------------------------------------------------------------------------
// Elf File Type:
// --------------------------------------------------------------------------------
typedef enum elf_idtype_e {
	ET_NONE,
	ET_REL,
	ET_EXEC,
	ET_DYN,
	ET_CORE,
	ET_LOOS 	= 0xfe00,
	ET_HIOS 	= 0xfeff,
	ET_LOPROC 	= 0xff00,
	ET_HIPROC 	= 0xffff,
} elf_idtype_t;

// --------------------------------------------------------------------------------
// Target Architecture:
// --------------------------------------------------------------------------------
typedef enum elf_idmachine_e {
	ELF_NONE,
	ELF_SPARC	= 0x02,
	ELF_X86,
	ELF_MIPS	= 0x08,
	ELF_PPC		= 0x14,		// Power PC
	ELF_S390	= 0x16,
	ELF_ARM		= 0x28,
	ELF_SH		= 0x2a,		// SuperH
	ELF_IA64	= 0x32,
	ELF_X86_64	= 0x3e,
	ELF_AA64	= 0xb7,		// AArch64
	ELF_RISCV	= 0xf3,
} elf_idmachine_t;


// ================================================================================
// ELF Program Header:
// ================================================================================
typedef enum elf_phtype_e {
	PT_NULL,
	PT_LOAD,
	PT_DYNAMIC,
	PT_INTERP,
	PT_NOTE,
	PT_SHLIB,
	PT_PHDR,
	
	PT_LOOS			= 0x60000000,
	PT_GNU_EHFRAME	= 0x6474e550,
	PT_GNU_STACK	= 0x6474e551,
	PT_GNU_RELRO	= 0x6474e552,
	PT_HIOS			= 0x6FFFFFFF,
	
	PT_LOPROC		= 0x70000000,
	PT_HIPROC		= 0x7FFFFFFF,
} elf_phtype_t;

// ================================================================================
// ELF Section Header:
// ================================================================================
typedef enum elf_shtype_e {
	ST_NULL,
	ST_PROGBITS,
	ST_SYMTAB,
	ST_STRTAB,
	ST_RELA,
	ST_HASH,
	ST_DYNAMIC,
	ST_NOTE,
	ST_NOBITS,
	ST_REL,
	ST_SHLIB,
	ST_DYNSYM,
	ST_INITARY	= 0x0E,
	ST_FINIARY,
	ST_PREINIARY,
	ST_GROUP,
	ST_SYMTAB_SHNDX,
	ST_NUM,
	ST_LOOS		= 0x60000000,
} elf_shtype_t;

// Section Header Flags:
#define SF_WRITE		0x00000001
#define SF_ALLOC		0x00000002
#define SF_EXECINSTR	0x00000004
#define SF_MERGE		0x00000010
#define SF_STRINGS		0x00000020
#define SF_INFOLNK		0x00000040
#define SF_LNKORDER		0x00000080
#define SF_OSNONCONF	0x00000100
#define SF_GROUP		0x00000200
#define SF_TLS			0x00000400
#define SF_MASKOS		0x0ff00000
#define SF_MASKPROC		0xf0000000
#define SF_ORDERED		0x04000000
#define SF_EXCLUDE		0x08000000


#endif
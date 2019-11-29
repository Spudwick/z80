#ifndef __ELFLIB_H
#define __ELFLIB_H


#include <stdint.h>


enum elf_finfo_class_e {
	ELF_32 = 1,
	ELF_64,
};
enum elf_finfo_endian_e {
	ELF_LSB = 1,
	ELF_MSB,
};


struct elf_seg_s {
	uint16_t type;
};

struct elf_sect_s {
	uint16_t type;
};

typedef struct elf_s {
	struct file_s {
		void* map;					// Pointer to mmap'ed area.
		size_t size;				// Size of mmap'ed area.

		struct tbl_s {
			void* ptr;
			uint16_t entsize;
		} ptbl;
		struct  tbl_s stbl;
	} file;

	struct finfo_s {				// Structure to hold info on the file.
		uint8_t class;				// 64 Bit or 32 Bit.
		uint8_t endian;				// Little Endian or Big Endian.
		uint8_t version;			// ELF Version (1 = Current).
		
		struct abi_s {
			uint8_t type;			// Type of OS ABI.
			uint8_t version;		// Version of OS ABI
		} abi;

		uint16_t type;				// Type of Object File.
		uint16_t arch;				// Target Architecture.
	} finfo;

	struct elf_sect_s * str_sect;

	struct ptbl_s {					// Structure to hold representation of Segment/Program Table.		
		uint16_t cnt;
		struct elf_seg_s * tbl;
	} ptbl;
	struct stbl_s {					// Structure to hold representation of Section Table.
		uint16_t cnt;
		struct elf_sect_s * tbl;
	} stbl;
} elf_t;


elf_t* elf_openfile(char* path);
int elf_closefile(elf_t* elf);

int elf_scan_fh(elf_t* elf);
int elf_scan_ptbl(elf_t* elf);
int elf_scan_stbl(elf_t* elf);


#endif
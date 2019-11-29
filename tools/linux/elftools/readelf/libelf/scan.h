#ifndef __SCAN_H
#define __SCAN_H


#include "inc/libelf.h"


int elf_scan_fh(elf_t* elf);
int elf_scan_ptbl(elf_t* elf);
int elf_scan_stbl(elf_t* elf);


#endif
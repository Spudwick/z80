#ifndef __ELFSHOW_H
#define __ELFSHOW_H

void elf_show_fhdr(elf_filehdr_t* hdr);
void elf_show_phdr(elf_proghdr_t* hdr);
void elf_show_stbl(elf_t* hdr);

#endif
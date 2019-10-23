
#ifndef _LIBCORE_CORE_H_
#define _LIBCORE_CORE_H_

void _mem_in(uint16_t addr);
uint8_t _mem_out(uint16_t addr, uint8_t val);
void _port_in(uint8_t addr);
uint8_t _port_out(uint8_t addr, uint8_t val);

#endif

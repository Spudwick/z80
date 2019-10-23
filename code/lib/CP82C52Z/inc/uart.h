
#ifndef _LIBCP82C52Z_UART_H_
#define _LIBCP82C52Z_UART_H_

// Offsets for CP82C52Z Control Registers:
#define REG_TBR		0x00
#define REG_RBR		0x00
#define REG_UCR		0x01
#define REG_USR		0x01
#define REG_MCR		0x02
#define REG_BRSR	0x03
#define REG_MSR		0x03

// Baud Rate Prescalar Settings:
#define PRE_1		0x00
#define PRE_3		0x01
#define PRE_4		0x02
#define PRE_5		0x03

// Baud Rate Divider Settings:
#define DIV_2		0x00
#define DIV_4		0x01
#define DIV_16_3	0x02
#define DIV_8		0x03
#define DIV_32_3	0x04
#define DIV_16		0x05
#define DIV_58_3	0x06
#define DIV_22		0x07
#define DIV_32		0x08
#define DIV_64		0x09
#define DIV_128		0x0a
#define DIV_192		0x0b
#define DIV_256		0x0c
#define DIV_288		0x0d
#define DIV_352		0x0e
#define DIV_512		0x0f
#define DIV_768		0x10
#define DIV_EXT		0x1f
#define DIV_1		DIV_EXT

#endif

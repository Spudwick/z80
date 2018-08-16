# 1 "C:/Users/TO01/Documents/GitHub/z80/code/boot/src/boot.c"
# 1 "<built-in>"
# 1 "<command line>"
# 1 "C:/Users/TO01/Documents/GitHub/z80/code/boot/src/boot.c"
       

# 1 "C:/Users/TO01/Documents/GitHub/z80/code/boot/src/../inc/test.h" 1
static int tester = 10;
# 4 "C:/Users/TO01/Documents/GitHub/z80/code/boot/src/boot.c" 2

extern void trap(void);
char bootloader(void);

void boot_entry(void) __naked
{
 if (bootloader())
  trap();
 else
 {
  __asm
  jp 0x8000
  __endasm;
 }

}

unsigned char _port;
char _data;

void write_port(unsigned char port, char data)
{
 _port = port;
 _data = data;

 __asm
 ld a,(__port) ; (_port) -> a
 ld c,a ; a -> c
 ld a,(__data) ; (_data) -> a

 out (c),a ; a -> (c)
 __endasm;
}

char read_port(unsigned char port)
{
 _port = port;

 __asm
 in a,(__port) ; (_port) -> a

 ld (__data),a ; a -> (_data)
 __endasm;
}

char bootloader(void)
{

 write_port(0x42, 0x20);
 write_port(0x42, 0x30);
 write_port(0x42, 0x10);
 write_port(0x40, 0x07);
 write_port(0x40, 0x07);
 write_port(0x42, 0x10);
 write_port(0x41, 0xBB);
 write_port(0x42, 0x05);

 return 0;
}


ENTRY(_start)

MEMORY
{
    FLASH (rwx) : ORIGIN = 0x400, LENGTH = 100k
    MY_MEMORY (rwx) : ORIGIN = 0x20000, LENGTH = 128k
    RAM (rwx) : ORIGIN = 0x40000, LENGTH = 128k   
}

SECTIONS
{
    . = 0x400;

    .text : { hello_arm.o(.text)} > FLASH
    .data : { *(.data)} > FLASH
    .mysection :{ trans.o(.text)} > MY_MEMORY
}

/* reference : 
https://blog.csdn.net/m0_47799526/article/details/108765403 */

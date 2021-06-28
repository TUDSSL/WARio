ENTRY(Reset_Handler)

MEMORY
{
    ROMEM (rx) : ORIGIN = 0x0000C000, LENGTH = 960K
    RWMEM (rwx) : ORIGIN = 0x10000000, LENGTH = 384K
    NVMEM (rwx) : ORIGIN = 0x51000000, LENGTH = 512K
}

/* The top of the stack */
/* stack must be double-word (8 byte) aligned */
_estack = ORIGIN(RWMEM) + LENGTH(RWMEM) - 8;

_store_byte = 0xDEAD;

SECTIONS
{
    .text :
    {
        . = ALIGN(4);
        KEEP(*(.isr_vector))
        KEEP(*(.patch))
        *(.text)
        *(.text*)
        *(.rodata)
        *(.rodata*)
        . = ALIGN(4);
        _etext = .;
    } > ROMEM

    /* User stack section initialized by startup code. */
    /*
    .stack (NOLOAD):
    {
        . = ALIGN(8);
        *(.stack)
        *(.stack*)
        . = ALIGN(8);
        _estack = .;
    } > RWMEM
    */

    .data :
    {
        . = ALIGN(4);
        _sdata = .;
        *(.data)
        *(.data*)
        . = ALIGN(4);
        _edata = .;
    } > RWMEM AT>ROMEM

    /* used by startup to initialize data */
    _init_data = LOADADDR(.data);

    /* Need to add NOLOAD to keep the type from changing to PROGBITS */
    .bss (NOLOAD):
    {
        . = ALIGN(4);
        _sbss = .;
        *(.bss)
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        _ebss = .;
    } > RWMEM

    .nvm (NOLOAD):
    {
        . = ALIGN(4);
        _snvm = .;
        *(.nvm)
        *(.nvm*)
        . = ALIGN(4);
        _envm = .;
    } > NVMEM

    .ARM.attributes 0 : { *(.ARM.attributes) }

    /* ## Discarded sections */
    /DISCARD/ :
    {
        /* Unused exception related info that only wastes space */
        *(.ARM.exidx);
        *(.ARM.exidx.*);
        *(.ARM.extab.*);
    }
}

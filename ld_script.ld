
INCLUDE build/syms.ld
SECTIONS
{
    . = 0x08000000;
    .text : {
        build/asm/header.o(.text .rodata .data);
        build/asm/crt0.o(.text .rodata .data);
        build/asm/code_08000000.o(.text .rodata .data);
        build/src/code_0800068C.o(.text .rodata .data);
        build/asm/code_080006AC.o(.text .rodata .data);
        build/src/code_080006C4.o(.text .rodata .data);
        build/asm/code_08000704.o(.text .rodata .data);
        build/asm/orphan_08005710.o(.text .rodata .data);
        build/asm/orphan_08010000.o(.text .rodata .data);
        build/data/data_08012974.o(.text .rodata .data);
        build/asm/code_082E0000.o(.text .rodata .data);
        build/asm/code_082F0000.o(.text .rodata .data);
        build/asm/code_08300000.o(.text .rodata .data);
        build/asm/code_08310000.o(.text .rodata .data);
        build/src/code_08318FF8.o(.text .rodata .data);
        build/asm/code_083190E0.o(.text .rodata .data);
        build/asm/rodata.o(.text .rodata .data);
        build/asm/iwram_image.o(.text .rodata .data);
        build/asm/data_image.o(.text .rodata .data);
        build/asm/ewram_image.o(.text .rodata .data);
        build/asm/rom_padding.o(.text .rodata .data);
    }
    /DISCARD/ : { *(.comment) *(.ARM.attributes) }
}

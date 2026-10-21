
INCLUDE build/syms.ld
SECTIONS
{
    . = 0x08000000;
    .text : {
        build/asm/header.o(.text .rodata .data);
        build/asm/crt0.o(.text .rodata .data);
        build/asm/code_08000000.o(.text .rodata .data);
        build/src/code_08000604.o(.text .rodata .data);
        build/src/code_0800068C.o(.text .rodata .data);
        build/src/code_080006C4.o(.text .rodata .data);
        build/asm/code_08000898.o(.text .rodata .data);
        build/src/code_080008BC.o(.text .rodata .data);
        build/src/code_080008F0.o(.text .rodata .data);
        build/asm/code_08000900.o(.text .rodata .data);
        build/src/code_08000978.o(.text .rodata .data);
        build/asm/code_08000990.o(.text .rodata .data);
        build/src/code_08000B58.o(.text .rodata .data);
        build/asm/code_08000C00.o(.text .rodata .data);
        build/src/code_080011F0.o(.text .rodata .data);
        build/asm/code_08001314.o(.text .rodata .data);
        build/src/code_08001A30.o(.text .rodata .data);
        build/asm/code_08001A48.o(.text .rodata .data);
        build/src/code_08001A6C.o(.text .rodata .data);
        build/asm/code_08001A8C.o(.text .rodata .data);
        build/src/code_08001B40.o(.text .rodata .data);
        build/asm/code_08001BCC.o(.text .rodata .data);
        build/src/code_08001DBC.o(.text .rodata .data);
        build/asm/code_08001EBC.o(.text .rodata .data);
        build/src/code_08001F34.o(.text .rodata .data);
        build/asm/code_08001FFC.o(.text .rodata .data);
        build/src/code_08002058.o(.text .rodata .data);
        build/asm/code_080020C8.o(.text .rodata .data);
        build/asm/orphan_08005710.o(.text .rodata .data);
        build/asm/orphan_08010000.o(.text .rodata .data);
        build/data/data_08012974.o(.text .rodata .data);
        build/asm/code_082E0000.o(.text .rodata .data);
        build/asm/code_082F0000.o(.text .rodata .data);
        build/asm/code_08300000.o(.text .rodata .data);
        build/asm/code_08310000.o(.text .rodata .data);
        build/src/gax/gax_08317518.o(.text .rodata .data);
        build/asm/code_083175A8.o(.text .rodata .data);
        build/src/gax/gax_083177CC.o(.text .rodata .data);
        build/asm/code_08317CD8.o(.text .rodata .data);
        build/src/gax/gax_083185D0.o(.text .rodata .data);
        build/src/gax/sync_0831928C.o(.text .rodata .data);
        build/asm/code_083192C0.o(.text .rodata .data);
        build/src/gax/tracker_0831938C.o(.text .rodata .data);
        build/asm/code_08319C60.o(.text .rodata .data);
        build/src/gax/fx_08319F30.o(.text .rodata .data);
        build/asm/code_08319F88.o(.text .rodata .data);
        build/asm/rodata.o(.text .rodata .data);
        build/asm/iwram_image.o(.text .rodata .data);
        build/asm/data_image.o(.text .rodata .data);
        build/asm/ewram_image.o(.text .rodata .data);
        build/asm/rom_padding.o(.text .rodata .data);
    }
    /DISCARD/ : { *(.comment) *(.ARM.attributes) }
}

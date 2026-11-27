	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EA468
	.thumb_func
sub_082EA468:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x1c0d @ adds r5, r1, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x1c03 @ adds r3, r0, #0
	.2byte 0x33e0 @ adds r3, #224
	.2byte 0x1c02 @ adds r2, r0, #0
	.2byte 0x7850 @ ldrb r0, [r2, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x82ea490
	.2byte 0x8818 @ ldrh r0, [r3, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd105 @ bne.n 0x82ea490
	.2byte 0x602a @ str r2, [r5, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe008 @ b.n 0x82ea49c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x33f8 @ adds r3, #248
	.2byte 0x32f8 @ adds r2, #248
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x2907 @ cmp r1, #7
	.2byte 0xd9ee @ bls.n 0x82ea478
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1
	.2byte 0x0000

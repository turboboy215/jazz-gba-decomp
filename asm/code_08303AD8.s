	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08303AD8
	.thumb_func
sub_08303AD8:
	push {lr}
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #2
	bls .L08303B06
	movs r0, #0
	str r0, [r1, #0]
	ldr r0, [pc, #32]
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
.L08303B06:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x00000C0C
	.4byte 0x03005920
	.4byte 0x0300398C

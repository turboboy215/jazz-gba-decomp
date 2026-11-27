	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08302958
	.thumb_func
sub_08302958:
	push {r4, r5, lr}
	movs r4, #0
	ldr r5, [pc, #40]
.L0830295E:
	bl VBlankIntrWait
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #0
	bl sub_08001404
	adds r0, r5, #0
	movs r1, #3
	movs r2, #1
	movs r3, #0
	bl sub_08001404
	adds r4, #1
	cmp r4, #63
	bls .L0830295E
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

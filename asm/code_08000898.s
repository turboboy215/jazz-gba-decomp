	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08000898
	.thumb_func
sub_08000898:
	push {lr}
	cmp r1, #0
	ble .L080008B4
	bl sub_08000850
	movs r2, #0
	movs r1, #128
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	beq .L080008B0
	movs r2, #1
.L080008B0:
	adds r0, r2, #0
	b .L080008B6
.L080008B4:
	movs r0, #0
.L080008B6:
	pop {r1}
	bx r1
	.2byte 0x0000

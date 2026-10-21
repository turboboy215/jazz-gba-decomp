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

	.thumb
	.align 1, 0
	.global sub_080008BC
	.thumb_func
sub_080008BC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000870
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L080008DC
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080008DC
	movs r0, #0
	b .L080008EA
.L080008DC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000850
	adds r1, r0, #0
	movs r0, #15
	ands r0, r1
.L080008EA:
	pop {r4, r5}
	pop {r1}
	bx r1

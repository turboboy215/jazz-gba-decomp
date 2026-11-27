	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08302B14
	.thumb_func
sub_08302B14:
	push {r4, lr}
	ldr r4, [pc, #60]
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L08302B34
	ldr r0, [pc, #48]
	movs r2, #1
	negs r2, r2
	movs r1, #3
	movs r3, #0
	bl sub_08001404
.L08302B34:
	ldr r0, [r4, #0]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne .L08302B4C
	ldr r0, [pc, #24]
	movs r3, #1
	negs r3, r3
	movs r1, #3
	movs r2, #0
	bl sub_08001404
.L08302B4C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005910
	.4byte 0x0300398C

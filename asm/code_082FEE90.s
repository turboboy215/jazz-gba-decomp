	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FEE90
	.thumb_func
sub_082FEE90:
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #136]
	movs r1, #15
	movs r2, #140
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r4, #18
.L082FEEF6:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FEF1A
	ldr r0, [sp, #4]
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	ldr r1, [sp, #4]
	movs r0, #128
	strh r0, [r1, #36]
	ldr r1, [sp, #4]
	movs r0, #180
	lsls r0, r0, #2
	strh r0, [r1, #32]
.L082FEF1A:
	adds r4, #1
	cmp r4, #22
	bls .L082FEEF6
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0xFFFFFECC

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FBAE8
	.thumb_func
sub_082FBAE8:
	push {lr}
	movs r0, #6
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FBB12
	bl sub_0831650C
	bl sub_0831653C
	movs r1, #156
	negs r1, r1
	movs r0, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
.L082FBB12:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FBB1D

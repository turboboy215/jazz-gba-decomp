	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FE860
	.thumb_func
sub_082FE860:
	push {lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #60
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #27
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #41
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #1
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FE89E
	ldr r1, [sp, #4]
	movs r0, #180
	strh r0, [r1, #32]
.L082FE89E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #8
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE8BD

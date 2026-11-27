	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08300864
	.thumb_func
sub_08300864:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #240
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r0, #60
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08300890
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #1]
.L08300890:
	movs r0, #61
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083008A4
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #1]
.L083008A4:
	movs r0, #62
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083008BA
	ldr r0, [sp, #0]
	adds r0, #90
	movs r1, #20
	strh r1, [r0, #0]
.L083008BA:
	add sp, #4
	pop {r0}
	bx r0

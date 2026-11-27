	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08302CB4
	.thumb_func
sub_08302CB4:
	push {r4, r5, lr}
	sub sp, #92
	ldr r1, [pc, #68]
	mov r0, sp
	movs r2, #92
	bl memcpy
	ldr r1, [pc, #64]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls .L08302CF8
	movs r5, #0
	str r5, [r1, #0]
	ldr r0, [pc, #52]
	ldr r4, [pc, #52]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	add r1, sp
	movs r2, #0
	ldrsh r3, [r1, r2]
	movs r1, #2
	movs r2, #0
	bl sub_08001404
	ldrb r0, [r4, #0]
	adds r0, #1
	strb r0, [r4, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #45
	bls .L08302CF8
	strb r5, [r4, #0]
.L08302CF8:
	add sp, #92
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D90FC
	.4byte 0x03005918
	.4byte 0x0300398C
	.4byte 0x03005914

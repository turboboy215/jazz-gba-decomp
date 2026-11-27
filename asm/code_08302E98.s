	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08302E98
	.thumb_func
sub_08302E98:
	push {lr}
	sub sp, #16
	ldr r1, [pc, #80]
	mov r0, sp
	movs r2, #16
	bl memcpy
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #76]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #3
	bls .L08302EDE
	movs r0, #0
	strb r0, [r1, #0]
	ldr r2, [pc, #60]
	ldrb r0, [r2, #0]
	adds r0, #1
	movs r1, #7
	ands r0, r1
	strb r0, [r2, #0]
	ldr r3, [pc, #52]
	lsls r0, r0, #1
	add r0, sp
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	movs r1, #12
	orrs r0, r1
	strh r0, [r3, #0]
.L08302EDE:
	ldr r0, [pc, #40]
	movs r1, #3
	movs r2, #2
	movs r3, #0
	bl sub_08001404
	add sp, #16
	pop {r0}
	bx r0
	.4byte 0x083D9158
	.4byte 0x04000050
	.4byte 0x00003F42
	.4byte 0x0300591C
	.4byte 0x0300591D
	.4byte 0x04000052
	.4byte 0x0300398C

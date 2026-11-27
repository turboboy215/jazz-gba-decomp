	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FD5B8
	.thumb_func
sub_082FD5B8:
	push {lr}
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FD61E
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L082FD5DE
.L082FD5DA:
	bl VBlankIntrWait
.L082FD5DE:
	bl sub_08316F50
	cmp r0, #0
	bne .L082FD5DA
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082FD5FC
	movs r0, #2
	movs r1, #0
	bl sub_08311C50
	b .L082FD604
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FD5FC:
	movs r0, #3
	movs r1, #0
	bl sub_08311C50
.L082FD604:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
.L082FD61E:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

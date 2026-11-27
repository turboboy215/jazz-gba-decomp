	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FFAC0
	.thumb_func
sub_082FFAC0:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L082FFAD2
.L082FFACE:
	bl VBlankIntrWait
.L082FFAD2:
	bl sub_08316F50
	cmp r0, #0
	bne .L082FFACE
	movs r0, #1
	bl sub_083100D4
	bl sub_08305110
	ldr r0, [pc, #64]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FFAFC
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L082FFAFC
	movs r0, #1
	strb r0, [r1, #2]
.L082FFAFC:
	movs r0, #14
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #36]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #36]
	strh r1, [r0, #0]
	ldr r0, [pc, #36]
	str r1, [r0, #64]
	str r1, [r0, #68]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	pop {r0}
	bx r0
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FFB38
	.thumb_func
sub_082FFB38:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L082FFB50
.L082FFB4C:
	bl VBlankIntrWait
.L082FFB50:
	bl sub_08316F50
	cmp r0, #0
	bne .L082FFB4C
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FFB70
	movs r0, #7
	movs r1, #0
	bl sub_08311C50
	b .L082FFB78
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FFB70:
	movs r0, #6
	movs r1, #0
	bl sub_08311C50
.L082FFB78:
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
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

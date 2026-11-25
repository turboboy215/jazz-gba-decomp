	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FBFF4
	.thumb_func
sub_082FBFF4:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FC00C
.L082FC008:
	bl VBlankIntrWait
.L082FC00C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FC008
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FC02C
	movs r0, #23
	movs r1, #0
	bl sub_08311C50
	b .L082FC034
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FC02C:
	movs r0, #21
	movs r1, #0
	bl sub_08311C50
.L082FC034:
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
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

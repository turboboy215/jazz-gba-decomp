	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FBE0C
	.thumb_func
sub_082FBE0C:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBE1E
.L082FBE1A:
	bl VBlankIntrWait
.L082FBE1E:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FBE1A
	movs r0, #1
	bl sub_083100D4
	bl sub_08305E54
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FBE48
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne .L082FBE48
	movs r0, #1
	strb r0, [r1, #3]
.L082FBE48:
	movs r0, #19
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #32]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

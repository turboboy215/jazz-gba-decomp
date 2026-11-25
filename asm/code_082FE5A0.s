	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FE5A0
	.thumb_func
sub_082FE5A0:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L082FE5B2
.L082FE5AE:
	bl VBlankIntrWait
.L082FE5B2:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FE5AE
	movs r0, #1
	bl sub_083100D4
	bl sub_083043E4
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FE5DC
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082FE5DC
	movs r0, #1
	strb r0, [r1, #0]
.L082FE5DC:
	movs r0, #4
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

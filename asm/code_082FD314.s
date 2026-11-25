	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FD314
	.thumb_func
sub_082FD314:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FD32C
.L082FD328:
	bl VBlankIntrWait
.L082FD32C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FD328
	movs r0, #1
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083000F4
	.thumb_func
sub_083000F4:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L0830010C
.L08300108:
	bl VBlankIntrWait
.L0830010C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L08300108
	movs r0, #7
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

	.thumb
	.align 1, 0
	.global sub_08300148
	.thumb_func
sub_08300148:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L08300160
.L0830015C:
	bl VBlankIntrWait
.L08300160:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830015C
	movs r0, #8
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

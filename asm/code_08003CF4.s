	.include "asm/macros.inc"
	.syntax unified
	.text

@ Oam_Init: [sure] (nonmatching)
	.thumb
	.align 1, 0
	.global sub_08003CF4
	.thumb_func
sub_08003CF4:
	.global Oam_Init
	.thumb_set Oam_Init, sub_08003CF4
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, [pc, #28]
	movs r3, #128
	lsls r3, r3, #2
	movs r4, #255
.L08003D00:
	lsls r0, r2, #3
	adds r1, r0, r5
	movs r6, #224
	lsls r6, r6, #19
	adds r0, r0, r6
	strh r3, [r0, #0]
	strh r3, [r1, #0]
	adds r2, #1
	cmp r2, #128
	beq .L08003D1C
	strb r2, [r1, #6]
	b .L08003D22
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003D1C:
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
.L08003D22:
	movs r0, #0
	strb r0, [r1, #7]
	lsls r0, r2, #24
	lsrs r2, r0, #24
	cmp r0, #0
	bge .L08003D00
	ldr r0, [pc, #24]
	movs r2, #0
	strb r2, [r0, #0]
	ldr r1, [pc, #20]
	movs r0, #255
	strb r0, [r1, #0]
	ldr r0, [pc, #20]
	strb r2, [r0, #0]
	bl sub_08003F70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300125C
	.4byte 0x03001260
	.4byte 0x03001264

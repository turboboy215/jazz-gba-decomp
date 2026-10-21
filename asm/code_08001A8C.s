	.include "asm/macros.inc"
	.syntax unified
	.text

@ Bg_InitControl: [likely] writes BG0CNT-BG3CNT
	.thumb
	.align 1, 0
	.global sub_08001A8C
	.thumb_func
sub_08001A8C:
	.global Bg_InitControl
	.thumb_set Bg_InitControl, sub_08001A8C
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r0, #118
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AB0
	ldr r1, [pc, #148]
	adds r2, r3, #0
	adds r2, #119
	movs r4, #252
	lsls r4, r4, #5
	adds r0, r4, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r4, #128
	lsls r4, r4, #1
.L08001AB0:
	adds r0, r3, #0
	adds r0, #122
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AD4
	ldr r0, [pc, #120]
	adds r2, r3, #0
	adds r2, #123
	movs r5, #244
	lsls r5, r5, #5
	adds r1, r5, #0
	ldrb r2, [r2, #0]
	orrs r1, r2
	strh r1, [r0, #0]
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r4, r0
.L08001AD4:
	adds r0, r3, #0
	adds r0, #126
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AFC
	ldr r1, [pc, #88]
	adds r2, r3, #0
	adds r2, #127
	movs r5, #236
	lsls r5, r5, #5
	adds r0, r5, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L08001AFC:
	adds r0, r3, #0
	adds r0, #130
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001B24
	ldr r2, [pc, #52]
	adds r1, r3, #0
	adds r1, #131
	movs r3, #228
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r5, #128
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L08001B24:
	movs r0, #128
	lsls r0, r0, #19
	strh r4, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000008
	.4byte 0x0400000A
	.4byte 0x0400000C
	.4byte 0x0400000E

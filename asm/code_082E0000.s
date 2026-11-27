	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082E84D8
	.thumb_func
sub_082E84D8:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082E8518
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082E84FE
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082E8508
.L082E84FE:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082E8508:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082E8522
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E8518:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #80]
	bl sub_0800075C
.L082E8522:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E85A8
	adds r0, r4, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #6
	bne .L082E8574
	adds r1, r4, #0
	adds r1, #236
	adds r2, r4, #0
	adds r2, #90
	ldrh r3, [r1, #0]
	lsls r0, r3, #1
	adds r0, r0, r3
	ldrh r1, [r2, #0]
	subs r0, r1, r0
	strh r0, [r2, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082E8554
	movs r0, #0
	strh r0, [r2, #0]
.L082E8554:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082E8564
	movs r0, #7
	strb r0, [r1, #0]
.L082E8564:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082E85AA
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E8574:
	cmp r0, #2
	bne .L082E85A2
	adds r0, r4, #0
	adds r0, #236
	adds r1, r4, #0
	adds r1, #90
	ldrh r2, [r1, #0]
	ldrh r0, [r0, #0]
	subs r0, r2, r0
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082E8592
	movs r0, #0
	strh r0, [r1, #0]
.L082E8592:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082E85A2
	movs r0, #7
	strb r0, [r1, #0]
.L082E85A2:
	adds r0, r4, #0
	bl sub_08306E28
.L082E85A8:
	movs r0, #0
.L082E85AA:
	pop {r4}
	pop {r1}
	bx r1

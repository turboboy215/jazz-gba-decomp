	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EB3A8
	.thumb_func
sub_082EB3A8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EB3F0
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EB3D0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_0800075C
	b .L082EB3DC
.L082EB3D0:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #20]
	adds r0, r4, #0
	bl sub_0800075C
.L082EB3DC:
	adds r3, r4, #0
	adds r1, r5, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EB3FE
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EB3F0:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #68]
	adds r0, r4, #0
	bl sub_0800075C
	adds r3, r4, #0
.L082EB3FE:
	adds r0, r5, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EB470
	adds r6, r5, #0
	adds r6, #236
	adds r4, r5, #0
	adds r4, #90
	ldrb r0, [r5, #7]
	cmp r0, #4
	bne .L082EB41E
	ldrh r1, [r4, #0]
	ldrh r2, [r6, #0]
	subs r0, r1, r2
	strh r0, [r4, #0]
.L082EB41E:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r3, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EB440
	ldrh r6, [r6, #0]
	lsrs r0, r6, #1
	ldrh r1, [r4, #0]
	subs r0, r1, r0
	b .L082EB448
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EB440:
	ldrh r6, [r6, #0]
	lsrs r0, r6, #2
	ldrh r2, [r4, #0]
	subs r0, r2, r0
.L082EB448:
	strh r0, [r4, #0]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bgt .L082EB456
	movs r0, #0
	strh r0, [r4, #0]
.L082EB456:
	adds r1, r5, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EB466
	movs r0, #7
	strb r0, [r1, #0]
.L082EB466:
	adds r0, r5, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EB472
.L082EB470:
	movs r0, #0
.L082EB472:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

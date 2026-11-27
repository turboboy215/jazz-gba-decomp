	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082E9384
	.thumb_func
sub_082E9384:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082E945C
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082E93A4
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082E93B8
.L082E93A4:
	cmp r3, #0
	beq .L082E93AA
	b .L082E9520
.L082E93AA:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082E93B8
	b .L082E9520
.L082E93B8:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082E93C6
	b .L082E9520
.L082E93C6:
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	blt .L082E93D2
	b .L082E9520
.L082E93D2:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082E941C
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082E93E4
	b .L082E9514
.L082E93E4:
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082E93EA:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E9406
	b .L082E9520
.L082E9406:
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082E93EA
	b .L082E9514
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082E941C:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082E9514
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082E942C:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9520
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082E942C
	b .L082E9514
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082E945C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082E9474
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082E9484
.L082E9474:
	cmp r3, #0
	bne .L082E9520
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082E9520
.L082E9484:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082E9520
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	bge .L082E9520
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082E94E0
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082E9514
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082E94B0:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9520
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082E94B0
	b .L082E9514
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082E94E0:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082E9514
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082E94F0:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9520
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082E94F0
.L082E9514:
	movs r0, #1
	b .L082E9522
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082E9520:
	movs r0, #0
.L082E9522:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E952C
	.thumb_func
sub_082E952C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082E956C
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082E9552
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082E955C
.L082E9552:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082E955C:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082E9576
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E956C:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #72]
	bl sub_0800075C
.L082E9576:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9604
	ldrb r0, [r4, #7]
	cmp r0, #5
	bne .L082E958E
	adds r0, r4, #0
	movs r1, #6
	bl sub_082E9620
.L082E958E:
	adds r0, r4, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #10
	bne .L082E95C0
	adds r3, r4, #0
	adds r3, #236
	adds r0, r4, #0
	adds r0, #90
	ldrh r2, [r3, #0]
	lsrs r1, r2, #1
	ldrh r5, [r0, #0]
	subs r2, r5, r1
	strh r2, [r0, #0]
	adds r1, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #7
	bne .L082E95DE
	ldrh r3, [r3, #0]
	lsrs r0, r3, #1
	subs r0, r2, r0
	b .L082E95DC
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E95C0:
	adds r3, r4, #0
	adds r3, #236
	adds r0, r4, #0
	adds r0, #90
	ldrh r1, [r0, #0]
	ldrh r5, [r3, #0]
	subs r2, r1, r5
	strh r2, [r0, #0]
	adds r1, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #7
	bne .L082E95DE
	ldrh r3, [r3, #0]
	subs r0, r2, r3
.L082E95DC:
	strh r0, [r1, #0]
.L082E95DE:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bgt .L082E95EA
	movs r0, #0
	strh r0, [r1, #0]
.L082E95EA:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082E95FA
	movs r0, #7
	strb r0, [r1, #0]
.L082E95FA:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082E9606
.L082E9604:
	movs r0, #0
.L082E9606:
	pop {r4, r5}
	pop {r1}
	bx r1

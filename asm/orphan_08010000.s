	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_080102E0
	.thumb_func
sub_080102E0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x03000658

@ orphan_GAX2_jingle: same code as GAX2_jingle
	.thumb
	.align 1, 0
	.global sub_080102F4
	.thumb_func
sub_080102F4:
	.global orphan_GAX2_jingle
	.thumb_set orphan_GAX2_jingle, sub_080102F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r0, [pc, #52]
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #128
	ldr r4, [r1, #120]
	str r4, [r0, #0]
	adds r0, #4
	ldr r3, [r1, #124]
	str r3, [r0, #0]
	ldr r2, [r1, #4]
	ldrh r1, [r2, #14]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L08010340
	adds r0, r2, #0
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0801032E
	ldr r0, [pc, #16]
	ldr r1, [pc, #16]
	bl orphan_GAX_ASSERT
.L0801032E:
	movs r0, #0
	b .L08010402
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
	movs r4, #28
	lsls r1, r0, #8
	movs r4, #40
	lsls r1, r0, #8
.L08010340:
	adds r6, r3, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L0801035C
	movs r2, #0
	movs r1, #3
.L0801034E:
	strb r2, [r4, #0]
	adds r4, #1
	subs r6, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L0801034E
.L0801035C:
	movs r0, #0
	str r0, [sp, #0]
	movs r5, #32
	negs r5, r5
	ands r5, r6
	adds r2, r5, #0
	cmp r5, #0
	bge .L0801036E
	adds r2, r5, #3
.L0801036E:
	lsls r2, r2, #9
	lsrs r2, r2, #11
	movs r0, #128
	lsls r0, r0, #17
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0800F21C
	adds r0, r4, r5
	subs r1, r6, r5
	cmp r1, #0
	ble .L08010396
	movs r3, #0
	adds r2, r1, #0
.L0801038C:
	strb r3, [r0, #0]
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bne .L0801038C
.L08010396:
	ldr r4, [pc, #120]
	ldr r0, [r4, #0]
	movs r6, #0
	str r6, [r0, #84]
	movs r5, #1
	str r5, [r0, #32]
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	adds r3, r2, #0
	strh r3, [r1, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r7, #200
	lsls r7, r7, #3
	adds r2, r7, #0
	strh r2, [r1, #0]
	ldr r0, [r0, #40]
	cmp r0, #0
	beq .L080103CE
	ldr r0, [pc, #88]
	strh r3, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r2, [r0, #0]
.L080103CE:
	mov r0, r8
	bl orphan_GAX2_init_song
	bl orphan_GAX_open
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strb r5, [r0, #24]
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	adds r0, #57
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #4]
	adds r0, #58
	strb r6, [r0, #0]
	ldr r0, [r4, #0]
	adds r0, #90
	strb r5, [r0, #0]
	ldr r0, [r4, #0]
	str r5, [r0, #84]
	movs r0, #1
.L08010402:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000658
	.4byte 0x040000C6
	.4byte 0x00008640
	.4byte 0x040000D2

@ orphan_GAX_irq: same code as GAX_irq
	.thumb
	.align 1, 0
	.global sub_08010420
	.thumb_func
sub_08010420:
	.global orphan_GAX_irq
	.thumb_set orphan_GAX_irq, sub_08010420
	push {r4, r5, r6, r7, lr}
	ldr r0, [pc, #236]
	ldr r2, [r0, #0]
	ldr r1, [r2, #0]
	ldr r0, [pc, #232]
	cmp r1, r0
	bne .L0801050A
	ldr r0, [r2, #84]
	cmp r0, #0
	beq .L0801050A
	ldr r0, [r2, #84]
	cmp r0, #1
	bne .L08010470
	movs r0, #2
	str r0, [r2, #84]
	ldr r1, [pc, #216]
	movs r0, #128
	strh r0, [r1, #0]
	ldr r0, [pc, #212]
	movs r5, #0
	strh r5, [r0, #0]
	adds r1, #124
	ldrh r0, [r2, #60]
	movs r4, #128
	lsls r4, r4, #9
	subs r0, r4, r0
	movs r3, #192
	lsls r3, r3, #16
	orrs r0, r3
	str r0, [r1, #0]
	ldr r0, [r2, #40]
	cmp r0, #0
	beq .L08010470
	ldr r0, [pc, #188]
	strh r5, [r0, #0]
	adds r1, #4
	ldrh r0, [r2, #62]
	subs r0, r4, r0
	orrs r0, r3
	str r0, [r1, #0]
.L08010470:
	ldr r0, [pc, #156]
	ldr r1, [r0, #0]
	ldr r0, [r1, #4]
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08010490
	adds r0, r1, #0
	adds r0, #93
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08010490
	ldr r0, [pc, #152]
	ldr r1, [pc, #156]
	bl orphan_GAX_ASSERT
.L08010490:
	ldr r0, [pc, #124]
	ldr r1, [r0, #0]
	ldr r4, [r1, #72]
	adds r7, r0, #0
	cmp r4, #1
	bne .L08010502
	ldr r0, [r1, #84]
	cmp r0, #1
	bls .L08010502
	ldr r5, [pc, #136]
	ldr r0, [pc, #136]
	adds r3, r0, #0
	strh r3, [r5, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r0, #200
	lsls r0, r0, #3
	adds r2, r0, #0
	strh r2, [r5, #0]
	ldr r0, [r1, #40]
	cmp r0, #0
	beq .L080104CE
	ldr r0, [pc, #112]
	strh r3, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r2, [r0, #0]
.L080104CE:
	ldr r2, [pc, #104]
	ldr r3, [r7, #0]
	ldr r0, [r3, #72]
	eors r0, r4
	ldr r1, [r3, #36]
	ldrh r1, [r1, #4]
	muls r1, r0
	ldr r0, [r3, #48]
	adds r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [pc, #88]
	adds r6, r0, #0
	strh r6, [r5, #0]
	ldr r1, [r3, #40]
	cmp r1, #0
	beq .L08010502
	adds r2, #12
	ldr r0, [r3, #72]
	eors r0, r4
	ldrh r1, [r1, #4]
	muls r1, r0
	ldr r0, [r3, #52]
	adds r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [pc, #52]
	strh r6, [r0, #0]
.L08010502:
	ldr r0, [r7, #0]
	adds r0, #93
	movs r1, #0
	strb r1, [r0, #0]
.L0801050A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03000658
	.4byte 0x47415833
	.4byte 0x04000084
	.4byte 0x04000102
	.4byte 0x04000106
	.4byte 0x02012444
	.4byte 0x0201244C
	.4byte 0x040000C6
	.4byte 0x00008640
	.4byte 0x040000D2
	.4byte 0x040000BC
	.4byte 0x0000B660

@ orphan_GAX_play: same code as GAX_play
	.thumb
	.align 1, 0
	.global sub_08010540
	.thumb_func
sub_08010540:
	.global orphan_GAX_play
	.thumb_set orphan_GAX_play, sub_08010540
	push {r4, r5, r6, lr}
	sub sp, #4
	ldr r0, [pc, #284]
	ldr r1, [r0, #0]
	ldr r0, [r1, #84]
	cmp r0, #0
	bne .L08010550
	b .L080106E8
.L08010550:
	ldr r0, [r1, #4]
	ldr r0, [r0, #52]
	cmp r0, #0
	beq .L080105B0
	adds r4, r0, #0
	movs r6, #64
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L08010576
	movs r2, #0
	movs r1, #3
.L08010568:
	strb r2, [r4, #0]
	adds r4, #1
	subs r6, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L08010568
.L08010576:
	movs r0, #0
	str r0, [sp, #0]
	movs r5, #32
	negs r5, r5
	ands r5, r6
	adds r2, r5, #0
	cmp r5, #0
	bge .L08010588
	adds r2, r5, #3
.L08010588:
	lsls r2, r2, #9
	lsrs r2, r2, #11
	movs r0, #128
	lsls r0, r0, #17
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0800F21C
	adds r0, r4, r5
	subs r1, r6, r5
	cmp r1, #0
	ble .L080105B0
	movs r3, #0
	adds r2, r1, #0
.L080105A6:
	strb r3, [r0, #0]
	adds r0, #1
	subs r2, #1
	cmp r2, #0
	bne .L080105A6
.L080105B0:
	ldr r4, [pc, #176]
	ldr r0, [r4, #0]
	ldr r1, [r0, #4]
	ldrh r0, [r1, #18]
	cmp r0, #255
	bls .L080105C0
	movs r0, #255
	strh r0, [r1, #18]
.L080105C0:
	ldr r2, [r4, #0]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r0, [r2, #4]
	ldrh r0, [r0, #18]
	strb r0, [r1, #23]
	ldr r0, [r4, #0]
	ldr r1, [r0, #4]
	ldrh r2, [r1, #12]
	adds r1, r0, #0
	adds r1, #116
	strh r2, [r1, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r5, #1
	strb r5, [r0, #18]
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #90
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0801060C
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r1, [r0, #72]
	bl orphan_GAXSync_render
.L0801060C:
	ldr r1, [r4, #0]
	ldr r0, [r1, #40]
	cmp r0, #0
	beq .L08010668
	adds r0, r1, #0
	adds r0, #94
	strb r5, [r0, #0]
	ldr r2, [r4, #0]
	ldr r3, [r2, #36]
	str r3, [r2, #44]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r3, [r3, #4]
	ldr r1, [r2, #72]
	muls r3, r1
	ldr r1, [r2, #48]
	adds r1, r1, r3
	bl orphan_GAXOutput_stream
	ldr r0, [r4, #0]
	adds r0, #94
	movs r1, #2
	strb r1, [r0, #0]
	ldr r2, [r4, #0]
	ldr r3, [r2, #40]
	str r3, [r2, #44]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r3, [r3, #4]
	ldr r1, [r2, #72]
	muls r3, r1
	ldr r1, [r2, #52]
	adds r1, r1, r3
	bl orphan_GAXOutput_stream
	b .L0801068E
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010668:
	adds r1, #94
	movs r0, #0
	strb r0, [r1, #0]
	ldr r2, [r4, #0]
	ldr r3, [r2, #36]
	str r3, [r2, #44]
	ldr r1, [r2, #32]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r3, [r3, #4]
	ldr r1, [r2, #72]
	muls r3, r1
	ldr r1, [r2, #48]
	adds r1, r1, r3
	bl orphan_GAXOutput_stream
.L0801068E:
	ldr r4, [pc, #96]
	ldr r2, [r4, #0]
	ldr r0, [r2, #32]
	lsls r0, r0, #2
	adds r3, r2, #0
	adds r3, #24
	adds r0, r3, r0
	ldr r1, [r0, #0]
	ldr r0, [r1, #72]
	adds r0, #1
	str r0, [r1, #72]
	ldr r0, [r2, #72]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #72]
	ldr r1, [r2, #4]
	ldr r0, [r2, #32]
	lsls r0, r0, #2
	adds r3, r3, r0
	ldr r0, [r3, #0]
	ldrb r0, [r0, #25]
	adds r1, #57
	strb r0, [r1, #0]
	ldr r4, [r4, #0]
	ldr r2, [r4, #32]
	cmp r2, #1
	bne .L080106DE
	ldr r1, [r4, #4]
	adds r0, r1, #0
	adds r0, #57
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L080106DE
	movs r0, #0
	str r0, [r4, #32]
	adds r0, r1, #0
	adds r0, #58
	strb r2, [r0, #0]
	bl orphan_GAX2_init_volboost
.L080106DE:
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	adds r0, #93
	movs r1, #1
	strb r1, [r0, #0]
.L080106E8:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03000658

@ orphan_GAX_fx: same code as GAX_fx
	.thumb
	.align 1, 0
	.global sub_080106F4
	.thumb_func
sub_080106F4:
	.global orphan_GAX_fx
	.thumb_set orphan_GAX_fx, sub_080106F4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
	ldr r4, [pc, #112]
	cmp r7, #255
	bhi .L08010774
	movs r2, #0
	ldr r0, [pc, #108]
	ldr r1, [r0, #0]
	ldr r3, [r1, #16]
	adds r6, r0, #0
	cmp r5, r3
	bcs .L08010722
	ldr r0, [r1, #12]
.L08010710:
	ldr r1, [r0, #64]
	cmp r1, r4
	bgt .L0801071A
	adds r5, r2, #0
	adds r4, r1, #0
.L0801071A:
	adds r0, #80
	adds r2, #1
	cmp r2, r3
	bcc .L08010710
.L08010722:
	ldr r0, [r6, #0]
	ldr r2, [r0, #12]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r2, r1, r2
	adds r2, #75
	movs r3, #0
	movs r0, #8
	strb r0, [r2, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #12]
	adds r0, r1, r0
	adds r0, #73
	strb r3, [r0, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #12]
	adds r0, r1, r0
	adds r0, #74
	strb r3, [r0, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #12]
	adds r0, r1, r0
	adds r0, #76
	strb r7, [r0, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #12]
	adds r1, r1, r0
	str r3, [r1, #64]
	adds r1, #72
	movs r0, #255
	strb r0, [r1, #0]
	ldr r0, [r6, #0]
	adds r0, #136
	adds r0, r0, r5
	strb r7, [r0, #0]
	b .L080107C2
	.2byte 0xffff @ .raw
	ldrb r7, [r7, #31]
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010774:
	ldr r0, [pc, #44]
	ldr r3, [r0, #0]
	ldr r2, [r3, #4]
	ldrh r1, [r2, #14]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L080107B0
	ldr r1, [r3, #20]
	movs r0, #243
	lsls r0, r0, #3
	adds r2, r1, r0
	ldr r3, [pc, #24]
	adds r0, r7, r3
	str r0, [r2, #0]
	ldr r2, [pc, #24]
	adds r0, r1, r2
	str r5, [r0, #0]
	movs r3, #244
	lsls r3, r3, #3
	adds r1, r1, r3
	str r5, [r1, #0]
	b .L080107C2
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r4, r3, #30
	movs r0, r0
.L080107B0:
	adds r0, r2, #0
	adds r0, #56
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L080107C2
	ldr r0, [pc, #16]
	ldr r1, [pc, #16]
	bl orphan_GAX_ASSERT
.L080107C2:
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x020124C0
	.4byte 0x020124C8

@ orphan_GAX_fx_ex: same code as GAX_fx_ex
	.thumb
	.align 1, 0
	.global sub_080107D4
	.thumb_func
sub_080107D4:
	.global orphan_GAX_fx_ex
	.thumb_set orphan_GAX_fx_ex, sub_080107D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r2, #0
	adds r6, r3, #0
	movs r5, #1
	negs r5, r5
	adds r4, r7, #0
	adds r3, r5, #0
	cmp r1, r5
	bne .L08010814
	movs r2, #0
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	ldr r3, [r1, #16]
	mov ip, r0
	cmp r2, r3
	bcs .L0801083A
	ldr r0, [r1, #12]
.L080107FC:
	ldr r1, [r0, #64]
	cmp r1, r4
	bgt .L08010806
	adds r5, r2, #0
	adds r4, r1, #0
.L08010806:
	adds r0, #80
	adds r2, #1
	cmp r2, r3
	bcc .L080107FC
	b .L0801083A
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010814:
	adds r5, r1, #0
	ldr r0, [pc, #68]
	ldr r2, [r0, #0]
	ldr r1, [r2, #16]
	mov ip, r0
	cmp r5, r1
	bcc .L08010824
	adds r5, r3, #0
.L08010824:
	cmp r5, r3
	beq .L080108CC
	ldr r0, [r2, #12]
	lsls r1, r5, #2
	adds r1, r1, r5
	lsls r1, r1, #4
	adds r1, r1, r0
	ldr r0, [r1, #64]
	cmp r7, r0
	bge .L0801083A
	adds r5, r3, #0
.L0801083A:
	movs r3, #1
	negs r3, r3
	cmp r5, r3
	beq .L080108CC
	mov r1, ip
	ldr r0, [r1, #0]
	ldr r2, [r0, #12]
	lsls r1, r5, #2
	adds r0, r1, r5
	lsls r0, r0, #4
	adds r2, r0, r2
	adds r4, r1, #0
	cmp r6, r3
	beq .L08010860
	asrs r0, r6, #5
	adds r1, r0, #2
	b .L08010862
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010860:
	movs r1, #8
.L08010862:
	adds r0, r2, #0
	adds r0, #75
	strb r1, [r0, #0]
	mov r2, ip
	ldr r0, [r2, #0]
	ldr r1, [r0, #12]
	adds r0, r4, r5
	lsls r0, r0, #4
	adds r2, r0, r1
	movs r0, #1
	negs r0, r0
	cmp r6, r0
	beq .L08010884
	movs r0, #31
	adds r1, r0, #0
	ands r1, r6
	b .L08010886
.L08010884:
	movs r1, #0
.L08010886:
	adds r0, r2, #0
	adds r0, #73
	strb r1, [r0, #0]
	mov r1, ip
	ldr r0, [r1, #0]
	ldr r3, [r0, #12]
	adds r1, r4, r5
	lsls r1, r1, #4
	adds r3, r1, r3
	mvns r2, r6
	negs r0, r2
	orrs r0, r2
	lsrs r0, r0, #31
	adds r3, #74
	strb r0, [r3, #0]
	mov r2, ip
	ldr r0, [r2, #0]
	ldr r0, [r0, #12]
	adds r0, r1, r0
	adds r0, #76
	mov r2, r8
	strb r2, [r0, #0]
	mov r2, ip
	ldr r0, [r2, #0]
	ldr r0, [r0, #12]
	adds r1, r1, r0
	str r7, [r1, #64]
	adds r1, #72
	movs r0, #255
	strb r0, [r1, #0]
	ldr r0, [r2, #0]
	adds r0, #136
	adds r0, r0, r5
	mov r1, r8
	strb r1, [r0, #0]
.L080108CC:
	adds r0, r5, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ orphan_GAX2_fx: same code as GAX2_fx
	.thumb
	.align 1, 0
	.global sub_080108D8
	.thumb_func
sub_080108D8:
	.global orphan_GAX2_fx
	.thumb_set orphan_GAX2_fx, sub_080108D8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne .L080108F4
	ldr r0, [pc, #8]
	ldr r1, [pc, #12]
	bl orphan_GAX_ASSERT
	b .L08010974
	movs r0, r0
	movs r5, #28
	lsls r1, r0, #8
	movs r3, #164
	lsls r1, r0, #8
.L080108F4:
	ldrh r0, [r4, #0]
	ldr r7, [pc, #104]
	cmp r0, r7
	bne .L08010904
	ldr r0, [pc, #100]
	ldr r1, [pc, #104]
	bl orphan_GAX_ASSERT
.L08010904:
	ldrh r1, [r4, #0]
	ldrh r0, [r4, #2]
	movs r2, #1
	negs r2, r2
	mov ip, r2
	cmp r0, r7
	beq .L08010914
	mov ip, r0
.L08010914:
	ldr r0, [r4, #4]
	movs r6, #1
	negs r6, r6
	ldr r2, [pc, #80]
	cmp r0, r6
	beq .L08010922
	adds r2, r0, #0
.L08010922:
	ldr r0, [r4, #8]
	adds r3, r6, #0
	cmp r0, r6
	beq .L0801092C
	adds r3, r0, #0
.L0801092C:
	ldrh r0, [r4, #12]
	movs r5, #255
	cmp r0, r7
	beq .L08010936
	adds r5, r0, #0
.L08010936:
	cmp r5, #255
	ble .L0801093C
	movs r5, #255
.L0801093C:
	adds r0, r1, #0
	mov r1, ip
	bl orphan_GAX_fx_ex
	adds r2, r0, #0
	cmp r2, r6
	beq .L08010974
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	ldr r1, [r0, #12]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	adds r0, #72
	strb r5, [r0, #0]
	adds r0, r2, #0
	b .L08010978
	.2byte 0xffff @ .raw
	movs r0, r0
	movs r5, #28
	lsls r1, r0, #8
	movs r5, #36
	lsls r1, r0, #8
	.2byte 0xffff @ .raw
	ldrb r7, [r7, #31]
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010974:
	movs r0, #1
	negs r0, r0
.L08010978:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

@ orphan_GAX_fx_status: same code as GAX_fx_status
	.thumb
	.align 1, 0
	.global sub_08010980
	.thumb_func
sub_08010980:
	.global orphan_GAX_fx_status
	.thumb_set orphan_GAX_fx_status, sub_08010980
	push {r4, lr}
	adds r2, r0, #0
	cmp r2, #0
	blt .L08010992
	ldr r4, [pc, #12]
	ldr r3, [r4, #0]
	ldr r0, [r3, #16]
	cmp r2, r0
	bcc .L0801099C
.L08010992:
	movs r0, #0
	b .L080109C2
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
.L0801099C:
	ldr r1, [r3, #12]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	ldr r1, [r0, #64]
	movs r0, #128
	lsls r0, r0, #24
	cmp r1, r0
	bne .L080109BA
	adds r0, r3, #0
	adds r0, #136
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0, #0]
.L080109BA:
	ldr r0, [r4, #0]
	adds r0, #136
	adds r0, r0, r2
	ldrb r0, [r0, #0]
.L080109C2:
	pop {r4}
	pop {r1}
	bx r1

@ orphan_GAX_set_music_volume: same code as GAX_set_music_volume
	.thumb
	.align 1, 0
	.global sub_080109C8
	.thumb_func
sub_080109C8:
	.global orphan_GAX_set_music_volume
	.thumb_set orphan_GAX_set_music_volume, sub_080109C8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	cmp r5, #255
	bls .L080109D4
	movs r5, #255
.L080109D4:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne .L08010A28
	movs r2, #0
	ldr r3, [pc, #68]
	ldr r0, [r3, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #36]
	ldrb r0, [r0, #0]
	cmp r2, r0
	bge .L08010A52
	adds r4, r3, #0
	movs r3, #0
.L080109F8:
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #32]
	adds r0, r3, r0
	strb r5, [r0, #12]
	adds r3, #72
	adds r2, #1
	ldr r0, [r4, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #36]
	ldrb r0, [r0, #0]
	cmp r2, r0
	blt .L080109F8
	b .L08010A52
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010A28:
	movs r0, #2
	negs r0, r0
	cmp r2, r0
	ble .L08010A52
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r1, [r0, #0]
	ldr r0, [r1, #36]
	ldrb r0, [r0, #0]
	cmp r2, r0
	bge .L08010A52
	ldr r1, [r1, #32]
	lsls r0, r2, #3
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r1
	strb r5, [r0, #12]
.L08010A52:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03000658

@ orphan_GAX_ASSERT_PRINT: same code as GAX_ASSERT_PRINT
	.thumb
	.align 1, 0
	.global sub_08010A5C
	.thumb_func
sub_08010A5C:
	.global orphan_GAX_ASSERT_PRINT
	.thumb_set orphan_GAX_ASSERT_PRINT, sub_08010A5C
	push {r4, r5, r6, r7, lr}
	adds r5, r2, #0
	movs r3, #192
	lsls r3, r3, #19
	adds r2, r0, r3
	adds r0, r0, r2
	lsls r1, r1, #6
	adds r3, r0, r1
	ldrb r2, [r5, #0]
	cmp r2, #0
	beq .L08010B04
	movs r0, #64
	negs r0, r0
	mov ip, r0
.L08010A78:
	movs r4, #0
	movs r0, #63
	ands r0, r3
	lsrs r1, r0, #1
	ldrb r6, [r5, #0]
	adds r7, r5, #1
	cmp r1, #31
	bgt .L08010AB0
	adds r0, r2, #0
	b .L08010A98
.L08010A8C:
	adds r1, #1
	adds r4, #1
	cmp r1, #31
	bgt .L08010AB0
	adds r0, r5, r4
	ldrb r0, [r0, #0]
.L08010A98:
	cmp r0, #0
	beq .L08010AB0
	cmp r0, #32
	beq .L08010AB0
	cmp r0, #10
	beq .L08010AB0
	cmp r1, #29
	ble .L08010A8C
	mov r0, ip
	ands r0, r3
	adds r3, r0, #0
	adds r3, #64
.L08010AB0:
	adds r1, r6, #0
	adds r5, r7, #0
	cmp r1, #95
	bne .L08010ABA
	movs r1, #93
.L08010ABA:
	cmp r1, #58
	bne .L08010AC0
	movs r1, #92
.L08010AC0:
	cmp r1, #46
	bne .L08010AC6
	movs r1, #91
.L08010AC6:
	cmp r1, #10
	bne .L08010AD2
	mov r0, ip
	ands r0, r3
	adds r3, r0, #0
	adds r3, #63
.L08010AD2:
	cmp r1, #32
	bne .L08010ADA
	movs r1, #0
	b .L08010AFA
.L08010ADA:
	cmp r1, #64
	bhi .L08010AE4
	adds r0, r1, #0
	subs r0, #47
	b .L08010AF6
.L08010AE4:
	cmp r1, #96
	bls .L08010AEE
	adds r0, r1, #0
	subs r0, #86
	b .L08010AF6
.L08010AEE:
	cmp r1, #64
	bls .L08010AFA
	adds r0, r1, #0
	subs r0, #54
.L08010AF6:
	lsls r0, r0, #24
	lsrs r1, r0, #24
.L08010AFA:
	strh r1, [r3, #0]
	adds r3, #2
	ldrb r2, [r5, #0]
	cmp r2, #0
	bne .L08010A78
.L08010B04:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

@ orphan_GAX_ASSERT: same code as GAX_ASSERT
	.thumb
	.align 1, 0
	.global sub_08010B0C
	.thumb_func
sub_08010B0C:
	.global orphan_GAX_ASSERT
	.thumb_set orphan_GAX_ASSERT, sub_08010B0C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #12
	adds r4, r0, #0
	adds r6, r1, #0
	movs r5, #0
	ldr r0, [pc, #272]
	strh r5, [r0, #0]
	ldr r0, [pc, #272]
	ldr r1, [pc, #272]
	adds r2, r1, #0
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r3, #200
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0, #0]
	adds r0, #12
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r1, [r0, #0]
	adds r0, #12
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r1, [r0, #0]
	adds r0, #12
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r1, [r0, #0]
	movs r1, #192
	lsls r1, r1, #19
	str r5, [sp, #0]
	ldr r2, [pc, #208]
	mov r0, sp
	bl sub_0800F21C
	ldr r0, [pc, #204]
	str r0, [sp, #4]
	ldr r0, [pc, #204]
	str r0, [sp, #8]
	adds r7, r0, #0
	mov r8, r1
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	svc 19
	adds r0, r7, #0
	mov r1, r8
	ldr r2, [pc, #188]
	movs r3, #0
	movs r1, #15
.L08010B8A:
	strh r3, [r0, #0]
	adds r0, #2
	subs r1, #1
	cmp r1, #0
	bge .L08010B8A
	ldr r1, [pc, #176]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r1, #0]
	ldr r0, [pc, #172]
	movs r1, #128
	lsls r1, r1, #9
	str r1, [r0, #0]
	adds r0, #12
	str r1, [r0, #0]
	ldr r1, [pc, #164]
	ldr r0, [pc, #168]
	str r0, [r1, #0]
	ldr r2, [r2, #0]
	movs r0, #0
	movs r1, #0
	bl orphan_GAX_ASSERT_PRINT
	ldr r2, [pc, #156]
	movs r0, #0
	movs r1, #5
	bl orphan_GAX_ASSERT_PRINT
	movs r0, #15
	movs r1, #5
	adds r2, r4, #0
	bl orphan_GAX_ASSERT_PRINT
	movs r0, #0
	movs r1, #7
	adds r2, r6, #0
	bl orphan_GAX_ASSERT_PRINT
	ldr r0, [pc, #132]
	movs r2, #0
	strh r2, [r0, #0]
	movs r1, #160
	lsls r1, r1, #19
	ldr r3, [pc, #124]
	adds r0, r3, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #124]
	movs r0, #4
	strh r0, [r1, #0]
	subs r1, #8
	movs r3, #128
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #112]
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	subs r0, #68
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r0, #0]
	ldr r4, [pc, #96]
	ldr r0, [pc, #96]
	adds r3, r0, #0
	movs r2, #8
.L08010C12:
	ldrh r0, [r4, #0]
	adds r1, r3, #0
	eors r1, r0
	adds r0, r1, #0
	bics r0, r5
	adds r5, r1, #0
	ands r0, r2
	cmp r0, #0
	beq .L08010C12
	movs r0, #0
	svc 0
	b .L08010C12
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x040000C6
	.4byte 0x00008640
	.4byte 0x01004000
	.4byte 0x02012544
	.4byte 0x06004000
	.4byte 0x02012698
	.4byte 0x060044B8
	.4byte 0x060044C8
	.4byte 0x060044FC
	.4byte 0x01111110
	.4byte 0x0201269C
	.4byte 0x05000002
	.4byte 0x00007FFF
	.4byte 0x04000008
	.4byte 0x04000050
	.4byte 0x04000130
	.4byte 0x000003FF

@ orphan_GAX_clear_mem: same code as GAX_clear_mem
	.thumb
	.align 1, 0
	.global sub_08010C74
	.thumb_func
sub_08010C74:
	.global orphan_GAX_clear_mem
	.thumb_set orphan_GAX_clear_mem, sub_08010C74
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L08010C96
	movs r2, #0
	movs r1, #3
.L08010C88:
	strb r2, [r4, #0]
	adds r4, #1
	subs r6, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L08010C88
.L08010C96:
	movs r0, #0
	str r0, [sp, #0]
	movs r5, #32
	negs r5, r5
	ands r5, r6
	adds r2, r5, #0
	cmp r5, #0
	bge .L08010CA8
	adds r2, r5, #3
.L08010CA8:
	lsls r2, r2, #9
	lsrs r2, r2, #11
	movs r0, #128
	lsls r0, r0, #17
	orrs r2, r0
	mov r0, sp
	adds r1, r4, #0
	bl sub_0800F21C
	adds r0, r4, r5
	subs r1, r6, r5
	cmp r1, #0
	ble .L08010CCE
	movs r2, #0
.L08010CC4:
	strb r2, [r0, #0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bne .L08010CC4
.L08010CCE:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

@ orphan_GAX2_new_fx: same code as GAX2_new_fx
	.thumb
	.align 1, 0
	.global sub_08010CD8
	.thumb_func
sub_08010CD8:
	.global orphan_GAX2_new_fx
	.thumb_set orphan_GAX2_new_fx, sub_08010CD8
	push {lr}
	adds r1, r0, #0
	cmp r1, #0
	bne .L08010CF4
	ldr r0, [pc, #8]
	ldr r1, [pc, #12]
	bl orphan_GAX_ASSERT
	b .L08010D04
	movs r0, r0
	movs r3, #152
	lsls r1, r0, #8
	movs r3, #164
	lsls r1, r0, #8
.L08010CF4:
	ldr r0, [pc, #16]
	strh r0, [r1, #0]
	movs r0, #1
	negs r0, r0
	strh r0, [r1, #2]
	str r0, [r1, #4]
	str r0, [r1, #8]
	strh r0, [r1, #12]
.L08010D04:
	pop {r0}
	bx r0
	.4byte 0x0000FFFF
	.4byte 0x68004802
	.4byte 0x68003084
	.4byte 0x00004770
	.4byte 0x03000658

@ orphan_GAX_pause: same code as GAX_pause
	.thumb
	.align 1, 0
	.global sub_08010D1C
	.thumb_func
sub_08010D1C:
	.global orphan_GAX_pause
	.thumb_set orphan_GAX_pause, sub_08010D1C
	push {r4, lr}
	ldr r0, [pc, #28]
	ldr r2, [r0, #0]
	ldr r1, [r2, #84]
	adds r3, r0, #0
	cmp r1, #0
	beq .L08010D80
	movs r0, #0
	str r0, [r2, #84]
	ldr r0, [r2, #40]
	cmp r0, #0
	beq .L08010D48
	ldr r2, [pc, #8]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #8]
	b .L08010D4E
	lsls r0, r3, #25
	lsls r0, r0, #12
	lsls r2, r0, #2
	lsls r0, r0, #16
	ldmia r4, {r0, r1, r2, r3, r4, r5, r6, r7}
	movs r0, r0
.L08010D48:
	ldr r2, [pc, #60]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #60]
.L08010D4E:
	ands r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #60]
	ldr r1, [pc, #60]
	adds r2, r1, #0
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r4, #200
	lsls r4, r4, #3
	adds r1, r4, #0
	strh r1, [r0, #0]
	ldr r0, [r3, #0]
	ldr r0, [r0, #40]
	cmp r0, #0
	beq .L08010D80
	ldr r0, [pc, #36]
	strh r2, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r1, [r0, #0]
.L08010D80:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000082
	.4byte 0x0000FCFF
	.4byte 0x040000C6
	.4byte 0x00008640
	.4byte 0x040000D2
	.4byte 0x6801480B
	.4byte 0x28006D48
	.4byte 0x2001D128
	.4byte 0x6A886548
	.4byte 0xD0152800
	.4byte 0x21004B07
	.4byte 0x20074A07
	.4byte 0x80118019
	.4byte 0x28003801
	.4byte 0x4805DAFA
	.4byte 0x23CC8801
	.4byte 0xE012019B
	.4byte 0x03000658
	.4byte 0x040000A0
	.4byte 0x040000A4
	.4byte 0x04000082
	.4byte 0x21004A07
	.4byte 0x80112007
	.4byte 0x28003801
	.4byte 0x4805DAFB
	.4byte 0x23C08801
	.4byte 0x1C1A009B
	.4byte 0x80014311
	.4byte 0x00004770
	.4byte 0x040000A0
	.4byte 0x04000082
	.4byte 0x68004802
	.4byte 0x2102305A
	.4byte 0x47707001
	.4byte 0x03000658
	.4byte 0x68004802
	.4byte 0x2100305A
	.4byte 0x47707001
	.4byte 0x03000658

@ orphan_GAX_fx_note: same code as GAX_fx_note
	.thumb
	.align 1, 0
	.global sub_08010E24
	.thumb_func
sub_08010E24:
	.global orphan_GAX_fx_note
	.thumb_set orphan_GAX_fx_note, sub_08010E24
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	ldr r0, [pc, #56]
	cmp r4, r0
	bhi .L08010E5E
	cmp r2, #0
	blt .L08010E5E
	ldr r0, [pc, #48]
	ldr r3, [r0, #0]
	ldr r0, [r3, #16]
	cmp r2, r0
	bcs .L08010E5E
	ldr r0, [r3, #12]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r2, r1, r0
	ldr r0, [r2, #44]
	cmp r0, #0
	beq .L08010E5E
	adds r0, r2, #0
	adds r0, #68
	strh r4, [r0, #0]
	ldr r0, [r3, #12]
	adds r0, r1, r0
	adds r0, #74
	movs r1, #1
	strb r1, [r0, #0]
.L08010E5E:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x00000EEC
	.4byte 0x03000658

@ orphan_GAX_stop_fx: same code as GAX_stop_fx
	.thumb
	.align 1, 0
	.global sub_08010E6C
	.thumb_func
sub_08010E6C:
	.global orphan_GAX_stop_fx
	.thumb_set orphan_GAX_stop_fx, sub_08010E6C
	push {r4, lr}
	adds r2, r0, #0
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne .L08010EA8
	movs r1, #0
	ldr r2, [pc, #40]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcs .L08010EC6
	adds r3, r2, #0
	movs r4, #1
	movs r2, #0
.L08010E8A:
	ldr r0, [r3, #0]
	ldr r0, [r0, #12]
	adds r0, r2, r0
	adds r0, #75
	strb r4, [r0, #0]
	adds r2, #80
	adds r1, #1
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcc .L08010E8A
	b .L08010EC6
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010EA8:
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	ldr r0, [r1, #16]
	cmp r2, r0
	bcs .L08010EC6
	cmp r2, #0
	blt .L08010EC6
	ldr r0, [r1, #12]
	lsls r1, r2, #2
	adds r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r0
	adds r1, #75
	movs r0, #1
	strb r0, [r1, #0]
.L08010EC6:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000658

@ orphan_GAX_set_fx_volume: same code as GAX_set_fx_volume
	.thumb
	.align 1, 0
	.global sub_08010ED0
	.thumb_func
sub_08010ED0:
	.global orphan_GAX_set_fx_volume
	.thumb_set orphan_GAX_set_fx_volume, sub_08010ED0
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r1, #0
	cmp r4, #255
	bls .L08010EDC
	movs r4, #255
.L08010EDC:
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	bne .L08010F10
	movs r1, #0
	ldr r2, [pc, #36]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcs .L08010F2E
	adds r3, r2, #0
	movs r2, #0
.L08010EF4:
	ldr r0, [r3, #0]
	ldr r0, [r0, #12]
	adds r0, r2, r0
	strb r4, [r0, #12]
	adds r2, #80
	adds r1, #1
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	cmp r1, r0
	bcc .L08010EF4
	b .L08010F2E
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08010F10:
	movs r0, #2
	negs r0, r0
	cmp r2, r0
	ble .L08010F2E
	ldr r0, [pc, #24]
	ldr r1, [r0, #0]
	ldr r0, [r1, #16]
	cmp r2, r0
	bcs .L08010F2E
	ldr r1, [r1, #12]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #4
	adds r0, r0, r1
	strb r4, [r0, #12]
.L08010F2E:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000658

@ orphan_GAX_stop: same code as GAX_stop
	.thumb
	.align 1, 0
	.global sub_08010F38
	.thumb_func
sub_08010F38:
	.global orphan_GAX_stop
	.thumb_set orphan_GAX_stop, sub_08010F38
	push {r4, r5, r6, lr}
	ldr r5, [pc, #92]
	ldr r0, [r5, #0]
	ldr r1, [r0, #32]
	lsls r1, r1, #2
	adds r0, #24
	adds r0, r0, r1
	ldr r0, [r0, #0]
	movs r2, #0
	strb r2, [r0, #18]
	ldr r1, [r5, #0]
	str r2, [r1, #84]
	ldr r0, [pc, #72]
	strh r2, [r0, #0]
	adds r0, #66
	ldr r3, [pc, #72]
	adds r4, r3, #0
	strh r4, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	movs r6, #200
	lsls r6, r6, #3
	adds r3, r6, #0
	strh r3, [r0, #0]
	ldr r0, [r1, #40]
	cmp r0, #0
	beq .L08010F80
	ldr r0, [pc, #48]
	strh r4, [r0, #0]
	.2byte 0x1c1b @ .raw adds r3, r3, #0
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	.2byte 0x46c0 @ .raw nop
	strh r3, [r0, #0]
.L08010F80:
	ldr r0, [pc, #36]
	str r2, [r0, #0]
	ldr r0, [r5, #0]
	ldr r0, [r0, #40]
	cmp r0, #0
	beq .L08010F90
	ldr r0, [pc, #28]
	str r2, [r0, #0]
.L08010F90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000658
	.4byte 0x04000084
	.4byte 0x00008640
	.4byte 0x040000D2
	.4byte 0x04000100
	.4byte 0x04000104

@ orphan_GAXSync_open: same code as GAXSync_open
	.thumb
	.align 1, 0
	.global sub_08010FB0
	.thumb_func
sub_08010FB0:
	.global orphan_GAXSync_open
	.thumb_set orphan_GAXSync_open, sub_08010FB0
	movs r2, #0
	str r2, [r0, #8]
	str r2, [r0, #4]
	strb r2, [r0, #18]
	strb r2, [r0, #19]
	strb r2, [r0, #24]
	strb r2, [r0, #25]
	ldr r1, [pc, #28]
	strh r1, [r0, #12]
	movs r3, #0
	ldr r1, [pc, #24]
	strh r1, [r0, #14]
	strb r3, [r0, #20]
	movs r1, #6
	strh r1, [r0, #16]
	movs r1, #255
	strb r1, [r0, #23]
	strb r3, [r0, #21]
	strb r3, [r0, #22]
	strb r3, [r0, #26]
	strh r2, [r0, #28]
	bx lr
	.4byte 0x0000FFFF
	.4byte 0x00004E20

@ orphan_GAXSync_render: same code as GAXSync_render
	.thumb
	.align 1, 0
	.global sub_08010FE4
	.thumb_func
sub_08010FE4:
	.global orphan_GAXSync_render
	.thumb_set orphan_GAXSync_render, sub_08010FE4
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r0, [r2, #4]
	cmp r0, r6
	beq .L080110A8
	ldrb r0, [r2, #18]
	cmp r0, #0
	beq .L080110A8
	ldrb r0, [r2, #16]
	ldrh r3, [r2, #16]
	ldrb r1, [r2, #20]
	cmp r0, #0
	beq .L08011080
	movs r4, #0
	strb r4, [r2, #25]
	lsls r0, r1, #24
	cmp r0, #0
	bgt .L08011080
	ldrb r0, [r2, #26]
	cmp r0, #0
	beq .L0801101C
	strb r4, [r2, #26]
	ldr r1, [r2, #0]
	ldrh r0, [r1, #2]
	strh r0, [r2, #14]
	adds r4, r1, #0
	b .L08011024
.L0801101C:
	ldrh r0, [r2, #14]
	adds r0, #1
	strh r0, [r2, #14]
	ldr r4, [r2, #0]
.L08011024:
	ldrh r3, [r2, #16]
	lsrs r1, r3, #8
	cmp r1, #0
	beq .L08011036
	movs r0, #255
	ands r0, r3
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #16]
.L08011036:
	ldrh r0, [r2, #16]
	subs r1, r0, #1
	movs r5, #0
	strb r1, [r2, #20]
	movs r3, #14
	ldrsh r1, [r2, r3]
	adds r3, r0, #0
	ldrh r7, [r4, #2]
	cmp r1, r7
	blt .L08011078
	strh r5, [r2, #14]
	strh r5, [r2, #28]
	movs r1, #1
	strb r1, [r2, #22]
	ldrh r0, [r2, #12]
	adds r0, #1
	strh r0, [r2, #12]
	movs r7, #12
	ldrsh r0, [r2, r7]
	ldrh r7, [r4, #4]
	cmp r0, r7
	blt .L0801107A
	ldrb r0, [r2, #24]
	cmp r0, #0
	beq .L0801106E
	movs r0, #0
	strb r0, [r2, #18]
	strh r5, [r2, #16]
.L0801106E:
	strb r1, [r2, #25]
	ldrh r0, [r4, #6]
	strh r0, [r2, #12]
	ldrh r3, [r2, #16]
	b .L0801107A
.L08011078:
	strb r5, [r2, #22]
.L0801107A:
	movs r0, #1
	strb r0, [r2, #21]
	b .L08011088
.L08011080:
	subs r0, r1, #1
	movs r1, #0
	strb r0, [r2, #20]
	strb r1, [r2, #21]
.L08011088:
	movs r0, #255
	ands r0, r3
	cmp r0, #0
	bne .L08011094
	movs r0, #1
	strb r0, [r2, #25]
.L08011094:
	str r6, [r2, #4]
	ldr r0, [r2, #8]
	cmp r0, #0
	bne .L0801109E
	str r6, [r2, #8]
.L0801109E:
	ldrb r0, [r2, #19]
	cmp r0, #0
	beq .L080110A8
	subs r0, #1
	strb r0, [r2, #19]
.L080110A8:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

@ orphan_GAXOutput_render: same code as GAXOutput_render
	.thumb
	.align 1, 0
	.global sub_080110B0
	.thumb_func
sub_080110B0:
	.global orphan_GAXOutput_render
	.thumb_set orphan_GAXOutput_render, sub_080110B0
	push {r4, r5, r6, r7, lr}
	sub sp, #32
	adds r6, r0, #0
	movs r7, #0
	ldr r0, [pc, #380]
	ldr r1, [r0, #0]
	adds r0, r1, #0
	adds r0, #94
	ldrb r0, [r0, #0]
	cmp r0, #1
	bhi .L080110FC
	adds r0, r1, #0
	adds r0, #90
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L080110FC
	movs r4, #0
	ldr r0, [r6, #36]
	adds r0, #160
	ldr r0, [r0, #0]
	cmp r7, r0
	bcs .L080110FC
	movs r5, #0
.L080110DE:
	ldr r0, [r6, #32]
	adds r0, r0, r5
	adds r1, r6, #0
	bl orphan_GAXTracker_render
	orrs r7, r0
	lsls r0, r7, #24
	lsrs r7, r0, #24
	adds r5, #72
	adds r4, #1
	ldr r0, [r6, #36]
	adds r0, #160
	ldr r0, [r0, #0]
	cmp r4, r0
	bcc .L080110DE
.L080110FC:
	ldr r2, [pc, #312]
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #89
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08011136
	movs r4, #0
	ldr r0, [r1, #16]
	cmp r4, r0
	bcs .L08011136
	movs r5, #0
.L08011114:
	ldr r0, [r2, #0]
	ldr r0, [r0, #12]
	adds r0, r0, r5
	adds r1, r6, #0
	str r2, [sp, #28]
	bl orphan_GAXFx_render
	orrs r7, r0
	lsls r0, r7, #24
	lsrs r7, r0, #24
	adds r5, #80
	adds r4, #1
	ldr r2, [sp, #28]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	bcc .L08011114
.L08011136:
	ldr r4, [pc, #256]
	ldr r2, [r4, #0]
	adds r0, r2, #0
	adds r0, #94
	ldrb r0, [r0, #0]
	cmp r0, #1
	bhi .L080111D2
	ldr r0, [r6, #36]
	adds r0, #160
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L0801118C
	ldr r0, [r2, #44]
	ldrh r1, [r0, #4]
	ldrb r0, [r0, #1]
	muls r0, r1
	lsls r0, r0, #1
	str r0, [sp, #0]
	ldr r0, [r2, #56]
	str r0, [sp, #4]
	ldr r0, [r2, #76]
	str r0, [sp, #8]
	ldr r0, [r2, #80]
	str r0, [sp, #12]
	adds r0, r6, #0
	adds r0, #40
	str r0, [sp, #16]
	adds r1, r2, #0
	adds r1, #118
	ldrh r0, [r1, #0]
	str r0, [sp, #20]
	movs r3, #128
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r3, [r1, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
	ldrh r0, [r1, #0]
	str r0, [sp, #24]
	ldr r1, [r2, #108]
	mov r0, sp
	bl sub_08012328
.L0801118C:
	ldr r1, [r4, #0]
	adds r0, r1, #0
	adds r0, #94
	ldrb r0, [r0, #0]
	cmp r0, #1
	bhi .L080111D2
	adds r0, r1, #0
	adds r0, #90
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L080111D2
	ldr r1, [r6, #36]
	adds r0, r1, #0
	adds r0, #160
	ldr r4, [r0, #0]
	ldrb r1, [r1, #0]
	cmp r4, r1
	bge .L080111D2
	lsls r0, r4, #3
	adds r0, r0, r4
	lsls r5, r0, #3
.L080111B6:
	ldr r0, [r6, #32]
	adds r0, r0, r5
	adds r1, r6, #0
	bl orphan_GAXTracker_render
	orrs r7, r0
	lsls r0, r7, #24
	lsrs r7, r0, #24
	adds r5, #72
	adds r4, #1
	ldr r0, [r6, #36]
	ldrb r0, [r0, #0]
	cmp r4, r0
	blt .L080111B6
.L080111D2:
	ldr r2, [pc, #100]
	ldr r1, [r2, #0]
	adds r0, r1, #0
	adds r0, #89
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0801121A
	adds r0, r1, #0
	adds r0, #94
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L080111EE
	cmp r0, #2
	bne .L0801121A
.L080111EE:
	movs r4, #0
	ldr r0, [r1, #16]
	cmp r4, r0
	bcs .L0801121A
	movs r5, #0
.L080111F8:
	ldr r0, [r2, #0]
	ldr r0, [r0, #12]
	adds r0, r0, r5
	adds r1, r6, #0
	str r2, [sp, #28]
	bl orphan_GAXFx_render
	orrs r7, r0
	lsls r0, r7, #24
	lsrs r7, r0, #24
	adds r5, #80
	adds r4, #1
	ldr r2, [sp, #28]
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	bcc .L080111F8
.L0801121A:
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	adds r1, r0, #0
	adds r1, #90
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne .L0801122C
	movs r0, #0
	strb r0, [r1, #0]
.L0801122C:
	adds r0, r7, #0
	add sp, #32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000658

@ orphan_GAXOutput_open: same code as GAXOutput_open
	.thumb
	.align 1, 0
	.global sub_0801123C
	.thumb_func
sub_0801123C:
	.global orphan_GAXOutput_open
	.thumb_set orphan_GAXOutput_open, sub_0801123C
	movs r1, #1
	str r1, [r0, #72]
	bx lr
	.2byte 0x0000

@ orphan_GAXOutput_stream: same code as GAXOutput_stream
	.thumb
	.align 1, 0
	.global sub_08011244
	.thumb_func
sub_08011244:
	.global orphan_GAXOutput_stream
	.thumb_set orphan_GAXOutput_stream, sub_08011244
	push {r4, r5, r6, r7, lr}
	sub sp, #16
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, [pc, #68]
	ldr r1, [r7, #0]
	ldr r0, [r1, #44]
	ldrh r2, [r0, #4]
	ldrb r0, [r0, #1]
	adds r5, r2, #0
	muls r5, r0
	adds r2, r1, #0
	adds r2, #118
	movs r0, #0
	strh r0, [r2, #0]
	ldr r0, [r1, #56]
	lsls r1, r5, #1
	bl orphan_GAX_clear_mem
	adds r0, r4, #0
	bl orphan_GAXOutput_render
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08011298
	ldr r1, [r7, #0]
	ldr r0, [r1, #56]
	str r0, [sp, #0]
	str r6, [sp, #4]
	str r5, [sp, #8]
	adds r0, r1, #0
	adds r0, #118
	ldrh r0, [r0, #0]
	str r0, [sp, #12]
	ldr r1, [r1, #104]
	mov r0, sp
	bl sub_08012328
	b .L080112A0
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08011298:
	adds r0, r6, #0
	adds r1, r5, #0
	bl orphan_GAX_clear_mem
.L080112A0:
	add sp, #16
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

@ orphan_GAXTracker_open: same code as GAXTracker_open
	.thumb
	.align 1, 0
	.global sub_080112A8
	.thumb_func
sub_080112A8:
	.global orphan_GAXTracker_open
	.thumb_set orphan_GAXTracker_open, sub_080112A8
	push {r4, lr}
	movs r2, #0
	str r2, [r0, #56]
	strb r2, [r0, #4]
	str r2, [r0, #44]
	movs r3, #0
	ldr r1, [pc, #68]
	strh r1, [r0, #14]
	movs r1, #1
	strb r1, [r0, #5]
	movs r1, #255
	strb r1, [r0, #20]
	movs r1, #1
	negs r1, r1
	strb r1, [r0, #12]
	strb r3, [r0, #0]
	strb r3, [r0, #6]
	strb r3, [r0, #3]
	strb r3, [r0, #2]
	strh r2, [r0, #36]
	strh r2, [r0, #34]
	strh r2, [r0, #32]
	movs r1, #128
	lsls r1, r1, #24
	str r1, [r0, #64]
	strb r3, [r0, #1]
	ldr r0, [pc, #32]
	ldr r4, [r0, #0]
	ldr r0, [r4, #64]
	cmp r0, #0
	bne .L080112F6
	ldr r0, [r4, #44]
	ldrh r2, [r0, #2]
	movs r3, #0
	ldr r0, [pc, #20]
	ldr r1, [pc, #24]
	bl sub_080123F8
	str r0, [r4, #64]
.L080112F6:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x00008AD0
	.4byte 0x03000658
	.4byte 0x00000000
	.4byte 0x00000001

@ orphan_GAXTracker_render: same code as GAXTracker_render
	.thumb
	.align 1, 0
	.global sub_0801130C
	.thumb_func
sub_0801130C:
	.global orphan_GAXTracker_render
	.thumb_set orphan_GAXTracker_render, sub_0801130C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	ldrb r0, [r5, #19]
	cmp r0, #0
	beq .L0801131C
	movs r0, #0
	str r0, [r4, #44]
.L0801131C:
	ldrb r0, [r5, #18]
	cmp r0, #0
	beq .L08011356
	ldrh r1, [r4, #36]
	movs r2, #36
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq .L08011340
	subs r0, r1, #1
	strh r0, [r4, #36]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L08011340
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #1
	bl orphan_GAXTracker_process_step
.L08011340:
	ldrh r0, [r5, #16]
	cmp r0, #0
	beq .L08011356
	ldrb r0, [r5, #21]
	cmp r0, #0
	beq .L08011356
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl orphan_GAXTracker_process_step
.L08011356:
	ldr r0, [r4, #44]
	ldrb r1, [r4, #21]
	cmp r0, #0
	beq .L08011374
	cmp r1, #0
	bne .L08011374
	ldrb r0, [r4, #18]
	cmp r0, #0
	beq .L08011378
	adds r0, r4, #0
	bl orphan_GAXTracker_process_perflist
	ldrb r0, [r4, #18]
	subs r0, #1
	b .L08011376
.L08011374:
	subs r0, r1, #1
.L08011376:
	strb r0, [r4, #21]
.L08011378:
	adds r0, r4, #0
	bl orphan_GAXTracker_process_frame
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L08011396
	ldr r2, [r5, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl orphan_GAXTracker_generate_audio
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b .L08011398
.L08011396:
	movs r0, #0
.L08011398:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

@ orphan_GAXTracker_process_step: same code as GAXTracker_process_step
	.thumb
	.align 1, 0
	.global sub_080113A0
	.thumb_func
sub_080113A0:
	.global orphan_GAXTracker_process_step
	.thumb_set orphan_GAXTracker_process_step, sub_080113A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov ip, r1
	lsls r2, r2, #24
	movs r0, #0
	strh r0, [r4, #24]
	strh r0, [r4, #26]
	strh r0, [r4, #36]
	cmp r2, #0
	bne .L08011468
	ldrb r0, [r1, #22]
	cmp r0, #0
	beq .L080113DE
	ldr r2, [r1, #0]
	movs r3, #12
	ldrsh r0, [r1, r3]
	ldr r1, [r4, #52]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ldr r0, [r2, #12]
	adds r0, r0, r1
	str r0, [r4, #48]
	movs r1, #0
	strb r1, [r4, #3]
	ldrb r1, [r0, #0]
	strb r1, [r4, #2]
	adds r0, #1
	str r0, [r4, #48]
.L080113DE:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq .L080113E6
	b .L080115CC
.L080113E6:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq .L080113F2
	subs r0, #1
	strb r0, [r4, #3]
	b .L080115CC
.L080113F2:
	ldr r1, [r4, #48]
	ldrb r2, [r1, #0]
	adds r0, r2, #0
	cmp r0, #255
	bne .L08011408
	ldrb r0, [r1, #1]
	subs r0, #1
	strb r0, [r4, #3]
	adds r0, r1, #2
	str r0, [r4, #48]
	b .L080115CC
.L08011408:
	movs r0, #128
	ands r0, r2
	cmp r0, #0
	beq .L0801143C
	movs r0, #127
	ands r0, r2
	cmp r0, #0
	bne .L0801141E
	adds r0, r1, #1
	str r0, [r4, #48]
	b .L080115CC
.L0801141E:
	cmp r0, #121
	bhi .L0801142E
	adds r7, r0, #0
	ldrb r6, [r1, #1]
	movs r5, #0
	mov r8, r5
	adds r0, r1, #2
	b .L08011448
.L0801142E:
	movs r7, #0
	movs r6, #0
	ldrb r0, [r1, #1]
	mov r8, r0
	ldrb r5, [r1, #2]
	adds r0, r1, #3
	b .L08011448
.L0801143C:
	ldrb r7, [r1, #0]
	ldrb r6, [r1, #1]
	ldrb r2, [r1, #2]
	mov r8, r2
	ldrb r5, [r1, #3]
	adds r0, r1, #4
.L08011448:
	str r0, [r4, #48]
	mov r3, r8
	cmp r3, #14
	bne .L08011476
	lsrs r0, r5, #4
	cmp r0, #13
	bne .L08011476
	movs r0, #15
	ands r5, r0
	strh r5, [r4, #36]
	adds r0, r4, #0
	adds r0, #70
	strb r7, [r0, #0]
	adds r0, #1
	strb r6, [r0, #0]
	b .L080115CC
.L08011468:
	adds r0, r4, #0
	adds r0, #70
	ldrb r7, [r0, #0]
	adds r0, #1
	ldrb r6, [r0, #0]
	movs r5, #0
	mov r8, r5
.L08011476:
	mov r0, r8
	cmp r0, #3
	beq .L080114BA
	cmp r7, #1
	bne .L080114A8
	ldr r0, [r4, #44]
	cmp r0, #0
	beq .L0801149E
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	cmp r0, #255
	bne .L0801149E
	movs r0, #0
	ldr r1, [pc, #16]
	strh r1, [r4, #14]
	strh r0, [r4, #30]
	movs r1, #128
	lsls r1, r1, #24
	str r1, [r4, #64]
	str r0, [r4, #44]
.L0801149E:
	movs r0, #1
	strb r0, [r4, #23]
	b .L080114BA
	ldrh r0, [r2, #22]
	movs r0, r0
.L080114A8:
	cmp r7, #1
	bls .L080114BA
	subs r0, r7, #2
	lsls r0, r0, #5
	adds r1, r4, #0
	adds r1, #68
	movs r2, #0
	strh r0, [r1, #0]
	strb r2, [r4, #23]
.L080114BA:
	mov r1, ip
	ldr r0, [r1, #0]
	cmp r6, #0
	beq .L08011510
	ldr r1, [r0, #16]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	str r2, [r4, #44]
	movs r1, #0
	movs r3, #0
	strh r3, [r4, #40]
	strh r3, [r4, #42]
	ldrb r0, [r2, #8]
	strb r0, [r4, #9]
	strh r3, [r4, #38]
	strb r1, [r4, #21]
	strb r1, [r4, #22]
	movs r0, #255
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	strh r3, [r4, #34]
	strh r3, [r4, #32]
	ldrb r0, [r2, #16]
	strb r0, [r4, #18]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L080114F6
	str r3, [r4, #44]
	b .L08011510
.L080114F6:
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldr r1, [r0, #52]
	cmp r1, #0
	beq .L08011510
	movs r0, #13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt .L08011510
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r6, [r0, #0]
.L08011510:
	mov r0, r8
	subs r0, #1
	cmp r0, #14
	bhi .L080115CC
	lsls r0, r0, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
	stmia r1!, {r2, r3, r7}
	lsls r0, r0, #8
	stmia r1!, {r3, r6, r7}
	lsls r0, r0, #8
	stmia r1!, {r2, r3, r6, r7}
	lsls r0, r0, #8
	stmia r1!, {r1, r4, r6, r7}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r1!, {r2, r4, r5, r6, r7}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r2!, {r2, r3}
	lsls r0, r0, #8
	stmia r2!, {r4}
	lsls r0, r0, #8
	stmia r2!, {r1, r2, r4}
	lsls r0, r0, #8
	stmia r2!, {r1, r3, r4}
	lsls r0, r0, #8
	stmia r2!, {r2, r3, r5}
	lsls r0, r0, #8
	stmia r2!, {r2, r5}
	lsls r0, r0, #8
	strh r5, [r4, #26]
	b .L080115CC
	negs r0, r5
	strh r0, [r4, #26]
	b .L080115CC
	cmp r5, #0
	beq .L080115CC
	subs r0, r7, #2
	lsls r0, r0, #5
	strh r0, [r4, #32]
	movs r2, #32
	ldrsh r0, [r4, r2]
	adds r1, r4, #0
	adds r1, #68
	movs r3, #0
	ldrsh r1, [r1, r3]
	subs r0, r0, r1
	adds r1, r5, #0
	bl sub_08012360
	strh r0, [r4, #34]
	b .L080115CC
	lsrs r0, r5, #4
	lsls r1, r5, #8
	movs r3, #240
	lsls r3, r3, #4
	adds r2, r3, #0
	ands r1, r2
	orrs r0, r1
	mov r1, ip
	strh r0, [r1, #16]
	subs r0, #1
	strb r0, [r1, #20]
	b .L080115CC
	strh r5, [r4, #24]
	b .L080115CC
	negs r0, r5
	strh r0, [r4, #24]
	b .L080115CC
	strb r5, [r4, #20]
	b .L080115CC
	movs r0, #1
	mov r2, ip
	strb r0, [r2, #26]
	strh r5, [r2, #28]
	b .L080115CC
	mov r3, ip
	strh r5, [r3, #16]
	subs r0, r5, #1
	strb r0, [r3, #20]
.L080115CC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

@ orphan_GAXTracker_process_perflist: same code as GAXTracker_process_perflist
	.thumb
	.align 1, 0
	.global sub_080115D8
	.thumb_func
sub_080115D8:
	.global orphan_GAXTracker_process_perflist
	.thumb_set orphan_GAXTracker_process_perflist, sub_080115D8
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r4, [r3, #44]
	ldrh r0, [r3, #38]
	ldrb r1, [r4, #17]
	cmp r0, r1
	bcc .L08011604
	movs r0, #0
	strb r0, [r3, #18]
	movs r0, #14
	ldrsh r1, [r3, r0]
	ldr r0, [pc, #16]
	cmp r1, r0
	beq .L080115F6
	b .L0801173C
.L080115F6:
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r3, #64]
	b .L0801173C
	movs r0, r0
	ldrh r0, [r2, #22]
	.2byte 0xffff @ .raw
.L08011604:
	ldrh r0, [r3, #38]
	lsls r2, r0, #3
	ldr r1, [r4, #20]
	adds r5, r1, r2
	adds r0, #1
	strh r0, [r3, #38]
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq .L0801168C
	subs r0, #2
	lsls r0, r0, #5
	strh r0, [r3, #14]
	ldrb r0, [r5, #1]
	strb r0, [r3, #19]
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L0801168C
	subs r0, #1
	strb r0, [r3, #4]
	ldrb r1, [r3, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #24
	adds r2, r4, r0
	movs r0, #0
	str r0, [r3, #56]
	movs r4, #1
	strb r4, [r3, #5]
	movs r0, #255
	strb r0, [r3, #11]
	movs r0, #0
	strb r0, [r3, #6]
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq .L08011686
	ldr r1, [r2, #8]
	ldr r0, [r2, #12]
	cmp r1, r0
	bge .L08011686
	ldr r0, [r2, #16]
	cmp r0, #0
	ble .L08011686
	ldrh r0, [r2, #22]
	cmp r0, #0
	beq .L08011686
	ldrh r0, [r2, #20]
	cmp r0, #0
	beq .L08011686
	strb r4, [r3, #6]
	ldr r1, [r2, #4]
	str r1, [r3, #60]
	lsls r0, r1, #11
	str r0, [r3, #56]
	ldrh r0, [r2, #22]
	strb r0, [r3, #8]
	strb r4, [r3, #7]
	ldr r0, [r2, #16]
	adds r1, r1, r0
	ldr r0, [r2, #12]
	cmp r1, r0
	ble .L0801168C
	movs r0, #255
	strb r0, [r3, #7]
	b .L0801168C
.L08011686:
	ldr r0, [r2, #4]
	lsls r0, r0, #11
	str r0, [r3, #56]
.L0801168C:
	movs r0, #0
	strh r0, [r3, #28]
	strh r0, [r3, #30]
	movs r4, #0
.L08011694:
	lsls r0, r4, #1
	adds r0, r5, r0
	ldrh r1, [r0, #4]
	lsrs r0, r1, #8
	cmp r0, #0
	beq .L08011736
	movs r2, #255
	ands r2, r1
	subs r0, #1
	cmp r0, #14
	bhi .L08011736
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	stmia r3!, {r3, r4}
	lsls r0, r0, #8
	stmia r3!, {r2, r4, r6}
	lsls r0, r0, #8
	stmia r3!, {r3, r4, r6}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r3, r4, r6}
	lsls r0, r0, #8
	stmia r3!, {r1, r4, r5, r6}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r3, r7}
	lsls r0, r0, #8
	stmia r3!, {r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r1, r2, r4, r7}
	lsls r0, r0, #8
	stmia r3!, {r2, r4, r7}
	lsls r0, r0, #8
	strh r2, [r3, #30]
	b .L08011736
	negs r0, r2
	strh r0, [r3, #30]
	b .L08011736
	ldrb r0, [r3, #22]
	cmp r0, #0
	beq .L0801170E
	subs r0, #1
	strb r0, [r3, #22]
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08011736
.L0801170E:
	strh r2, [r3, #38]
	b .L08011736
	ldrb r0, [r3, #22]
	cmp r0, #0
	bne .L08011736
	cmp r2, #0
	beq .L08011720
	adds r0, r2, #1
	b .L08011722
.L08011720:
	movs r0, #0
.L08011722:
	strb r0, [r3, #22]
	b .L08011736
	strh r2, [r3, #28]
	b .L08011736
	negs r0, r2
	strh r0, [r3, #28]
	b .L08011736
	strb r2, [r3, #11]
	b .L08011736
	strb r2, [r3, #18]
.L08011736:
	adds r4, #1
	cmp r4, #1
	bls .L08011694
.L0801173C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

@ orphan_GAXTracker_process_envelope: same code as GAXTracker_process_envelope
	.thumb
	.align 1, 0
	.global sub_08011744
	.thumb_func
sub_08011744:
	.global orphan_GAXTracker_process_envelope
	.thumb_set orphan_GAXTracker_process_envelope, sub_08011744
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	adds r6, r2, #0
	ldrh r0, [r6, #0]
	adds r1, r0, #1
	strh r1, [r6, #0]
	lsls r0, r0, #16
	lsrs r4, r0, #16
	ldrb r0, [r3, #1]
	cmp r0, #255
	beq .L08011770
	ldrb r0, [r5, #23]
	cmp r0, #0
	bne .L08011770
	ldrb r0, [r3, #1]
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #4]
	cmp r4, r0
	bne .L08011770
	strh r4, [r6, #0]
.L08011770:
	ldrb r0, [r3, #0]
	subs r2, r0, #1
	lsls r0, r2, #3
	adds r0, r3, r0
	ldrh r1, [r0, #4]
	cmp r4, r1
	bcc .L0801179C
	ldrb r1, [r0, #8]
	cmp r1, #0
	bne .L0801179A
	ldrb r0, [r3, #3]
	cmp r0, #255
	beq .L0801178E
	cmp r0, r2
	bge .L0801179A
.L0801178E:
	ldr r0, [pc, #108]
	strh r0, [r5, #14]
	strh r1, [r5, #30]
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r5, #64]
.L0801179A:
	strh r4, [r6, #0]
.L0801179C:
	ldrb r0, [r5, #23]
	cmp r0, #0
	bne .L080117C2
	ldrb r0, [r3, #2]
	cmp r0, #255
	beq .L080117C2
	ldrb r0, [r3, #3]
	cmp r0, #255
	beq .L080117C2
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #4]
	cmp r4, r0
	bne .L080117C2
	ldrb r0, [r3, #2]
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #4]
	strh r0, [r6, #0]
.L080117C2:
	movs r1, #0
	ldrh r0, [r3, #4]
	cmp r0, r4
	bcs .L080117D6
	adds r2, r3, #0
.L080117CC:
	adds r2, #8
	adds r1, #1
	ldrh r0, [r2, #4]
	cmp r0, r4
	bcc .L080117CC
.L080117D6:
	lsls r0, r1, #3
	adds r0, r3, r0
	ldrh r2, [r0, #4]
	cmp r4, r2
	beq .L08011800
	movs r5, #6
	ldrsh r2, [r0, r5]
	subs r1, #1
	lsls r1, r1, #3
	adds r1, r3, r1
	ldrh r0, [r1, #4]
	subs r0, r4, r0
	muls r0, r2
	asrs r0, r0, #8
	ldrb r1, [r1, #8]
	adds r0, r0, r1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b .L08011802
	ldrh r0, [r2, #22]
	movs r0, r0
.L08011800:
	ldrb r0, [r0, #8]
.L08011802:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

@ orphan_GAXTracker_process_frame: same code as GAXTracker_process_frame
	.thumb
	.align 1, 0
	.global sub_08011808
	.thumb_func
sub_08011808:
	.global orphan_GAXTracker_process_frame
	.thumb_set orphan_GAXTracker_process_frame, sub_08011808
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #44]
	cmp r0, #0
	beq .L08011902
	ldr r1, [r0, #12]
	adds r2, r4, #0
	adds r2, #40
	adds r0, r4, #0
	bl orphan_GAXTracker_process_envelope
	strb r0, [r4, #10]
	ldr r2, [r4, #44]
	ldrb r0, [r2, #9]
	cmp r0, #0
	beq .L08011856
	ldrb r1, [r4, #9]
	movs r0, #9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bgt .L08011840
	ldrb r0, [r2, #10]
	ldrh r1, [r4, #42]
	adds r1, r1, r0
	movs r0, #63
	ands r1, r0
	strh r1, [r4, #42]
	b .L08011844
.L08011840:
	subs r0, r1, #1
	strb r0, [r4, #9]
.L08011844:
	ldr r1, [pc, #120]
	ldrh r0, [r4, #42]
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r0, [r4, #44]
	ldrb r0, [r0, #9]
	muls r0, r1
	asrs r0, r0, #8
.L08011856:
	strh r0, [r4, #16]
	ldrb r0, [r4, #6]
	cmp r0, #0
	beq .L08011902
	ldrb r0, [r4, #8]
	subs r0, #1
	strb r0, [r4, #8]
	lsls r0, r0, #24
	cmp r0, #0
	bgt .L08011902
	ldr r6, [r4, #60]
	ldr r3, [r4, #44]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #46]
	strb r0, [r4, #8]
	ldrb r7, [r4, #7]
	movs r0, #7
	ldrsb r0, [r4, r0]
	cmp r0, #0
	ble .L080118C4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #44]
	adds r5, r6, r0
	str r5, [r4, #60]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #3
	adds r0, r3, #0
	adds r0, #40
	adds r0, r0, r2
	ldr r1, [r0, #0]
	adds r1, r5, r1
	adds r0, r3, #0
	adds r0, #36
	adds r0, r0, r2
	ldr r0, [r0, #0]
	cmp r1, r0
	ble .L080118F4
	adds r0, r3, r2
	ldrh r0, [r0, #44]
	lsls r0, r0, #1
	subs r0, r5, r0
	str r0, [r4, #60]
	movs r0, #255
	orrs r0, r7
	b .L080118F2
	cmp r4, #172
	lsls r1, r0, #8
.L080118C4:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r3, r0
	ldrh r0, [r0, #44]
	subs r2, r6, r0
	str r2, [r4, #60]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r1, r0, #3
	adds r0, r3, #0
	adds r0, #32
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r2, r0
	bge .L080118F4
	adds r0, r3, r1
	ldrh r0, [r0, #44]
	lsls r0, r0, #1
	adds r0, r2, r0
	str r0, [r4, #60]
	movs r0, #1
.L080118F2:
	strb r0, [r4, #7]
.L080118F4:
	lsls r0, r6, #11
	ldr r1, [r4, #56]
	subs r1, r1, r0
	ldr r0, [r4, #60]
	lsls r0, r0, #11
	adds r1, r1, r0
	str r1, [r4, #56]
.L08011902:
	movs r1, #24
	ldrsh r0, [r4, r1]
	ldrb r2, [r4, #20]
	adds r0, r0, r2
	cmp r0, #255
	ble .L08011910
	movs r0, #255
.L08011910:
	cmp r0, #0
	bge .L08011916
	movs r0, #0
.L08011916:
	movs r6, #0
	strb r0, [r4, #20]
	movs r3, #28
	ldrsh r0, [r4, r3]
	ldrb r7, [r4, #11]
	adds r0, r0, r7
	cmp r0, #255
	ble .L08011928
	movs r0, #255
.L08011928:
	cmp r0, #0
	bge .L0801192E
	movs r0, #0
.L0801192E:
	strb r0, [r4, #11]
	adds r5, r4, #0
	adds r5, #68
	ldrh r0, [r4, #26]
	ldrh r1, [r5, #0]
	adds r0, r0, r1
	strh r0, [r5, #0]
	ldrh r0, [r4, #30]
	ldrh r2, [r4, #14]
	adds r0, r0, r2
	strh r0, [r4, #14]
	ldrh r1, [r4, #34]
	movs r3, #34
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq .L0801197C
	movs r7, #32
	ldrsh r2, [r4, r7]
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r2, r2, r0
	movs r3, #128
	lsls r3, r3, #24
	ands r2, r3
	ldrh r7, [r5, #0]
	adds r0, r1, r7
	strh r0, [r5, #0]
	movs r1, #32
	ldrsh r0, [r4, r1]
	movs r7, #0
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	ands r0, r3
	cmp r2, r0
	beq .L0801197C
	strh r6, [r4, #34]
	ldrh r0, [r4, #32]
	strh r0, [r5, #0]
	strh r6, [r4, #32]
.L0801197C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

@ orphan_GAXTracker_generate_audio: same code as GAXTracker_generate_audio
	.thumb
	.align 1, 0
	.global sub_08011984
	.thumb_func
sub_08011984:
	.global orphan_GAXTracker_generate_audio
	.thumb_set orphan_GAXTracker_generate_audio, sub_08011984
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	adds r4, r0, #0
	mov r8, r1
	str r2, [sp, #32]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov sl, r3
	ldr r5, [r4, #44]
	cmp r5, #0
	beq .L080119CC
	movs r0, #14
	ldrsh r1, [r4, r0]
	ldr r0, [pc, #40]
	cmp r1, r0
	beq .L080119CC
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi .L080119CC
	ldrb r2, [r4, #4]
	adds r0, r5, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #3
	ldr r3, [sp, #32]
	ldr r1, [r3, #20]
	adds r1, r1, r0
	str r1, [sp, #36]
	ldr r0, [r1, #0]
	adds r5, r2, #0
	cmp r0, #0
	bne .L080119D4
.L080119CC:
	movs r0, #0
	b .L08011C3E
	ldrh r0, [r2, #22]
	.2byte 0xffff @ .raw
.L080119D4:
	movs r1, #14
	ldrsh r0, [r4, r1]
	movs r2, #16
	ldrsh r1, [r4, r2]
	adds r2, r0, r1
	ldrb r0, [r4, #19]
	cmp r0, #0
	bne .L08011A0A
	adds r0, r4, #0
	adds r0, #68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r2, r0
	mov r0, sl
	cmp r0, #0
	bne .L08011A0A
	mov r1, r8
	movs r3, #12
	ldrsh r0, [r1, r3]
	ldr r1, [r4, #52]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #5
	adds r2, r2, r0
.L08011A0A:
	ldr r0, [r4, #44]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #24
	ldrsh r0, [r0, r1]
	adds r2, r2, r0
	ldr r0, [pc, #60]
	cmp r2, r0
	ble .L08011A22
	adds r2, r0, #0
.L08011A22:
	cmp r2, #0
	bge .L08011A28
	movs r2, #0
.L08011A28:
	ldr r0, [pc, #48]
	cmp r2, r0
	ble .L08011A68
	ldr r0, [pc, #48]
	ldr r3, [pc, #48]
	adds r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	lsls r6, r0, #1
	ldrb r0, [r4, #10]
	mov r9, r0
	ldrb r7, [r4, #11]
	ldrb r1, [r4, #20]
	mov ip, r1
	ldrb r3, [r4, #12]
	mov r2, r8
	ldrb r2, [r2, #23]
	mov r8, r2
	mov r0, sl
	lsls r0, r0, #2
	str r0, [sp, #40]
	add r5, sp, #4
	b .L08011AA2
	lsrs r1, r6, #27
	movs r0, r0
	lsrs r7, r7, #21
	movs r0, r0
	movs r6, #172
	lsls r1, r0, #8
	.2byte 0xf280, 0xffff @ bl 0x8292a66
.L08011A68:
	ldr r1, [pc, #396]
	adds r2, r2, r1
	movs r1, #0
	ldr r6, [pc, #396]
	ldrb r3, [r4, #10]
	mov r9, r3
	ldrb r7, [r4, #11]
	ldrb r0, [r4, #20]
	mov ip, r0
	ldrb r3, [r4, #12]
	mov r0, r8
	ldrb r0, [r0, #23]
	mov r8, r0
	mov r0, sl
	lsls r0, r0, #2
	str r0, [sp, #40]
	add r5, sp, #4
	cmp r2, #0
	bge .L08011A9A
	movs r0, #192
	lsls r0, r0, #1
.L08011A92:
	adds r2, r2, r0
	adds r1, #1
	cmp r2, #0
	blt .L08011A92
.L08011A9A:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r6, [r0, #0]
	asrs r6, r1
.L08011AA2:
	mov r0, r9
	muls r0, r7
	asrs r0, r0, #8
	mov r1, ip
	muls r1, r0
	adds r0, r1, #0
	asrs r0, r0, #8
	muls r0, r3
	asrs r0, r0, #8
	mov r2, r8
	muls r2, r0
	adds r0, r2, #0
	asrs r7, r0, #8
	mov r3, sl
	cmp r3, #0
	bne .L08011ACA
	ldr r1, [sp, #32]
	ldrh r0, [r1, #8]
	muls r0, r7
	lsrs r7, r0, #8
.L08011ACA:
	ldr r0, [pc, #308]
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #88
	ldrb r1, [r0, #0]
	lsrs r7, r1
	adds r3, r2, #0
	adds r3, #118
	adds r0, r7, #0
	lsls r0, r1
	ldrh r1, [r3, #0]
	adds r0, r0, r1
	strh r0, [r3, #0]
	adds r0, r2, #0
	adds r0, #64
	ldr r2, [sp, #40]
	adds r0, r0, r2
	ldr r1, [r0, #0]
	adds r0, r6, #0
	ldr r3, [pc, #272]
	bl sub_08012330
	str r0, [sp, #0]
	movs r0, #0
	mov r8, r0
	ldr r3, [r4, #44]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #3
	adds r0, r3, r2
	ldrb r0, [r0, #26]
	cmp r0, #0
	bne .L08011B26
	adds r1, r3, #0
	adds r1, #32
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #36
	adds r0, r0, r2
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bge .L08011B26
	movs r1, #1
	mov r8, r1
.L08011B26:
	ldr r2, [sp, #36]
	ldr r0, [r2, #4]
	lsls r6, r0, #11
	ldr r2, [pc, #208]
	ldr r1, [r2, #0]
	ldr r0, [r1, #56]
	str r0, [r5, #4]
	ldr r0, [r1, #44]
	ldrh r0, [r0, #4]
	str r0, [r5, #8]
	str r7, [r5, #20]
	ldr r0, [sp, #0]
	str r0, [r5, #24]
	adds r7, r2, #0
	mov r3, r8
	cmp r3, #0
	beq .L08011B68
	ldr r2, [r4, #44]
	ldrb r0, [r4, #4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #36
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsls r6, r0, #11
	adds r2, #32
	adds r2, r2, r1
	ldr r1, [r2, #0]
	subs r0, r0, r1
	lsls r0, r0, #11
	str r0, [r5, #16]
.L08011B68:
	ldrb r3, [r4, #6]
	cmp r3, #0
	beq .L08011B88
	ldr r1, [r4, #44]
	ldrb r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, #40
	adds r1, r1, r0
	ldr r0, [r4, #60]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	lsls r6, r0, #11
	lsls r1, r1, #11
	str r1, [r5, #16]
.L08011B88:
	asrs r0, r6, #11
	ldr r2, [sp, #36]
	ldr r1, [r2, #0]
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #56]
	subs r0, r0, r6
	str r0, [r5, #12]
	mov r0, r8
	cmp r0, #0
	bne .L08011BB0
	cmp r3, #0
	bne .L08011C14
	ldr r1, [sp, #32]
	ldr r0, [r1, #20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #11
	str r1, [r5, #16]
.L08011BB0:
	cmp r3, #0
	bne .L08011C14
	mov r2, r8
	cmp r2, #0
	beq .L08011C14
	ldr r2, [r4, #44]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r0, [r2, #27]
	cmp r0, #0
	beq .L08011C14
	movs r1, #5
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #24]
	muls r0, r1
	str r0, [r5, #24]
	ldr r0, [r7, #0]
	ldr r1, [r0, #100]
	adds r0, r5, #0
	bl sub_08012328
	ldr r0, [r5, #24]
	cmp r0, #0
	bge .L08011C08
	movs r0, #255
	strb r0, [r4, #5]
	ldr r0, [r5, #12]
	adds r0, r0, r6
	ldr r1, [r5, #16]
	subs r0, r0, r1
	str r0, [r4, #56]
	b .L08011C3C
	movs r0, r0
	.2byte 0xf400, 0xffff @ bl 0x7c12bfa
	movs r6, #172
	lsls r1, r0, #8
	lsls r0, r3, #25
	lsls r0, r0, #12
	ldmia r5, {r3, r5, r6}
	lsls r0, r0, #8
.L08011C08:
	movs r0, #1
	strb r0, [r4, #5]
	ldr r0, [r5, #12]
	adds r0, r0, r6
	str r0, [r4, #56]
	b .L08011C3C
.L08011C14:
	ldr r0, [r7, #0]
	ldr r1, [r0, #96]
	adds r0, r5, #0
	bl sub_08012328
	ldr r0, [r5, #12]
	adds r0, r0, r6
	str r0, [r4, #56]
	cmp r0, #0
	bge .L08011C3C
	movs r0, #0
	ldr r1, [pc, #36]
	strh r1, [r4, #14]
	strh r0, [r4, #30]
	ldrb r0, [r4, #18]
	cmp r0, #0
	bne .L08011C3C
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r4, #64]
.L08011C3C:
	movs r0, #1
.L08011C3E:
	add sp, #44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00008AD0

@ orphan_GAXFx_open: same code as GAXFx_open
	.thumb
	.align 1, 0
	.global sub_08011C54
	.thumb_func
sub_08011C54:
	.global orphan_GAXFx_open
	.thumb_set orphan_GAXFx_open, sub_08011C54
	push {r4, r5, lr}
	adds r4, r0, #0
	bl orphan_GAXTracker_open
	adds r0, r4, #0
	adds r0, #75
	movs r1, #0
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	subs r0, #1
	strb r1, [r0, #0]
	adds r0, #4
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	ldr r0, [pc, #40]
	ldr r5, [r0, #0]
	adds r0, r5, #0
	adds r0, #91
	ldrb r0, [r0, #0]
	strb r0, [r4, #1]
	movs r0, #255
	strb r0, [r4, #13]
	ldr r0, [r5, #68]
	cmp r0, #0
	bne .L08011C9A
	ldr r0, [r5, #44]
	ldrh r2, [r0, #2]
	movs r3, #0
	ldr r0, [pc, #16]
	ldr r1, [pc, #20]
	bl sub_080123F8
	str r0, [r5, #68]
.L08011C9A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03000658
	.4byte 0x00000000
	.4byte 0x00000001

@ orphan_GAXFx_render: same code as GAXFx_render
	.thumb
	.align 1, 0
	.global sub_08011CAC
	.thumb_func
sub_08011CAC:
	.global orphan_GAXFx_render
	.thumb_set orphan_GAXFx_render, sub_08011CAC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldrb r0, [r1, #19]
	cmp r0, #0
	beq .L08011CC0
	movs r0, #0
	str r0, [r4, #44]
.L08011CC0:
	mov r1, r8
	ldrb r0, [r1, #18]
	cmp r0, #0
	beq .L08011DB4
	adds r0, r4, #0
	adds r0, #75
	ldrb r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, #1
	beq .L08011CE0
	cmp r1, #0
	beq .L08011DB4
	adds r0, #1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08011DB4
.L08011CE0:
	mov r3, r8
	ldrb r1, [r3, #19]
	cmp r1, #0
	bne .L08011DB4
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L08011D14
	ldr r0, [r4, #44]
	cmp r0, #0
	beq .L08011D0A
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	cmp r0, #255
	bne .L08011D0A
	ldr r0, [pc, #16]
	strh r0, [r4, #14]
	strh r1, [r4, #30]
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r4, #64]
	str r1, [r4, #44]
.L08011D0A:
	movs r0, #1
	strb r0, [r4, #23]
	b .L08011D26
	ldrh r0, [r2, #22]
	movs r0, r0
.L08011D14:
	cmp r0, #1
	bls .L08011D26
	subs r0, #2
	lsls r0, r0, #5
	adds r1, r4, #0
	adds r1, #68
	movs r2, #0
	strh r0, [r1, #0]
	strb r2, [r4, #23]
.L08011D26:
	adds r1, r4, #0
	adds r1, #76
	ldrb r5, [r1, #0]
	ldr r0, [pc, #60]
	ldr r6, [r0, #0]
	ldr r0, [r6, #8]
	mov ip, r1
	cmp r5, #0
	beq .L08011D86
	ldr r1, [r0, #16]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	str r2, [r4, #44]
	movs r1, #0
	movs r3, #0
	strh r3, [r4, #40]
	strh r3, [r4, #42]
	ldrb r0, [r2, #8]
	strb r0, [r4, #9]
	strh r3, [r4, #38]
	strb r1, [r4, #21]
	strb r1, [r4, #22]
	movs r0, #255
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	strh r3, [r4, #34]
	strh r3, [r4, #32]
	ldrb r0, [r2, #16]
	strb r0, [r4, #18]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08011D70
	str r3, [r4, #44]
	b .L08011D86
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08011D70:
	ldr r0, [r6, #4]
	ldr r1, [r0, #52]
	cmp r1, #0
	beq .L08011D86
	movs r0, #13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt .L08011D86
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r5, [r0, #0]
.L08011D86:
	ldrb r0, [r7, #0]
	adds r2, r4, #0
	adds r2, #73
	cmp r0, #1
	bls .L08011D9C
	adds r1, r4, #0
	adds r1, #68
	ldrh r0, [r1, #0]
	ldrb r3, [r2, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
.L08011D9C:
	adds r0, r4, #0
	adds r0, #72
	ldrb r0, [r0, #0]
	movs r1, #0
	strb r0, [r4, #20]
	movs r0, #0
	strh r1, [r4, #24]
	strh r1, [r4, #26]
	mov r1, ip
	strb r0, [r1, #0]
	strb r0, [r2, #0]
	strb r0, [r7, #0]
.L08011DB4:
	ldr r0, [r4, #44]
	ldrb r1, [r4, #21]
	cmp r0, #0
	beq .L08011DD2
	cmp r1, #0
	bne .L08011DD2
	ldrb r0, [r4, #18]
	cmp r0, #0
	beq .L08011DD6
	adds r0, r4, #0
	bl orphan_GAXTracker_process_perflist
	ldrb r0, [r4, #18]
	subs r0, #1
	b .L08011DD4
.L08011DD2:
	subs r0, r1, #1
.L08011DD4:
	strb r0, [r4, #21]
.L08011DD6:
	adds r0, r4, #0
	bl orphan_GAXTracker_process_frame
	adds r0, r4, #0
	adds r0, #74
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08011DEA
	movs r0, #0
	strb r0, [r4, #19]
.L08011DEA:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L08011E0C
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	ldr r2, [r0, #8]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #1
	bl orphan_GAXTracker_generate_audio
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b .L08011E0E
	movs r0, r0
	lsls r0, r3, #25
	lsls r0, r0, #12
.L08011E0C:
	movs r0, #0
.L08011E0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0xE92D1FF0
	.4byte 0xE8B0000F
	.4byte 0xE1A03203
	.4byte 0xE0822001
	.4byte 0xE3A0A801
	.4byte 0xE24AA001
	.4byte 0xE3A0B0FF
	.4byte 0xE1A0C28B
	.4byte 0xE8B003C0
	.4byte 0xE006500A
	.4byte 0xE0635005
	.4byte 0xE3750EFE
	.4byte 0xB3E05EFE
	.4byte 0xE3550EFE
	.4byte 0xC3A05EFE
	.4byte 0xE00B52C5
	.4byte 0xE0636826
	.4byte 0xE3760EFE
	.4byte 0xB3E06EFE
	.4byte 0xE3560EFE
	.4byte 0xC3A06EFE
	.4byte 0xE00C6006
	.4byte 0xE1856186
	.4byte 0xE007500A
	.4byte 0xE0635005
	.4byte 0xE3750EFE
	.4byte 0xB3E05EFE
	.4byte 0xE3550EFE
	.4byte 0xC3A05EFE
	.4byte 0xE00C5005
	.4byte 0xE0637827
	.4byte 0xE3770EFE
	.4byte 0xB3E07EFE
	.4byte 0xE3570EFE
	.4byte 0xC3A07EFE
	.4byte 0xE00C7007
	.4byte 0xE1866585
	.4byte 0xE1866987
	.4byte 0xE008500A
	.4byte 0xE0635005
	.4byte 0xE3750EFE
	.4byte 0xB3E05EFE
	.4byte 0xE3550EFE
	.4byte 0xC3A05EFE
	.4byte 0xE00B52C5
	.4byte 0xE0638828
	.4byte 0xE3780EFE
	.4byte 0xB3E08EFE
	.4byte 0xE3580EFE
	.4byte 0xC3A08EFE
	.4byte 0xE00C8008
	.4byte 0xE1858188
	.4byte 0xE009500A
	.4byte 0xE0635005
	.4byte 0xE3750EFE
	.4byte 0xB3E05EFE
	.4byte 0xE3550EFE
	.4byte 0xC3A05EFE
	.4byte 0xE00C5005
	.4byte 0xE0639829
	.4byte 0xE3790EFE
	.4byte 0xB3E09EFE
	.4byte 0xE3590EFE
	.4byte 0xC3A09EFE
	.4byte 0xE00C9009
	.4byte 0xE1887585
	.4byte 0xE1877989
	.4byte 0xE8A100C0
	.4byte 0xE1510002
	.4byte 0xBAFFFFC1
	.4byte 0xE8BD1FF0
	.4byte 0xE12FFF1E
	.4byte 0xE92D0FF0
	.4byte 0xE590100C
	.4byte 0xE5907008
	.4byte 0xE5902004
	.4byte 0xE5900000
	.4byte 0xE28F40A4
	.4byte 0xE5945004
	.4byte 0xE5944000
	.4byte 0xE3A08FCD
	.4byte 0xE0070798
	.4byte 0xE1A07447
	.4byte 0xE3A0907F
	.4byte 0xE1A09409
	.4byte 0xE0090991
	.4byte 0xE1D080F0
	.4byte 0xE1A08408
	.4byte 0xE0486005
	.4byte 0xE0466004
	.4byte 0xE1760009
	.4byte 0xB1E06009
	.4byte 0xE1560009
	.4byte 0xC1A06009
	.4byte 0xE00A0796
	.4byte 0xE085544A
	.4byte 0xE1750009
	.4byte 0xB1E05009
	.4byte 0xE1550009
	.4byte 0xC1A05009
	.4byte 0xE00A0795
	.4byte 0xE084444A
	.4byte 0xE1740009
	.4byte 0xB1E04009
	.4byte 0xE1540009
	.4byte 0xC1A04009
	.4byte 0xE1A0A444
	.4byte 0xE1C0A0B0
	.4byte 0xE2800002
	.4byte 0xE2522002
	.4byte 0xE3520000
	.4byte 0xCAFFFFE5
	.4byte 0xE28F0018
	.4byte 0xE5804000
	.4byte 0xE5805004
	.4byte 0xE8BD0FF0
	.4byte 0xE12FFF1E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x544C4946
	.4byte 0xE92D07F0
	.4byte 0xE59F50E8
	.4byte 0xE5904000
	.4byte 0xE590300C
	.4byte 0xE5902010
	.4byte 0xE5901008
	.4byte 0xE5909014
	.4byte 0xE1A09209
	.4byte 0xE590A018
	.4byte 0xE1A0A20A
	.4byte 0xE5900004
	.4byte 0xE0844000
	.4byte 0xE1550003
	.4byte 0x03A05000
	.4byte 0xE0857003
	.4byte 0xE5928004
	.4byte 0xE0477008
	.4byte 0xE1570003
	.4byte 0xA0477003
	.4byte 0xE19170F7
	.4byte 0xE5928010
	.4byte 0xE0170798
	.4byte 0xE1A06247
	.4byte 0xE5928008
	.4byte 0xE3580000
	.4byte 0x0A000011
	.4byte 0xE0857003
	.4byte 0xE0477008
	.4byte 0xE1570003
	.4byte 0xA0477003
	.4byte 0xE19170F7
	.4byte 0xE5928014
	.4byte 0xE0170798
	.4byte 0xE0866247
	.4byte 0xE592800C
	.4byte 0xE3580000
	.4byte 0x0A000006
	.4byte 0xE0857003
	.4byte 0xE0477008
	.4byte 0xE1570003
	.4byte 0xA0477003
	.4byte 0xE19170F7
	.4byte 0xE5928018
	.4byte 0xE0866247
	.4byte 0xE1D080B0
	.4byte 0xE0488009
	.4byte 0xE0888006
	.4byte 0xE18180B5
	.4byte 0xE088800A
	.4byte 0xE1C080B0
	.4byte 0xE2800002
	.4byte 0xE2855002
	.4byte 0xE1500004
	.4byte 0xBAFFFFD5
	.4byte 0xE28F0014
	.4byte 0xE5805000
	.4byte 0xE8BD07F0
	.4byte 0xE12FFF1E
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x54524142
	.4byte 0xE92D0018
	.4byte 0xE0843190
	.4byte 0xE1A00004
	.4byte 0xE8BD0018
	.4byte 0xE12FFF1E
	.4byte 0xE92D0FF0
	.4byte 0xE89000FE
	.4byte 0xE7D185C4
	.4byte 0xE0944007
	.4byte 0x50444005
	.4byte 0xE7D195C4
	.4byte 0xE0944007
	.4byte 0x50444005
	.4byte 0xE1888809
	.4byte 0xE0080896
	.4byte 0xE3C8B807
	.4byte 0xE7D185C4
	.4byte 0xE0944007
	.4byte 0x50444005
	.4byte 0xE7D195C4
	.4byte 0xE0944007
	.4byte 0x50444005
	.4byte 0xE1888809
	.4byte 0xE0080896
	.4byte 0xE3C88807
	.4byte 0xE8920600
	.4byte 0xE08991AB
	.4byte 0xE08AA1A8
	.4byte 0xE8A20600
	.4byte 0xE2533004
	.4byte 0xCAFFFFE7
	.4byte 0xE580400C
	.4byte 0xE8BD0FF0
	.4byte 0xE12FFF1E

	.arm
	.align 2, 0
	.global sub_08012190
sub_08012190:
	push {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldm r0, {r1, r2, r3, r4, r5, r6, r7}
	cmp r7, #0
	.4byte 0xeb000020 @ bl 0x8012224
.L080121A0:
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x8012214
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x8012214
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic fp, r8, #458752
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x8012214
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x8012214
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic r8, r8, #458752
	ldm r2, {r9, sl}
	add r9, r9, fp, lsr #3
	add sl, sl, r8, lsr #3
	stmia r2!, {r9, sl}
	subs r3, r3, #4
	bgt .L080121A0
	str r4, [r0, #12]
	str r7, [r0, #24]
	str r1, [r0]
	pop {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx lr

	.arm
	.align 2, 0
	.global sub_08012214
sub_08012214:
	rsbs r7, r7, #0
	add r4, r4, r7, lsl #1
	subpl r4, r4, r5
	addpl r1, r1, r5, lsr #11

	.arm
	.align 2, 0
	.global sub_08012224
sub_08012224:
	movmi sl, #75
	addmi r4, r4, r5
	submi r1, r1, r5, lsr #11
	movpl sl, #91
	strb sl, [pc, #-145]
	strb sl, [pc, #-137]
	strb sl, [pc, #-117]
	strb sl, [pc, #-109]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08012248
	.thumb_func
sub_08012248:
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne .L08012286
	adds r2, r1, #0
	ldr r1, [r2, #0]
	ldr r3, [pc, #8]
	adds r0, r1, r3
	bics r0, r1
	ldr r3, [pc, #4]
	b .L08012276
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
	strh r0, [r0, #4]
	strh r0, [r0, #4]
.L0801226C:
	adds r2, #4
	ldr r1, [r2, #0]
	ldr r5, [pc, #12]
	adds r0, r1, r5
	bics r0, r1
.L08012276:
	ands r0, r3
	cmp r0, #0
	beq .L0801226C
	adds r1, r2, #0
	b .L08012286
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
.L08012284:
	adds r1, #1
.L08012286:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08012284
	subs r0, r1, r4
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08012294
	.thumb_func
sub_08012294:
	push {r4, lr}
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L080122B6
	adds r4, r1, #0
.L080122A2:
	ldr r1, [r4, #0]
	adds r0, r1, #4
	str r0, [r4, #0]
	ldr r0, [r1, #0]
	bl sub_08012324
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L080122A2
.L080122B6:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030070A8

	.thumb
	.align 1, 0
	.global sub_080122C0
	.thumb_func
sub_080122C0:
	push {r4, r5, lr}
	ldr r2, [pc, #64]
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L080122E2
	movs r1, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq .L080122E2
	adds r2, #4
.L080122D8:
	adds r1, #1
	adds r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne .L080122D8
.L080122E2:
	adds r5, r1, #0
	cmp r5, #0
	beq .L080122FC
	ldr r1, [pc, #24]
	lsls r0, r5, #2
	adds r4, r0, r1
.L080122EE:
	ldr r0, [r4, #0]
	subs r4, #4
	bl sub_08012324
	subs r5, #1
	cmp r5, #0
	bne .L080122EE
.L080122FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0203DE80

	.thumb
	.align 1, 0
	.global sub_08012308
	.thumb_func
sub_08012308:
	push {lr}
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L0801231A
	movs r0, #1
	str r0, [r1, #0]
	bl sub_080122C0
.L0801231A:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03006FB8

	.thumb
	.align 1, 0
	.global sub_08012324
	.thumb_func
sub_08012324:
	bx r0
	.2byte 0x46C0

	.thumb
	.align 1, 0
	.global sub_08012328
	.thumb_func
sub_08012328:
	bx r1
	.2byte 0x46C0
	.4byte 0x46C04710

	.thumb
	.align 1, 0
	.global sub_08012330
	.thumb_func
sub_08012330:
	bx r3
	.2byte 0x46C0
	.4byte 0x46C04720
	.4byte 0x46C04728
	.4byte 0x46C04730
	.4byte 0x46C04738
	.4byte 0x46C04740
	.4byte 0x46C04748
	.4byte 0x46C04750
	.4byte 0x46C04758
	.4byte 0x46C04760
	.4byte 0x46C04768
	.4byte 0x46C04770

	.thumb
	.align 1, 0
	.global sub_08012360
	.thumb_func
sub_08012360:
	cmp r1, #0
	beq .L080123E8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl .L08012376
	negs r1, r1
.L08012376:
	cmp r0, #0
	bpl .L0801237C
	negs r0, r0
.L0801237C:
	cmp r0, r1
	bcc .L080123DA
	movs r4, #1
	lsls r4, r4, #28
.L08012384:
	cmp r1, r4
	bcs .L08012392
	cmp r1, r0
	bcs .L08012392
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L08012384
.L08012392:
	lsls r4, r4, #3
.L08012394:
	cmp r1, r4
	bcs .L080123A2
	cmp r1, r0
	bcs .L080123A2
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L08012394
.L080123A2:
	cmp r0, r1
	bcc .L080123AA
	subs r0, r0, r1
	orrs r2, r3
.L080123AA:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L080123B6
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
.L080123B6:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L080123C2
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
.L080123C2:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L080123CE
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
.L080123CE:
	cmp r0, #0
	beq .L080123DA
	lsrs r3, r3, #4
	beq .L080123DA
	lsrs r1, r1, #4
	b .L080123A2
.L080123DA:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl .L080123E4
	negs r0, r0
.L080123E4:
	pop {r4}
	mov pc, lr
.L080123E8:
	push {lr}
	bl sub_080123F4
	movs r0, #0
	pop {pc}
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080123F4
	.thumb_func
sub_080123F4:
	mov pc, lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080123F8
	.thumb_func
sub_080123F8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #32
	mov r8, r2
	adds r6, r3, #0
	mov sl, r0
	adds r7, r1, #0
	cmp r6, #0
	beq .L08012412
	b .L08012664
.L08012412:
	cmp r8, r7
	bls .L080124F0
	ldr r0, [pc, #16]
	cmp r8, r0
	bhi .L0801242C
	movs r1, #0
	mov r0, r8
	cmp r0, #255
	bls .L08012436
	movs r1, #8
	b .L08012436
	.2byte 0xffff @ .raw
	movs r0, r0
.L0801242C:
	ldr r0, [pc, #180]
	movs r1, #24
	cmp r8, r0
	bhi .L08012436
	movs r1, #16
.L08012436:
	ldr r0, [pc, #176]
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	adds r0, r0, r1
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	beq .L0801245E
	mov r3, r8
	lsls r3, r2
	mov r8, r3
	lsls r7, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r4, sl
	lsls r4, r2
	mov sl, r4
.L0801245E:
	mov r0, r8
	lsrs r0, r0, #16
	mov r9, r0
	ldr r1, [pc, #132]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #0]
	adds r0, r7, #0
	mov r1, r9
	bl sub_08012844
	adds r4, r0, #0
	adds r0, r7, #0
	mov r1, r9
	bl sub_080127CC
	adds r6, r0, #0
	ldr r3, [sp, #0]
	adds r2, r6, #0
	muls r2, r3
	lsls r4, r4, #16
	mov r1, sl
	lsrs r0, r1, #16
	orrs r4, r0
	cmp r4, r2
	bcs .L080124A2
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L080124A2
	cmp r4, r2
	bcs .L080124A2
	subs r6, #1
	add r4, r8
.L080124A2:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl sub_08012844
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl sub_080127CC
	adds r1, r0, #0
	ldr r3, [sp, #0]
	adds r2, r1, #0
	muls r2, r3
	lsls r5, r5, #16
	ldr r0, [pc, #40]
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bcs .L080124DA
	subs r1, #1
	add r5, r8
	cmp r5, r8
	bcc .L080124DA
	cmp r5, r2
	bcs .L080124DA
	subs r1, #1
.L080124DA:
	lsls r6, r6, #16
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #4]
	b .L080127AE
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	cmp r5, #237
	lsls r1, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
.L080124F0:
	cmp r2, #0
	bne .L080124FE
	movs r0, #1
	movs r1, #0
	bl sub_080127CC
	mov r8, r0
.L080124FE:
	ldr r0, [pc, #16]
	cmp r8, r0
	bhi .L08012514
	movs r2, #0
	mov r1, r8
	cmp r1, #255
	bls .L0801251E
	movs r2, #8
	b .L0801251E
	.2byte 0xffff @ .raw
	movs r0, r0
.L08012514:
	ldr r0, [pc, #36]
	movs r2, #24
	cmp r8, r0
	bhi .L0801251E
	movs r2, #16
.L0801251E:
	ldr r0, [pc, #32]
	mov r1, r8
	lsrs r1, r2
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	adds r0, r1, r2
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	bne .L08012544
	mov r2, r8
	subs r7, r7, r2
	movs r3, #1
	str r3, [sp, #4]
	b .L080125DE
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	cmp r5, #237
	lsls r1, r0, #8
.L08012544:
	subs r1, r1, r2
	mov r4, r8
	lsls r4, r2
	mov r8, r4
	adds r5, r7, #0
	lsrs r5, r1
	lsls r7, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r0, sl
	lsls r0, r2
	mov sl, r0
	lsrs r4, r4, #16
	mov r9, r4
	ldr r1, [pc, #252]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #8]
	adds r0, r5, #0
	mov r1, r9
	bl sub_08012844
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl sub_080127CC
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3
	lsls r4, r4, #16
	lsrs r0, r7, #16
	orrs r4, r0
	cmp r4, r1
	bcs .L0801259E
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L0801259E
	cmp r4, r1
	bcs .L0801259E
	subs r6, #1
	add r4, r8
.L0801259E:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	bl sub_08012844
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl sub_080127CC
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4
	lsls r5, r5, #16
	ldr r0, [pc, #160]
	ands r7, r0
	orrs r5, r7
	cmp r5, r1
	bcs .L080125D6
	subs r2, #1
	add r5, r8
	cmp r5, r8
	bcc .L080125D6
	cmp r5, r1
	bcs .L080125D6
	subs r2, #1
	add r5, r8
.L080125D6:
	lsls r6, r6, #16
	orrs r6, r2
	str r6, [sp, #4]
	subs r7, r5, r1
.L080125DE:
	mov r0, r8
	lsrs r0, r0, #16
	mov r9, r0
	ldr r1, [pc, #120]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #12]
	adds r0, r7, #0
	mov r1, r9
	bl sub_08012844
	adds r4, r0, #0
	adds r0, r7, #0
	mov r1, r9
	bl sub_080127CC
	adds r6, r0, #0
	ldr r3, [sp, #12]
	adds r2, r6, #0
	muls r2, r3
	lsls r4, r4, #16
	mov r1, sl
	lsrs r0, r1, #16
	orrs r4, r0
	cmp r4, r2
	bcs .L08012622
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L08012622
	cmp r4, r2
	bcs .L08012622
	subs r6, #1
	add r4, r8
.L08012622:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl sub_08012844
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl sub_080127CC
	adds r1, r0, #0
	ldr r3, [sp, #12]
	adds r2, r1, #0
	muls r2, r3
	lsls r5, r5, #16
	ldr r0, [pc, #28]
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bcs .L0801265A
	subs r1, #1
	add r5, r8
	cmp r5, r8
	bcc .L0801265A
	cmp r5, r2
	bcs .L0801265A
	subs r1, #1
.L0801265A:
	lsls r6, r6, #16
	orrs r6, r1
	b .L080127AE
	.2byte 0xffff @ .raw
	movs r0, r0
.L08012664:
	cmp r6, r7
	bls .L0801266E
	movs r6, #0
	str r6, [sp, #4]
	b .L080127AE
.L0801266E:
	ldr r0, [pc, #16]
	cmp r6, r0
	bhi .L08012684
	movs r2, #0
	cmp r6, #255
	bls .L0801268E
	movs r2, #8
	b .L0801268E
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L08012684:
	ldr r0, [pc, #40]
	movs r2, #24
	cmp r6, r0
	bhi .L0801268E
	movs r2, #16
.L0801268E:
	ldr r0, [pc, #36]
	adds r1, r6, #0
	lsrs r1, r2
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	adds r0, r1, r2
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	bne .L080126BC
	cmp r7, r6
	bhi .L080126AA
	cmp sl, r8
	bcc .L080126B8
.L080126AA:
	movs r6, #1
	b .L080127AA
	movs r0, r0
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	cmp r5, #237
	lsls r1, r0, #8
.L080126B8:
	movs r6, #0
	b .L080127AA
.L080126BC:
	subs r1, r1, r2
	lsls r6, r2
	mov r0, r8
	lsrs r0, r1
	orrs r6, r0
	mov r4, r8
	lsls r4, r2
	mov r8, r4
	adds r5, r7, #0
	lsrs r5, r1
	lsls r7, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r0, sl
	lsls r0, r2
	mov sl, r0
	lsrs r1, r6, #16
	mov r9, r1
	ldr r2, [pc, #228]
	ands r2, r6
	str r2, [sp, #16]
	adds r0, r5, #0
	bl sub_08012844
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl sub_080127CC
	adds r3, r0, #0
	ldr r0, [sp, #16]
	adds r1, r3, #0
	muls r1, r0
	lsls r4, r4, #16
	lsrs r0, r7, #16
	orrs r4, r0
	cmp r4, r1
	bcs .L0801271A
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	bcc .L0801271A
	cmp r4, r1
	bcs .L0801271A
	subs r3, #1
	adds r4, r4, r6
.L0801271A:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	str r3, [sp, #28]
	bl sub_08012844
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl sub_080127CC
	adds r2, r0, #0
	ldr r4, [sp, #16]
	adds r1, r2, #0
	muls r1, r4
	lsls r5, r5, #16
	ldr r0, [pc, #140]
	ands r7, r0
	orrs r5, r7
	ldr r3, [sp, #28]
	cmp r5, r1
	bcs .L08012756
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	bcc .L08012756
	cmp r5, r1
	bcs .L08012756
	subs r2, #1
	adds r5, r5, r6
.L08012756:
	subs r5, r5, r1
	lsls r6, r3, #16
	orrs r6, r2
	ldr r0, [pc, #104]
	mov r9, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #16
	mov r0, r8
	mov r2, r9
	ands r0, r2
	mov r4, r8
	lsrs r2, r4, #16
	adds r7, r1, #0
	muls r7, r0
	adds r4, r1, #0
	muls r4, r2
	adds r1, r3, #0
	muls r1, r0
	muls r3, r2
	lsrs r0, r7, #16
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bcs .L0801278E
	movs r0, #128
	lsls r0, r0, #9
	adds r3, r3, r0
.L0801278E:
	lsrs r0, r4, #16
	adds r3, r3, r0
	mov r1, r9
	ands r4, r1
	lsls r0, r4, #16
	ands r7, r1
	adds r1, r0, r7
	cmp r3, r5
	bhi .L080127A8
	cmp r3, r5
	bne .L080127AA
	cmp r1, sl
	bls .L080127AA
.L080127A8:
	subs r6, #1
.L080127AA:
	movs r3, #0
	str r3, [sp, #4]
.L080127AE:
	str r6, [sp, #20]
	ldr r4, [sp, #4]
	str r4, [sp, #24]
	ldr r0, [sp, #20]
	ldr r1, [sp, #24]
	add sp, #32
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_080127CC
	.thumb_func
sub_080127CC:
	cmp r1, #0
	beq .L0801283A
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	bcc .L08012834
	movs r4, #1
	lsls r4, r4, #28
.L080127DE:
	cmp r1, r4
	bcs .L080127EC
	cmp r1, r0
	bcs .L080127EC
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L080127DE
.L080127EC:
	lsls r4, r4, #3
.L080127EE:
	cmp r1, r4
	bcs .L080127FC
	cmp r1, r0
	bcs .L080127FC
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L080127EE
.L080127FC:
	cmp r0, r1
	bcc .L08012804
	subs r0, r0, r1
	orrs r2, r3
.L08012804:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L08012810
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
.L08012810:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L0801281C
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
.L0801281C:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L08012828
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
.L08012828:
	cmp r0, #0
	beq .L08012834
	lsrs r3, r3, #4
	beq .L08012834
	lsrs r1, r1, #4
	b .L080127FC
.L08012834:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
.L0801283A:
	push {lr}
	bl sub_080123F4
	movs r0, #0
	pop {pc}

	.thumb
	.align 1, 0
	.global sub_08012844
	.thumb_func
sub_08012844:
	cmp r1, #0
	beq .L080128FA
	movs r3, #1
	cmp r0, r1
	bcs .L08012850
	mov pc, lr
.L08012850:
	push {r4}
	movs r4, #1
	lsls r4, r4, #28
.L08012856:
	cmp r1, r4
	bcs .L08012864
	cmp r1, r0
	bcs .L08012864
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L08012856
.L08012864:
	lsls r4, r4, #3
.L08012866:
	cmp r1, r4
	bcs .L08012874
	cmp r1, r0
	bcs .L08012874
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L08012866
.L08012874:
	movs r2, #0
	cmp r0, r1
	bcc .L0801287C
	subs r0, r0, r1
.L0801287C:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L0801288E
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L0801288E:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L080128A0
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L080128A0:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L080128B2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L080128B2:
	mov ip, r3
	cmp r0, #0
	beq .L080128C0
	lsrs r3, r3, #4
	beq .L080128C0
	lsrs r1, r1, #4
	b .L08012874
.L080128C0:
	movs r4, #14
	lsls r4, r4, #28
	ands r2, r4
	bne .L080128CC
	pop {r4}
	mov pc, lr
.L080128CC:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq .L080128DA
	lsrs r4, r1, #3
	adds r0, r0, r4
.L080128DA:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq .L080128E8
	lsrs r4, r1, #2
	adds r0, r0, r4
.L080128E8:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq .L080128F6
	lsrs r4, r1, #1
	adds r0, r0, r4
.L080128F6:
	pop {r4}
	mov pc, lr
.L080128FA:
	push {lr}
	bl sub_080123F4
	movs r0, #0
	pop {pc}

	.thumb
	.align 1, 0
	.global sub_08012904
	.thumb_func
sub_08012904:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000369

	.thumb
	.align 1, 0
	.global sub_08012914
	.thumb_func
sub_08012914:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000421

	.thumb
	.align 1, 0
	.global sub_08012924
	.thumb_func
sub_08012924:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x030000BD

	.thumb
	.align 1, 0
	.global sub_08012934
	.thumb_func
sub_08012934:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000001

	.thumb
	.align 1, 0
	.global sub_08012944
	.thumb_func
sub_08012944:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x030001ED

	.thumb
	.align 1, 0
	.global sub_08012954
	.thumb_func
sub_08012954:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000059

	.thumb
	.align 1, 0
	.global sub_08012964
	.thumb_func
sub_08012964:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x0300031D

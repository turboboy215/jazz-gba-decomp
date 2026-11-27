	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082ED38C
	.thumb_func
sub_082ED38C:
	adds r2, r0, #0
	ldrb r3, [r2, #7]
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #6
	bhi .L082ED42C
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r4, [r6, #64]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082ED42A
	.2byte 0xd5b9 @ bpl.n 0x82ed326
	lsrs r6, r5, #32
	ldr r0, [pc, #16]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq .L082ED404
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L082ED42A
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xd939 @ bls.n 0x82ed442
	lsrs r6, r5, #32
	ldr r0, [pc, #16]
	adds r0, #90
	movs r1, #0
.L082ED3D6:
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq .L082ED404
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L082ED42A
	movs r5, #12
	lsls r0, r0, #12
	bls .L082ED3D6
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082ED42A
	.2byte 0xdab1 @ bge.n 0x82ed35a
	lsrs r6, r5, #32
	ldr r0, [pc, #12]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne .L082ED40C
.L082ED404:
	strb r3, [r2, #7]
	b .L082ED42C
	movs r5, #12
	lsls r0, r0, #12
.L082ED40C:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082ED42A
	.2byte 0xdb59 @ blt.n 0x82ed4ca
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082ED42A
	.2byte 0xdc09 @ bgt.n 0x82ed436
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082ED42A:
	str r0, [r1, #0]
.L082ED42C:
	bx lr
	.2byte 0x0000
	.4byte 0x082EDC85

	.thumb
	.align 1, 0
	.global sub_082ED434
	.thumb_func
sub_082ED434:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #7
	beq .L082ED446
	cmp r0, #8
	beq .L082ED45C
	b .L082ED472
.L082ED446:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082ED454
	adds r0, r4, #0
	movs r1, #2
	bl sub_082ED38C
.L082ED454:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082ED470
.L082ED45C:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082ED46A
	adds r0, r4, #0
	movs r1, #2
	bl sub_082ED38C
.L082ED46A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082ED470:
	strb r0, [r1, #0]
.L082ED472:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082ED478
	.thumb_func
sub_082ED478:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r5, #5]
	movs r0, #4
	strb r0, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #33
	movs r1, #0
	strh r2, [r0, #0]
	adds r3, r5, #0
	adds r3, #82
	ldr r0, [pc, #52]
	strh r0, [r3, #0]
	adds r0, r5, #0
	adds r0, #60
	movs r3, #50
	strb r3, [r0, #0]
	str r2, [r5, #68]
	str r2, [r5, #64]
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r5, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r5, #76]
	adds r0, r5, #0
	adds r0, #86
	strb r1, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082ED4EC
	cmp r0, #1
	bgt .L082ED4D8
	cmp r0, #0
	beq .L082ED4E2
	b .L082ED506
	movs r0, r0
	.2byte 0xffe8 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082ED4D8:
	cmp r0, #2
	beq .L082ED4F6
	cmp r0, #3
	beq .L082ED500
	b .L082ED506
.L082ED4E2:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #20
	strh r0, [r1, #0]
	b .L082ED506
.L082ED4EC:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #25
	strh r0, [r1, #0]
	b .L082ED506
.L082ED4F6:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #40
	strh r0, [r1, #0]
	b .L082ED506
.L082ED500:
	adds r0, r5, #0
	adds r0, #90
	strh r3, [r0, #0]
.L082ED506:
	bl sub_082ED0A8
	bl sub_082ED0D8
	movs r4, #100
	ands r0, r4
	adds r0, #100
	strh r0, [r5, #34]
	bl sub_082ED0D8
	ands r0, r4
	adds r0, #100
	strh r0, [r5, #36]
	bl sub_082ED0D8
	movs r1, #200
	ands r0, r1
	adds r0, #150
	strh r0, [r5, #38]
	bl sub_082ED0D8
	ands r0, r4
	strh r0, [r5, #40]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ED552
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082ED552:
	adds r1, r5, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #88
	movs r4, #1
	strb r4, [r0, #0]
	subs r1, #3
	movs r0, #170
	lsls r0, r0, #1
	strh r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #227
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #60]
	movs r2, #12
	movs r3, #0
	bl sub_080002E0
	adds r0, r5, #0
	adds r0, #48
	strb r4, [r0, #0]
	adds r0, r5, #0
	adds r0, #220
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082ED598
	subs r1, #139
	strh r0, [r1, #0]
.L082ED598:
	adds r0, r5, #0
	bl sub_08306E28
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x08158820
	.4byte 0x082ED435

	.thumb
	.align 1, 0
	.global sub_082ED5B8
	.thumb_func
sub_082ED5B8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082ED5D0
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082ED5D0:
	ldr r4, [pc, #72]
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082ED5DE
	negs r0, r0
.L082ED5DE:
	asrs r0, r0, #8
	cmp r0, #179
	bgt .L082ED676
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #80
	ble .L082ED676
	adds r0, r5, #0
	movs r1, #0
	bl sub_082ED110
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082ED676
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r1, r1, r0
	adds r0, r1, #0
	cmp r1, #0
	bge .L082ED60A
	negs r0, r1
.L082ED60A:
	asrs r0, r0, #8
	cmp r0, #53
	bgt .L082ED620
	adds r0, r5, #0
	movs r1, #5
	bl sub_082ED38C
	b .L082ED672
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082ED620:
	adds r0, r1, #0
	cmp r0, #0
	bge .L082ED628
	negs r0, r0
.L082ED628:
	asrs r0, r0, #8
	cmp r0, #119
	bgt .L082ED63E
	ldrb r4, [r4, #7]
	cmp r4, #7
	bne .L082ED63E
	adds r0, r5, #0
	movs r1, #6
	bl sub_082ED38C
	b .L082ED672
.L082ED63E:
	ldr r0, [pc, #28]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082ED64C
	negs r0, r0
.L082ED64C:
	asrs r0, r0, #8
	cmp r0, #119
	bgt .L082ED660
	adds r0, r5, #0
	movs r1, #3
	bl sub_082ED38C
	b .L082ED672
	movs r5, #12
	lsls r0, r0, #12
.L082ED660:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ED672
	adds r0, r5, #0
	movs r1, #4
	bl sub_082ED38C
.L082ED672:
	movs r0, #0
	strh r0, [r5, #28]
.L082ED676:
	ldr r4, [pc, #76]
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082ED684
	negs r0, r0
.L082ED684:
	asrs r0, r0, #8
	cmp r0, #179
	bgt .L082ED6E8
	movs r2, #26
	ldrsh r1, [r5, r2]
	movs r3, #36
	ldrsh r0, [r5, r3]
	cmp r1, r0
	ble .L082ED6E8
	adds r0, r5, #0
	movs r1, #0
	bl sub_082ED110
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082ED6E8
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082ED6B2
	negs r0, r0
.L082ED6B2:
	asrs r0, r0, #8
	cmp r0, #53
	bgt .L082ED6C8
	adds r0, r5, #0
	movs r1, #5
	bl sub_082ED38C
	b .L082ED6E0
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082ED6C8:
	ldrb r4, [r4, #7]
	cmp r4, #7
	bne .L082ED6D8
	adds r0, r5, #0
	movs r1, #6
	bl sub_082ED38C
	b .L082ED6E0
.L082ED6D8:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082ED38C
.L082ED6E0:
	movs r0, #0
	strh r0, [r5, #26]
	strh r0, [r5, #28]
	b .L082ED858
.L082ED6E8:
	ldr r0, [pc, #28]
	ldr r1, [r5, #56]
	ldr r3, [pc, #28]
	adds r2, r1, r3
	ldr r3, [r0, #56]
	adds r6, r0, #0
	adds r4, r1, #0
	cmp r3, r2
	blt .L082ED704
	movs r1, #160
	lsls r1, r1, #6
	adds r0, r4, r1
	cmp r3, r0
	ble .L082ED710
.L082ED704:
	movs r2, #55
	b .L082ED718
	movs r5, #12
	lsls r0, r0, #12
	bhi .L082ED710
	.2byte 0xffff @ .raw
.L082ED710:
	ldrh r0, [r5, #40]
	adds r0, #65
	lsls r0, r0, #24
	lsrs r2, r0, #24
.L082ED718:
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082ED724
	negs r0, r0
.L082ED724:
	asrs r0, r0, #8
	cmp r0, r2
	bgt .L082ED740
	ldr r2, [pc, #52]
	adds r0, r4, r2
	ldr r1, [r6, #56]
	cmp r1, r0
	blt .L082ED736
	b .L082ED832
.L082ED736:
	movs r3, #208
	lsls r3, r3, #6
	adds r0, r4, r3
	cmp r1, r0
	ble .L082ED832
.L082ED740:
	adds r0, r5, #0
	adds r0, #48
	adds r6, r0, #0
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082ED764
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
	movs r1, #38
	ldrsh r0, [r5, r1]
	negs r0, r0
	b .L082ED774
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
.L082ED764:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	movs r2, #38
	ldrsh r0, [r5, r2]
.L082ED774:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082ED7BE
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #30
	negs r3, r3
	movs r2, #22
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	str r2, [sp, #4]
	subs r2, #24
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED7B8
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED7F6
.L082ED7B8:
	movs r2, #0
	strb r2, [r6, #0]
	b .L082ED806
.L082ED7BE:
	cmp r4, #0
	ble .L082ED858
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #22
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #28
	str r2, [sp, #4]
	subs r2, #44
	str r2, [sp, #8]
	adds r2, r4, #0
	movs r3, #44
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED800
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ED800
.L082ED7F6:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	b .L082ED858
.L082ED800:
	movs r2, #0
	movs r0, #1
	strb r0, [r6, #0]
.L082ED806:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
	strh r2, [r5, #32]
	ldrh r1, [r5, #26]
	movs r3, #26
	ldrsh r0, [r5, r3]
	cmp r0, #60
	ble .L082ED820
	adds r0, r1, #0
	subs r0, #50
	strh r0, [r5, #26]
.L082ED820:
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #40
	ble .L082ED858
	adds r0, r1, #0
	subs r0, #30
	strh r0, [r5, #28]
	b .L082ED858
.L082ED832:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082ED850
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082ED858
.L082ED850:
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082ED858:
	ldrh r0, [r5, #32]
	adds r0, #1
	strh r0, [r5, #32]
	lsls r0, r0, #16
	ldrh r3, [r5, #34]
	lsls r1, r3, #16
	cmp r0, r1
	ble .L082ED8BC
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED110
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	bne .L082ED8B8
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082ED890
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
	b .L082ED898
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082ED890:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
.L082ED898:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #60
	ble .L082ED8A8
	adds r0, r1, #0
	subs r0, #50
	strh r0, [r5, #26]
.L082ED8A8:
	ldrh r1, [r5, #28]
	movs r3, #28
	ldrsh r0, [r5, r3]
	cmp r0, #40
	ble .L082ED8B8
	adds r0, r1, #0
	subs r0, #30
	strh r0, [r5, #28]
.L082ED8B8:
	movs r0, #0
	strh r0, [r5, #32]
.L082ED8BC:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082ED8CA
	adds r0, r1, #1
	strh r0, [r5, #26]
.L082ED8CA:
	ldrh r1, [r5, #28]
	movs r3, #28
	ldrsh r0, [r5, r3]
	cmp r0, #199
	bgt .L082ED8D8
	adds r0, r1, #1
	strh r0, [r5, #28]
.L082ED8D8:
	adds r0, r5, #0
	bl sub_082ED2D0
	adds r3, r0, #0
	cmp r3, #1
	bne .L082ED92E
	ldr r0, [pc, #24]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082ED904
	adds r1, r5, #0
	adds r1, #48
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082ED904
	strb r3, [r1, #0]
	b .L082ED918
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082ED904:
	ldr r0, [r6, #52]
	cmp r0, r2
	ble .L082ED91C
	adds r1, r5, #0
	adds r1, #48
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne .L082ED91C
	movs r0, #0
	strb r0, [r1, #0]
.L082ED918:
	movs r0, #200
	strh r0, [r5, #26]
.L082ED91C:
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082ED92E
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082ED92E:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ED938
	.thumb_func
sub_082ED938:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082ED962
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	strh r4, [r5, #30]
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082ED962:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082ED978
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082ED97E
	movs r5, #12
	lsls r0, r0, #12
.L082ED978:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082ED97E:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082ED994
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082ED9A0
.L082ED994:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082ED9A0:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED9D0
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #7
	ble .L082ED9C4
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
	b .L082ED9D0
.L082ED9C4:
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082ED9D0:
	adds r0, r5, #0
	bl sub_082ED2D0
	cmp r0, #1
	bne .L082ED9EC
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082ED9EC
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082ED9EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ED9F4
	.thumb_func
sub_082ED9F4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082EDA1E
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	strh r4, [r5, #30]
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EDA1E:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EDA34
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082EDA3A
	movs r5, #12
	lsls r0, r0, #12
.L082EDA34:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082EDA3A:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082EDA50
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EDA5C
.L082EDA50:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EDA5C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDA8C
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #7
	ble .L082EDA80
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
	b .L082EDA8C
.L082EDA80:
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082EDA8C:
	adds r0, r5, #0
	bl sub_082ED2D0
	cmp r0, #1
	bne .L082EDAA8
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082EDAA8
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082EDAA8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EDAB0
	.thumb_func
sub_082EDAB0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EDAE0
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	strh r4, [r5, #30]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #19
	bl sub_083189D0
.L082EDAE0:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EDAF8
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082EDAFE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EDAF8:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082EDAFE:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082EDB14
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082EDB20
.L082EDB14:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082EDB20:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDB34
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
.L082EDB34:
	adds r0, r5, #0
	bl sub_082ED2D0
	cmp r0, #1
	bne .L082EDB50
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082EDB50
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082EDB50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EDB58
	.thumb_func
sub_082EDB58:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082EDB72
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #28]
.L082EDB72:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EDB88
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082EDB8E
	movs r5, #12
	lsls r0, r0, #12
.L082EDB88:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082EDB8E:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082EDBA4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082EDBB0
.L082EDBA4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082EDBB0:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDBC4
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
.L082EDBC4:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #5
	bne .L082EDBE6
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EDBE6
	adds r0, r5, #0
	movs r1, #4
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EDBE6:
	adds r0, r5, #0
	bl sub_082ED2D0
	cmp r0, #1
	bne .L082EDC02
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082EDC02
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082EDC02:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EDC08
	.thumb_func
sub_082EDC08:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #7
	beq .L082EDC42
	ldrb r0, [r6, #7]
	movs r4, #0
	strb r0, [r6, #8]
	adds r5, r6, #0
	adds r5, #100
	adds r0, r5, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #47
	strb r4, [r0, #0]
	subs r0, #1
	strb r4, [r0, #0]
	ldr r1, [pc, #44]
	adds r0, r5, #0
	bl sub_0800075C
	movs r0, #42
	bl sub_083189D0
	adds r1, r6, #0
	adds r1, #224
	movs r0, #255
	strh r0, [r1, #0]
.L082EDC42:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EDC60
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EDC6C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EDC60:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EDC6C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDC7E
	adds r0, r6, #0
	bl sub_082EA2C0
.L082EDC7E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EDC84
	.thumb_func
sub_082EDC84:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EDC9A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EDC9A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EDCB2
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EDCBE
.L082EDCB2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EDCBE:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082EDCD8
	adds r0, r5, #0
	movs r1, #1
	bl sub_082ED38C
.L082EDCD8:
	adds r0, r5, #0
	bl sub_082ED2D0
	cmp r0, #1
	bne .L082EDCF4
	adds r0, r5, #0
	bl sub_082ED378
	cmp r0, #1
	bne .L082EDCF4
	adds r0, r5, #0
	movs r1, #7
	bl sub_082ED38C
.L082EDCF4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

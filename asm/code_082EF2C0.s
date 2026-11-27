	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EF2C0
	.thumb_func
sub_082EF2C0:
	adds r2, r0, #0
	movs r3, #0
	strb r1, [r2, #7]
	cmp r1, #1
	beq .L082EF2E0
	cmp r1, #1
	bcc .L082EF2D4
	cmp r1, #2
	beq .L082EF2F0
	b .L082EF2F8
.L082EF2D4:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EF2E6
	.2byte 0xf495 @ .raw
	lsrs r6, r5, #32
.L082EF2E0:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EF2E6:
	str r0, [r1, #0]
	strh r3, [r2, #26]
	b .L082EF2F8
	.2byte 0xf511 @ .raw
	lsrs r6, r5, #32
.L082EF2F0:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
.L082EF2F8:
	bx lr
	.2byte 0x0000
	.4byte 0x082EF415

	.thumb
	.align 1, 0
	.global sub_082EF300
	.thumb_func
sub_082EF300:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #3
	bl sub_082F8A24
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #5
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #33
	strh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #82
	ldr r0, [pc, #32]
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #60
	movs r1, #50
	strb r1, [r0, #0]
	str r2, [r4, #68]
	str r2, [r4, #64]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EF364
	cmp r0, #1
	bgt .L082EF350
	cmp r0, #0
	beq .L082EF35A
	b .L082EF37E
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EF350:
	cmp r0, #2
	beq .L082EF36E
	cmp r0, #3
	beq .L082EF378
	b .L082EF37E
.L082EF35A:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #20
	strh r0, [r1, #0]
	b .L082EF37E
.L082EF364:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #30
	strh r0, [r1, #0]
	b .L082EF37E
.L082EF36E:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #40
	strh r0, [r1, #0]
	b .L082EF37E
.L082EF378:
	adds r0, r4, #0
	adds r0, #90
	strh r1, [r0, #0]
.L082EF37E:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #84
	movs r0, #240
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF3BC
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EF3D0
	movs r0, r0
	udf #80
	lsrs r6, r2, #32
.L082EF3BC:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #76]
	movs r2, #5
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EF3D0:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EF3E0
	subs r1, #139
	strh r0, [r1, #0]
.L082EF3E0:
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EF2C0
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EF40A
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082EF40A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0816DE50

	.thumb
	.align 1, 0
	.global sub_082EF414
	.thumb_func
sub_082EF414:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #2
	beq .L082EF452
	ldrb r0, [r6, #7]
	movs r5, #0
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	ldr r1, [pc, #52]
	adds r0, r4, #0
	bl sub_0800075C
	movs r0, #33
	bl sub_083189D0
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	adds r2, r6, #0
	adds r2, #48
	ldrb r2, [r2, #0]
	adds r3, r6, #0
	bl sub_082EF59C
.L082EF452:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF470
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EF47C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF470:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EF47C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF48E
	adds r0, r6, #0
	bl sub_082EA2C0
.L082EF48E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EF494
	.thumb_func
sub_082EF494:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq .L082EF4AA
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082EF4AA:
	ldrh r1, [r4, #26]
	movs r2, #26
	ldrsh r0, [r4, r2]
	cmp r0, #199
	bgt .L082EF4B8
	adds r0, r1, #1
	strh r0, [r4, #26]
.L082EF4B8:
	ldr r0, [pc, #80]
	ldr r1, [r4, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EF4C6
	negs r0, r0
.L082EF4C6:
	asrs r0, r0, #8
	cmp r0, #159
	bgt .L082EF4EA
	movs r1, #26
	ldrsh r0, [r4, r1]
	cmp r0, #70
	ble .L082EF4EA
	adds r0, r4, #0
	bl sub_082EF124
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EF4EA
	adds r0, r4, #0
	movs r1, #1
	bl sub_082EF2C0
.L082EF4EA:
	adds r0, r4, #0
	bl sub_082EF204
	cmp r0, #1
	bne .L082EF506
	adds r0, r4, #0
	bl sub_082EF2AC
	cmp r0, #1
	bne .L082EF506
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EF2C0
.L082EF506:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EF510
	.thumb_func
sub_082EF510:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EF526
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EF526:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF53E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082EF54A
.L082EF53E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082EF54A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF55E
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EF2C0
.L082EF55E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082EF578
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EF578
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EF578:
	adds r0, r5, #0
	bl sub_082EF204
	cmp r0, #1
	bne .L082EF594
	adds r0, r5, #0
	bl sub_082EF2AC
	cmp r0, #1
	bne .L082EF594
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EF2C0
.L082EF594:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF59C
	.thumb_func
sub_082EF59C:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r3, #0
	lsls r2, r2, #24
	lsrs r4, r2, #24
	mov r0, sp
	bl sub_082EA29C
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082EF5F0
	ldr r0, [sp, #0]
	strb r1, [r0, #1]
	ldr r0, [sp, #0]
	str r5, [r0, #52]
	ldr r0, [sp, #0]
	str r6, [r0, #56]
	cmp r4, #0
	bne .L082EF5CE
	ldr r0, [sp, #0]
	adds r0, #227
	b .L082EF5D4
.L082EF5CE:
	ldr r0, [sp, #0]
	adds r0, #227
	movs r1, #0
.L082EF5D4:
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #229
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r1, r7, #0
	adds r1, #228
	ldrb r1, [r1, #0]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	bl sub_082ED478
.L082EF5F0:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EF5F8
	.thumb_func
sub_082EF5F8:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EF6CC
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EF618
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EF62C
.L082EF618:
	cmp r3, #0
	beq .L082EF61E
	b .L082EF78C
.L082EF61E:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EF62C
	b .L082EF78C
.L082EF62C:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EF63A
	b .L082EF78C
.L082EF63A:
	movs r7, #192
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EF646
	b .L082EF78C
.L082EF646:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EF690
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EF658
	b .L082EF784
.L082EF658:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EF65E:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EF678
	b .L082EF78C
.L082EF678:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EF65E
	b .L082EF784
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EF690
	.2byte 0xffff @ .raw
.L082EF690:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EF784
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EF6A0:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF78C
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EF6A0
	b .L082EF784
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EF6CC:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EF6E4
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EF6F4
.L082EF6E4:
	cmp r3, #0
	bne .L082EF78C
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EF78C
.L082EF6F4:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EF78C
	movs r7, #192
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EF78C
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EF750
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EF784
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EF720:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF78C
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EF720
	b .L082EF784
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EF750
	.2byte 0xffff @ .raw
.L082EF750:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EF784
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EF760:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF78C
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EF760
.L082EF784:
	movs r0, #1
	b .L082EF78E
	movs r5, #12
	lsls r0, r0, #12
.L082EF78C:
	movs r0, #0
.L082EF78E:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF798
	.thumb_func
sub_082EF798:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EF7D8
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EF7BE
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EF7C8
.L082EF7BE:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EF7C8:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EF7E2
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF7D8:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #64]
	bl sub_0800075C
.L082EF7E2:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EF824
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
	bgt .L082EF806
	movs r0, #0
	strh r0, [r1, #0]
.L082EF806:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EF816
	movs r0, #7
	strb r0, [r1, #0]
.L082EF816:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EF826
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF824:
	movs r0, #0
.L082EF826:
	pop {r4}
	pop {r1}
	bx r1

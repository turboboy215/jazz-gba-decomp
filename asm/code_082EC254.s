	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EC254
	.thumb_func
sub_082EC254:
	adds r3, r0, #0
	ldrb r2, [r3, #7]
	strb r1, [r3, #7]
	subs r0, r1, #1
	cmp r0, #14
	bls .L082EC262
	b .L082EC352
.L082EC262:
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r0, [r7, #60]
	lsrs r5, r7, #32
	adds r0, r3, #0
	adds r0, #200
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #240
	strh r0, [r3, #26]
	b .L082EC352
	movs r0, r0
	stmia r5!, {r0, r3, r4}
	lsrs r6, r5, #32
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082EC352
	movs r0, r0
	stmia r7!, {r0, r2, r3, r4, r5, r6}
	lsrs r6, r5, #32
	ldr r0, [pc, #20]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq .L082EC2E0
	movs r2, #0
	strh r2, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L082EC33A
	movs r5, #12
	lsls r0, r0, #12
	ldmia r1!, {r0, r2, r5}
	lsrs r6, r5, #32
	ldr r0, [pc, #20]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq .L082EC2E0
	movs r2, #0
	strh r2, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L082EC33A
	movs r5, #12
	lsls r0, r0, #12
	ldmia r2, {r0, r2, r3}
	lsrs r6, r5, #32
	ldr r0, [pc, #12]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne .L082EC2E8
.L082EC2E0:
	strb r2, [r3, #7]
	b .L082EC352
	movs r5, #12
	lsls r0, r0, #12
.L082EC2E8:
	movs r2, #0
	strh r2, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EC33A
	ldmia r2, {r0, r2, r4, r5, r6, r7}
	lsrs r6, r5, #32
	adds r0, r3, #0
	adds r0, #200
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #0
	strh r0, [r3, #28]
	b .L082EC352
	movs r0, r0
	ldmia r3!, {r0, r2, r4, r6, r7}
	lsrs r6, r5, #32
	movs r0, #0
	strh r0, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082EC352
	movs r0, r0
	ldmia r4, {r0, r2, r4, r5, r6}
	lsrs r6, r5, #32
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082EC352
	movs r0, r0
	ldmia r7, {r0, r2, r3, r4, r7}
	lsrs r6, r5, #32
	movs r2, #0
	strh r2, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EC33A:
	str r0, [r1, #0]
	strh r2, [r3, #28]
	b .L082EC352
	ldmia r0, {r0, r2, r4, r6}
	lsrs r6, r5, #32
	movs r2, #0
	strh r2, [r3, #10]
	adds r1, r3, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	str r2, [r3, #68]
.L082EC352:
	bx lr
	.4byte 0x082ECDB9

	.thumb
	.align 1, 0
	.global sub_082EC358
	.thumb_func
sub_082EC358:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r5, [r0, #0]
	cmp r5, #2
	beq .L082EC38E
	cmp r5, #2
	bgt .L082EC36E
	cmp r5, #1
	beq .L082EC378
	b .L082EC3C6
.L082EC36E:
	cmp r5, #33
	beq .L082EC39A
	cmp r5, #34
	beq .L082EC3B0
	b .L082EC3C6
.L082EC378:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082EC386
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EC254
.L082EC386:
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
	b .L082EC3C6
.L082EC38E:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082EC3BE
	adds r0, r4, #0
	movs r1, #2
	b .L082EC3BA
.L082EC39A:
	ldrb r0, [r4, #7]
	cmp r0, #15
	beq .L082EC3A8
	adds r0, r4, #0
	movs r1, #15
	bl sub_082EC254
.L082EC3A8:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EC3C4
.L082EC3B0:
	ldrb r0, [r4, #7]
	cmp r0, #15
	beq .L082EC3BE
	adds r0, r4, #0
	movs r1, #15
.L082EC3BA:
	bl sub_082EC254
.L082EC3BE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EC3C4:
	strb r0, [r1, #0]
.L082EC3C6:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EC3CC
	.thumb_func
sub_082EC3CC:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r5, #5]
	movs r0, #9
	strb r0, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #33
	strh r2, [r0, #0]
	adds r1, r5, #0
	adds r1, #82
	ldr r0, [pc, #44]
	strh r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #60
	movs r1, #50
	strb r1, [r0, #0]
	str r2, [r5, #68]
	str r2, [r5, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r5, #72]
	movs r0, #192
	lsls r0, r0, #3
	str r0, [r5, #76]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EC436
	cmp r0, #1
	bgt .L082EC424
	cmp r0, #0
	beq .L082EC42E
	b .L082EC44E
	movs r0, r0
	.2byte 0xfff8 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EC424:
	cmp r0, #2
	beq .L082EC43E
	cmp r0, #3
	beq .L082EC446
	b .L082EC44E
.L082EC42E:
	adds r0, r5, #0
	adds r0, #90
	strh r1, [r0, #0]
	b .L082EC44E
.L082EC436:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #60
	b .L082EC44C
.L082EC43E:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #70
	b .L082EC44C
.L082EC446:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #80
.L082EC44C:
	strh r0, [r1, #0]
.L082EC44E:
	adds r0, r5, #0
	adds r0, #87
	movs r4, #0
	strb r4, [r0, #0]
	adds r0, #1
	strb r4, [r0, #0]
	subs r0, #2
	strb r4, [r0, #0]
	bl sub_082EBF98
	strh r4, [r5, #34]
	bl sub_082EBFC8
	movs r1, #100
	ands r0, r1
	adds r0, #100
	strh r0, [r5, #36]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EC48E
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082EC48E:
	adds r0, r5, #0
	adds r0, #84
	movs r1, #250
	lsls r1, r1, #1
	strh r1, [r0, #0]
	adds r0, #143
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC4BC
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #30
	movs r3, #0
	bl sub_080002E0
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082EC4D0
	movs r0, r0
	str r0, [r2, #100]
	lsrs r3, r3, #32
.L082EC4BC:
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #60]
	movs r2, #31
	movs r3, #0
	bl sub_080002E0
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082EC4D0:
	strb r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EC4E0
	subs r1, #139
	strh r0, [r1, #0]
.L082EC4E0:
	adds r1, r5, #0
	adds r1, #220
	ldr r0, [pc, #28]
	str r0, [r1, #0]
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082EC508
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EC254
	b .L082EC510
	str r0, [r2, #100]
	lsrs r3, r3, #32
	stmia r3!, {r0, r3, r4, r6}
	lsrs r6, r5, #32
.L082EC508:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082EC510:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EC518
	.thumb_func
sub_082EC518:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #1
	beq .L082EC530
	ldrb r0, [r6, #7]
	strb r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #100
	bl sub_080006AC
.L082EC530:
	ldr r0, [pc, #52]
	ldr r1, [r6, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EC53E
	negs r0, r0
.L082EC53E:
	asrs r0, r0, #8
	cmp r0, #79
	bgt .L082EC56C
	adds r0, r6, #0
	movs r1, #0
	bl sub_082EC000
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EC56C
	movs r1, #28
	ldrsh r0, [r6, r1]
	cmp r0, #60
	ble .L082EC56C
	adds r0, r6, #0
	movs r1, #6
	bl sub_082EC254
	b .L082EC71E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EC56C:
	ldr r0, [pc, #84]
	ldr r1, [r6, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EC57A
	negs r0, r0
.L082EC57A:
	asrs r0, r0, #8
	cmp r0, #149
	bgt .L082EC622
	adds r0, r6, #0
	movs r1, #0
	bl sub_082EC000
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EC622
	movs r2, #28
	ldrsh r0, [r6, r2]
	cmp r0, #60
	ble .L082EC622
	adds r0, r6, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC5C8
	bl sub_082EBFC8
	movs r4, #2
	ands r0, r4
	lsls r0, r0, #24
	lsrs r5, r0, #24
	bl sub_082EBFC8
	ands r0, r4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r5, #0
	beq .L082EC600
	cmp r0, #0
	beq .L082EC60E
	b .L082EC618
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EC5C8:
	cmp r0, #1
	bne .L082EC5E0
	bl sub_082EBFC8
	adds r5, r0, #0
	movs r0, #5
	ands r5, r0
	cmp r5, #2
	bls .L082EC600
	cmp r5, #3
	beq .L082EC618
	b .L082EC60E
.L082EC5E0:
	cmp r0, #2
	beq .L082EC5E6
	b .L082EC71E
.L082EC5E6:
	bl sub_082EBFC8
	movs r4, #2
	ands r0, r4
	lsls r0, r0, #24
	lsrs r5, r0, #24
	bl sub_082EBFC8
	ands r0, r4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r5, #0
	bne .L082EC60A
.L082EC600:
	adds r0, r6, #0
	movs r1, #5
	bl sub_082EC254
	b .L082EC71E
.L082EC60A:
	cmp r0, #0
	bne .L082EC618
.L082EC60E:
	adds r0, r6, #0
	movs r1, #4
	bl sub_082EC254
	b .L082EC71E
.L082EC618:
	adds r0, r6, #0
	movs r1, #9
	bl sub_082EC254
	b .L082EC71E
.L082EC622:
	ldr r0, [pc, #48]
	ldr r1, [r6, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EC630
	negs r0, r0
.L082EC630:
	asrs r0, r0, #8
	cmp r0, #65
	ble .L082EC6F8
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EC658
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #30
	bl sub_08000680
	movs r0, #64
	negs r0, r0
	b .L082EC666
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EC658:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #31
	bl sub_08000680
	movs r0, #64
.L082EC666:
	str r0, [r6, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r6, #64]
	cmp r4, #0
	bge .L082EC6AC
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r3, #30
	negs r3, r3
	movs r2, #32
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
	bne .L082EC6EE
	ldr r0, [r6, #52]
	ldr r1, [r6, #64]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC6E4
	b .L082EC6EE
.L082EC6AC:
	cmp r4, #0
	ble .L082EC71E
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r2, #32
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
	bne .L082EC6EE
	ldr r0, [r6, #52]
	ldr r1, [r6, #64]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EC6EE
.L082EC6E4:
	ldr r0, [r6, #52]
	ldr r1, [r6, #64]
	adds r0, r0, r1
	str r0, [r6, #52]
	b .L082EC71E
.L082EC6EE:
	adds r0, r6, #0
	movs r1, #3
	bl sub_082EC254
	b .L082EC71E
.L082EC6F8:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EC716
	adds r0, r4, #0
	movs r1, #26
	bl sub_08000680
	b .L082EC71E
.L082EC716:
	adds r0, r4, #0
	movs r1, #27
	bl sub_08000680
.L082EC71E:
	movs r1, #32
	ldrsh r0, [r6, r1]
	cmp r0, #150
	ble .L082EC742
	adds r0, r6, #0
	movs r1, #1
	bl sub_082EC000
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EC73E
	adds r0, r6, #0
	movs r1, #3
	bl sub_082EC254
.L082EC73E:
	movs r0, #0
	strh r0, [r6, #32]
.L082EC742:
	ldrh r0, [r6, #32]
	adds r0, #1
	strh r0, [r6, #32]
	ldrh r1, [r6, #28]
	movs r2, #28
	ldrsh r0, [r6, r2]
	cmp r0, #199
	bgt .L082EC756
	adds r0, r1, #1
	strh r0, [r6, #28]
.L082EC756:
	adds r0, r6, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082EC772
	adds r0, r6, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082EC772
	adds r0, r6, #0
	movs r1, #15
	bl sub_082EC254
.L082EC772:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EC77C
	.thumb_func
sub_082EC77C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EC794
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EC794:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC7AE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #31
	bl sub_08000680
	movs r0, #128
	b .L082EC7BE
.L082EC7AE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #30
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082EC7BE:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC7F0
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EC7F0:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EC814
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082EC81C
.L082EC814:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082EC81C:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #1
	bls .L082EC830
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082EC830:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082EC84C
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082EC84C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082EC84C:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EC854
	.thumb_func
sub_082EC854:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082EC888
	movs r0, #3
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC880
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
	b .L082EC888
.L082EC880:
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
.L082EC888:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC900
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L082EC8BC
	movs r0, #1
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC8B6
	adds r0, r4, #0
	movs r1, #29
	bl sub_08000680
	b .L082EC8E8
.L082EC8B6:
	adds r0, r4, #0
	movs r1, #28
	b .L082EC8E4
.L082EC8BC:
	cmp r0, #1
	bne .L082EC8F0
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	ldrb r2, [r1, #0]
	subs r0, r0, r2
	strb r0, [r1, #0]
	movs r0, #2
	strh r0, [r5, #10]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082EC8E0
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082EC8E8
.L082EC8E0:
	adds r0, r4, #0
	movs r1, #22
.L082EC8E4:
	bl sub_08000680
.L082EC8E8:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EC900
.L082EC8F0:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082EC900:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082EC91C
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082EC91C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082EC91C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EC924
	.thumb_func
sub_082EC924:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082EC958
	movs r0, #4
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC950
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	b .L082EC958
.L082EC950:
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
.L082EC958:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #1
	bne .L082EC984
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EC984
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L082EC984
	adds r0, r5, #0
	movs r1, #13
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EC984:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC9E8
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L082EC9B4
	movs r0, #1
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC9AE
	adds r0, r4, #0
	movs r1, #19
	bl sub_08000680
	b .L082EC9D8
.L082EC9AE:
	adds r0, r4, #0
	movs r1, #18
	b .L082EC9D4
.L082EC9B4:
	cmp r0, #1
	bne .L082EC9E0
	movs r0, #2
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EC9D0
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082EC9D8
.L082EC9D0:
	adds r0, r4, #0
	movs r1, #14
.L082EC9D4:
	bl sub_08000680
.L082EC9D8:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EC9E8
.L082EC9E0:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082EC9E8:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECA04
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECA04
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082ECA04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ECA0C
	.thumb_func
sub_082ECA0C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #9
	beq .L082ECA40
	movs r0, #9
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECA38
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	b .L082ECA40
.L082ECA38:
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
.L082ECA40:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #1
	bne .L082ECA6C
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082ECA6C
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L082ECA6C
	adds r0, r5, #0
	movs r1, #14
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082ECA6C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECAD0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L082ECA9C
	movs r0, #1
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECA96
	adds r0, r4, #0
	movs r1, #19
	bl sub_08000680
	b .L082ECAC0
.L082ECA96:
	adds r0, r4, #0
	movs r1, #18
	b .L082ECABC
.L082ECA9C:
	cmp r0, #1
	bne .L082ECAC8
	movs r0, #2
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECAB8
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082ECAC0
.L082ECAB8:
	adds r0, r4, #0
	movs r1, #14
.L082ECABC:
	bl sub_08000680
.L082ECAC0:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082ECAD0
.L082ECAC8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082ECAD0:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECAEC
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECAEC
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082ECAEC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ECAF4
	.thumb_func
sub_082ECAF4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082ECB2C
	movs r4, #0
	movs r0, #5
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #30]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECB24
	adds r0, r6, #0
	movs r1, #11
	bl sub_08000680
	b .L082ECB2C
.L082ECB24:
	adds r0, r6, #0
	movs r1, #10
	bl sub_08000680
.L082ECB2C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECBB0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L082ECB7C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082ECB62
	movs r0, #1
	strh r0, [r5, #10]
.L082ECB62:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECB76
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082ECBA0
.L082ECB76:
	adds r0, r4, #0
	movs r1, #12
	b .L082ECB9C
.L082ECB7C:
	cmp r0, #1
	bne .L082ECBA8
	movs r0, #2
	strh r0, [r5, #10]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECB98
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082ECBA0
.L082ECB98:
	adds r0, r4, #0
	movs r1, #8
.L082ECB9C:
	bl sub_08000680
.L082ECBA0:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082ECBB0
.L082ECBA8:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082ECBB0:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECBCC
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECBCC
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082ECBCC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ECBD4
	.thumb_func
sub_082ECBD4:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #6
	beq .L082ECC0E
	movs r1, #0
	movs r0, #6
	strb r0, [r4, #8]
	strh r1, [r4, #30]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECBFC
	adds r0, r4, #0
	adds r0, #100
	movs r1, #11
	bl sub_08000680
	b .L082ECC06
.L082ECBFC:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #10
	bl sub_08000680
.L082ECC06:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082ECC0E:
	ldrh r0, [r4, #28]
	adds r0, #1
	strh r0, [r4, #28]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #10
	ble .L082ECC2E
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F8A24
	ldr r0, [r4, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r4, #28]
.L082ECC2E:
	ldrh r0, [r4, #30]
	adds r0, #1
	strh r0, [r4, #30]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECC52
	movs r1, #30
	ldrsh r0, [r4, r1]
	cmp r0, #150
	ble .L082ECC52
	adds r0, r4, #0
	movs r1, #1
	bl sub_082EC254
.L082ECC52:
	adds r0, r4, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECC6E
	adds r0, r4, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECC6E
	adds r0, r4, #0
	movs r1, #15
	bl sub_082EC254
.L082ECC6E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082ECC74
	.thumb_func
sub_082ECC74:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082ECCAA
	movs r0, #7
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECCA2
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	b .L082ECCAA
.L082ECCA2:
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
.L082ECCAA:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082ECCCA
	adds r0, r5, #0
	movs r1, #17
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #28]
.L082ECCCA:
	ldr r4, [r5, #64]
	cmp r4, #0
	ble .L082ECCE8
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #28
	str r2, [sp, #4]
	subs r2, #44
	str r2, [sp, #8]
	adds r2, r4, #0
	movs r3, #44
	b .L082ECD00
.L082ECCE8:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #30
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	str r2, [sp, #4]
	subs r2, #24
	str r2, [sp, #8]
	adds r2, r4, #0
.L082ECD00:
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECD12
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082ECD12:
	ldrh r4, [r5, #10]
	cmp r4, #0
	bne .L082ECD56
	ldr r1, [r5, #68]
	movs r3, #128
	lsls r3, r3, #4
	movs r0, #1
	movs r2, #64
	bl sub_083170B8
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r1, r1, r0
	str r1, [r5, #56]
	cmp r0, #0
	ble .L082ECD92
	ldr r0, [r5, #52]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ECD92
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	str r4, [r5, #68]
	movs r0, #1
	strh r0, [r5, #10]
	b .L082ECD92
.L082ECD56:
	cmp r4, #1
	bne .L082ECD92
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECD72
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082ECD7E
.L082ECD72:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
.L082ECD7E:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECD92
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EC254
.L082ECD92:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECDAE
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECDAE
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082ECDAE:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ECDB8
	.thumb_func
sub_082ECDB8:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082ECDEE
	movs r0, #8
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECDE6
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082ECDEE
.L082ECDE6:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082ECDEE:
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L082ECE1E
	ldr r1, [r5, #68]
	ldr r0, [r5, #76]
	cmp r1, r0
	bge .L082ECE00
	subs r0, r1, #3
	str r0, [r5, #68]
.L082ECE00:
	ldr r0, [r5, #56]
	ldr r1, [r5, #68]
	adds r0, r0, r1
	str r0, [r5, #56]
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [pc, #100]
	ldr r1, [r5, #56]
	ldr r0, [r0, #56]
	cmp r1, r0
	bge .L082ECE1E
	movs r0, #1
	strh r0, [r5, #10]
.L082ECE1E:
	ldrh r4, [r5, #10]
	cmp r4, #1
	beq .L082ECE26
	b .L082ECF6E
.L082ECE26:
	ldr r0, [pc, #80]
	ldr r0, [r0, #56]
	ldr r1, [pc, #80]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	cmp r1, r0
	ble .L082ECE8E
	ldr r0, [r5, #52]
	ldr r2, [r5, #68]
	movs r3, #1
	negs r3, r3
	str r3, [sp, #0]
	str r4, [sp, #4]
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ECE8E
	ldr r1, [r5, #68]
	ldr r0, [r5, #76]
	cmp r1, r0
	bge .L082ECE56
	subs r0, r1, #3
	str r0, [r5, #68]
.L082ECE56:
	ldr r0, [r5, #56]
	ldr r1, [r5, #68]
	adds r0, r0, r1
	str r0, [r5, #56]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECE80
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082ECF3A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xce00 @ .raw ldmia r6!, {}
	.2byte 0xffff @ .raw
.L082ECE80:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
	b .L082ECF3A
.L082ECE8E:
	ldr r0, [pc, #24]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	ldr r2, [r5, #72]
	cmp r1, r0
	bge .L082ECEAC
	ldr r1, [r5, #64]
	cmp r1, r2
	bge .L082ECEAC
	movs r3, #128
	lsls r3, r3, #2
	movs r0, #1
	b .L082ECEBA
	movs r5, #12
	lsls r0, r0, #12
.L082ECEAC:
	ldr r1, [r5, #64]
	cmn r1, r2
	ble .L082ECEC2
	movs r0, #1
	negs r0, r0
	movs r3, #128
	lsls r3, r3, #2
.L082ECEBA:
	movs r2, #16
	bl sub_083170B8
	str r0, [r5, #64]
.L082ECEC2:
	ldr r4, [r5, #64]
	cmp r4, #0
	ble .L082ECEE0
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #28
	str r2, [sp, #4]
	subs r2, #44
	str r2, [sp, #8]
	adds r2, r4, #0
	movs r3, #44
	b .L082ECEF8
.L082ECEE0:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #30
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	str r2, [sp, #4]
	subs r2, #24
	str r2, [sp, #8]
	adds r2, r4, #0
.L082ECEF8:
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ECF0E
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EC254
	movs r0, #0
	str r0, [r5, #64]
.L082ECF0E:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ECF2E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082ECF3A
.L082ECF2E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082ECF3A:
	adds r0, r4, #0
	bl sub_08000704
	ldr r3, [pc, #80]
	ldr r2, [r3, #52]
	ldr r4, [pc, #80]
	adds r0, r2, r4
	ldr r1, [r5, #52]
	cmp r1, r0
	ble .L082ECF6E
	movs r4, #240
	lsls r4, r4, #6
	adds r0, r2, r4
	cmp r1, r0
	bge .L082ECF6E
	ldr r0, [r3, #56]
	movs r1, #160
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r5, #56]
	cmp r1, r0
	bge .L082ECF6E
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EC254
.L082ECF6E:
	adds r0, r5, #0
	bl sub_082EC1A0
	cmp r0, #1
	bne .L082ECF8A
	adds r0, r5, #0
	bl sub_082EC240
	cmp r0, #1
	bne .L082ECF8A
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EC254
.L082ECF8A:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0xFFFFC400

	.thumb
	.align 1, 0
	.global sub_082ECF9C
	.thumb_func
sub_082ECF9C:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldrb r0, [r7, #8]
	cmp r0, #15
	beq .L082ED04A
	ldrb r0, [r7, #7]
	movs r5, #0
	strb r0, [r7, #8]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r7, #0
	adds r0, #47
	strb r5, [r0, #0]
	subs r0, #1
	strb r5, [r0, #0]
	ldr r1, [pc, #160]
	adds r0, r4, #0
	bl sub_0800075C
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	movs r2, #0
	bl sub_083081B0
	ldr r0, [r7, #52]
	movs r4, #160
	lsls r4, r4, #4
	adds r0, r0, r4
	ldr r1, [r7, #56]
	adds r1, r1, r4
	movs r2, #15
	bl sub_083081B0
	ldr r0, [r7, #52]
	ldr r1, [pc, #128]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	ldr r6, [pc, #124]
	adds r1, r1, r6
	movs r2, #30
	bl sub_083081B0
	ldr r0, [r7, #52]
	movs r2, #160
	lsls r2, r2, #5
	adds r0, r0, r2
	ldr r1, [r7, #56]
	movs r2, #240
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #45
	bl sub_083081B0
	ldr r0, [r7, #52]
	movs r1, #160
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r7, #56]
	ldr r2, [pc, #80]
	adds r1, r1, r2
	movs r2, #60
	bl sub_083081B0
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	movs r2, #75
	bl sub_083081B0
	ldr r0, [r7, #52]
	adds r0, r0, r4
	ldr r1, [r7, #56]
	adds r1, r1, r4
	movs r2, #90
	bl sub_083081B0
	ldr r0, [r7, #52]
	ldr r1, [pc, #44]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	adds r1, r1, r6
	movs r2, #105
	bl sub_083081B0
	strh r5, [r7, #30]
.L082ED04A:
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082ED070
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082ED07C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	.2byte 0xf100, 0xffff @ bl 0x83ee06a
	.2byte 0xe700 @ b.n 0x82ece70
	.2byte 0xffff @ .raw
.L082ED070:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082ED07C:
	adds r0, r4, #0
	bl sub_08000704
	ldrh r0, [r7, #30]
	adds r0, #1
	strh r0, [r7, #30]
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED0A2
	movs r2, #30
	ldrsh r0, [r7, r2]
	cmp r0, #60
	ble .L082ED0A2
	adds r0, r7, #0
	bl sub_082EA2C0
.L082ED0A2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

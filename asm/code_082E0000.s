	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082E8470
	.thumb_func
sub_082E8470:
	push {r4, lr}
	ldr r4, [pc, #36]
	ldr r3, [pc, #36]
	ldrh r2, [r3, #0]
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #16
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #24
	orrs r0, r2
	asrs r1, r0, #31
	str r0, [r4, #0]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058AC
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082E84A0
	.thumb_func
sub_082E84A0:
	push {r4, lr}
	ldr r4, [pc, #32]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	bl __muldi3
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x030058AC
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

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

	.thumb
	.align 1, 0
	.global sub_082E85B0
	.thumb_func
sub_082E85B0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	ldr r2, [r4, #56]
	asrs r2, r2, #8
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E85DC
	movs r1, #0
	adds r0, r4, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L082E85D8
	movs r1, #1
.L082E85D8:
	adds r0, r1, #0
	b .L082E85DE
.L082E85DC:
	movs r0, #0
.L082E85DE:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082E85E4
	.thumb_func
sub_082E85E4:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #4
	bhi .L082E8634
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r5, #48]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8632
	strh r5, [r1, #58]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8632
	ldrh r5, [r5, #6]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8632
	ldrh r1, [r5, #16]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8632
	ldrh r1, [r4, #10]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082E8632:
	str r0, [r1, #0]
.L082E8634:
	bx lr
	.2byte 0x0000
	.4byte 0x082E89C5

	.thumb
	.align 1, 0
	.global sub_082E863C
	.thumb_func
sub_082E863C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #12
	bl sub_082F8A24
	movs r3, #0
	movs r2, #1
	strb r2, [r4, #5]
	movs r0, #7
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #33
	movs r5, #0
	strh r3, [r0, #0]
	adds r1, r4, #0
	adds r1, #82
	ldr r0, [pc, #64]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r3, [r4, #68]
	movs r0, #250
	str r0, [r4, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r1, #24
	subs r0, #48
	strh r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #87
	strb r5, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r5, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082E86C4
	cmp r0, #1
	bgt .L082E86B0
	cmp r0, #0
	beq .L082E86BA
	b .L082E86E2
	movs r0, r0
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082E86B0:
	cmp r0, #2
	beq .L082E86D0
	cmp r0, #3
	beq .L082E86DA
	b .L082E86E2
.L082E86BA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #225
	lsls r0, r0, #1
	b .L082E86E0
.L082E86C4:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #0]
	b .L082E86E0
	lsls r3, r4, #10
	movs r0, r0
.L082E86D0:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #225
	lsls r0, r0, #2
	b .L082E86E0
.L082E86DA:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #36]
.L082E86E0:
	strh r0, [r1, #0]
.L082E86E2:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E870C
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #12]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	b .L082E8722
	lsls r5, r4, #17
	movs r0, r0
	ldrh r0, [r0, #12]
	lsrs r7, r2, #32
.L082E870C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #44]
	movs r2, #5
	movs r3, #0
	bl sub_080002E0
.L082E8722:
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082E8730
	subs r1, #139
	strh r0, [r1, #0]
.L082E8730:
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082E85E4
	bl sub_082E8470
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08178980

	.thumb
	.align 1, 0
	.global sub_082E874C
	.thumb_func
sub_082E874C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E8764
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8764:
	ldr r0, [pc, #48]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082E8772
	negs r0, r0
.L082E8772:
	asrs r0, r0, #8
	cmp r0, #69
	bgt .L082E87AA
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082E87AA
	bl sub_082E84A0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L082E879C
	adds r0, r5, #0
	movs r1, #2
	bl sub_082E85E4
	b .L082E87A4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E879C:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082E85E4
.L082E87A4:
	movs r0, #0
	strh r0, [r5, #26]
	b .L082E88B4
.L082E87AA:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E87C4
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #171
	b .L082E87CE
	movs r5, #12
	lsls r0, r0, #12
.L082E87C4:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #170
.L082E87CE:
	str r1, [r5, #64]
	adds r6, r0, #0
	ldr r0, [pc, #48]
	ldr r4, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r4, r0
	cmp r0, #0
	bge .L082E87E0
	negs r0, r0
.L082E87E0:
	asrs r0, r0, #8
	cmp r0, #30
	ble .L082E8854
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082E8808
	ldr r1, [r5, #56]
	movs r3, #60
	negs r3, r3
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #8
	str r0, [sp, #4]
	subs r0, #24
	str r0, [sp, #8]
	adds r0, r4, #0
	b .L082E8820
	movs r5, #12
	lsls r0, r0, #12
.L082E8808:
	cmp r2, #0
	ble .L082E8832
	ldr r1, [r5, #56]
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #8
	str r0, [sp, #4]
	subs r0, #24
	str r0, [sp, #8]
	adds r0, r4, #0
	movs r3, #60
.L082E8820:
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8832
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E8832:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082E8846
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
	b .L082E8874
.L082E8846:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082E8874
.L082E8854:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082E8868
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
	b .L082E8874
.L082E8868:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
.L082E8874:
	ldr r1, [r5, #68]
	movs r3, #128
	lsls r3, r3, #2
	movs r0, #1
	movs r2, #16
	bl sub_083170B8
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r1, r1, r0
	str r1, [r5, #56]
	cmp r0, #0
	ble .L082E88AE
	ldr r0, [r5, #52]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E88AE
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082E88AE:
	adds r0, r4, #0
	bl sub_08000704
.L082E88B4:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082E84D8
	cmp r0, #1
	bne .L082E88E4
	adds r0, r5, #0
	bl sub_082E85B0
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E88DC
	adds r0, r5, #0
	movs r1, #5
	bl sub_082E85E4
	b .L082E88E4
.L082E88DC:
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E85E4
.L082E88E4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E88EC
	.thumb_func
sub_082E88EC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082E8902
	movs r0, #4
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8902:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E891A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082E8926
.L082E891A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082E8926:
	adds r0, r5, #0
	bl sub_082E84D8
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8958
	adds r0, r5, #0
	bl sub_082E85B0
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E8950
	adds r0, r5, #0
	movs r1, #5
	bl sub_082E85E4
	b .L082E8958
.L082E8950:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E85E4
.L082E8958:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E8960
	.thumb_func
sub_082E8960:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082E8984
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	movs r0, #1
	strh r0, [r5, #10]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E8984:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E899C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082E89A8
.L082E899C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082E89A8:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E89BC
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E85E4
.L082E89BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E89C4
	.thumb_func
sub_082E89C4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082E89E8
	movs r4, #0
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	movs r0, #2
	strh r0, [r5, #10]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E89E8:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8A00
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082E8A0C
.L082E8A00:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082E8A0C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8A20
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E85E4
.L082E8A20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E8A28
	.thumb_func
sub_082E8A28:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #5
	beq .L082E8A50
	movs r5, #0
	movs r0, #5
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldr r1, [pc, #36]
	adds r0, r4, #0
	bl sub_0800075C
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
.L082E8A50:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8A6C
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082E8A78
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E8A6C:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082E8A78:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8A90
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082E8A90:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FF965

	.thumb
	.align 1, 0
	.global sub_082E8A9C
	.thumb_func
sub_082E8A9C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082E8ADC
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082E8AC2
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082E8ACC
.L082E8AC2:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082E8ACC:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082E8AE6
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E8ADC:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #64]
	bl sub_0800075C
.L082E8AE6:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E8B28
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
	bge .L082E8B0A
	movs r0, #0
	strh r0, [r1, #0]
.L082E8B0A:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082E8B1A
	movs r0, #7
	strb r0, [r1, #0]
.L082E8B1A:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082E8B2A
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E8B28:
	movs r0, #0
.L082E8B2A:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082E8B30
	.thumb_func
sub_082E8B30:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082E8B3E
	movs r1, #1
.L082E8B3E:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E8B44
	.thumb_func
sub_082E8B44:
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [pc, #44]
	ldr r3, [r2, #56]
	movs r1, #128
	lsls r1, r1, #5
	adds r0, r3, r1
	ldr r1, [r4, #56]
	cmp r1, r0
	bge .L082E8B90
	ldr r5, [pc, #32]
	adds r0, r3, r5
	cmp r1, r0
	ble .L082E8B90
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8B80
	movs r3, #0
	ldr r1, [r4, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082E8B8C
	b .L082E8B8A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xc000 @ .raw stmia r0!, {}
	.2byte 0xffff @ .raw
.L082E8B80:
	movs r3, #0
	ldr r1, [r4, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082E8B8C
.L082E8B8A:
	movs r3, #1
.L082E8B8C:
	adds r0, r3, #0
	b .L082E8B92
.L082E8B90:
	movs r0, #0
.L082E8B92:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082E8B98
	.thumb_func
sub_082E8B98:
	adds r2, r0, #0
	ldrb r3, [r2, #7]
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #6
	bhi .L082E8C28
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r0, #52]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	ldrh r5, [r6, #50]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	ldrh r1, [r1, #46]
	lsrs r6, r5, #32
	ldr r0, [pc, #12]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne .L082E8BE0
	strb r3, [r2, #7]
	b .L082E8C28
	movs r5, #12
	lsls r0, r0, #12
.L082E8BE0:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r0, [sp, #116]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r0, [sp, #932]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #46
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	b .L082E8C28
	movs r0, r0
	str r1, [sp, #420]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r1, [sp, #900]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082E8C26:
	str r0, [r1, #0]
.L082E8C28:
	bx lr
	.2byte 0x0000
	.4byte 0x082E9251

	.thumb
	.align 1, 0
	.global sub_082E8C30
	.thumb_func
sub_082E8C30:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r5, [r0, #0]
	cmp r5, #2
	beq .L082E8C72
	cmp r5, #2
	bgt .L082E8C46
	cmp r5, #1
	beq .L082E8C8A
	b .L082E8C9E
.L082E8C46:
	cmp r5, #7
	beq .L082E8C5A
	cmp r5, #8
	bne .L082E8C9E
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082E8C80
	adds r0, r4, #0
	movs r1, #5
	b .L082E8C7C
.L082E8C5A:
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082E8C68
	adds r0, r4, #0
	movs r1, #5
	bl sub_082E8B98
.L082E8C68:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	b .L082E8C9E
.L082E8C72:
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082E8C80
	adds r0, r4, #0
	movs r1, #6
.L082E8C7C:
	bl sub_082E8B98
.L082E8C80:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	b .L082E8C9E
.L082E8C8A:
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082E8C98
	adds r0, r4, #0
	movs r1, #6
	bl sub_082E8B98
.L082E8C98:
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
.L082E8C9E:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E8CA4
	.thumb_func
sub_082E8CA4:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_082F8A24
	movs r2, #0
	movs r3, #1
	strb r3, [r5, #5]
	strb r2, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r3, [r0, #0]
	adds r0, #1
	strb r3, [r0, #0]
	adds r0, #33
	movs r4, #0
	strh r2, [r0, #0]
	adds r1, r5, #0
	adds r1, #82
	ldr r0, [pc, #60]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r5, #68]
	movs r0, #128
	str r0, [r5, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r5, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r5, #76]
	adds r0, r5, #0
	adds r0, #87
	strb r4, [r0, #0]
	adds r0, #1
	strb r3, [r0, #0]
	subs r0, #2
	strb r4, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082E8D22
	cmp r0, #1
	bgt .L082E8D10
	cmp r0, #0
	beq .L082E8D1A
	b .L082E8D3A
	movs r0, r0
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082E8D10:
	cmp r0, #2
	beq .L082E8D2A
	cmp r0, #3
	beq .L082E8D32
	b .L082E8D3A
.L082E8D1A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #15
	b .L082E8D38
.L082E8D22:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #20
	b .L082E8D38
.L082E8D2A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #30
	b .L082E8D38
.L082E8D32:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #40
.L082E8D38:
	strh r0, [r1, #0]
.L082E8D3A:
	adds r1, r5, #0
	adds r1, #84
	movs r0, #250
	lsls r0, r0, #1
	strh r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E8D58
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E8D60
.L082E8D58:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E8D60:
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8D88
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #12]
	movs r2, #8
	movs r3, #0
	bl sub_080002E0
	b .L082E8D9E
	movs r0, r0
	ldr r2, [pc, #256]
	lsrs r1, r2, #32
.L082E8D88:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #9
	movs r3, #0
	bl sub_080002E0
.L082E8D9E:
	adds r1, r5, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082E8DAC
	subs r1, #139
	strh r0, [r1, #0]
.L082E8DAC:
	adds r0, r5, #0
	adds r0, #220
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	movs r0, #0
	strb r0, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08114A40
	.4byte 0x082E8C31

	.thumb
	.align 1, 0
	.global sub_082E8DC8
	.thumb_func
sub_082E8DC8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E8DDE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8DDE:
	adds r0, r5, #0
	bl sub_082E8B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8DFC
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082E8DFC
	adds r0, r5, #0
	movs r1, #2
	bl sub_082E8B98
	b .L082E8E42
.L082E8DFC:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E8E14
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E8E1A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E8E14:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E8E1A:
	strb r0, [r1, #0]
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L082E8E30
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8E3C
.L082E8E30:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8E3C:
	adds r0, r4, #0
	bl sub_08000704
.L082E8E42:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E8E6C
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E8E6C
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E8E6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E8E74
	.thumb_func
sub_082E8E74:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E8E8C
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8E8C:
	adds r0, r5, #0
	bl sub_082E8B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8EAA
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082E8EAA
	adds r0, r5, #0
	movs r1, #2
	bl sub_082E8B98
	b .L082E8FE8
.L082E8EAA:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E8EC4
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #129
	b .L082E8ECE
	movs r5, #12
	lsls r0, r0, #12
.L082E8EC4:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #128
.L082E8ECE:
	str r1, [r5, #64]
	adds r7, r0, #0
	ldr r0, [pc, #80]
	ldr r4, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r4, r0
	cmp r0, #0
	bge .L082E8EE0
	negs r0, r0
.L082E8EE0:
	asrs r0, r0, #8
	cmp r0, #60
	ble .L082E8F36
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #8
	str r0, [sp, #4]
	subs r0, #24
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8F10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E8F10:
	ldrb r2, [r7, #0]
	cmp r2, #1
	bne .L082E8F28
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
	b .L082E8F56
	movs r5, #12
	lsls r0, r0, #12
.L082E8F28:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082E8F56
.L082E8F36:
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L082E8F4A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8F56
.L082E8F4A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8F56:
	ldrb r0, [r7, #0]
	ldr r6, [pc, #88]
	cmp r0, #0
	bne .L082E8F62
	movs r6, #128
	lsls r6, r6, #6
.L082E8F62:
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8FA2
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8FA2
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8FBC
.L082E8FA2:
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082E8FE2
	movs r0, r0
	b .L082E8FB8
	.2byte 0xffff @ .raw
.L082E8FB8:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082E8FBC:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
	ldrb r7, [r7, #0]
	cmp r7, #1
	bne .L082E8FD4
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8FDC
.L082E8FD4:
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8FDC:
	adds r0, r4, #0
	bl sub_080006AC
.L082E8FE2:
	adds r0, r4, #0
	bl sub_08000704
.L082E8FE8:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9012
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9012
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E9012:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E901C
	.thumb_func
sub_082E901C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082E903C
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	movs r0, #11
	bl sub_083189D0
.L082E903C:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E9054
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E905A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E9054:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E905A:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082E9070
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082E907C
.L082E9070:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082E907C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E90A4
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E909C
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E90A4
.L082E909C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E90A4:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E90BE
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E90BE
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E90BE:
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E90E2
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E90E2
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E90E2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E90E8
	.thumb_func
sub_082E90E8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082E90FE
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E90FE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9116
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082E9122
.L082E9116:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082E9122:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9162
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9146
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
	b .L082E9162
.L082E9146:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E915A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9162
.L082E915A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9162:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9168
	.thumb_func
sub_082E9168:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #4
	beq .L082E919C
	movs r5, #0
	movs r0, #4
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldr r1, [pc, #56]
	adds r0, r4, #0
	bl sub_0800075C
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	adds r1, r6, #0
	adds r1, #224
	movs r0, #255
	strh r0, [r1, #0]
.L082E919C:
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #24]
	adds r0, r4, #0
	bl sub_0800075C
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E91C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082E91C8
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E91C0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082E91C8:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E91DA
	adds r0, r6, #0
	bl sub_082EA2C0
.L082E91DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E91E0
	.thumb_func
sub_082E91E0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082E91F6
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E91F6:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E920E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082E921A
.L082E920E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082E921A:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082E9248
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9240
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9248
.L082E9240:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9250
	.thumb_func
sub_082E9250:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082E9268
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9268:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9282
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	movs r0, #128
	b .L082E9292
.L082E9282:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082E9292:
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
	bne .L082E92C4
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E92C4:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E92E4
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082E92EC
.L082E92E4:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082E92EC:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #1
	bls .L082E9314
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E930C
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9314
.L082E930C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9314:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E931C
	.thumb_func
sub_082E931C:
	push {r4, lr}
	ldr r4, [pc, #36]
	ldr r3, [pc, #36]
	ldrh r2, [r3, #0]
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #16
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #24
	orrs r0, r2
	asrs r1, r0, #31
	str r0, [r4, #0]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058B4
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082E934C
	.thumb_func
sub_082E934C:
	push {r4, lr}
	ldr r4, [pc, #32]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	bl __muldi3
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x030058B4
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

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

	.thumb
	.align 1, 0
	.global sub_082E960C
	.thumb_func
sub_082E960C:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082E961A
	movs r1, #1
.L082E961A:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9620
	.thumb_func
sub_082E9620:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #14
	bhi .L082E96E4
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r3, #52]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r0, [sp, #500]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r2, [sp, #644]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r3, [sp, #212]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #0]
	b .L082E966E
	ldr r3, [sp, #804]
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #8]
.L082E966E:
	str r1, [r0, #0]
	movs r0, #0
	strh r0, [r2, #26]
	b .L082E96E4
	movs r0, r0
	ldr r4, [sp, #452]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r5, [sp, #100]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r5, [sp, #724]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r6, [sp, #180]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r6, [sp, #740]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r7, [sp, #164]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	ldr r7, [sp, #916]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	add r0, pc, #676
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E96E2
	add r1, pc, #644
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082E96E2:
	str r0, [r1, #0]
.L082E96E4:
	bx lr
	.2byte 0x0000
	.4byte 0x082EA129

	.thumb
	.align 1, 0
	.global sub_082E96EC
	.thumb_func
sub_082E96EC:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #8
	beq .L082E972C
	cmp r0, #8
	bgt .L082E9702
	cmp r0, #7
	beq .L082E9716
	b .L082E9742
.L082E9702:
	cmp r0, #41
	bne .L082E9742
	ldrb r0, [r4, #7]
	cmp r0, #1
	beq .L082E9742
	adds r0, r4, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9742
.L082E9716:
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082E9724
	adds r0, r4, #0
	movs r1, #13
	bl sub_082E9620
.L082E9724:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082E9740
.L082E972C:
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082E973A
	adds r0, r4, #0
	movs r1, #13
	bl sub_082E9620
.L082E973A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082E9740:
	strb r0, [r1, #0]
.L082E9742:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9748
	.thumb_func
sub_082E9748:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #11
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #82
	ldr r0, [pc, #44]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r4, #68]
	str r2, [r4, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #192
	lsls r0, r0, #3
	str r0, [r4, #76]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082E97B4
	cmp r0, #1
	bgt .L082E97A0
	cmp r0, #0
	beq .L082E97AA
	b .L082E97D2
	movs r0, r0
	.2byte 0xfff8 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082E97A0:
	cmp r0, #2
	beq .L082E97C0
	cmp r0, #3
	beq .L082E97CA
	b .L082E97D2
.L082E97AA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #150
	lsls r0, r0, #3
	b .L082E97D0
.L082E97B4:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #0]
	b .L082E97D0
	lsls r4, r0, #29
	movs r0, r0
.L082E97C0:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #255
	lsls r0, r0, #3
	b .L082E97D0
.L082E97CA:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #92]
.L082E97D0:
	strh r0, [r1, #0]
.L082E97D2:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	bl sub_082E931C
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E9804
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082E9804:
	adds r0, r4, #0
	adds r0, #84
	movs r1, #250
	lsls r1, r1, #1
	strh r1, [r0, #0]
	adds r0, #143
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9834
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #20]
	movs r2, #16
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082E9848
	lsrs r4, r4, #4
	movs r0, r0
	add r4, pc, #640
	lsrs r5, r3, #32
.L082E9834:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #17
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082E9848:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082E9858
	subs r1, #139
	strh r0, [r1, #0]
.L082E9858:
	movs r0, #0
	strb r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082E9620
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081DA4A0
	.4byte 0x082E96ED

	.thumb
	.align 1, 0
	.global sub_082E987C
	.thumb_func
sub_082E987C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E9894
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9894:
	ldr r2, [pc, #72]
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	subs r0, r1, r0
	adds r4, r2, #0
	cmp r0, #0
	bge .L082E98A4
	negs r0, r0
.L082E98A4:
	asrs r0, r0, #8
	cmp r0, #149
	bgt .L082E98FC
	adds r0, r5, #0
	movs r1, #0
	bl sub_082E9384
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E98FC
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #70
	ble .L082E98FC
	bl sub_082E934C
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L082E98EE
	ldrb r4, [r4, #7]
	cmp r4, #7
	bne .L082E98E4
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E9620
	b .L082E98F6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E98E4:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082E9620
	b .L082E98F6
.L082E98EE:
	adds r0, r5, #0
	movs r1, #12
	bl sub_082E9620
.L082E98F6:
	movs r0, #0
	strh r0, [r5, #26]
	b .L082E9A2C
.L082E98FC:
	movs r2, #34
	ldrsh r0, [r5, r2]
	ldr r4, [pc, #44]
	ldr r1, [r5, #52]
	cmp r0, #140
	ble .L082E9960
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082E9912
	negs r0, r0
.L082E9912:
	asrs r0, r0, #8
	cmp r0, #99
	bgt .L082E9960
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9938
	adds r0, r5, #0
	adds r0, #100
	movs r1, #16
	bl sub_08000680
	ldr r0, [pc, #4]
	b .L082E9946
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe0c @ .raw
	.2byte 0xffff @ .raw
.L082E9938:
	adds r0, r5, #0
	adds r0, #100
	movs r1, #17
	bl sub_08000680
	movs r0, #250
	lsls r0, r0, #1
.L082E9946:
	str r0, [r5, #64]
	ldr r0, [pc, #16]
	str r0, [r5, #68]
	adds r0, r5, #0
	movs r1, #9
	bl sub_082E9620
	movs r0, #0
	strh r0, [r5, #34]
	b .L082E9A2C
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082E9960:
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082E996A
	negs r0, r0
.L082E996A:
	asrs r0, r0, #8
	cmp r0, #75
	ble .L082E9A06
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9990
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
	ldr r0, [pc, #4]
	b .L082E99A0
	movs r0, r0
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
.L082E9990:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	movs r0, #128
	lsls r0, r0, #1
.L082E99A0:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082E99C0
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #75
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	b .L082E99D4
.L082E99C0:
	cmp r4, #0
	ble .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #8
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #75
.L082E99D4:
	str r2, [sp, #4]
	movs r2, #16
	negs r2, r2
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	b .L082E9A2C
.L082E9A06:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9A24
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
	b .L082E9A2C
.L082E9A24:
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
.L082E9A2C:
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #50
	ble .L082E9A58
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E9A4C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E9A52
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E9A4C:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E9A52:
	strb r0, [r1, #0]
	movs r0, #0
	strh r0, [r5, #28]
.L082E9A58:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #249
	bgt .L082E9A6C
	adds r0, r1, #1
	strh r0, [r5, #26]
.L082E9A6C:
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #249
	bgt .L082E9A7A
	adds r0, r1, #1
	strh r0, [r5, #34]
.L082E9A7A:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9A96
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9A96
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9A96:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9AA0
	.thumb_func
sub_082E9AA0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082E9AB6
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9AB6:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9ACE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082E9ADA
.L082E9ACE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
.L082E9ADA:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E9AFC
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E9AFC
	adds r0, r5, #0
	movs r1, #23
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E9AFC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9B10
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082E9B10:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9B2C
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9B2C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9B2C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9B34
	.thumb_func
sub_082E9B34:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #12
	beq .L082E9B4A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9B4A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9B62
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082E9B6E
.L082E9B62:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
.L082E9B6E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E9B90
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E9B90
	adds r0, r5, #0
	movs r1, #24
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E9B90:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9BA4
	adds r0, r5, #0
	movs r1, #5
	bl sub_082E9620
.L082E9BA4:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9BC0
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9BC0
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9BC0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9BC8
	.thumb_func
sub_082E9BC8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082E9BF0
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #30]
.L082E9BF0:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9C08
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #19
	bl sub_08000680
	b .L082E9C14
.L082E9C08:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #18
	bl sub_08000680
.L082E9C14:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9C4C
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9C38
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9C4C
.L082E9C38:
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082E9C4C:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9C68
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9C68
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9C68:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9C70
	.thumb_func
sub_082E9C70:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082E9C98
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #30]
.L082E9C98:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9CB0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	b .L082E9CBC
.L082E9CB0:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
.L082E9CBC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9CF4
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9CE0
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9CF4
.L082E9CE0:
	adds r0, r5, #0
	movs r1, #25
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082E9CF4:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9D10
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9D10
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9D10:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9D18
	.thumb_func
sub_082E9D18:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082E9D32
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #30]
.L082E9D32:
	movs r0, #54
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9D44
	movs r0, #54
	bl sub_083189D0
.L082E9D44:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9D5C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082E9D68
.L082E9D5C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082E9D68:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9D92
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9D8C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
	b .L082E9D92
.L082E9D8C:
	adds r0, r4, #0
	bl sub_080006AC
.L082E9D92:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9DAE
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9DAE
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9DAE:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9DB4
	.thumb_func
sub_082E9DB4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082E9DD0
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #53
	bl sub_083189D0
.L082E9DD0:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9DE8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082E9DF4
.L082E9DE8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082E9DF4:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9E08
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E9620
.L082E9E08:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9E24
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9E24
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9E2C
	.thumb_func
sub_082E9E2C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082E9E46
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #30]
.L082E9E46:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9E5E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082E9E6A
.L082E9E5E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
.L082E9E6A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9E94
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082E9E8E
	adds r0, r5, #0
	movs r1, #8
	bl sub_082E9620
	b .L082E9E94
.L082E9E8E:
	adds r0, r4, #0
	bl sub_080006AC
.L082E9E94:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9EB0
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9EB0
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9EB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9EB8
	.thumb_func
sub_082E9EB8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082E9ECE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9ECE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9EE6
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #27
	bl sub_08000680
	b .L082E9EF2
.L082E9EE6:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #26
	bl sub_08000680
.L082E9EF2:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9F06
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082E9F06:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082E9F22
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082E9F22
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082E9F22:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9F28
	.thumb_func
sub_082E9F28:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #9
	beq .L082E9F46
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #15
	bl sub_083189D0
.L082E9F46:
	ldr r1, [r5, #68]
	movs r0, #1
	movs r2, #64
	bl sub_083170A0
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r4, r1, r0
	str r4, [r5, #56]
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082E9F6E
	ldr r0, [r5, #52]
	movs r3, #75
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	b .L082E9F80
.L082E9F6E:
	cmp r2, #0
	ble .L082E9F9C
	ldr r0, [r5, #52]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #75
.L082E9F80:
	str r1, [sp, #4]
	movs r1, #16
	negs r1, r1
	str r1, [sp, #8]
	adds r1, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9F9C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E9F9C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9FB4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082E9FC0
.L082E9FB4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082E9FC0:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [r5, #68]
	cmp r0, #0
	blt .L082E9FD4
	adds r0, r5, #0
	movs r1, #10
	bl sub_082E9620
.L082E9FD4:
	adds r0, r5, #0
	bl sub_082E952C
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9FE4
	.thumb_func
sub_082E9FE4:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #10
	beq .L082E9FFC
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9FFC:
	ldr r1, [r5, #68]
	movs r0, #1
	movs r2, #64
	bl sub_083170A0
	str r0, [r5, #68]
	ldr r1, [r5, #56]
	adds r4, r1, r0
	str r4, [r5, #56]
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082EA024
	ldr r0, [r5, #52]
	movs r3, #75
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	b .L082EA036
.L082EA024:
	cmp r2, #0
	ble .L082EA052
	ldr r0, [r5, #52]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #75
.L082EA036:
	str r1, [sp, #4]
	movs r1, #16
	negs r1, r1
	str r1, [sp, #8]
	adds r1, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA052
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EA052:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA06A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EA076
.L082EA06A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EA076:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EA098
	adds r0, r5, #0
	movs r1, #11
	bl sub_082E9620
.L082EA098:
	adds r0, r5, #0
	bl sub_082E952C
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA0A8
	.thumb_func
sub_082EA0A8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #11
	beq .L082EA0BE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EA0BE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA0D6
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EA0E2
.L082EA0D6:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EA0E2:
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA104
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082EA104:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082EA120
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082EA120
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082EA120:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA128
	.thumb_func
sub_082EA128:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #13
	beq .L082EA13E
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EA13E:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA156
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
	b .L082EA162
.L082EA156:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
.L082EA162:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082EA17C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E9620
.L082EA17C:
	adds r0, r5, #0
	bl sub_082E952C
	cmp r0, #1
	bne .L082EA198
	adds r0, r5, #0
	bl sub_082E960C
	cmp r0, #1
	bne .L082EA198
	adds r0, r5, #0
	movs r1, #15
	bl sub_082E9620
.L082EA198:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA1A0
	.thumb_func
sub_082EA1A0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #15
	beq .L082EA224
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
	ldr r1, [pc, #116]
	adds r0, r5, #0
	bl sub_0800075C
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r2, #0
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r1, #160
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #160
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #15
	bl sub_083081B0
	ldr r0, [r6, #52]
	ldr r1, [pc, #80]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #76]
	adds r1, r1, r2
	movs r2, #30
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r4, #144
	lsls r4, r4, #4
	adds r0, r0, r4
	ldr r1, [r6, #56]
	movs r2, #240
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #45
	bl sub_083081B0
	ldr r0, [r6, #52]
	adds r0, r0, r4
	ldr r1, [r6, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	movs r2, #60
	bl sub_083081B0
.L082EA224:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA24C
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EA258
	.2byte 0xffff @ .raw
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xe700 @ b.n 0x82ea048
	.2byte 0xffff @ .raw
	.2byte 0xf100, 0xffff @ bl 0x83eb24a
.L082EA24C:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EA258:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA270
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082EA270:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FC651

	.thumb
	.align 1, 0
	.global sub_082EA27C
	.thumb_func
sub_082EA27C:
	movs r1, #0
	movs r2, #0
	movs r3, #1
	ldr r0, [pc, #20]
.L082EA284:
	strb r3, [r0, #5]
	strb r2, [r0, #1]
	strb r2, [r0, #4]
	strb r1, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #8
	bne .L082EA284
	bx lr
	.2byte 0x0000
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082EA29C
	.thumb_func
sub_082EA29C:
	.2byte 0x1c03 @ adds r3, r0, #0
	.2byte 0x2200 @ movs r2, #0
	.2byte 0x4903 @ ldr r1, [pc, #12]
	.2byte 0x7848 @ ldrb r0, [r1, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd105 @ bne.n 0x82ea2b4
	.2byte 0x6019 @ str r1, [r3, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe007 @ b.n 0x82ea2be
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x31f8 @ adds r1, #248
	.2byte 0x3201 @ adds r2, #1
	.2byte 0x2a08 @ cmp r2, #8
	.2byte 0xd1f2 @ bne.n 0x82ea2a2
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x4770 @ bx lr

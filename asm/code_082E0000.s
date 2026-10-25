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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8FA2
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	movs r2, #1
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9A2C
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_OnSlope
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

	.thumb
	.align 1, 0
	.global sub_082EA2C0
	.thumb_func
sub_082EA2C0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #1]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080005D4
	adds r4, #224
	movs r0, #255
	strh r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EA2DC
	.thumb_func
sub_082EA2DC:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0xb081 @ sub sp, #4
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x4819 @ ldr r0, [pc, #100]
	.2byte 0x1835 @ adds r5, r6, r0
	.2byte 0x7868 @ ldrb r0, [r5, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd048 @ beq.n 0x82ea386
	.2byte 0x7928 @ ldrb r0, [r5, #4]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd145 @ bne.n 0x82ea386
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30d8 @ adds r0, #216
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd005 @ beq.n 0x82ea310
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30dc @ adds r0, #220
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf030, 0xfa6c @ bl 0x831a7e8
	.2byte 0x6b68 @ ldr r0, [r5, #52]
	.2byte 0x1200 @ asrs r0, r0, #8
	.2byte 0x6ba9 @ ldr r1, [r5, #56]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x4b0e @ ldr r3, [pc, #56]
	.2byte 0x689a @ ldr r2, [r3, #8]
	.2byte 0x3278 @ adds r2, #120
	.2byte 0x68db @ ldr r3, [r3, #12]
	.2byte 0x3350 @ adds r3, #80
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3454 @ adds r4, #84
	.2byte 0x2700 @ movs r7, #0
	.2byte 0x5fe4 @ ldrsh r4, [r4, r7]
	.2byte 0x9400 @ str r4, [sp, #0]
	.2byte 0xf516, 0xfc42 @ bl 0x8000bb4
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd010 @ beq.n 0x82ea358
	.2byte 0x7928 @ ldrb r0, [r5, #4]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd124 @ bne.n 0x82ea386
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x6801 @ ldr r1, [r0, #0]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf030, 0xfa50 @ bl 0x831a7e8
	.2byte 0x6e28 @ ldr r0, [r5, #96]
	.2byte 0xf011, 0xfb57 @ bl 0x82fb9fc
	.2byte 0xe01a @ b.n 0x82ea386
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x38cc @ subs r0, #204
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x34e0 @ adds r4, #224
	.2byte 0x8821 @ ldrh r1, [r4, #0]
	.2byte 0x4810 @ ldr r0, [pc, #64]
	.2byte 0xf02c, 0xfdca @ bl 0x8316ef8
	.2byte 0x8802 @ ldrh r2, [r0, #0]
	.2byte 0x8841 @ ldrh r1, [r0, #2]
	.2byte 0x1c10 @ adds r0, r2, #0
	.2byte 0xf017, 0xfe75 @ bl 0x8302058
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd108 @ bne.n 0x82ea386
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0x28ff @ cmp r0, #255
	.2byte 0xd002 @ beq.n 0x82ea380
	.2byte 0x8820 @ ldrh r0, [r4, #0]
	.2byte 0xf02c, 0xfad0 @ bl 0x8316920
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf7ff, 0xff9d @ bl 0x82ea2c0
	.2byte 0x36f8 @ adds r6, #248
	.2byte 0x2701 @ movs r7, #1
	.2byte 0x44b8 @ add r8, r7
	.2byte 0x4640 @ mov r0, r8
	.2byte 0x2807 @ cmp r0, #7
	.2byte 0xd9ab @ bls.n 0x82ea2ea
	.2byte 0xb001 @ add sp, #4
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_082EA3A4
	.thumb_func
sub_082EA3A4:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0x2700 @ movs r7, #0
	.2byte 0x4813 @ ldr r0, [pc, #76]
	.2byte 0x4680 @ mov r8, r0
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x4813 @ ldr r0, [pc, #76]
	.2byte 0x1835 @ adds r5, r6, r0
	.2byte 0x7868 @ ldrb r0, [r5, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd029 @ beq.n 0x82ea410
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3464 @ adds r4, #100
	.2byte 0x6b69 @ ldr r1, [r5, #52]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x6baa @ ldr r2, [r5, #56]
	.2byte 0x1212 @ asrs r2, r2, #8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf017, 0xfe6d @ bl 0x83020a8
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd017 @ beq.n 0x82ea404
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf915 @ bl 0x8000604
	.2byte 0x6b69 @ ldr r1, [r5, #52]
	.2byte 0x1209 @ asrs r1, r1, #8
	.2byte 0x4642 @ mov r2, r8
	.2byte 0x6890 @ ldr r0, [r2, #8]
	.2byte 0x1a09 @ subs r1, r1, r0
	.2byte 0x6baa @ ldr r2, [r5, #56]
	.2byte 0x1212 @ asrs r2, r2, #8
	.2byte 0x4643 @ mov r3, r8
	.2byte 0x68d8 @ ldr r0, [r3, #12]
	.2byte 0x1a12 @ subs r2, r2, r0
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x303c @ adds r0, #60
	.2byte 0x7803 @ ldrb r3, [r0, #0]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf945 @ bl 0x8000684
	.2byte 0xe006 @ b.n 0x82ea40a
	.2byte 0x38cc @ subs r0, #204
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf516, 0xf901 @ bl 0x800060c
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfffc @ bl 0x8000408
	.2byte 0x36f8 @ adds r6, #248
	.2byte 0x3701 @ adds r7, #1
	.2byte 0x2f08 @ cmp r7, #8
	.2byte 0xd1cc @ bne.n 0x82ea3b2
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA424
	.thumb_func
sub_082EA424:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #216
.L082EA42C:
	str r2, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #8
	bne .L082EA42C
	bx lr
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082EA43C
	.thumb_func
sub_082EA43C:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x2300 @ movs r3, #0
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x1c02 @ adds r2, r0, #0
	.2byte 0x32d8 @ adds r2, #216
	.2byte 0x8910 @ ldrh r0, [r2, #8]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd104 @ bne.n 0x82ea458
	.2byte 0x6011 @ str r1, [r2, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe006 @ b.n 0x82ea462
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x32f8 @ adds r2, #248
	.2byte 0x3301 @ adds r3, #1
	.2byte 0x2b08 @ cmp r3, #8
	.2byte 0xd1f3 @ bne.n 0x82ea448
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1

	.thumb
	.align 1, 0
	.global sub_082EA468
	.thumb_func
sub_082EA468:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x1c0d @ adds r5, r1, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x1c03 @ adds r3, r0, #0
	.2byte 0x33e0 @ adds r3, #224
	.2byte 0x1c02 @ adds r2, r0, #0
	.2byte 0x7850 @ ldrb r0, [r2, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd008 @ beq.n 0x82ea490
	.2byte 0x8818 @ ldrh r0, [r3, #0]
	.2byte 0x42a0 @ cmp r0, r4
	.2byte 0xd105 @ bne.n 0x82ea490
	.2byte 0x602a @ str r2, [r5, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe008 @ b.n 0x82ea49c
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x33f8 @ adds r3, #248
	.2byte 0x32f8 @ adds r2, #248
	.2byte 0x3101 @ adds r1, #1
	.2byte 0x2907 @ cmp r1, #7
	.2byte 0xd9ee @ bls.n 0x82ea478
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA4A4
	.thumb_func
sub_082EA4A4:
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
	.4byte 0x030058BC
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082EA4D4
	.thumb_func
sub_082EA4D4:
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
	.4byte 0x030058BC
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_082EA50C
	.thumb_func
sub_082EA50C:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EA5E4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EA52C
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EA540
.L082EA52C:
	cmp r3, #0
	beq .L082EA532
	b .L082EA6A8
.L082EA532:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EA540
	b .L082EA6A8
.L082EA540:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EA54E
	b .L082EA6A8
.L082EA54E:
	movs r7, #216
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EA55A
	b .L082EA6A8
.L082EA55A:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EA5A4
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA56C
	b .L082EA69C
.L082EA56C:
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA572:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EA58E
	b .L082EA6A8
.L082EA58E:
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA572
	b .L082EA69C
	movs r5, #12
	lsls r0, r0, #12
	str r4, [sp, #0]
	.2byte 0xffff @ .raw
.L082EA5A4:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA5B4:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EA5B4
	b .L082EA69C
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082EA5E4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EA5FC
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EA60C
.L082EA5FC:
	cmp r3, #0
	bne .L082EA6A8
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EA6A8
.L082EA60C:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EA6A8
	movs r7, #216
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EA6A8
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EA668
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA638:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA638
	b .L082EA69C
	movs r5, #12
	lsls r0, r0, #12
	str r4, [sp, #0]
	.2byte 0xffff @ .raw
.L082EA668:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA678:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EA678
.L082EA69C:
	movs r0, #1
	b .L082EA6AA
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082EA6A8:
	movs r0, #0
.L082EA6AA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA6B4
	.thumb_func
sub_082EA6B4:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x3056 @ adds r0, #86
	.2byte 0x7801 @ ldrb r1, [r0, #0]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x1600 @ asrs r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd16 @ ble.n 0x82ea6f4
	.2byte 0x2007 @ movs r0, #7
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2805 @ cmp r0, #5
	.2byte 0xdd05 @ ble.n 0x82ea6da
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x210e @ movs r1, #14
	.2byte 0xf516, 0xf842 @ bl 0x800075c
	.2byte 0xe004 @ b.n 0x82ea6e4
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0xf516, 0xf83c @ bl 0x800075c
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3156 @ adds r1, #86
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0xe006 @ b.n 0x82ea6fe
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x4925 @ ldr r1, [pc, #148]
	.2byte 0xf516, 0xf82f @ bl 0x800075c
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30e6 @ adds r0, #230
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd172 @ bne.n 0x82ea7ee
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30e8 @ adds r0, #232
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2805 @ cmp r0, #5
	.2byte 0xd001 @ beq.n 0x82ea716
	.2byte 0x2809 @ cmp r0, #9
	.2byte 0xd14a @ bne.n 0x82ea7ac
	.2byte 0x481f @ ldr r0, [pc, #124]
	.2byte 0x8941 @ ldrh r1, [r0, #10]
	.2byte 0x2902 @ cmp r1, #2
	.2byte 0xd146 @ bne.n 0x82ea7ac
	.2byte 0x79c0 @ ldrb r0, [r0, #7]
	.2byte 0x2804 @ cmp r0, #4
	.2byte 0xd143 @ bne.n 0x82ea7ac
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf000, 0xf870 @ bl 0x82ea80c
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x2200 @ movs r2, #0
	.2byte 0xf01d, 0xfd3d @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x22a0 @ movs r2, #160
	.2byte 0x0112 @ lsls r2, r2, #4
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4b15 @ ldr r3, [pc, #84]
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x220f @ movs r2, #15
	.2byte 0xf01d, 0xfd33 @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x4d13 @ ldr r5, [pc, #76]
	.2byte 0x1940 @ adds r0, r0, r5
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4a13 @ ldr r2, [pc, #76]
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x221e @ movs r2, #30
	.2byte 0xf01d, 0xfd2a @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x23a0 @ movs r3, #160
	.2byte 0x015b @ lsls r3, r3, #5
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4d0f @ ldr r5, [pc, #60]
	.2byte 0x1949 @ adds r1, r1, r5
	.2byte 0x222d @ movs r2, #45
	.2byte 0xf01d, 0xfd20 @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x21a0 @ movs r1, #160
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4a0b @ ldr r2, [pc, #44]
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x223c @ movs r2, #60
	.2byte 0xf01d, 0xfd16 @ bl 0x83081b0
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x32ec @ adds r2, #236
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x315a @ adds r1, #90
	.2byte 0xe019 @ b.n 0x82ea7c2
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf100, 0xffff @ bl 0x83eb79e
	.2byte 0xc900 @ .raw ldmia r1!, {}
	.2byte 0xffff @ .raw
	.2byte 0xe700 @ b.n 0x82ea5a8
	.2byte 0xffff @ .raw
	.2byte 0xd300 @ bcc.n 0x82ea7ac
	.2byte 0xffff @ .raw
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x32ec @ adds r2, #236
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x315a @ adds r1, #90
	.2byte 0x79e3 @ ldrb r3, [r4, #7]
	.2byte 0x2b05 @ cmp r3, #5
	.2byte 0xd103 @ bne.n 0x82ea7c2
	.2byte 0x880d @ ldrh r5, [r1, #0]
	.2byte 0x8813 @ ldrh r3, [r2, #0]
	.2byte 0x1ae8 @ subs r0, r5, r3
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x880d @ ldrh r5, [r1, #0]
	.2byte 0x8812 @ ldrh r2, [r2, #0]
	.2byte 0x1aa8 @ subs r0, r5, r2
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdc01 @ bgt.n 0x82ea7d4
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3156 @ adds r1, #86
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x5608 @ ldrsb r0, [r1, r0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd101 @ bne.n 0x82ea7e4
	.2byte 0x2007 @ movs r0, #7
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf01c, 0xfb1f @ bl 0x8306e28
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe000 @ b.n 0x82ea7f0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA7F8
	.thumb_func
sub_082EA7F8:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EA806
	movs r1, #1
.L082EA806:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA80C
	.thumb_func
sub_082EA80C:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #14
	bhi .L082EA8A2
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r0, [r3, #56]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EA89A
	add r1, sp, #836
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EA89A
	add r4, sp, #900
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EA89A
	add r5, sp, #788
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EA89A
	add r6, sp, #692
	lsrs r6, r5, #32
	adds r0, r2, #0
	adds r0, #200
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	movs r0, #2
	strh r0, [r2, #10]
	b .L082EA8A2
	movs r0, r0
	add r7, sp, #372
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EA89A
	add sp, #308
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082EA8A2
	movs r0, r0
	sub sp, #356
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082EA8A2
	movs r0, r0
	.2byte 0xb19d @ .raw cbz r5, 0x82ea8ba
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #8]
.L082EA89A:
	str r0, [r1, #0]
	ldr r1, [pc, #8]
	movs r0, #0
	strh r0, [r1, #10]
.L082EA8A2:
	bx lr
	.4byte 0x082EB265
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082EA8AC
	.thumb_func
sub_082EA8AC:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #10
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
	movs r0, #8
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
	adds r0, r4, #0
	bl sub_08306E28
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EA918
	cmp r0, #1
	bgt .L082EA904
	cmp r0, #0
	beq .L082EA90E
	b .L082EA936
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EA904:
	cmp r0, #2
	beq .L082EA922
	cmp r0, #3
	beq .L082EA92C
	b .L082EA936
.L082EA90E:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #130
	lsls r0, r0, #3
	b .L082EA934
.L082EA918:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #150
	lsls r0, r0, #3
	b .L082EA934
.L082EA922:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #170
	lsls r0, r0, #3
	b .L082EA934
.L082EA92C:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #195
	lsls r0, r0, #3
.L082EA934:
	strh r0, [r1, #0]
.L082EA936:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	bl sub_082EA4A4
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EA968
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082EA968:
	adds r0, r4, #0
	adds r0, #84
	movs r1, #250
	lsls r1, r1, #2
	strh r1, [r0, #0]
	adds r0, #143
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EA994
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #16
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EA9A8
	lsrs r0, r2, #21
	lsrs r4, r3, #32
.L082EA994:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #48]
	movs r2, #17
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EA9A8:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EA9B8
	subs r1, #139
	strh r0, [r1, #0]
.L082EA9B8:
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082EA80C
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081C0D50

	.thumb
	.align 1, 0
	.global sub_082EA9D0
	.thumb_func
sub_082EA9D0:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EA9E8
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EA9E8:
	ldr r4, [pc, #104]
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EA9F6
	negs r0, r0
.L082EA9F6:
	asrs r0, r0, #8
	cmp r0, #169
	bgt .L082EAAEC
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EA50C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EAAEC
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082EAAEC
	bl sub_082EA4D4
	adds r6, r0, #0
	movs r0, #1
	ands r6, r0
	ldr r1, [r5, #56]
	ldr r0, [r4, #56]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAA2A
	negs r0, r0
.L082EAA2A:
	asrs r0, r0, #8
	cmp r0, #39
	bgt .L082EAA58
	ldrb r2, [r4, #7]
	cmp r2, #7
	bne .L082EAA58
	ldr r1, [r5, #52]
	ldr r0, [r4, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAA42
	negs r0, r0
.L082EAA42:
	asrs r0, r0, #8
	cmp r0, #99
	ble .L082EAAE6
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EA80C
	b .L082EAAE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EAA58:
	ldr r0, [pc, #44]
	ldr r1, [r0, #56]
	adds r3, r0, #0
	ldr r2, [r5, #52]
	ldr r4, [r5, #56]
	cmp r4, r1
	ble .L082EAAB2
	ldr r0, [r3, #52]
	subs r0, r2, r0
	cmp r0, #0
	bge .L082EAA70
	negs r0, r0
.L082EAA70:
	asrs r0, r0, #8
	cmp r0, #119
	ble .L082EAA8C
	ldrb r0, [r3, #7]
	cmp r0, #3
	beq .L082EAA8C
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EA80C
	b .L082EAAE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EAA8C:
	ldr r0, [r3, #56]
	cmp r4, r0
	ble .L082EAAB2
	ldr r0, [r3, #52]
	subs r0, r2, r0
	cmp r0, #0
	bge .L082EAA9C
	negs r0, r0
.L082EAA9C:
	asrs r0, r0, #8
	cmp r0, #119
	bgt .L082EAAB2
	ldrb r1, [r3, #7]
	cmp r1, #3
	beq .L082EAAB2
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EA80C
	b .L082EAAE6
.L082EAAB2:
	ldr r0, [r3, #52]
	subs r0, r2, r0
	cmp r0, #0
	bge .L082EAABC
	negs r0, r0
.L082EAABC:
	asrs r0, r0, #8
	cmp r0, #99
	bgt .L082EAAD0
	cmp r6, #1
	bne .L082EAADE
	adds r0, r5, #0
	movs r1, #6
	bl sub_082EA80C
	b .L082EAAE6
.L082EAAD0:
	cmp r6, #1
	bne .L082EAADE
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EA80C
	b .L082EAAE6
.L082EAADE:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EA80C
.L082EAAE6:
	movs r0, #0
	strh r0, [r5, #26]
	b .L082EAC5E
.L082EAAEC:
	ldr r6, [pc, #120]
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAAFA
	negs r0, r0
.L082EAAFA:
	asrs r0, r0, #8
	cmp r0, #45
	bgt .L082EAB02
	b .L082EAC28
.L082EAB02:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EAB6C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
	movs r0, #125
	negs r0, r0
	str r0, [r5, #64]
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAB2A
	negs r0, r0
.L082EAB2A:
	asrs r0, r0, #8
	cmp r0, #120
	ble .L082EAB36
	movs r0, #200
	negs r0, r0
	str r0, [r5, #64]
.L082EAB36:
	ldr r1, [r5, #56]
	ldr r0, [r6, #56]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAB42
	negs r0, r0
.L082EAB42:
	asrs r0, r0, #8
	cmp r0, #39
	bgt .L082EABC0
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAB54
	negs r0, r0
.L082EAB54:
	asrs r0, r0, #8
	cmp r0, #99
	bgt .L082EABC0
	ldrb r6, [r6, #7]
	cmp r6, #7
	bne .L082EABC0
	movs r0, #170
	negs r0, r0
	b .L082EABBE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EAB6C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	movs r0, #125
	str r0, [r5, #64]
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAB88
	negs r0, r0
.L082EAB88:
	asrs r0, r0, #8
	cmp r0, #120
	ble .L082EAB92
	movs r0, #200
	str r0, [r5, #64]
.L082EAB92:
	ldr r1, [r5, #56]
	ldr r0, [r6, #56]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EAB9E
	negs r0, r0
.L082EAB9E:
	asrs r0, r0, #8
	cmp r0, #39
	bgt .L082EABC0
	ldr r1, [r5, #52]
	ldr r0, [r6, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EABB0
	negs r0, r0
.L082EABB0:
	asrs r0, r0, #8
	cmp r0, #99
	bgt .L082EABC0
	ldrb r6, [r6, #7]
	cmp r6, #7
	bne .L082EABC0
	movs r0, #170
.L082EABBE:
	str r0, [r5, #64]
.L082EABC0:
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082EABE6
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
	b .L082EAC00
.L082EABE6:
	cmp r4, #0
	ble .L082EAC5E
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
.L082EAC00:
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EAC5E
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EAC5E
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	b .L082EAC5E
.L082EAC28:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bls .L082EAC3C
	adds r0, r4, #0
	bl sub_080006AC
.L082EAC3C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EAC50
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082EAC58
.L082EAC50:
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
.L082EAC58:
	adds r0, r4, #0
	bl sub_08000704
.L082EAC5E:
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EAC7E
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #30]
.L082EAC7E:
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #90
	ble .L082EACA8
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EAC9C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082EACA2
	movs r5, #12
	lsls r0, r0, #12
.L082EAC9C:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082EACA2:
	strb r0, [r1, #0]
	movs r0, #0
	strh r0, [r5, #28]
.L082EACA8:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082EACBC
	adds r0, r1, #1
	strh r0, [r5, #26]
.L082EACBC:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EACD8
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EACD8
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EACD8:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EACE0
	.thumb_func
sub_082EACE0:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EACF8
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EACF8:
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EAD18
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #30]
.L082EAD18:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EAD32
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	movs r0, #128
	b .L082EAD42
.L082EAD32:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082EAD42:
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EAD74
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EAD74:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EAD98
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082EADA0
.L082EAD98:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082EADA0:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EADBC
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EADBC
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EADBC:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EADC4
	.thumb_func
sub_082EADC4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082EADF8
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
	bne .L082EADF0
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082EADF8
.L082EADF0:
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082EADF8:
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EAE18
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #30]
.L082EAE18:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #9
	bne .L082EAE30
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #3
	beq .L082EAE44
.L082EAE30:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #10
	bne .L082EAE54
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EAE54
.L082EAE44:
	adds r0, r5, #0
	movs r1, #18
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	b .L082EAE76
.L082EAE54:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082EAE76
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EAE76
	adds r0, r5, #0
	movs r1, #18
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EAE76:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EAE8A
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EA80C
.L082EAE8A:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EAEA6
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EAEA6
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EAEA6:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EAEAC
	.thumb_func
sub_082EAEAC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082EAEE0
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
	bne .L082EAED8
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082EAEE0
.L082EAED8:
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082EAEE0:
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EAF00
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #30]
.L082EAF00:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #10
	bne .L082EAF26
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EAF26
	adds r0, r5, #0
	movs r1, #27
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EAF26:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EAF3A
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EA80C
.L082EAF3A:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EAF56
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EAF56
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EAF56:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EAF5C
	.thumb_func
sub_082EAF5C:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c05 @ adds r5, r0, #0
	.2byte 0x7a28 @ ldrb r0, [r5, #8]
	.2byte 0x2804 @ cmp r0, #4
	.2byte 0xd014 @ beq.n 0x82eaf90
	.2byte 0x2004 @ movs r0, #4
	.2byte 0x7228 @ strb r0, [r5, #8]
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3464 @ adds r4, #100
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfb9c @ bl 0x80006ac
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x3030 @ adds r0, #48
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd104 @ bne.n 0x82eaf88
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2109 @ movs r1, #9
	.2byte 0xf515, 0xfb7d @ bl 0x8000680
	.2byte 0xe003 @ b.n 0x82eaf90
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2108 @ movs r1, #8
	.2byte 0xf515, 0xfb78 @ bl 0x8000680
	.2byte 0x8be8 @ ldrh r0, [r5, #30]
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x83e8 @ strh r0, [r5, #30]
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x1400 @ asrs r0, r0, #16
	.2byte 0x2804 @ cmp r0, #4
	.2byte 0xdd08 @ ble.n 0x82eafb0
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x2114 @ movs r1, #20
	.2byte 0xf00d, 0xfd3f @ bl 0x82f8a24
	.2byte 0x6e28 @ ldr r0, [r5, #96]
	.2byte 0xf010, 0xfd12 @ bl 0x82fb9d0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x83e8 @ strh r0, [r5, #30]
	.2byte 0x1c2c @ adds r4, r5, #0
	.2byte 0x3464 @ adds r4, #100
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfbed @ bl 0x8000794
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd10f @ bne.n 0x82eafde
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfbea @ bl 0x8000798
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd10a @ bne.n 0x82eafde
	.2byte 0x4810 @ ldr r0, [pc, #64]
	.2byte 0x8940 @ ldrh r0, [r0, #10]
	.2byte 0x2803 @ cmp r0, #3
	.2byte 0xd106 @ bne.n 0x82eafde
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x2113 @ movs r1, #19
	.2byte 0xf00d, 0xfd26 @ bl 0x82f8a24
	.2byte 0x6e28 @ ldr r0, [r5, #96]
	.2byte 0xf010, 0xfcf9 @ bl 0x82fb9d0
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfb70 @ bl 0x80006c4
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd11e @ bne.n 0x82eb028
	.2byte 0x4908 @ ldr r1, [pc, #32]
	.2byte 0x8948 @ ldrh r0, [r1, #10]
	.2byte 0x2802 @ cmp r0, #2
	.2byte 0xd116 @ bne.n 0x82eb020
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x8148 @ strh r0, [r1, #10]
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x3030 @ adds r0, #48
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd107 @ bne.n 0x82eb010
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x210b @ movs r1, #11
	.2byte 0xf515, 0xfb3c @ bl 0x8000680
	.2byte 0xe006 @ b.n 0x82eb018
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x210a @ movs r1, #10
	.2byte 0xf515, 0xfb34 @ bl 0x8000680
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf515, 0xfb47 @ bl 0x80006ac
	.2byte 0xe003 @ b.n 0x82eb028
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf7ff, 0xfbf2 @ bl 0x82ea80c
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf7ff, 0xfb43 @ bl 0x82ea6b4
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd108 @ bne.n 0x82eb044
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0xf7ff, 0xfbe0 @ bl 0x82ea7f8
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd103 @ bne.n 0x82eb044
	.2byte 0x1c28 @ adds r0, r5, #0
	.2byte 0x210f @ movs r1, #15
	.2byte 0xf7ff, 0xfbe4 @ bl 0x82ea80c
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EB04C
	.thumb_func
sub_082EB04C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EB080
	movs r0, #5
	strb r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB078
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EB080
.L082EB078:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EB080:
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EB0A0
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #30]
.L082EB0A0:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB0B6
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EA80C
.L082EB0B6:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EB0D2
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EB0D2
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EB0D2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EB0D8
	.thumb_func
sub_082EB0D8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082EB118
	movs r4, #0
	movs r0, #6
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #32]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB108
	adds r0, r6, #0
	movs r1, #3
	bl sub_08000680
	b .L082EB110
.L082EB108:
	adds r0, r6, #0
	movs r1, #2
	bl sub_08000680
.L082EB110:
	adds r0, r5, #0
	movs r1, #21
	bl sub_082F8A24
.L082EB118:
	ldrh r0, [r5, #30]
	adds r0, #1
	movs r4, #0
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EB138
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #30]
.L082EB138:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #10
	ble .L082EB156
	adds r0, r5, #0
	movs r1, #21
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r4, [r5, #26]
.L082EB156:
	ldrh r0, [r5, #32]
	adds r0, #1
	strh r0, [r5, #32]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB17A
	movs r1, #32
	ldrsh r0, [r5, r1]
	cmp r0, #150
	ble .L082EB17A
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EA80C
.L082EB17A:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EB196
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EB196
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EB196:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EB19C
	.thumb_func
sub_082EB19C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082EB1DC
	movs r4, #0
	movs r0, #7
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #32]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB1CC
	adds r0, r6, #0
	movs r1, #5
	bl sub_08000680
	b .L082EB1D4
.L082EB1CC:
	adds r0, r6, #0
	movs r1, #4
	bl sub_08000680
.L082EB1D4:
	adds r0, r5, #0
	movs r1, #22
	bl sub_082F8A24
.L082EB1DC:
	ldrh r0, [r5, #30]
	adds r0, #1
	movs r6, #0
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EB1FC
	adds r0, r5, #0
	movs r1, #20
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	strh r6, [r5, #30]
.L082EB1FC:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #7
	bhi .L082EB212
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	b .L082EB214
.L082EB212:
	strh r6, [r5, #26]
.L082EB214:
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #10
	ble .L082EB22E
	adds r0, r5, #0
	movs r1, #22
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #26]
.L082EB22E:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB242
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EA80C
.L082EB242:
	adds r0, r5, #0
	bl sub_082EA6B4
	cmp r0, #1
	bne .L082EB25E
	adds r0, r5, #0
	bl sub_082EA7F8
	cmp r0, #1
	bne .L082EB25E
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EA80C
.L082EB25E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EB264
	.thumb_func
sub_082EB264:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #15
	beq .L082EB2E8
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
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #92]
	adds r1, r1, r2
	movs r2, #15
	bl sub_083081B0
	ldr r0, [r6, #52]
	ldr r1, [pc, #84]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #84]
	adds r1, r1, r2
	movs r2, #30
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #68]
	adds r1, r1, r2
	movs r2, #45
	bl sub_083081B0
	ldr r0, [r6, #52]
	movs r1, #160
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, [r6, #56]
	ldr r2, [pc, #52]
	adds r1, r1, r2
	movs r2, #60
	bl sub_083081B0
.L082EB2E8:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB318
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EB324
	.2byte 0xffff @ .raw
	movs r0, r0
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf100, 0xffff @ bl 0x83ec30a
	.2byte 0xc900 @ .raw ldmia r1!, {}
	.2byte 0xffff @ .raw
	.2byte 0xe700 @ b.n 0x82eb114
	.2byte 0xffff @ .raw
	bcc .L082EB318
	.2byte 0xffff @ .raw
.L082EB318:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EB324:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB336
	ldr r0, [pc, #8]
	bl sub_0831638C
.L082EB336:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x082FBD25

	.thumb
	.align 1, 0
	.global sub_082EB340
	.thumb_func
sub_082EB340:
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
	.4byte 0x030058C4
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082EB370
	.thumb_func
sub_082EB370:
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
	.4byte 0x030058C4
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

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

	.thumb
	.align 1, 0
	.global sub_082EB478
	.thumb_func
sub_082EB478:
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
	beq .L082EB4A4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L082EB4A0
	movs r1, #1
.L082EB4A0:
	adds r0, r1, #0
	b .L082EB4A6
.L082EB4A4:
	movs r0, #0
.L082EB4A6:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EB4AC
	.thumb_func
sub_082EB4AC:
	adds r2, r0, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB4C8
	movs r3, #0
	ldr r0, [pc, #8]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082EB4D6
	b .L082EB4D4
	movs r5, #12
	lsls r0, r0, #12
.L082EB4C8:
	movs r3, #0
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082EB4D6
.L082EB4D4:
	movs r3, #1
.L082EB4D6:
	adds r0, r3, #0
	bx lr
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB4E0
	.thumb_func
sub_082EB4E0:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x1c0a @ adds r2, r1, #0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x71e2 @ strb r2, [r4, #7]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3150 @ adds r1, #80
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x3102 @ adds r1, #2
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x2a08 @ cmp r2, #8
	.2byte 0xd872 @ bhi.n 0x82eb5e0
	.2byte 0x0090 @ lsls r0, r2, #2
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0xffee @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x63d4 @ str r4, [r2, #60]
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff2c @ bl 0x82eb370
	.2byte 0x211f @ movs r1, #31
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x301e @ adds r0, #30
	.2byte 0x83a0 @ strh r0, [r4, #28]
	.2byte 0xe05e @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xb865 @ @ <UNDEFINED> instruction: 0xb865
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff1e @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3002 @ adds r0, #2
	.2byte 0xe050 @ b.n 0x82eb5de
	.2byte 0xb745 @ @ <UNDEFINED> instruction: 0xb745
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff12 @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x8420 @ strh r0, [r4, #32]
	.2byte 0xe045 @ b.n 0x82eb5e0
	.2byte 0xba21 @ .raw rev r1, r4
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8160 @ strh r0, [r4, #10]
	.2byte 0xe03c @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbc69 @ pop {r0, r3, r5, r6}
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe034 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbead @ .raw bkpt 0x00ad
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe02c @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbf19 @ ittee ne
	.2byte 0x082e @ lsrne r6, r5, #32
	.2byte 0x1c21 @ addne r1, r4, #0
	.2byte 0x31c8 @ addeq r1, #200
	.2byte 0x4801 @ ldreq r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe024 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbbd5 @ .raw cbnz r5, 0x82eb610
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xfee4 @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8420 @ strh r0, [r4, #32]
	.2byte 0xe016 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbad9 @ .raw revsh r1, r3
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x480a @ ldr r0, [pc, #40]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3998 @ subs r1, #152
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x780a @ ldrb r2, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0xf7ff, 0xfed1 @ bl 0x82eb370
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8460 @ strh r0, [r4, #34]
	.2byte 0x7a21 @ ldrb r1, [r4, #8]
	.2byte 0x2904 @ cmp r1, #4
	.2byte 0xd101 @ bne.n 0x82eb5e0
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8460 @ strh r0, [r4, #34]
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x082EB949

	.thumb
	.align 1, 0
	.global sub_082EB5EC
	.thumb_func
sub_082EB5EC:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #7
	beq .L082EB612
	cmp r0, #8
	bne .L082EB628
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EB60A
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB60A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EB626
.L082EB612:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EB620
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB620:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
.L082EB626:
	strb r0, [r1, #0]
.L082EB628:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EB630
	.thumb_func
sub_082EB630:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #6
	bl sub_082F8A24
	movs r4, #0
	movs r1, #1
	strb r1, [r5, #5]
	movs r0, #2
	strb r0, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, r5, #0
	bl sub_08306E28
	adds r0, r5, #0
	adds r0, #80
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	str r4, [r5, #68]
	movs r0, #100
	str r0, [r5, #64]
	movs r1, #250
	lsls r1, r1, #1
	str r1, [r5, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r5, #76]
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EB6A4
	cmp r0, #1
	bgt .L082EB690
	cmp r0, #0
	beq .L082EB69A
	b .L082EB6C2
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EB690:
	cmp r0, #2
	beq .L082EB6B0
	cmp r0, #3
	beq .L082EB6BC
	b .L082EB6C2
.L082EB69A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #150
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6A4:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #150
	lsls r0, r0, #1
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6B0:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #200
	lsls r0, r0, #1
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6BC:
	adds r0, r5, #0
	adds r0, #90
	strh r1, [r0, #0]
.L082EB6C2:
	adds r0, r5, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	movs r2, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #84
	ldr r0, [pc, #32]
	strh r0, [r1, #0]
	ldr r0, [pc, #32]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EB708
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
	adds r0, #52
	ldr r1, [pc, #20]
	movs r2, #11
	movs r3, #0
	bl Sprite_Init
	b .L082EB71E
	movs r0, r0
	lsrs r0, r7, #14
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #208
	lsrs r3, r2, #32
.L082EB708:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #36]
	movs r2, #12
	movs r3, #0
	bl Sprite_Init
.L082EB71E:
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
	adds r1, r5, #0
	adds r1, #220
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	bl sub_082EB340
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081339D0

	.thumb
	.align 1, 0
	.global sub_082EB740
	.thumb_func
sub_082EB740:
	push {r0, r2, r3, r5, r6, r7, lr}
	lsrs r6, r5, #32
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EB75A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EB75A:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EB774
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #129
	b .L082EB77E
	movs r5, #12
	lsls r0, r0, #12
.L082EB774:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #128
.L082EB77E:
	str r1, [r5, #64]
	adds r3, r0, #0
	ldr r0, [pc, #64]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	ldr r2, [r5, #52]
	asrs r1, r2, #8
	subs r0, r0, r1
	cmp r0, #0
	bge .L082EB794
	negs r0, r0
.L082EB794:
	cmp r0, #80
	ble .L082EB810
	movs r0, #128
	lsls r0, r0, #1
	subs r0, r0, r1
	cmp r0, #0
	bge .L082EB7A4
	negs r0, r0
.L082EB7A4:
	cmp r0, #16
	ble .L082EB810
	ldr r0, [r5, #64]
	adds r0, r2, r0
	str r0, [r5, #52]
	ldrb r3, [r3, #0]
	cmp r3, #1
	bne .L082EB7C8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082EB7D4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EB7C8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
.L082EB7D4:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB818
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EB7F0
	subs r0, r1, #1
	strh r0, [r5, #34]
	b .L082EB818
.L082EB7F0:
	bl sub_082EB370
	movs r1, #15
	ands r0, r1
	cmp r0, #10
	bhi .L082EB806
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
	b .L082EB818
.L082EB806:
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EB4E0
	b .L082EB818
.L082EB810:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB818:
	ldr r0, [pc, #68]
	ldr r1, [r0, #52]
	asrs r1, r1, #8
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EB82A
	negs r1, r1
.L082EB82A:
	cmp r1, #220
	ble .L082EB836
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EB836:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB85A
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB85A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EB85A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB864
	.thumb_func
sub_082EB864:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq .L082EB87A
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082EB87A:
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	adds r5, r4, #0
	adds r5, #100
	adds r6, r4, #0
	adds r6, #48
	cmp r0, #1
	bhi .L082EB8AC
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082EB89E
	adds r0, r5, #0
	movs r1, #11
	bl sub_08000680
	b .L082EB8A6
.L082EB89E:
	adds r0, r5, #0
	movs r1, #12
	bl sub_08000680
.L082EB8A6:
	adds r0, r5, #0
	bl sub_08000704
.L082EB8AC:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082EB8B8
	adds r0, r5, #0
	movs r1, #11
	b .L082EB8BC
.L082EB8B8:
	adds r0, r5, #0
	movs r1, #12
.L082EB8BC:
	bl sub_08000680
	adds r1, r4, #0
	adds r1, #80
	movs r0, #20
	strh r0, [r1, #0]
	adds r0, r5, #0
	bl sub_080006AC
	ldrh r1, [r4, #28]
	movs r2, #28
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L082EB8F8
	bl sub_082EB370
	movs r1, #15
	ands r0, r1
	cmp r0, #10
	bls .L082EB8EE
	adds r0, r4, #0
	movs r1, #3
	bl sub_082EB4E0
	b .L082EB8FC
.L082EB8EE:
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EB4E0
	b .L082EB8FC
.L082EB8F8:
	subs r0, r1, #1
	strh r0, [r4, #28]
.L082EB8FC:
	ldr r0, [pc, #68]
	ldr r1, [r0, #52]
	asrs r1, r1, #8
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EB90E
	negs r1, r1
.L082EB90E:
	cmp r1, #220
	ble .L082EB91A
	adds r0, r4, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EB91A:
	adds r0, r4, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB93E
	adds r0, r4, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB93E
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EB93E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB948
	.thumb_func
sub_082EB948:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082EB95E
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EB95E:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EB982
	movs r0, #128
	str r0, [r5, #64]
	ldr r0, [r5, #52]
	adds r0, #128
	str r0, [r5, #52]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082EB99A
.L082EB982:
	movs r0, #128
	negs r0, r0
	str r0, [r5, #64]
	ldr r1, [r5, #52]
	adds r1, r1, r0
	str r1, [r5, #52]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
.L082EB99A:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB9BE
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EB9B6
	subs r0, r1, #1
	strh r0, [r5, #34]
	b .L082EB9BE
.L082EB9B6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EB9BE:
	adds r0, r5, #0
	bl sub_082EB4AC
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB9D4
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EB9D4:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L082EBA18
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB9FA
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
	b .L082EBA18
.L082EB9FA:
	ldr r0, [pc, #12]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EBA0C
	strb r4, [r6, #0]
	b .L082EBA10
	movs r5, #12
	lsls r0, r0, #12
.L082EBA0C:
	movs r0, #0
	strb r0, [r6, #0]
.L082EBA10:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EBA18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBA20
	.thumb_func
sub_082EBA20:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EBA36
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EBA36:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBA4E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EBA5A
.L082EBA4E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EBA5A:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBA90
	movs r0, #23
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBA78
	movs r0, #23
	bl sub_083189D0
.L082EBA78:
	ldrh r1, [r5, #32]
	movs r2, #32
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBA88
	subs r0, r1, #1
	strh r0, [r5, #32]
	b .L082EBA90
.L082EBA88:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EBA90:
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EBAA0
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EBAA0:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #5
	bne .L082EBAAE
	bl sub_08316FF8
.L082EBAAE:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBAD2
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBAD2
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBAD2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBAD8
	.thumb_func
sub_082EBAD8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EBAF4
	movs r0, #5
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r1, [pc, #40]
	movs r0, #10
	strb r0, [r1, #0]
.L082EBAF4:
	ldr r1, [pc, #32]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EBB30
	subs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBB1C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
	b .L082EBB28
	movs r5, #8
	lsls r0, r0, #12
.L082EBB1C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
.L082EBB28:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EBBCC
.L082EBB30:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBB48
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EBB54
.L082EBB48:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EBB54:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBB8A
	movs r0, #23
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBB72
	movs r0, #23
	bl sub_083189D0
.L082EBB72:
	ldrh r1, [r5, #32]
	movs r2, #32
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBB82
	subs r0, r1, #1
	strh r0, [r5, #32]
	b .L082EBB8A
.L082EBB82:
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EB4E0
.L082EBB8A:
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EBB9A
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EBB9A:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #5
	bne .L082EBBA8
	bl sub_08316FF8
.L082EBBA8:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBBCC
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBBCC
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBBCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBBD4
	.thumb_func
sub_082EBBD4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082EBBF4
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #40
	strh r0, [r5, #30]
	movs r0, #39
	bl sub_083189D0
.L082EBBF4:
	ldrh r1, [r5, #30]
	movs r2, #30
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBC06
	subs r0, r1, #1
	strh r0, [r5, #30]
	bl sub_08316FF8
.L082EBC06:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBC1E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EBC2A
.L082EBC1E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EBC2A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBC3E
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EB4E0
.L082EBC3E:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBC62
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBC62
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBC62:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBC68
	.thumb_func
sub_082EBC68:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082EBCC2
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r2, r5, #0
	adds r2, #48
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L082EBC9C
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #8]
	cmp r0, r1
	ble .L082EBCA8
	movs r0, #1
	b .L082EBCA6
	lsls r7, r0, #7
	movs r0, r0
.L082EBC9C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	cmp r0, #88
	bgt .L082EBCA8
	movs r0, #0
.L082EBCA6:
	strb r0, [r2, #0]
.L082EBCA8:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EBCBC
	ldr r0, [pc, #4]
	b .L082EBCC0
	movs r0, r0
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082EBCBC:
	movs r0, #200
	lsls r0, r0, #1
.L082EBCC0:
	str r0, [r5, #64]
.L082EBCC2:
	adds r0, r5, #0
	adds r0, #48
	ldrb r2, [r0, #0]
	adds r6, r0, #0
	cmp r2, #0
	bne .L082EBCE8
	ldr r1, [r5, #64]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082EBCDC
	adds r0, r1, #0
	adds r0, #10
	str r0, [r5, #64]
.L082EBCDC:
	adds r0, r5, #0
	adds r0, #80
	strh r2, [r0, #0]
	b .L082EBCFE
	lsls r3, r0, #14
	movs r0, r0
.L082EBCE8:
	ldr r1, [r5, #64]
	ldr r0, [pc, #40]
	cmp r1, r0
	ble .L082EBCF6
	adds r0, r1, #0
	subs r0, #10
	str r0, [r5, #64]
.L082EBCF6:
	adds r1, r5, #0
	adds r1, #80
	ldr r0, [pc, #28]
	strh r0, [r1, #0]
.L082EBCFE:
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082EBD1C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	b .L082EBD28
	movs r0, r0
	.2byte 0xfc7c @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff9c @ .raw
	movs r0, r0
.L082EBD1C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
.L082EBD28:
	adds r7, r4, #0
	ldr r4, [pc, #60]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBD92
	ldrb r2, [r6, #0]
	cmp r2, #1
	bne .L082EBD6C
	ldr r1, [r4, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EBD92
	movs r1, #0
	movs r0, #0
	strh r2, [r5, #10]
	str r0, [sp, #0]
	add r0, sp, #4
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08306DD4
	b .L082EBD92
	movs r5, #12
	lsls r0, r0, #12
.L082EBD6C:
	ldr r1, [r4, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L082EBD92
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r5, #10]
	str r1, [sp, #0]
	add r0, sp, #4
	strb r2, [r0, #0]
	add r0, sp, #8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_08306DD4
.L082EBD92:
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L082EBE0C
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EBDCE
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #90
	str r4, [sp, #4]
	subs r4, #106
	str r4, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBE60
	ldr r0, [r5, #52]
	movs r1, #228
	lsls r1, r1, #9
	cmp r0, r1
	ble .L082EBDFC
	str r1, [r5, #56]
	b .L082EBDFC
.L082EBDCE:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #90
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBE60
	ldr r1, [r5, #52]
	ldr r0, [pc, #20]
	cmp r1, r0
	bgt .L082EBDFC
	adds r0, #1
	str r0, [r5, #56]
.L082EBDFC:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082EB4E0
	b .L082EBE68
	movs r0, r0
	adds r7, #255
	movs r0, r0
.L082EBE0C:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EBE36
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #24
	str r4, [sp, #4]
	subs r4, #40
	str r4, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBE56
	b .L082EBE60
.L082EBE36:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBE60
.L082EBE56:
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EB4E0
	b .L082EBE68
.L082EBE60:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EBE68:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	cmp r0, #33
	bgt .L082EBE78
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EB4E0
.L082EBE78:
	adds r0, r7, #0
	bl sub_08000704
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBEA2
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBEA2
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBEA2:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBEAC
	.thumb_func
sub_082EBEAC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082EBEC2
	movs r0, #6
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EBEC2:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBEDA
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EBEE6
.L082EBEDA:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EBEE6:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBF12
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBF0A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
	b .L082EBF12
.L082EBF0A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EBF12:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBF18
	.thumb_func
sub_082EBF18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #7
	beq .L082EBF4A
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #60]
	adds r0, r4, #0
	bl sub_0800075C
	movs r5, #0
	movs r0, #7
	strb r0, [r6, #8]
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	movs r0, #12
	bl sub_083189D0
.L082EBF4A:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBF68
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082EBF74
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EBF68:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082EBF74:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBF8C
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082EBF8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE3C1

	.thumb
	.align 1, 0
	.global sub_082EBF98
	.thumb_func
sub_082EBF98:
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
	.4byte 0x030058CC
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082EBFC8
	.thumb_func
sub_082EBFC8:
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
	.4byte 0x030058CC
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_082EC000
	.thumb_func
sub_082EC000:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EC0D4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EC020
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EC034
.L082EC020:
	cmp r3, #0
	beq .L082EC026
	b .L082EC194
.L082EC026:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EC034
	b .L082EC194
.L082EC034:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EC042
	b .L082EC194
.L082EC042:
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EC04E
	b .L082EC194
.L082EC04E:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EC098
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC060
	b .L082EC18C
.L082EC060:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EC066:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EC080
	b .L082EC194
.L082EC080:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC066
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082EC098:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EC18C
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EC0A8:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EC0A8
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EC0D4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EC0EC
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EC0FC
.L082EC0EC:
	cmp r3, #0
	bne .L082EC194
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EC194
.L082EC0FC:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EC194
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EC194
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EC158
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EC18C
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EC128:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC128
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082EC158:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EC18C
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EC168:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EC168
.L082EC18C:
	movs r0, #1
	b .L082EC196
	movs r5, #12
	lsls r0, r0, #12
.L082EC194:
	movs r0, #0
.L082EC196:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EC1A0
	.thumb_func
sub_082EC1A0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EC1E0
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EC1C6
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EC1D0
.L082EC1C6:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EC1D0:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EC1EA
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EC1E0:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #76]
	bl sub_0800075C
.L082EC1EA:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EC238
	adds r0, r4, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #2
	beq .L082EC238
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
	bgt .L082EC218
	movs r0, #0
	strh r0, [r1, #0]
.L082EC218:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EC228
	movs r0, #7
	strb r0, [r1, #0]
.L082EC228:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EC23A
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EC238:
	movs r0, #0
.L082EC23A:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EC240
	.thumb_func
sub_082EC240:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EC24E
	movs r1, #1
.L082EC24E:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

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
	bl Map_OnSlope
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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC6EE
	ldr r0, [r6, #52]
	ldr r1, [r6, #64]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #1
	bl Map_OnSlope
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC6EE
	ldr r0, [r6, #52]
	ldr r1, [r6, #64]
	adds r0, r0, r1
	ldr r1, [r6, #56]
	movs r2, #1
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_OnSlope
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
	bl Map_HitCeiling
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
	bl Map_HitWall
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

	.thumb
	.align 1, 0
	.global sub_082ED0A8
	.thumb_func
sub_082ED0A8:
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
	.4byte 0x030058D4
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082ED0D8
	.thumb_func
sub_082ED0D8:
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
	.4byte 0x030058D4
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_082ED110
	.thumb_func
sub_082ED110:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082ED1F4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082ED130
	ldr r0, [pc, #124]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082ED144
.L082ED130:
	cmp r3, #0
	beq .L082ED136
	b .L082ED2C4
.L082ED136:
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082ED144
	b .L082ED2C4
.L082ED144:
	ldr r3, [r5, #56]
	ldr r1, [pc, #96]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082ED152
	b .L082ED2C4
.L082ED152:
	movs r7, #208
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	blt .L082ED15E
	b .L082ED2C4
.L082ED15E:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082ED1B0
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED170
	b .L082ED2B8
.L082ED170:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082ED176:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #48]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ED194
	b .L082ED2C4
.L082ED194:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED176
	b .L082ED2B8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	bvs .L082ED1B0
	.2byte 0xffff @ .raw
.L082ED1B0:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED1BC
	b .L082ED2B8
.L082ED1BC:
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082ED1C2:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED1C2
	b .L082ED2B8
	bvs .L082ED1F0
	.2byte 0xffff @ .raw
.L082ED1F0:
	movs r5, #12
	lsls r0, r0, #12
.L082ED1F4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082ED20C
	ldr r0, [pc, #112]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082ED21C
.L082ED20C:
	cmp r3, #0
	bne .L082ED2C4
	ldr r0, [pc, #96]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082ED2C4
.L082ED21C:
	ldr r3, [r5, #56]
	ldr r7, [pc, #88]
	adds r0, r3, r7
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082ED2C4
	movs r7, #208
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	bge .L082ED2C4
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082ED280
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082ED2B8
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082ED248:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED248
	b .L082ED2B8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	bvs .L082ED280
	.2byte 0xffff @ .raw
.L082ED280:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082ED2B8
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082ED290:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED290
.L082ED2B8:
	movs r0, #1
	b .L082ED2C6
	bvs .L082ED2C0
	.2byte 0xffff @ .raw
.L082ED2C0:
	movs r5, #12
	lsls r0, r0, #12
.L082ED2C4:
	movs r0, #0
.L082ED2C6:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ED2D0
	.thumb_func
sub_082ED2D0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082ED310
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082ED2F6
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082ED300
.L082ED2F6:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082ED300:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082ED31A
	.2byte 0xffff @ .raw
	movs r0, r0
.L082ED310:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #84]
	bl sub_0800075C
.L082ED31A:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082ED370
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED336
	movs r0, #42
	bl sub_083189D0
.L082ED336:
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
	bgt .L082ED350
	movs r0, #0
	strh r0, [r1, #0]
.L082ED350:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082ED360
	movs r0, #7
	strb r0, [r1, #0]
.L082ED360:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082ED372
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082ED370:
	movs r0, #0
.L082ED372:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082ED378
	.thumb_func
sub_082ED378:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082ED386
	movs r1, #1
.L082ED386:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

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
	bl Map_OnSlope
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
	bl Sprite_Init
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED7B8
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED800
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
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

	.thumb
	.align 1, 0
	.global sub_082EDCFC
	.thumb_func
sub_082EDCFC:
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
	.4byte 0x030058DC
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082EDD2C
	.thumb_func
sub_082EDD2C:
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
	.4byte 0x030058DC
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_082EDD64
	.thumb_func
sub_082EDD64:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EDDA4
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EDD8A
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EDD94
.L082EDD8A:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EDD94:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EDDAE
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EDDA4:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #124]
	bl sub_0800075C
.L082EDDAE:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EDE2C
	adds r6, r4, #0
	adds r6, #232
	ldr r0, [r6, #0]
	adds r7, r4, #0
	adds r7, #236
	adds r5, r4, #0
	adds r5, #90
	cmp r0, #5
	bne .L082EDDE8
	movs r1, #28
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble .L082EDDDA
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EDE68
.L082EDDDA:
	ldr r0, [r6, #0]
	cmp r0, #5
	bne .L082EDDE8
	ldrh r2, [r5, #0]
	ldrh r1, [r7, #0]
	subs r0, r2, r1
	strh r0, [r5, #0]
.L082EDDE8:
	ldrh r2, [r5, #0]
	ldrh r7, [r7, #0]
	subs r0, r2, r7
	strh r0, [r5, #0]
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EDE00
	movs r0, #7
	strb r0, [r1, #0]
.L082EDE00:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L082EDE0C
	movs r0, #0
	strh r0, [r5, #0]
.L082EDE0C:
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDE1E
	movs r0, #42
	bl sub_083189D0
.L082EDE1E:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EDE2E
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EDE2C:
	movs r0, #0
.L082EDE2E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EDE34
	.thumb_func
sub_082EDE34:
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
	beq .L082EDE60
	movs r1, #0
	adds r0, r4, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L082EDE5C
	movs r1, #1
.L082EDE5C:
	adds r0, r1, #0
	b .L082EDE62
.L082EDE60:
	movs r0, #0
.L082EDE62:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EDE68
	.thumb_func
sub_082EDE68:
	adds r2, r0, #0
	strb r1, [r2, #7]
	cmp r1, #8
	bhi .L082EDEE8
	lsls r0, r1, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r2, #68]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe079 @ b.n 0x82edf7e
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe399 @ b.n 0x82ee5ca
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe301 @ b.n 0x82ee4a6
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe40d @ b.n 0x82ed6ca
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe4a5 @ b.n 0x82ed806
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe539 @ b.n 0x82ed93a
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe5ed @ b.n 0x82edaae
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EDEE6
	.2byte 0xe685 @ b.n 0x82edbea
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EDEE6:
	str r0, [r1, #0]
.L082EDEE8:
	bx lr
	.2byte 0x0000
	.4byte 0x082EE6F9

	.thumb
	.align 1, 0
	.global sub_082EDEF0
	.thumb_func
sub_082EDEF0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #8
	beq .L082EDF48
	cmp r0, #8
	bgt .L082EDF06
	cmp r0, #7
	beq .L082EDF32
	b .L082EDF5E
.L082EDF06:
	cmp r0, #46
	beq .L082EDF10
	cmp r0, #47
	beq .L082EDF26
	b .L082EDF5E
.L082EDF10:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082EDF1E
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EDE68
.L082EDF1E:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EDF5C
.L082EDF26:
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082EDF56
	adds r0, r4, #0
	movs r1, #2
	b .L082EDF52
.L082EDF32:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EDF40
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EDE68
.L082EDF40:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EDF5C
.L082EDF48:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EDF56
	adds r0, r4, #0
	movs r1, #0
.L082EDF52:
	bl sub_082EDE68
.L082EDF56:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EDF5C:
	strb r0, [r1, #0]
.L082EDF5E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EDF64
	.thumb_func
sub_082EDF64:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #6
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
	ldr r0, [pc, #48]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r4, #68]
	movs r0, #250
	str r0, [r4, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	movs r0, #10
	strh r0, [r4, #28]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EDFD4
	cmp r0, #1
	bgt .L082EDFC0
	cmp r0, #0
	beq .L082EDFCA
	b .L082EDFF4
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EDFC0:
	cmp r0, #2
	beq .L082EDFE0
	cmp r0, #3
	beq .L082EDFEC
	b .L082EDFF4
.L082EDFCA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #225
	lsls r0, r0, #1
	b .L082EDFF2
.L082EDFD4:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #0]
	b .L082EDFF2
	lsls r2, r7, #8
	movs r0, r0
.L082EDFE0:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #0]
	b .L082EDFF2
	lsls r2, r6, #10
	movs r0, r0
.L082EDFEC:
	adds r1, r4, #0
	adds r1, #90
	ldr r0, [pc, #64]
.L082EDFF2:
	strh r0, [r1, #0]
.L082EDFF4:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	movs r5, #1
	strb r5, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #84
	movs r0, #250
	lsls r0, r0, #3
	strh r0, [r1, #0]
	bl sub_082EDCFC
	ldr r0, [pc, #32]
	ldr r1, [r0, #52]
	ldr r0, [r4, #52]
	cmp r1, r0
	bge .L082EE040
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
	adds r0, #52
	ldr r1, [pc, #20]
	movs r2, #14
	movs r3, #0
	bl Sprite_Init
	b .L082EE056
	movs r0, r0
	lsls r2, r5, #12
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xe390 @ b.n 0x82ee760
	lsrs r1, r3, #32
.L082EE040:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #32]
	movs r2, #15
	movs r3, #0
	bl Sprite_Init
.L082EE056:
	adds r0, r4, #0
	adds r0, #220
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082EDE68
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0819E390
	.4byte 0x082EDEF1

	.thumb
	.align 1, 0
	.global sub_082EE078
	.thumb_func
sub_082EE078:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EE090
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EE090:
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #4
	bgt .L082EE11A
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EE0B4
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #151
	b .L082EE0BE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EE0B4:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #150
.L082EE0BE:
	str r1, [r5, #64]
	adds r6, r0, #0
	movs r3, #26
	ldrsh r0, [r5, r3]
	cmp r0, #10
	ble .L082EE0F2
	bl sub_082EDD2C
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L082EE0E0
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EDE68
	b .L082EE0E8
.L082EE0E0:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EDE68
.L082EE0E8:
	movs r0, #0
	strh r0, [r5, #26]
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
.L082EE0F2:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082EE106
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082EE112
.L082EE106:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
.L082EE112:
	adds r0, r4, #0
	bl sub_080006C4
	b .L082EE2C2
.L082EE11A:
	ldr r2, [pc, #60]
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EE128
	negs r0, r0
.L082EE128:
	asrs r0, r0, #8
	cmp r0, #169
	bgt .L082EE1B6
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #140
	ble .L082EE1B6
	ldr r1, [r5, #56]
	ldr r0, [r2, #56]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EE142
	negs r0, r0
.L082EE142:
	asrs r0, r0, #8
	cmp r0, #39
	bgt .L082EE15C
	ldrb r2, [r2, #7]
	cmp r2, #7
	bne .L082EE15C
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EDE68
	b .L082EE1B0
	movs r5, #12
	lsls r0, r0, #12
.L082EE15C:
	bl sub_082EDD2C
	adds r2, r0, #0
	movs r0, #3
	ands r2, r0
	ldr r1, [pc, #28]
	ldr r0, [r5, #56]
	ldr r3, [pc, #28]
	adds r0, r0, r3
	ldr r1, [r1, #56]
	cmp r1, r0
	blt .L082EE178
	cmp r2, #0
	bne .L082EE18C
.L082EE178:
	adds r0, r5, #0
	movs r1, #6
	bl sub_082EDE68
	b .L082EE1B0
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xe200 @ b.n 0x82ee58c
	.2byte 0xffff @ .raw
.L082EE18C:
	cmp r2, #1
	bne .L082EE19A
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EDE68
	b .L082EE1B0
.L082EE19A:
	cmp r2, #2
	bne .L082EE1A8
	adds r0, r5, #0
	movs r1, #5
	bl sub_082EDE68
	b .L082EE1B0
.L082EE1A8:
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EDE68
.L082EE1B0:
	movs r0, #0
	strh r0, [r5, #26]
	b .L082EE2C2
.L082EE1B6:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EE1D0
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #151
	b .L082EE1DA
	movs r5, #12
	lsls r0, r0, #12
.L082EE1D0:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #150
.L082EE1DA:
	str r1, [r5, #64]
	adds r6, r0, #0
	ldr r0, [pc, #48]
	ldr r4, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r4, r0
	cmp r0, #0
	bge .L082EE1EC
	negs r0, r0
.L082EE1EC:
	asrs r0, r0, #8
	cmp r0, #90
	ble .L082EE260
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082EE214
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
	b .L082EE22C
	movs r5, #12
	lsls r0, r0, #12
.L082EE214:
	cmp r2, #0
	ble .L082EE23E
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
.L082EE22C:
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE23E
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EE23E:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082EE252
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
	b .L082EE282
.L082EE252:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	b .L082EE282
.L082EE260:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082EE27A
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082EE282
.L082EE27A:
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
.L082EE282:
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
	ble .L082EE2BC
	ldr r0, [r5, #52]
	movs r2, #0
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EE2BC
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082EE2BC:
	adds r0, r4, #0
	bl sub_08000704
.L082EE2C2:
	ldrh r1, [r5, #26]
	adds r0, r1, #1
	strh r0, [r5, #26]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #7]
	cmp r0, #7
	bne .L082EE2D4
	adds r0, r1, #3
	strh r0, [r5, #26]
.L082EE2D4:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE2F4
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE2F4
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE2F4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EE300
	.thumb_func
sub_082EE300:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EE31C
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #13
	bl sub_083189D0
.L082EE31C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE334
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082EE340
.L082EE334:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082EE340:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	bne .L082EE372
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #46
	cmp r0, #1
	bhi .L082EE368
	movs r0, #13
	bl sub_083189D0
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EE372
.L082EE368:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
	strh r6, [r5, #28]
.L082EE372:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE392
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE392
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE392:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EE398
	.thumb_func
sub_082EE398:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq .L082EE3AE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EE3AE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE3C6
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082EE3D2
.L082EE3C6:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
.L082EE3D2:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE3E6
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
.L082EE3E6:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE406
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE406
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE406:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EE40C
	.thumb_func
sub_082EE40C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082EE42A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #8
	bl sub_082F8A24
.L082EE42A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE442
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EE44E
.L082EE442:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EE44E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #3
	bne .L082EE468
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EE468
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EE468:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE47C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
.L082EE47C:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE49C
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE49C
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE49C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE4A4
	.thumb_func
sub_082EE4A4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082EE4C2
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #10
	bl sub_082F8A24
.L082EE4C2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #3
	bne .L082EE4E0
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EE4E0
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EE4E0:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE4F4
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EE4FC
.L082EE4F4:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EE4FC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE510
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
.L082EE510:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE530
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE530
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE530:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE538
	.thumb_func
sub_082EE538:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EE55A
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #30]
	adds r0, r5, #0
	movs r1, #11
	bl sub_082F8A24
.L082EE55A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #1
	bne .L082EE578
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EE578
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EE578:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE58C
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082EE594
.L082EE58C:
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082EE594:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE5C4
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #7
	ble .L082EE5B8
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
	b .L082EE5C4
.L082EE5B8:
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r4, #0
	bl sub_080006AC
.L082EE5C4:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE5E4
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE5E4
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE5E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE5EC
	.thumb_func
sub_082EE5EC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082EE60A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	movs r1, #9
	bl sub_082F8A24
.L082EE60A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE622
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082EE62E
.L082EE622:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082EE62E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #3
	bne .L082EE648
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EE648
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EE648:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE65C
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EDE68
.L082EE65C:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE67C
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE67C
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE67C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE684
	.thumb_func
sub_082EE684:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082EE69A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EE69A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE6B2
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082EE6BE
.L082EE6B2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082EE6BE:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE6D2
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EDE68
.L082EE6D2:
	adds r0, r5, #0
	bl sub_082EDD64
	cmp r0, #1
	bne .L082EE6F2
	adds r0, r5, #0
	bl sub_082EDE34
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EE6F2
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EDE68
.L082EE6F2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EE6F8
	.thumb_func
sub_082EE6F8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #8
	beq .L082EE72A
	movs r5, #0
	movs r0, #8
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #47
	strb r5, [r0, #0]
	subs r0, #1
	strb r5, [r0, #0]
	ldr r1, [pc, #36]
	adds r0, r4, #0
	bl sub_0800075C
	movs r0, #13
	bl sub_083189D0
.L082EE72A:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EE748
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EE754
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EE748:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EE754:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE76C
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082EE76C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08300991

	.thumb
	.align 1, 0
	.global sub_082EE778
	.thumb_func
sub_082EE778:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EE84C
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EE798
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EE7AC
.L082EE798:
	cmp r3, #0
	beq .L082EE79E
	b .L082EE90C
.L082EE79E:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EE7AC
	b .L082EE90C
.L082EE7AC:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EE7BA
	b .L082EE90C
.L082EE7BA:
	movs r7, #192
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EE7C6
	b .L082EE90C
.L082EE7C6:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EE810
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EE7D8
	b .L082EE904
.L082EE7D8:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EE7DE:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EE7F8
	b .L082EE90C
.L082EE7F8:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EE7DE
	b .L082EE904
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EE810
	.2byte 0xffff @ .raw
.L082EE810:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EE904
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EE820:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE90C
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EE820
	b .L082EE904
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EE84C:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EE864
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EE874
.L082EE864:
	cmp r3, #0
	bne .L082EE90C
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EE90C
.L082EE874:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EE90C
	movs r7, #192
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EE90C
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EE8D0
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EE904
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EE8A0:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE90C
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EE8A0
	b .L082EE904
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EE8D0
	.2byte 0xffff @ .raw
.L082EE8D0:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EE904
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EE8E0:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EE90C
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EE8E0
.L082EE904:
	movs r0, #1
	b .L082EE90E
	movs r5, #12
	lsls r0, r0, #12
.L082EE90C:
	movs r0, #0
.L082EE90E:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE918
	.thumb_func
sub_082EE918:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EE958
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EE93E
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EE948
.L082EE93E:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EE948:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EE962
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EE958:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #64]
	bl sub_0800075C
.L082EE962:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EE9A4
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
	bgt .L082EE986
	movs r0, #0
	strh r0, [r1, #0]
.L082EE986:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EE996
	movs r0, #7
	strb r0, [r1, #0]
.L082EE996:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EE9A6
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EE9A4:
	movs r0, #0
.L082EE9A6:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EE9AC
	.thumb_func
sub_082EE9AC:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EE9BA
	movs r1, #1
.L082EE9BA:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE9C0
	.thumb_func
sub_082EE9C0:
	adds r2, r0, #0
	ldr r0, [pc, #16]
	ldr r1, [r2, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	ble .L082EE9D8
	adds r1, r2, #0
	adds r1, #48
	movs r0, #1
	b .L082EE9DE
	movs r5, #12
	lsls r0, r0, #12
.L082EE9D8:
	adds r1, r2, #0
	adds r1, #48
	movs r0, #0
.L082EE9DE:
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE9E4
	.thumb_func
sub_082EE9E4:
	adds r2, r0, #0
	strb r1, [r2, #7]
	cmp r1, #1
	beq .L082EEA10
	cmp r1, #1
	bcc .L082EE9FA
	cmp r1, #2
	beq .L082EEA28
	cmp r1, #3
	beq .L082EEA34
	b .L082EEA3C
.L082EE9FA:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r0, #240
	strh r0, [r2, #26]
	movs r0, #30
	strh r0, [r2, #30]
	b .L082EEA1C
	.2byte 0xeb55 @ .raw
	lsrs r6, r5, #32
.L082EEA10:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r0, #0
	strh r0, [r2, #12]
.L082EEA1C:
	movs r0, #15
	strh r0, [r2, #28]
	b .L082EEA3C
	movs r0, r0
	.2byte 0xed45 @ .raw
	lsrs r6, r5, #32
.L082EEA28:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EEA3A
	.2byte 0xeffd @ .raw
	lsrs r6, r5, #32
.L082EEA34:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EEA3A:
	str r0, [r1, #0]
.L082EEA3C:
	bx lr
	.2byte 0x0000
	.4byte 0x082EF0B1

	.thumb
	.align 1, 0
	.global sub_082EEA44
	.thumb_func
sub_082EEA44:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_082F8A24
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #5]
	movs r0, #3
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r1, [r0, #0]
	movs r0, #82
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [pc, #60]
	mov r5, ip
	strh r0, [r5, #0]
	adds r0, r4, #0
	adds r0, #60
	movs r5, #50
	strb r5, [r0, #0]
	str r1, [r4, #68]
	str r1, [r4, #64]
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r0, r4, #0
	adds r0, #87
	strb r3, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r3, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EEAC6
	cmp r0, #1
	bgt .L082EEAB4
	cmp r0, #0
	beq .L082EEABE
	b .L082EEADE
	.2byte 0xfff0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EEAB4:
	cmp r0, #2
	beq .L082EEACE
	cmp r0, #3
	beq .L082EEAD6
	b .L082EEADE
.L082EEABE:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #20
	b .L082EEADC
.L082EEAC6:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #35
	b .L082EEADC
.L082EEACE:
	adds r0, r4, #0
	adds r0, #90
	strh r5, [r0, #0]
	b .L082EEADE
.L082EEAD6:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #65
.L082EEADC:
	strh r0, [r1, #0]
.L082EEADE:
	adds r2, r4, #0
	adds r2, #84
	movs r1, #0
	movs r0, #240
	strh r0, [r2, #0]
	strh r1, [r4, #14]
	strh r1, [r4, #10]
	movs r0, #15
	strh r0, [r4, #28]
	strh r1, [r4, #30]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EEB18
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #6
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EEB2C
	movs r0, r0
	subs r1, #224
	lsrs r5, r2, #32
.L082EEB18:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #48]
	movs r2, #7
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EEB2C:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EEB3C
	subs r1, #139
	strh r0, [r1, #0]
.L082EEB3C:
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EE9E4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081539E0

	.thumb
	.align 1, 0
	.global sub_082EEB54
	.thumb_func
sub_082EEB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #52]
	mov r8, r0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq .L082EEB74
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EEB74:
	ldrh r0, [r5, #10]
	cmp r0, #0
	beq .L082EEB7C
	b .L082EEC88
.L082EEB7C:
	adds r0, r5, #0
	adds r0, #48
	adds r6, r0, #0
	ldrb r1, [r6, #0]
	cmp r1, #1
	bne .L082EEB9C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
	ldr r0, [pc, #0]
	b .L082EEBAC
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
.L082EEB9C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	movs r0, #128
	lsls r0, r0, #1
.L082EEBAC:
	str r0, [r5, #64]
	adds r7, r4, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEBC6
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
.L082EEBC6:
	adds r0, r7, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEBF8
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	b .L082EEC00
.L082EEBF8:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEC00:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEC20
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEC2C
.L082EEC20:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	mov r2, r8
	str r2, [r5, #52]
.L082EEC2C:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EEC3C
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L082EEC4A
.L082EEC3C:
	movs r0, #180
	strh r0, [r5, #26]
	movs r0, #1
	strh r0, [r5, #10]
	adds r0, r7, #0
	bl sub_080006AC
.L082EEC4A:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEC6C
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	adds r0, #120
	cmp r1, r0
	ble .L082EECE6
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EECE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EEC6C:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r0, #120
	cmp r1, r0
	bge .L082EECE6
	movs r0, #0
	strb r0, [r6, #0]
	b .L082EECE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EEC88:
	cmp r0, #1
	bne .L082EECE6
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EECA4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EECB0
.L082EECA4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EECB0:
	adds r7, r4, #0
	adds r0, r7, #0
	bl sub_08000704
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EECCE
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
.L082EECCE:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EECDE
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L082EECE6
.L082EECDE:
	movs r1, #0
	movs r0, #240
	strh r0, [r5, #26]
	strh r1, [r5, #10]
.L082EECE6:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #1
	bne .L082EED08
	adds r0, r5, #0
	bl sub_082EE9C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EED08
	adds r0, #1
	strh r0, [r5, #14]
.L082EED08:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #0
	beq .L082EED1A
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EED1A:
	ldrh r1, [r5, #30]
	movs r2, #30
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EED28
	subs r0, r1, #1
	b .L082EED34
.L082EED28:
	ldrh r0, [r5, #14]
	cmp r0, #0
	beq .L082EED32
	subs r0, #1
	strh r0, [r5, #14]
.L082EED32:
	movs r0, #30
.L082EED34:
	strh r0, [r5, #30]
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EED44
	.thumb_func
sub_082EED44:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r7, [r5, #52]
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EED5E
	movs r0, #1
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EED5E:
	ldrh r0, [r5, #12]
	cmp r0, #0
	beq .L082EED66
	b .L082EEE90
.L082EED66:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EED7E
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	b .L082EEFF2
.L082EED7E:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #36]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EED90
	negs r1, r1
.L082EED90:
	cmp r1, #39
	bgt .L082EEDAC
	movs r0, #1
	strh r0, [r5, #12]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEDAC:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEDD2
	ldrh r1, [r5, #14]
	lsls r0, r1, #2
	movs r2, #128
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5, #64]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEDE8
.L082EEDD2:
	ldrh r1, [r5, #14]
	lsls r0, r1, #2
	ldr r1, [pc, #68]
	subs r1, r1, r0
	str r1, [r5, #64]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEDE8:
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEE20
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	b .L082EEE28
	movs r0, r0
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
.L082EEE20:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEE28:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEE48
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEE52
.L082EEE48:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	str r7, [r5, #52]
.L082EEE52:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEE74
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	adds r0, #120
	cmp r1, r0
	bgt .L082EEE6A
	b .L082EEFAE
.L082EEE6A:
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEE74:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r0, #120
	cmp r1, r0
	blt .L082EEE86
	b .L082EEFAE
.L082EEE86:
	movs r0, #0
	strb r0, [r6, #0]
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEE90:
	cmp r0, #1
	bne .L082EEEEA
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEEAE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EEEBA
.L082EEEAE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EEEBA:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EEFAE
	movs r0, #2
	strh r0, [r5, #12]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEEDA
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEEE2
.L082EEEDA:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEEE2:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EEFAE
.L082EEEEA:
	cmp r0, #2
	bne .L082EEFAE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	bne .L082EEF24
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEF12
	strh r6, [r5, #12]
	b .L082EEF24
.L082EEF12:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EEF24
	adds r0, #1
	strh r0, [r5, #14]
.L082EEF24:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEF40
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r5, #64]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEF4C
.L082EEF40:
	ldr r0, [pc, #52]
	str r0, [r5, #64]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEF4C:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEF7C
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	str r7, [r5, #52]
	b .L082EEF84
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
.L082EEF7C:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEF84:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEFA4
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEFAE
.L082EEFA4:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	str r7, [r5, #52]
.L082EEFAE:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #0
	beq .L082EEFD2
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EEFC2
	adds r0, #1
	strh r0, [r5, #14]
.L082EEFC2:
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L082EEFD2
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EE9E4
.L082EEFD2:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #0
	beq .L082EEFE4
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EEFE4:
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EEFF2
	subs r0, r1, #1
	strh r0, [r5, #28]
.L082EEFF2:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EEFFC
	.thumb_func
sub_082EEFFC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EF018
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #37
	bl sub_083189D0
.L082EF018:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EF032
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082EF03E
.L082EF032:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082EF03E:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #1
	bne .L082EF05A
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #1
	bne .L082EF05A
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EF05A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #0
	bne .L082EF09E
	ldr r0, [pc, #12]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EF07C
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EF07E
	movs r5, #12
	lsls r0, r0, #12
.L082EF07C:
	strb r2, [r6, #0]
.L082EF07E:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #1
	bne .L082EF092
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
	b .L082EF09E
.L082EF092:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	movs r0, #15
	strh r0, [r5, #28]
.L082EF09E:
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EF0A8
	adds r0, #2
	strh r0, [r5, #14]
.L082EF0A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF0B0
	.thumb_func
sub_082EF0B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #3
	beq .L082EF0E4
	ldrb r0, [r6, #7]
	movs r5, #0
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldr r1, [pc, #48]
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
.L082EF0E4:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF100
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082EF10C
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF100:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082EF10C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF11E
	adds r0, r6, #0
	bl sub_082EA2C0
.L082EF11E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EF124
	.thumb_func
sub_082EF124:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082EF13E
	ldr r0, [pc, #116]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EF14E
.L082EF13E:
	cmp r3, #0
	bne .L082EF1F8
	ldr r0, [pc, #100]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	ble .L082EF1F8
.L082EF14E:
	ldr r3, [r5, #56]
	ldr r1, [pc, #88]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EF1F8
	movs r4, #140
	lsls r4, r4, #7
	adds r0, r3, r4
	cmp r1, r0
	bge .L082EF1F8
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF1B4
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EF1EC
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EF17E:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF1F8
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EF17E
	b .L082EF1EC
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EF1B0
	.2byte 0xffff @ .raw
.L082EF1B0:
	bvs .L082EF1B4
	.2byte 0xffff @ .raw
.L082EF1B4:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EF1EC
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EF1C4:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF1F8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EF1C4
.L082EF1EC:
	movs r0, #1
	b .L082EF1FA
	bvs .L082EF1F4
	.2byte 0xffff @ .raw
.L082EF1F4:
	movs r5, #12
	lsls r0, r0, #12
.L082EF1F8:
	movs r0, #0
.L082EF1FA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF204
	.thumb_func
sub_082EF204:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EF244
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EF22A
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EF234
.L082EF22A:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EF234:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EF24E
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF244:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #84]
	bl sub_0800075C
.L082EF24E:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EF2A4
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF26A
	movs r0, #42
	bl sub_083189D0
.L082EF26A:
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
	bgt .L082EF284
	movs r0, #0
	strh r0, [r1, #0]
.L082EF284:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EF294
	movs r0, #7
	strb r0, [r1, #0]
.L082EF294:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EF2A6
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF2A4:
	movs r0, #0
.L082EF2A6:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EF2AC
	.thumb_func
sub_082EF2AC:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EF2BA
	movs r1, #1
.L082EF2BA:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Map_OnSlope
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_HitWall
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
	bl Map_HitWall
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

	.thumb
	.align 1, 0
	.global sub_082EF82C
	.thumb_func
sub_082EF82C:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EF83A
	movs r1, #1
.L082EF83A:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF840
	.thumb_func
sub_082EF840:
	strb r1, [r0, #7]
	cmp r1, #1
	beq .L082EF850
	cmp r1, #1
	bcc .L082EF85C
	cmp r1, #15
	beq .L082EF868
	b .L082EF870
.L082EF850:
	adds r1, r0, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EF86E
	.2byte 0xfa1d @ .raw
	lsrs r6, r5, #32
.L082EF85C:
	adds r1, r0, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EF86E
	.2byte 0xfb9d @ .raw
	lsrs r6, r5, #32
.L082EF868:
	adds r1, r0, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EF86E:
	str r0, [r1, #0]
.L082EF870:
	bx lr
	.2byte 0x0000
	.4byte 0x082EFC95

	.thumb
	.align 1, 0
	.global sub_082EF878
	.thumb_func
sub_082EF878:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r5, [r0, #0]
	cmp r5, #2
	beq .L082EF8AE
	cmp r5, #2
	bgt .L082EF88E
	cmp r5, #1
	beq .L082EF898
	b .L082EF8E6
.L082EF88E:
	cmp r5, #33
	beq .L082EF8BA
	cmp r5, #34
	beq .L082EF8D0
	b .L082EF8E6
.L082EF898:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EF8A6
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EF840
.L082EF8A6:
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
	b .L082EF8E6
.L082EF8AE:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EF8DE
	adds r0, r4, #0
	movs r1, #0
	b .L082EF8DA
.L082EF8BA:
	ldrb r0, [r4, #7]
	cmp r0, #15
	beq .L082EF8C8
	adds r0, r4, #0
	movs r1, #15
	bl sub_082EF840
.L082EF8C8:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EF8E4
.L082EF8D0:
	ldrb r0, [r4, #7]
	cmp r0, #15
	beq .L082EF8DE
	adds r0, r4, #0
	movs r1, #15
.L082EF8DA:
	bl sub_082EF840
.L082EF8DE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EF8E4:
	strb r0, [r1, #0]
.L082EF8E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EF8EC
	.thumb_func
sub_082EF8EC:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r1, #1
	strb r1, [r4, #5]
	movs r0, #12
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
	ldr r0, [pc, #40]
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
	beq .L082EF952
	cmp r0, #1
	bgt .L082EF940
	cmp r0, #0
	beq .L082EF94A
	b .L082EF96A
	.2byte 0xfff8 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EF940:
	cmp r0, #2
	beq .L082EF95A
	cmp r0, #3
	beq .L082EF962
	b .L082EF96A
.L082EF94A:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #60
	b .L082EF968
.L082EF952:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #70
	b .L082EF968
.L082EF95A:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #80
	b .L082EF968
.L082EF962:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #90
.L082EF968:
	strh r0, [r1, #0]
.L082EF96A:
	adds r0, r4, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EF998
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L082EF998:
	adds r0, r4, #0
	adds r0, #84
	movs r1, #250
	lsls r1, r1, #1
	strh r1, [r0, #0]
	adds r0, #143
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF9C4
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EF9D8
	lsrs r0, r0, #24
	lsrs r1, r2, #32
.L082EF9C4:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #68]
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EF9D8:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EF9E8
	subs r1, #139
	strh r0, [r1, #0]
.L082EF9E8:
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082EF840
	ldr r0, [pc, #24]
	ldrb r0, [r0, #0]
	cmp r0, #1
	bhi .L082EFA0A
	adds r0, r4, #0
	bl sub_082EA2C0
.L082EFA0A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08110E00
	.4byte 0x082EF879
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082EFA1C
	.thumb_func
sub_082EFA1C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EFA34
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EFA34:
	ldr r0, [pc, #48]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r1, r0
	cmp r0, #0
	bge .L082EFA42
	negs r0, r0
.L082EFA42:
	asrs r0, r0, #8
	cmp r0, #109
	bgt .L082EFAE4
	adds r0, r5, #0
	adds r0, #48
	adds r6, r0, #0
	ldrb r1, [r6, #0]
	cmp r1, #1
	bne .L082EFA6C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	movs r0, #64
	negs r0, r0
	b .L082EFA7A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EFA6C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	movs r0, #64
.L082EFA7A:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082EFAA2
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
	b .L082EFABC
.L082EFAA2:
	cmp r4, #0
	ble .L082EFB10
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
.L082EFABC:
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EFB10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EFB10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	b .L082EFB10
.L082EFAE4:
	adds r0, r5, #0
	adds r0, #48
	adds r6, r0, #0
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082EFAFE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	b .L082EFB0A
.L082EFAFE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
.L082EFB0A:
	adds r0, r4, #0
	bl sub_08000704
.L082EFB10:
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #50
	ble .L082EFB50
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EF5F8
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #1
	bne .L082EFB4C
	ldr r0, [pc, #24]
	ldr r2, [r5, #52]
	ldr r1, [r0, #52]
	subs r0, r2, r1
	cmp r0, #0
	bge .L082EFB36
	negs r0, r0
.L082EFB36:
	asrs r0, r0, #8
	cmp r0, #169
	bgt .L082EFB4C
	cmp r1, r2
	bge .L082EFB48
	strb r3, [r6, #0]
	b .L082EFB4C
	movs r5, #12
	lsls r0, r0, #12
.L082EFB48:
	movs r0, #0
	strb r0, [r6, #0]
.L082EFB4C:
	movs r0, #0
	strh r0, [r5, #26]
.L082EFB50:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EFB76
	adds r0, r5, #0
	movs r1, #26
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #28]
.L082EFB76:
	adds r0, r5, #0
	bl sub_082EF798
	cmp r0, #1
	bne .L082EFB92
	adds r0, r5, #0
	bl sub_082EF82C
	cmp r0, #1
	bne .L082EFB92
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EF840
.L082EFB92:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFB9C
	.thumb_func
sub_082EFB9C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq .L082EFBB4
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EFBB4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EFBCE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	movs r0, #128
	b .L082EFBDE
.L082EFBCE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082EFBDE:
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
	bl Map_HitWall
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EFC10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EFC10:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl Map_OnSlope
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EFC34
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082EFC3C
.L082EFC34:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082EFC3C:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #1
	bls .L082EFC50
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EF840
.L082EFC50:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #4
	ble .L082EFC70
	adds r0, r5, #0
	movs r1, #26
	bl sub_082F8A24
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	movs r0, #0
	strh r0, [r5, #28]
.L082EFC70:
	adds r0, r5, #0
	bl sub_082EF798
	cmp r0, #1
	bne .L082EFC8C
	adds r0, r5, #0
	bl sub_082EF82C
	cmp r0, #1
	bne .L082EFC8C
	adds r0, r5, #0
	movs r1, #15
	bl sub_082EF840
.L082EFC8C:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EFC94
	.thumb_func
sub_082EFC94:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #15
	beq .L082EFCC0
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
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800075C
.L082EFCC0:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EFCDC
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EFCE8
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EFCDC:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EFCE8:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EFCFA
	adds r0, r6, #0
	bl sub_082EA2C0
.L082EFCFA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EFD00
	.thumb_func
sub_082EFD00:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EFD40
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EFD26
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EFD30
.L082EFD26:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EFD30:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EFD4A
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EFD40:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #64]
	bl sub_0800075C
.L082EFD4A:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EFD8C
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
	bge .L082EFD6E
	movs r0, #0
	strh r0, [r1, #0]
.L082EFD6E:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EFD7E
	movs r0, #7
	strb r0, [r1, #0]
.L082EFD7E:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EFD8E
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EFD8C:
	movs r0, #0
.L082EFD8E:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082EFD94
	.thumb_func
sub_082EFD94:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne .L082EFDA2
	movs r1, #1
.L082EFDA2:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFDA8
	.thumb_func
sub_082EFDA8:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #60]
	ldr r2, [r4, #56]
	movs r1, #128
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #56]
	cmp r1, r0
	bge .L082EFDFE
	ldr r3, [pc, #48]
	adds r0, r2, r3
	cmp r1, r0
	ble .L082EFDFE
	ldr r3, [r4, #52]
	asrs r1, r3, #8
	ldr r2, [r5, #52]
	asrs r0, r2, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EFDD4
	negs r1, r1
.L082EFDD4:
	cmp r1, #74
	bgt .L082EFDFE
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EFDF4
	movs r0, #0
	cmp r2, r3
	ble .L082EFE00
	movs r0, #1
	b .L082EFE00
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xc000 @ .raw stmia r0!, {}
	.2byte 0xffff @ .raw
.L082EFDF4:
	movs r0, #0
	cmp r2, r3
	bge .L082EFE00
	movs r0, #1
	b .L082EFE00
.L082EFDFE:
	movs r0, #0
.L082EFE00:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFE08
	.thumb_func
sub_082EFE08:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #7
	bhi .L082EFE8C
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r6, #68]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r7, #3
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r2, #1
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r4, #10
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r2, #13
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #47
	movs r1, #0
	strb r1, [r0, #0]
	subs r0, #1
	strb r1, [r0, #0]
	b .L082EFE8C
	movs r0, r0
	lsls r5, r2, #15
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r1, #17
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r7, #18
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EFE8A:
	str r0, [r1, #0]
.L082EFE8C:
	bx lr
	.2byte 0x0000
	.4byte 0x082F051D

	.thumb
	.align 1, 0
	.global sub_082EFE94
	.thumb_func
sub_082EFE94:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #5
	bhi .L082EFF20
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r2, #72]
	lsrs r5, r7, #32
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082EFEBE
	adds r0, r4, #0
	movs r1, #5
	bl sub_082EFE08
.L082EFEBE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #5
	b .L082EFF14
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082EFEE0
	adds r0, r4, #0
	movs r1, #6
	bl sub_082EFE08
.L082EFEE0:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #6
	b .L082EFF14
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082EFF02
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EFE08
.L082EFF02:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #7
.L082EFF14:
	bl sub_082EFE08
.L082EFF18:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
.L082EFF1E:
	strb r0, [r1, #0]
.L082EFF20:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFF28
	.thumb_func
sub_082EFF28:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_082F8A24
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r1, [r0, #0]
	movs r0, #82
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [pc, #68]
	mov r5, ip
	strh r0, [r5, #0]
	str r1, [r4, #64]
	str r1, [r4, #68]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #87
	strb r3, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r3, [r0, #0]
	adds r1, #24
	movs r0, #250
	lsls r0, r0, #1
	strh r0, [r1, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EFFB2
	cmp r0, #1
	bgt .L082EFFA0
	cmp r0, #0
	beq .L082EFFAA
	b .L082EFFCA
	movs r0, r0
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EFFA0:
	cmp r0, #2
	beq .L082EFFBA
	cmp r0, #3
	beq .L082EFFC2
	b .L082EFFCA
.L082EFFAA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #10
	b .L082EFFC8
.L082EFFB2:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #20
	b .L082EFFC8
.L082EFFBA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #30
	b .L082EFFC8
.L082EFFC2:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #40
.L082EFFC8:
	strh r0, [r1, #0]
.L082EFFCA:
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EFFDE
	adds r0, r4, #0
	movs r1, #8
	bl sub_082EFE08
	b .L082EFFE6
.L082EFFDE:
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EFE08
.L082EFFE6:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F000C
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	movs r2, #8
	movs r3, #0
	bl Sprite_Init
	b .L082F0022
	asrs r0, r6, #14
	lsrs r2, r2, #32
.L082F000C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #44]
	movs r2, #9
	movs r3, #0
	bl Sprite_Init
.L082F0022:
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082F0030
	subs r1, #139
	strh r0, [r1, #0]
.L082F0030:
	adds r0, r4, #0
	adds r0, #216
	movs r2, #0
	str r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	strb r2, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081213B0
	.4byte 0x082EFE95

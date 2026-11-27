	.include "asm/macros.inc"
	.syntax unified
	.text

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

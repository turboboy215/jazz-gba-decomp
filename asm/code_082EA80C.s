	.include "asm/macros.inc"
	.syntax unified
	.text

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
	bl sub_08000A1C
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
	bl sub_080002E0
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
	bl sub_080002E0
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
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EAC5E
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
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
	bl sub_08000990
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
	bl sub_08000A1C
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

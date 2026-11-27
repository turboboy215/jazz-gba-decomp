	.include "asm/macros.inc"
	.syntax unified
	.text

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
	bl sub_08000A1C
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
	bl sub_080002E0
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
	bl sub_080002E0
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
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EFB10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
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
	bl sub_08000990
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
	bl sub_08000A1C
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

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F894C
	.thumb_func
sub_082F894C:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F89E2
	adds r6, r4, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r7, [pc, #76]
	adds r1, r7, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F89F4
	adds r0, r7, #0
	adds r0, #46
	ldrb r5, [r0, #0]
	cmp r5, #1
	bne .L082F89F4
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r1, [r7, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	bge .L082F89BC
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r5, [r0, #0]
	add r0, sp, #8
	strb r5, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r3, #0
	bl sub_08306DD4
	strb r5, [r4, #14]
	b .L082F89E2
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F89BC:
	ldr r1, [pc, #44]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r5, [r0, #0]
	add r0, sp, #8
	strb r5, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	movs r0, #0
	strb r0, [r4, #14]
.L082F89E2:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F89FA
	movs r0, r0
	str r0, [r2, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F89F4:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F89FA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F8A04
	.thumb_func
sub_082F8A04:
	movs r2, #0
	ldr r1, [pc, #20]
	ldr r0, [pc, #20]
.L082F8A0A:
	str r1, [r0, #96]
	str r0, [r1, #16]
	adds r1, #24
	adds r0, #248
	adds r2, #1
	cmp r2, #8
	bne .L082F8A0A
	bx lr
	.2byte 0x0000
	.4byte 0x02004BC0
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082F8A24
	.thumb_func
sub_082F8A24:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	cmp r1, #27
	bls .L082F8A30
	b .L082F8DDC
.L082F8A30:
	lsls r0, r1, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r3, #104]
	lsrs r5, r7, #32
	ldr r1, [r4, #96]
	movs r0, #0
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #10
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r4, [pc, #420]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #1
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #11
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r6, [pc, #580]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #2
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #12
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r7, [pc, #548]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #3
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #13
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r5, [r4, r1]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #4
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #14
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r2, r2]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #5
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #15
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r1, [r7, r4]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #6
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #16
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsb r5, [r0, r3]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #7
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #17
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsb r5, [r4, r6]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #8
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #18
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrh r5, [r3, r0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #9
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #19
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsh r5, [r1, r6]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #10
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #20
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r5, [r6, r0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #11
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #21
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r2, #44]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #12
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #22
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r1, #76]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #13
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #23
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r1, #92]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #14
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #24
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r2, #124]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #15
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #25
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r5, [r4, #48]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #16
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #26
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r1, [r4, #80]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #17
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #27
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r2, #0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #18
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #28
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r1, [r6, #3]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #19
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #29
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r6, #14]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #20
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #30
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r3, #22]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #21
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #31
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r2, #29]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #22
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #32
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r5, [r5, #8]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #27
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #37
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r1, [r4, #24]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #23
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #33
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r6, #10]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #24
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #34
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r1, [r2, #44]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #25
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #28]
	ldr r1, [pc, #32]
	str r1, [sp, #0]
	movs r1, #35
.L082F8D94:
	adds r2, r3, #0
	bl sub_082FB9A8
	ldr r0, [r4, #96]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_082FB9BC
	b .L082F8DDC
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r1, #28]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #26
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #32]
	ldr r1, [pc, #36]
	str r1, [sp, #0]
	movs r1, #36
	adds r2, r3, #0
	bl sub_082FB9A8
	ldr r0, [r4, #96]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_082FB9BC
.L082F8DDC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0000FFFF
	.4byte 0x082F890D

	.thumb
	.align 1, 0
	.global sub_082F8DEC
	.thumb_func
sub_082F8DEC:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8EB2
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	strh r2, [r0, #10]
	ldr r1, [sp, #0]
	movs r0, #255
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	str r5, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F8E74
	ldr r0, [r4, #52]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #56]
	ldr r2, [pc, #28]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F8E9A
	movs r0, r0
	b .L082F8E70
	.2byte 0xffff @ .raw
.L082F8E70:
	.2byte 0xe410 @ b.n 0x82f8694
	lsrs r7, r1, #32
.L082F8E74:
	ldr r0, [r4, #52]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #56]
	ldr r2, [pc, #60]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #56]
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F8E9A:
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strh r2, [r0, #6]
	ldr r1, [sp, #0]
	movs r0, #6
	strh r0, [r1, #8]
	ldr r0, [sp, #0]
	strh r2, [r0, #12]
.L082F8EB2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFE000
	.4byte 0xFFFFFD00
	.4byte 0x080FE410
	.4byte 0x082F8ED1

	.thumb
	.align 1, 0
	.global sub_082F8ED0
	.thumb_func
sub_082F8ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #6
	negs r6, r6
	str r6, [sp, #0]
	movs r7, #6
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8F08
	movs r0, #1
	ldrb r1, [r5, #14]
	subs r0, r0, r1
	strb r0, [r5, #14]
	ldr r0, [r5, #28]
	negs r0, r0
	str r0, [r5, #28]
.L082F8F08:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r7, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	mov r8, r4
	cmp r0, #0
	beq .L082F8F36
	ldr r0, [r5, #32]
	negs r0, r0
	str r0, [r5, #32]
.L082F8F36:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	adds r1, #64
	str r1, [r5, #32]
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F8FE0
	movs r7, #0
	ldr r4, [pc, #124]
	mov r9, r8
.L082F8F54:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F8FC6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8FC6
	movs r2, #1
	adds r0, r5, #0
	adds r0, #144
	ldr r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, r4
	bne .L082F8F86
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L082F8F86
	subs r0, r1, #1
	strh r0, [r5, #8]
	movs r2, #0
.L082F8F86:
	cmp r2, #0
	beq .L082F8FC6
	mov r0, r9
	ldr r1, [pc, #68]
	bl sub_080003FC
	mov r0, r9
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #60
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r7, r1
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F8FC6:
	adds r4, #248
	adds r7, #1
	cmp r7, #3
	bls .L082F8F54
	b .L082F9078
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F8FE0:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F901C
	ldr r1, [pc, #32]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	b .L082F905E
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
.L082F901C:
	ldrh r0, [r5, #8]
	movs r1, #8
	ldrsh r6, [r5, r1]
	cmp r6, #0
	bne .L082F9074
	adds r4, r5, #0
	adds r4, #144
	ldr r1, [r4, #0]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9078
	ldr r1, [pc, #48]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	movs r1, #45
	str r1, [sp, #0]
	add r2, sp, #4
	movs r1, #1
	strb r1, [r2, #0]
	add r1, sp, #8
	strb r6, [r1, #0]
.L082F905E:
	movs r1, #5
	movs r2, #15
	movs r3, #2
	bl sub_08306DD4
	b .L082F90D8
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
.L082F9074:
	subs r0, #1
	strh r0, [r5, #8]
.L082F9078:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #192
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F90AE
	ldr r1, [r5, #32]
	cmp r1, #0
	blt .L082F90AE
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne .L082F90C2
	movs r0, #6
	strh r0, [r5, #6]
	asrs r0, r1, #1
	negs r0, r0
	str r0, [r5, #32]
	ldr r1, [pc, #64]
	cmp r0, r1
	ble .L082F90AE
	str r1, [r5, #32]
.L082F90AE:
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq .L082F90D8
	subs r0, r1, #1
	strh r0, [r5, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L082F90D8
.L082F90C2:
	ldr r1, [pc, #40]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
.L082F90D8:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE00
	.4byte 0x08176790
	.4byte 0x082F90F5

	.thumb
	.align 1, 0
	.global sub_082F90F4
	.thumb_func
sub_082F90F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	adds r5, r0, #0
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082F9110
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082F9110:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9124
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F9130
.L082F9124:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F9130:
	mov r8, r4
	movs r4, #1
	ldrh r1, [r5, #10]
	subs r0, r4, r1
	movs r7, #0
	strh r0, [r5, #10]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082F91F4
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	beq .L082F91A4
	movs r6, #0
	ldr r4, [pc, #72]
.L082F9152:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F9190
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9190
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F9190:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082F9152
	b .L082F91F4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F91A4:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F91CA
	ldr r0, [sp, #12]
	str r6, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082F91CA:
	adds r6, r5, #0
	adds r6, #144
	ldr r1, [r6, #0]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F91F4
	ldr r0, [r6, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082F91F4:
	mov r0, r8
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9206
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9206:
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F9214
	.thumb_func
sub_082F9214:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F922A
	b .L082F9436
.L082F922A:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #72]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082F92FC
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F92A4
	ldr r0, [r1, #56]
	ldr r1, [pc, #44]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F92D4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F92E8
	movs r0, r0
	str r4, [sp, #276]
	lsrs r7, r5, #32
	.2byte 0xf100, 0xffff @ bl 0x83fa2a2
.L082F92A4:
	ldr r0, [r1, #56]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F92D4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F92E8
	movs r0, r0
	.2byte 0xe300 @ b.n 0x82f98d4
	.2byte 0xffff @ .raw
.L082F92D4:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #20]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
.L082F92E8:
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	b .L082F93EA
	movs r0, r0
	.2byte 0xea00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F92FC:
	cmp r0, #1
	bne .L082F9350
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F933C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	b .L082F93EA
	movs r0, r0
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F933C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082F93A2
	movs r0, r0
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
.L082F9350:
	cmp r0, #3
	bne .L082F9378
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L082F93E4
	b .L082F9374
	.2byte 0xffff @ .raw
.L082F9374:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9378:
	cmp r0, #2
	bne .L082F93C8
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F93B0
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082F93A2:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082F93EA
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F93B0:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	b .L082F93E6
	movs r0, r0
	b .L082F93C8
	.2byte 0xffff @ .raw
.L082F93C8:
	cmp r0, #4
	bne .L082F93EA
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L082F93E4:
	str r0, [r1, #32]
.L082F93E6:
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082F93EA:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9408
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	b .L082F9416
	movs r0, r0
	adds r4, #192
	lsrs r7, r1, #32
.L082F9408:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #5
	movs r3, #0
	bl sub_080002E0
.L082F9416:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9436
	movs r0, #1
	bl sub_083189D0
.L082F9436:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0

	.thumb
	.align 1, 0
	.global sub_082F9444
	.thumb_func
sub_082F9444:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #16]
.L082F9456:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #1
	negs r6, r6
	str r6, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F949A
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F949A
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F94A8
.L082F949A:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082F9660
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F94A8:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9574
	movs r6, #0
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	ldr r7, [pc, #60]
	movs r2, #80
	adds r2, r2, r7
	mov sl, r2
	adds r4, r7, #0
	mov r9, r6
.L082F94D6:
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r6, r0
	beq .L082F955A
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F955A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F955A
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F950C
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F9516
	movs r5, #12
	lsls r0, r0, #12
.L082F950C:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F9516:
	adds r0, r7, #0
	adds r0, #52
	add r0, r9
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #15
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #32]
	adds r1, r6, r1
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F955A:
	movs r3, #248
	add sl, r3
	adds r4, #248
	add r9, r3
	adds r6, #1
	cmp r6, #3
	bls .L082F94D6
	b .L082F95E4
	movs r0, r0
	str r6, [sp, #468]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F9574:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F95E4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9596
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F95A0
.L082F9596:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F95A0:
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #88
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F95BC
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
.L082F95BC:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	b .L082F9660
	movs r0, r0
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F95E4:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F960C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	b .L082F9626
.L082F960C:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #240
.L082F9626:
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F963A
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9660
.L082F963A:
	ldr r0, [r5, #20]
	ldr r4, [pc, #48]
	cmp r0, r4
	bgt .L082F9648
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9648:
	ldr r0, [r5, #24]
	cmp r0, r4
	bgt .L082F9654
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9654:
	ldr r0, [sp, #16]
	adds r0, #1
	str r0, [sp, #16]
	cmp r0, #1
	bhi .L082F9660
	b .L082F9456
.L082F9660:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x000007FF

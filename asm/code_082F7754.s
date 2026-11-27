	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F7754
	.thumb_func
sub_082F7754:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F77FC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	movs r0, #40
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #64]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #52]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F77D8
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F77F6
	ldrb r1, [r2, #0]
	lsrs r7, r5, #32
	bvs .L082F77D4
	.2byte 0xffff @ .raw
.L082F77D4:
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F77D8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F77F6:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F77FC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE00
	.4byte 0xFFFFD800
	.4byte 0x080FA3D0

	.thumb
	.align 1, 0
	.global sub_082F7810
	.thumb_func
sub_082F7810:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F782C
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F78C8
.L082F782C:
	ldr r0, [r4, #20]
	ldr r1, [r4, #28]
	adds r0, r0, r1
	str r0, [r4, #20]
	ldr r0, [r4, #24]
	ldr r1, [r4, #32]
	adds r0, r0, r1
	str r0, [r4, #24]
	subs r1, #2
	str r1, [r4, #32]
	adds r0, r5, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F7854
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F786C
.L082F7854:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F7864
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F786E
	subs r0, #4
	b .L082F786C
.L082F7864:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F786E
	adds r0, #4
.L082F786C:
	str r0, [r4, #28]
.L082F786E:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F78C8
	ldr r5, [pc, #80]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F78C8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F78C8
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F78C8
	movs r0, #40
	strb r0, [r4, #16]
	adds r2, r4, #0
	adds r2, #148
	str r5, [r2, #0]
	adds r0, r1, #1
	strb r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r2, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r4, #8]
	adds r0, r6, #0
	bl sub_080006AC
.L082F78C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x082F78D9

	.thumb
	.align 1, 0
	.global sub_082F78D8
	.thumb_func
sub_082F78D8:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F792A
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F78FC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7908
.L082F78FC:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7908:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7932
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F792A
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F792A:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7A24
.L082F7932:
	adds r3, r5, #0
	adds r3, #148
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	adds r6, r3, #0
	cmp r1, r0
	ble .L082F7954
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F7954:
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F7970
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F7970:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F7A14
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r7, #8
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082F79B6
	adds r0, r2, #0
	subs r0, #128
	b .L082F79BE
.L082F79B6:
	cmp r2, r0
	bge .L082F79C0
	adds r0, r2, #0
	adds r0, #128
.L082F79BE:
	str r0, [r5, #20]
.L082F79C0:
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	adds r5, r0, #0
	cmp r5, #0
	bne .L082F7A24
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F7A24
	ldr r0, [r6, #0]
	ldr r2, [pc, #28]
	ldr r1, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	str r5, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082F7A24
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7A14:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F7A24:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7A2C
	.thumb_func
sub_082F7A2C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F7A42
	b .L082F7BF0
.L082F7A42:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
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
	ldr r1, [pc, #76]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #64]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #0
	bne .L082F7AD0
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #28]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7AC4
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #224
	lsls r2, r2, #5
	b .L082F7BAE
	ldrb r1, [r0, #16]
	lsrs r7, r5, #32
	b .L082F7AC0
	.2byte 0xffff @ .raw
.L082F7AC0:
	.2byte 0xe600 @ b.n 0x82f76c4
	.2byte 0xffff @ .raw
.L082F7AC4:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	.2byte 0xe400 @ b.n 0x82f72d0
	.2byte 0xffff @ .raw
.L082F7AD0:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #1
	bne .L082F7B0C
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7B00
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #180
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	bvs .L082F7B00
	.2byte 0xffff @ .raw
.L082F7B00:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	bcc .L082F7B0C
	.2byte 0xffff @ .raw
.L082F7B0C:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #2
	bne .L082F7B48
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7B3C
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #208
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	.2byte 0xc200 @ .raw stmia r2!, {}
	.2byte 0xffff @ .raw
.L082F7B3C:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
.L082F7B48:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #3
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #4
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #5
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #6
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #7
	bne .L082F7BB2
.L082F7B84:
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7BA8
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	add r6, pc, #0
	.2byte 0xffff @ .raw
.L082F7BA8:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #32]
.L082F7BAE:
	adds r0, r0, r2
	str r0, [r1, #20]
.L082F7BB2:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7BD8
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F7BEA
	bmi .L082F7BD4
	.2byte 0xffff @ .raw
.L082F7BD4:
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F7BD8:
	ldr r0, [pc, #28]
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F7BEA:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F7BF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE80
	.4byte 0x080FA3D0

	.thumb
	.align 1, 0
	.global sub_082F7C00
	.thumb_func
sub_082F7C00:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7C1C
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F7CBE
.L082F7C1C:
	ldr r0, [r4, #20]
	ldr r1, [r4, #28]
	adds r0, r0, r1
	str r0, [r4, #20]
	ldr r0, [r4, #24]
	ldr r1, [r4, #32]
	adds r0, r0, r1
	str r0, [r4, #24]
	subs r1, #12
	str r1, [r4, #32]
	adds r0, r5, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F7C44
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F7C5C
.L082F7C44:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F7C54
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F7C5E
	subs r0, #4
	b .L082F7C5C
.L082F7C54:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F7C5E
	adds r0, #4
.L082F7C5C:
	str r0, [r4, #28]
.L082F7C5E:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F7CBE
	ldr r5, [pc, #84]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F7CBE
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F7CBE
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F7CBE
	adds r2, r4, #0
	adds r2, #148
	ldr r0, [r2, #0]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r4, #16]
	str r5, [r2, #0]
	adds r0, r1, #1
	strb r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #32]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r2, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r4, #8]
	adds r0, r6, #0
	bl sub_080006AC
.L082F7CBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x082F7CCD

	.thumb
	.align 1, 0
	.global sub_082F7CCC
	.thumb_func
sub_082F7CCC:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F7D1E
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F7CF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7CFC
.L082F7CF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7CFC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7D26
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F7D1E
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F7D1E:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7E18
.L082F7D26:
	adds r3, r5, #0
	adds r3, #148
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	adds r6, r3, #0
	cmp r1, r0
	ble .L082F7D48
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F7D48:
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F7D64
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F7D64:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F7E08
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r7, #8
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082F7DAA
	adds r0, r2, #0
	subs r0, #128
	b .L082F7DB2
.L082F7DAA:
	cmp r2, r0
	bge .L082F7DB4
	adds r0, r2, #0
	adds r0, #128
.L082F7DB2:
	str r0, [r5, #20]
.L082F7DB4:
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	adds r5, r0, #0
	cmp r5, #0
	bne .L082F7E18
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F7E18
	ldr r0, [r6, #0]
	ldr r2, [pc, #28]
	ldr r1, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	str r5, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082F7E18
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7E08:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F7E18:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7E20
	.thumb_func
sub_082F7E20:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F7EE6
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #72]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7EAC
	movs r0, #128
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #208
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L082F7ECA
	movs r0, r0
	bcc .L082F7EA4
	.2byte 0xffff @ .raw
.L082F7EA4:
	ldrb r5, [r7, #27]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F7EAC:
	ldr r0, [pc, #64]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #60]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
.L082F7ECA:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7EDC
	movs r0, #40
	bl sub_083189D0
.L082F7EDC:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #6]
	ldr r0, [sp, #0]
	strh r1, [r0, #8]
.L082F7EE6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFCC00
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F7EFC
	.thumb_func
sub_082F7EFC:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082F7F10
	adds r0, r1, #1
	strh r0, [r5, #8]
.L082F7F10:
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #15
	ble .L082F7FB4
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F7F40
	ldr r1, [r5, #28]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F7F68
	adds r0, r1, #0
	subs r0, #15
	b .L082F7F66
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F7F40:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F7F5C
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F7F68
	adds r0, r1, #0
	adds r0, #15
	b .L082F7F66
	lsls r7, r1, #6
	movs r0, r0
.L082F7F5C:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F7F68
	movs r0, #0
.L082F7F66:
	str r0, [r5, #28]
.L082F7F68:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F7F90
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F7FB4
	adds r0, r1, #0
	subs r0, #15
	b .L082F7FB2
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F7F90:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F7FB0
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F7FB4
	adds r0, r1, #0
	adds r0, #15
	b .L082F7FB2
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f7dac
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F7FB0:
	movs r0, #0
.L082F7FB2:
	str r0, [r5, #32]
.L082F7FB4:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F7FCA
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F7FCA
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F802A
.L082F7FCA:
	cmp r1, #0
	ble .L082F7FEC
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F7FDE
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F802A
.L082F7FDE:
	cmp r0, #0
	ble .L082F7FEC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F802A
.L082F7FEC:
	cmp r1, #0
	bge .L082F8000
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F8000
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F802A
.L082F8000:
	cmp r1, #0
	ble .L082F800E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F802A
.L082F800E:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F801E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F802A
.L082F801E:
	cmp r0, #0
	bge .L082F8032
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F802A:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F8042
.L082F8032:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F8042
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F8042:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8070
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #150
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F80A8
.L082F8070:
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8098
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F80A0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r3, #10]
	lsrs r7, r5, #32
.L082F8098:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F80A0:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F814E
.L082F80A8:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F80CC
	adds r0, r5, #0
	bl sub_082F4B78
.L082F80CC:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8148
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F80F0
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F80F8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F80F0:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F80F8:
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [pc, #52]
	ldr r2, [pc, #52]
	ldr r1, [pc, #56]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	b .L082F814E
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r3, #10]
	lsrs r7, r5, #32
.L082F8148:
	adds r0, r6, #0
	bl sub_08000704
.L082F814E:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

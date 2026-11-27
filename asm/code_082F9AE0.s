	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F9AE0
	.thumb_func
sub_082F9AE0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F9AF6
	b .L082F9DA0
.L082F9AF6:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
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
	bne .L082F9BE0
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F9B88
	ldr r0, [r1, #56]
	ldr r1, [pc, #44]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9B74
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	b .L082F9BCC
	movs r0, r0
	ldr r5, [sp, #708]
	lsrs r7, r5, #32
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082F9B74:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #4]
	b .L082F9BC4
	movs r0, r0
	bgt .L082F9B88
	.2byte 0xffff @ .raw
.L082F9B88:
	ldr r0, [r1, #56]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9BB8
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #192
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	b .L082F9BCC
	movs r0, r0
	.2byte 0xe200 @ b.n 0x82f9fb8
	.2byte 0xffff @ .raw
.L082F9BB8:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #20]
.L082F9BC4:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
.L082F9BCC:
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	b .L082F9D24
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082F9BE0:
	cmp r0, #1
	bne .L082F9C24
	ldr r0, [r1, #56]
	ldr r1, [pc, #36]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	negs r0, r0
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9C10
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #224
	lsls r2, r2, #4
	b .L082F9CB8
	.2byte 0xce00 @ .raw ldmia r6!, {}
	.2byte 0xffff @ .raw
.L082F9C10:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #4]
	b .L082F9CD2
	movs r0, r0
	.2byte 0xf200, 0xffff @ bl 0x84fac22
.L082F9C24:
	cmp r0, #3
	bne .L082F9C70
	ldr r0, [r1, #56]
	ldr r1, [pc, #36]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	negs r0, r0
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9C58
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	b .L082F9C66
	movs r0, r0
	.2byte 0xc200 @ .raw stmia r2!, {}
	.2byte 0xffff @ .raw
	.2byte 0xf600, 0xffff @ bl 0x80fac56
.L082F9C58:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #4
.L082F9C66:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
	b .L082F9D24
.L082F9C70:
	cmp r0, #2
	bne .L082F9CE8
	ldr r0, [r1, #56]
	ldr r1, [pc, #32]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #3
	beq .L082F9C90
	cmp r0, #5
	bne .L082F9C9C
.L082F9C90:
	movs r0, #128
	lsls r0, r0, #2
	b .L082F9CA0
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9C9C:
	movs r0, #128
	lsls r0, r0, #1
.L082F9CA0:
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9CC6
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
.L082F9CB8:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	b .L082F9D24
.L082F9CC6:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
.L082F9CD2:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082F9D24
	movs r0, r0
	b .L082F9CE4
	.2byte 0xffff @ .raw
.L082F9CE4:
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082F9CE8:
	cmp r0, #4
	bne .L082F9D24
	ldr r0, [r1, #56]
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #32]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9D14
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #3
	b .L082F9D20
.L082F9D14:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
.L082F9D20:
	adds r0, r0, r2
	str r0, [r1, #20]
.L082F9D24:
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r1, [r0, #64]
	asrs r1, r1, #1
	ldr r0, [r2, #28]
	adds r0, r0, r1
	str r0, [r2, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9D58
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F9D66
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F9D58:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #72]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F9D66:
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9D9A
	ldr r2, [pc, #48]
	ldr r0, [sp, #0]
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F9D9A
	movs r0, #9
	bl sub_083189D0
.L082F9D9A:
	ldr r1, [sp, #0]
	movs r0, #6
	strh r0, [r1, #8]
.L082F9DA0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x080FA3D0
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_082F9DB0
	.thumb_func
sub_082F9DB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9DD4
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9F3A
.L082F9DD4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	subs r1, #12
	str r1, [r5, #32]
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F9DFC
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F9E14
.L082F9DFC:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9E0C
	ldr r0, [r5, #28]
	cmp r0, #0
	ble .L082F9E16
	subs r0, #4
	b .L082F9E14
.L082F9E0C:
	ldr r0, [r5, #28]
	cmp r0, #0
	bge .L082F9E16
	adds r0, #4
.L082F9E14:
	str r0, [r5, #28]
.L082F9E16:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	cmp r0, #0
	ble .L082F9E24
	b .L082F9F3A
.L082F9E24:
	movs r0, #6
	strh r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	mov r8, r6
	cmp r0, #10
	bls .L082F9E3A
	b .L082F9F3A
.L082F9E3A:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9ECE
	movs r7, #0
	movs r0, #144
	adds r0, r0, r5
	mov r9, r0
	adds r6, #108
	movs r2, #0
.L082F9E50:
	mov r1, r9
	ldr r0, [r1, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r7, r0
	beq .L082F9EC4
	ldr r0, [pc, #92]
	adds r4, r2, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F9EC4
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp, #4]
	bl sub_0800104C
	lsls r0, r0, #24
	ldr r2, [sp, #4]
	cmp r0, #0
	beq .L082F9EC4
	adds r1, r4, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L082F9EC4
	str r4, [r6, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r6, #0]
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F9F28
	mov r0, r8
	movs r1, #2
	bl sub_08000680
	b .L082F9F3A
	movs r5, #12
	lsls r0, r0, #12
	ldr r7, [sp, #292]
	lsrs r7, r5, #32
.L082F9EC4:
	adds r2, #248
	adds r7, #1
	cmp r7, #3
	bls .L082F9E50
	b .L082F9F3A
.L082F9ECE:
	adds r0, r5, #0
	mov r1, sp
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F9F3A
	ldr r0, [sp, #0]
	adds r1, r0, #0
	adds r1, #87
	ldrb r2, [r1, #0]
	cmp r2, #1
	bhi .L082F9F3A
	adds r4, r5, #0
	adds r4, #148
	str r0, [r4, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r5, #6]
	ldr r0, [r4, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [r4, #0]
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F9F32
	adds r0, r6, #0
	b .L082F9F2A
	movs r0, r0
	ldr r7, [sp, #292]
	lsrs r7, r5, #32
.L082F9F28:
	mov r0, r8
.L082F9F2A:
	movs r1, #3
	bl sub_08000680
	b .L082F9F3A
.L082F9F32:
	adds r0, r6, #0
	movs r1, #2
	bl sub_08000680
.L082F9F3A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F9F48
	.thumb_func
sub_082F9F48:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #148
	ldr r0, [r6, #0]
	cmp r0, #0
	beq .L082F9F7A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9F82
	ldr r0, [r6, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F9F7A
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F9F7A:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082FA09C
.L082F9F82:
	ldr r0, [r6, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F9F9E
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F9F9E:
	ldr r0, [r6, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F9FBA
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F9FBA:
	ldr r2, [r6, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082FA08C
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r3, #6
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r6, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082FA000
	adds r0, r2, #0
	subs r0, #128
	b .L082FA008
.L082FA000:
	cmp r2, r0
	bge .L082FA00A
	adds r0, r2, #0
	adds r0, #128
.L082FA008:
	str r0, [r5, #20]
.L082FA00A:
	adds r6, r5, #0
	adds r6, #148
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
	cmp r0, #0
	bne .L082FA09C
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082FA09C
	movs r4, #2
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA074
	movs r4, #0
	ldr r0, [r6, #0]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #20]
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0]
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	b .L082FA09C
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA074:
	ldr r0, [r6, #0]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082FA09C
.L082FA08C:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r6, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA09C:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FA0A4
	.thumb_func
sub_082FA0A4:
	push {r4, r5, lr}
	sub sp, #16
	adds r5, r0, #0
	add r0, sp, #12
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	beq .L082FA0BA
	b .L082FA346
.L082FA0BA:
	movs r0, #35
	bl sub_083189D0
	ldr r0, [sp, #12]
	adds r0, #144
	str r5, [r0, #0]
	ldr r0, [sp, #12]
	movs r3, #0
	strb r4, [r0, #3]
	ldr r0, [sp, #12]
	strb r4, [r0, #4]
	ldr r1, [sp, #12]
	ldr r0, [r5, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #12]
	ldr r0, [r5, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #12]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #12]
	ldrb r0, [r5, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #12]
	strh r3, [r0, #10]
	ldr r0, [sp, #12]
	strh r3, [r0, #12]
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FA164
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FA124
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FA12A
	movs r0, r0
	add r3, pc, #500
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7efb122
.L082FA124:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082FA12A:
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA150
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
	b .L082FA18C
	movs r0, r0
	.2byte 0xe400 @ b.n 0x82f9950
	.2byte 0xffff @ .raw
.L082FA150:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	adds r0, r0, r3
	b .L082FA24A
	b .L082FA164
	.2byte 0xffff @ .raw
.L082FA164:
	cmp r0, #1
	bne .L082FA1B8
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA1A4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
.L082FA18C:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #12]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #28]
	b .L082FA284
	movs r0, r0
	beq .L082FA1A0
	.2byte 0xffff @ .raw
.L082FA1A0:
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1A4:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082FA22E
	movs r0, r0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1B8:
	cmp r0, #3
	bne .L082FA204
	ldrb r0, [r2, #14]
	cmp r0, #0
	bne .L082FA1D0
	ldr r0, [r1, #52]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	b .L082FA1D8
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1D0:
	ldr r0, [r1, #52]
	movs r3, #192
	lsls r3, r3, #3
	adds r0, r0, r3
.L082FA1D8:
	str r0, [r2, #20]
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #20]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #12]
	ldr r0, [pc, #16]
	str r0, [r1, #32]
	ldr r1, [sp, #12]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FA284
	movs r0, r0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA204:
	cmp r0, #2
	bne .L082FA25C
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	movs r2, #160
	lsls r2, r2, #3
	str r2, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA23C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082FA22E:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #12]
	str r2, [r0, #28]
	b .L082FA284
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA23C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
	adds r0, r0, r2
.L082FA24A:
	str r0, [r1, #20]
	ldr r1, [sp, #12]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082FA284
	b .L082FA258
	.2byte 0xffff @ .raw
.L082FA258:
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA25C:
	cmp r0, #4
	bne .L082FA284
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #12]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #32]
	ldr r0, [sp, #12]
	str r3, [r0, #28]
.L082FA284:
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA2A0
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #8]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082FA2AE
	.2byte 0xe2d0 @ b.n 0x82fa840
	lsrs r7, r1, #32
.L082FA2A0:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #140]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082FA2AE:
	ldr r1, [sp, #12]
	movs r0, #6
	strh r0, [r1, #6]
	ldr r1, [sp, #12]
	movs r0, #180
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldr r2, [sp, #12]
	ldr r0, [r2, #20]
	ldr r1, [r2, #24]
	ldr r2, [r2, #28]
	movs r5, #1
	negs r5, r5
	str r5, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r5, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA2F4
	ldr r2, [sp, #12]
	ldr r0, [r2, #20]
	ldr r1, [r2, #24]
	ldr r2, [r2, #32]
	str r5, [sp, #0]
	str r4, [sp, #4]
	adds r3, r5, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA30E
.L082FA2F4:
	ldr r0, [sp, #12]
	adds r0, #140
	ldr r1, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [sp, #12]
	adds r0, #40
	ldr r1, [pc, #56]
	bl sub_080003FC
	ldr r0, [sp, #12]
	adds r0, #40
	bl sub_080006AC
.L082FA30E:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA340
	ldr r1, [sp, #12]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA346
	movs r0, #35
	bl sub_083189D0
	b .L082FA346
	.2byte 0xe2d0 @ b.n 0x82fa8d8
	lsrs r7, r1, #32
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA340:
	movs r0, #35
	bl sub_083189D0
.L082FA346:
	add sp, #16
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

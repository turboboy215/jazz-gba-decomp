	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F6D20
	.thumb_func
sub_082F6D20:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F6DEA
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
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #64]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	adds r0, #148
	ldr r1, [r4, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #44]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F6DAC
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	b .L082F6DC4
	ldr r5, [r6, #92]
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7ef7da6
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F6DAC:
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
.L082F6DC4:
	movs r3, #0
	bl sub_080002E0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	bne .L082F6DE4
	ldr r0, [sp, #0]
	strb r1, [r0, #2]
	b .L082F6DEA
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xe200 @ b.n 0x82f71e0
	.2byte 0xffff @ .raw
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F6DE4:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F6DEA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F6DF4
	.thumb_func
sub_082F6DF4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6E10
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F6EB2
.L082F6E10:
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
	bne .L082F6E38
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F6E50
.L082F6E38:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F6E48
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F6E52
	subs r0, #4
	b .L082F6E50
.L082F6E48:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F6E52
	adds r0, #4
.L082F6E50:
	str r0, [r4, #28]
.L082F6E52:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F6EB2
	ldr r5, [pc, #84]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F6EB2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6EB2
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F6EB2
	adds r0, r5, #0
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r4, #16]
	adds r2, r4, #0
	adds r2, #148
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
.L082F6EB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x082F6EC1

	.thumb
	.align 1, 0
	.global sub_082F6EC0
	.thumb_func
sub_082F6EC0:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F6F12
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F6EE4
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F6EF0
.L082F6EE4:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F6EF0:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6F1A
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F6F12
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F6F12:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F700C
.L082F6F1A:
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
	ble .L082F6F3C
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F6F3C:
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
	bge .L082F6F58
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F6F58:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F6FFC
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
	ble .L082F6F9E
	adds r0, r2, #0
	subs r0, #128
	b .L082F6FA6
.L082F6F9E:
	cmp r2, r0
	bge .L082F6FA8
	adds r0, r2, #0
	adds r0, #128
.L082F6FA6:
	str r0, [r5, #20]
.L082F6FA8:
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
	bne .L082F700C
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F700C
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
	b .L082F700C
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F6FFC:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F700C:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

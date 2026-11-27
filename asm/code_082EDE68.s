	.include "asm/macros.inc"
	.syntax unified
	.text

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
	bl sub_080002E0
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
	bl sub_080002E0
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
	bl sub_08000990
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
	bl sub_08000A1C
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
	bl sub_08000990
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
	bl sub_08000990
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
	bl sub_08000990
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
	bl sub_08000990
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

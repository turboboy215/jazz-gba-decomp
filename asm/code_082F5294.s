	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F5294
	.thumb_func
sub_082F5294:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5342
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
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
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
	ldr r1, [sp, #0]
	ldr r0, [pc, #56]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5324
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L082F5342
	movs r0, r0
	ble .L082F5318
	.2byte 0xffff @ .raw
.L082F5318:
	strh r1, [r3, r5]
	lsrs r7, r5, #32
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
	strh r0, [r0, #36]
	lsrs r7, r2, #32
.L082F5324:
	ldr r0, [pc, #36]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #32]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F5342:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFD00
	.4byte 0xFFFFEC00
	.4byte 0x08178480

	.thumb
	.align 1, 0
	.global sub_082F5358
	.thumb_func
sub_082F5358:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
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
	beq .L082F53C4
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #60]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F53B2
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F53B2
	movs r0, #33
	bl sub_083189D0
.L082F53B2:
	ldrb r0, [r5, #14]
	cmp r0, #0
	beq .L082F5418
	b .L082F542C
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F53C4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #160
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F543C
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #68]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5412
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5412
	movs r0, #33
	bl sub_083189D0
.L082F5412:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F542C
.L082F5418:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5434
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F542C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5434:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5514
.L082F543C:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	adds r2, #64
	str r2, [r5, #32]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5464
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5464:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F550C
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F548C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5498
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F548C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5498:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #88]
	ldr r2, [pc, #88]
	ldr r1, [pc, #92]
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
	ldr r1, [pc, #64]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5514
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5514
	movs r0, #33
	bl sub_083189D0
	b .L082F5514
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F550C:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5514:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

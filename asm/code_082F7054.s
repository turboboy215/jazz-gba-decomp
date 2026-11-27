	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F7054
	.thumb_func
sub_082F7054:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F70CA
	adds r5, r4, #0
	adds r5, #144
	ldr r0, [r5, #0]
	ldr r0, [r0, #16]
	ldr r6, [pc, #40]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F70E0
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F7098
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F70A2
	b .L082F70A6
	movs r5, #12
	lsls r0, r0, #12
.L082F7098:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F70A2
	movs r3, #1
.L082F70A2:
	cmp r3, #0
	beq .L082F70E0
.L082F70A6:
	ldr r0, [pc, #44]
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #75
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
.L082F70CA:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F70E6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F70E0:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F70E6:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F70F0
	.thumb_func
sub_082F70F0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F7106
	b .L082F7212
.L082F7106:
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
	ldr r1, [pc, #32]
	str r1, [r0, #0]
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #9
	bne .L082F7158
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #10
	b .L082F718E
	strb r1, [r5, #8]
	lsrs r7, r5, #32
	bhi .L082F7158
	.2byte 0xffff @ .raw
.L082F7158:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #10
	bne .L082F717C
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #230
	lsls r0, r0, #1
	b .L082F718E
	bcc .L082F717C
	.2byte 0xffff @ .raw
.L082F717C:
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #150
	lsls r0, r0, #1
.L082F718E:
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	movs r0, #0
	strh r0, [r1, #8]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #52]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F71DC
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #134
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F71FA
	movs r0, r0
	ble .L082F71D4
	.2byte 0xffff @ .raw
.L082F71D4:
	bcs .L082F71D8
	.2byte 0xffff @ .raw
.L082F71D8:
	add r1, pc, #64
	lsrs r5, r3, #32
.L082F71DC:
	ldr r0, [pc, #60]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #56]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F71FA:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7212
	movs r0, #40
	bl sub_083189D0
.L082F7212:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFD00
	.4byte 0xFFFFBD00
	.4byte 0x081DA110

	.thumb
	.align 1, 0
	.global sub_082F7228
	.thumb_func
sub_082F7228:
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
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L082F729C
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7272
	movs r0, #41
	bl sub_083189D0
.L082F7272:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F728C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F7294
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F728C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F7294:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F7390
.L082F729C:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #19
	bgt .L082F72B0
	movs r0, #200
	str r0, [r5, #32]
	b .L082F72B2
.L082F72B0:
	str r1, [r5, #32]
.L082F72B2:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldrh r1, [r5, #6]
	adds r1, #10
	strh r1, [r5, #6]
	ldr r2, [pc, #76]
	movs r3, #6
	ldrsh r1, [r5, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsls r1, r1, #16
	asrs r1, r1, #23
	ldr r2, [r5, #32]
	adds r2, r2, r1
	ldr r1, [r5, #24]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F72EE
	adds r0, r5, #0
	bl sub_082F4B78
.L082F72EE:
	ldr r1, [pc, #36]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F7388
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F7318
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7324
	strh r4, [r5, r4]
	lsrs r5, r7, #32
	movs r5, #12
	lsls r0, r0, #12
.L082F7318:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7324:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
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
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7390
	movs r0, #41
	bl sub_083189D0
	b .L082F7390
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F7388:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F7390:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F838C
	.thumb_func
sub_082F838C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F844C
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	movs r0, #39
	strb r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #28]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F83E8
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F83F4
	movs r0, r0
	strh r1, [r3, #34]
	lsrs r7, r5, #32
.L082F83E8:
	ldr r0, [pc, #44]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #40]
.L082F83F4:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #4
	bne .L082F8424
	movs r0, #1
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	b .L082F8430
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f941e
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082F8424:
	movs r0, #0
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #36]
.L082F8430:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F844C
	movs r0, #20
	bl sub_083189D0
.L082F844C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFE800

	.thumb
	.align 1, 0
	.global sub_082F8458
	.thumb_func
sub_082F8458:
	push {r4, r5, r6, lr}
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
	bne .L082F8492
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F849A
.L082F8492:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F855C
.L082F849A:
	ldr r1, [r5, #24]
	ldr r0, [r5, #32]
	adds r1, r1, r0
	str r1, [r5, #24]
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F84B8
	adds r0, r5, #0
	bl sub_082F4B78
.L082F84B8:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #68]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F855C
	ldr r1, [pc, #60]
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8518
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #24]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
	b .L082F8528
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r0, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F8518:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #68]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_080002E0
.L082F8528:
	ldr r2, [pc, #60]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldrh r0, [r5, #6]
	cmp r0, #1
	bne .L082F8548
	ldr r0, [r5, #24]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r5, #24]
.L082F8548:
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F855C:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0xFFFFF600
	.4byte 0x082F8575

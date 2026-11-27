	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F64C8
	.thumb_func
sub_082F64C8:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F6500
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #24
	strh r0, [r1, #6]
	movs r0, #44
	bl sub_083189D0
.L082F6500:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F650D

	.thumb
	.align 1, 0
	.global sub_082F650C
	.thumb_func
sub_082F650C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
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
	beq .L082F65A8
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F6548
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F6552
	b .L082F6556
	movs r5, #12
	lsls r0, r0, #12
.L082F6548:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F6552
	movs r3, #1
.L082F6552:
	cmp r3, #0
	beq .L082F65A8
.L082F6556:
	adds r0, r4, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	movs r6, #7
	ldrh r1, [r0, #10]
	cmp r1, #1
	bne .L082F6568
	movs r6, #8
.L082F6568:
	ldr r5, [pc, #48]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	movs r3, #1
	cmp r1, r0
	bge .L082F6576
	movs r3, #0
.L082F6576:
	ldr r1, [pc, #40]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #1
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08306DD4
	b .L082F65B2
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F65A8:
	ldrh r1, [r4, #6]
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne .L082F65BA
.L082F65B2:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F65BE
.L082F65BA:
	subs r0, r1, #1
	strh r0, [r4, #6]
.L082F65BE:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F65C8
	.thumb_func
sub_082F65C8:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F666A
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
	ldr r2, [pc, #68]
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
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F664C
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L082F666A
	bhi .L082F6644
	.2byte 0xffff @ .raw
.L082F6644:
	str r1, [r0, #104]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F664C:
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
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
.L082F666A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFC00
	.4byte 0xFFFFF000
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F6680
	.thumb_func
sub_082F6680:
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
	beq .L082F66F0
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
	bne .L082F66C8
	movs r0, #41
	bl sub_083189D0
.L082F66C8:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F66E0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F66E8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #120]
	lsrs r7, r5, #32
.L082F66E0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F66E8:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F67AC
.L082F66F0:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F670E
	adds r0, r5, #0
	bl sub_082F4B78
.L082F670E:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F67A4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6734
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F6740
	movs r5, #12
	lsls r0, r0, #12
.L082F6734:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
.L082F6740:
	ldr r0, [pc, #76]
	ldr r2, [pc, #80]
	ldr r1, [pc, #80]
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
	ldr r1, [pc, #52]
	adds r0, r4, #0
	bl sub_080003FC
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F67AC
	movs r0, #41
	bl sub_083189D0
	b .L082F67AC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #120]
	lsrs r7, r5, #32
.L082F67A4:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F67AC:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

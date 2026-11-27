	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F8590
	.thumb_func
sub_082F8590:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F8656
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
	bne .L082F861C
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
	b .L082F863A
	movs r0, r0
	.2byte 0xe200 @ b.n 0x82f8a14
	.2byte 0xffff @ .raw
	strh r5, [r5, #50]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F861C:
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
.L082F863A:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F864C
	movs r0, #40
	bl sub_083189D0
.L082F864C:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #6]
	ldr r0, [sp, #0]
	strh r1, [r0, #8]
.L082F8656:
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
	.global sub_082F866C
	.thumb_func
sub_082F866C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082F8680
	adds r0, r1, #1
	strh r0, [r5, #8]
.L082F8680:
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #15
	ble .L082F8724
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F86B0
	ldr r1, [r5, #28]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F86D8
	adds r0, r1, #0
	subs r0, #15
	b .L082F86D6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F86B0:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F86CC
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F86D8
	adds r0, r1, #0
	adds r0, #15
	b .L082F86D6
	lsls r7, r1, #6
	movs r0, r0
.L082F86CC:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F86D8
	movs r0, #0
.L082F86D6:
	str r0, [r5, #28]
.L082F86D8:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F8700
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F8724
	adds r0, r1, #0
	subs r0, #15
	b .L082F8722
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F8700:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F8720
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F8724
	adds r0, r1, #0
	adds r0, #15
	b .L082F8722
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f851c
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F8720:
	movs r0, #0
.L082F8722:
	str r0, [r5, #32]
.L082F8724:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F873A
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F873A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F879A
.L082F873A:
	cmp r1, #0
	ble .L082F875C
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F874E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F879A
.L082F874E:
	cmp r0, #0
	ble .L082F875C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F879A
.L082F875C:
	cmp r1, #0
	bge .L082F8770
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F8770
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F879A
.L082F8770:
	cmp r1, #0
	ble .L082F877E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F879A
.L082F877E:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F878E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F879A
.L082F878E:
	cmp r0, #0
	bge .L082F87A2
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F879A:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F87B2
.L082F87A2:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F87B2
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F87B2:
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
	bne .L082F87E0
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #150
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F882C
.L082F87E0:
	ldr r1, [pc, #48]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8802
	movs r0, #41
	bl sub_083189D0
.L082F8802:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F881C
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F8824
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrh r1, [r6, #6]
	lsrs r7, r5, #32
.L082F881C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F8824:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F88E6
.L082F882C:
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
	bne .L082F8850
	adds r0, r5, #0
	bl sub_082F4B78
.L082F8850:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F88E0
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8874
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F887C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F8874:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F887C:
	adds r0, r6, #0
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
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F88E6
	movs r0, #41
	bl sub_083189D0
	b .L082F88E6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrh r1, [r6, #6]
	lsrs r7, r5, #32
.L082F88E0:
	adds r0, r6, #0
	bl sub_08000704
.L082F88E6:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

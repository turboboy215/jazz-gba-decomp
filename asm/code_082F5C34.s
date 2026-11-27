	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F5C34
	.thumb_func
sub_082F5C34:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5CF0
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
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5CC0
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F5CDE
	.2byte 0xf100, 0xffff @ bl 0x83f6cb6
	ldrb r5, [r0, r4]
	lsrs r7, r5, #32
	stmia r2!, {r5}
	lsrs r1, r3, #32
.L082F5CC0:
	ldr r0, [pc, #52]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #40]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F5CDE:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5CF0
	movs r0, #40
	bl sub_083189D0
.L082F5CF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x0819C220

	.thumb
	.align 1, 0
	.global sub_082F5D04
	.thumb_func
sub_082F5D04:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	movs r4, #32
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5D70
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5D44
	movs r0, #41
	bl sub_083189D0
.L082F5D44:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5D5C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F5D68
	ldrsh r5, [r7, r0]
	lsrs r7, r5, #32
.L082F5D5C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F5D68:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5E34
.L082F5D70:
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
	bne .L082F5D94
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5D94:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5E2C
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5DBC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5DC8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F5DBC:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5DC8:
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
	bne .L082F5E34
	movs r0, #41
	bl sub_083189D0
	b .L082F5E34
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5E2C:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5E34:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5E3C
	.thumb_func
sub_082F5E3C:
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
	beq .L082F5EAC
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
	bne .L082F5E84
	movs r0, #41
	bl sub_083189D0
.L082F5E84:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5E9C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5EA4
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5E9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5EA4:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5F68
.L082F5EAC:
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
	bne .L082F5ECA
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5ECA:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5F60
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5EF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5EFC
	movs r5, #12
	lsls r0, r0, #12
.L082F5EF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5EFC:
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
	bne .L082F5F68
	movs r0, #41
	bl sub_083189D0
	b .L082F5F68
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5F60:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5F68:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

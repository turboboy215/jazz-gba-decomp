	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F5A1C
	.thumb_func
sub_082F5A1C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5AD0
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
	bne .L082F5AA0
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
	movs r2, #5
	movs r3, #0
	bl sub_080002E0
	b .L082F5ABE
	ble .L082F5A98
	.2byte 0xffff @ .raw
.L082F5A98:
	ldrh r5, [r4, r3]
	lsrs r7, r5, #32
	stmia r2!, {r5}
	lsrs r1, r3, #32
.L082F5AA0:
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
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
.L082F5ABE:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5AD0
	movs r0, #40
	bl sub_083189D0
.L082F5AD0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x0819C220

	.thumb
	.align 1, 0
	.global sub_082F5AE4
	.thumb_func
sub_082F5AE4:
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
	beq .L082F5B54
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
	bne .L082F5B2C
	movs r0, #41
	bl sub_083189D0
.L082F5B2C:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5B44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5B4C
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrb r1, [r3, r0]
	lsrs r7, r5, #32
.L082F5B44:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5B4C:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5C10
.L082F5B54:
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
	bne .L082F5B72
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5B72:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5C08
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5B98
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F5BA4
	movs r5, #12
	lsls r0, r0, #12
.L082F5B98:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5BA4:
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
	bne .L082F5C10
	movs r0, #41
	bl sub_083189D0
	b .L082F5C10
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrb r1, [r3, r0]
	lsrs r7, r5, #32
.L082F5C08:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5C10:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

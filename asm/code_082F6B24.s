	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F6B24
	.thumb_func
sub_082F6B24:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	bne .L082F6BB6
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r2, [r0, #3]
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
	ldr r1, [pc, #40]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #32]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F6B94
	movs r0, #160
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	b .L082F6BA0
	ldr r1, [r1, #60]
	lsrs r7, r5, #32
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F6B94:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
.L082F6BA0:
	adds r0, r0, r2
	str r0, [r1, #20]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6BB6
	movs r0, #20
	bl sub_083189D0
.L082F6BB6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF600
	.4byte 0xFFFFEC00

	.thumb
	.align 1, 0
	.global sub_082F6BC8
	.thumb_func
sub_082F6BC8:
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
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F6BF4
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F6CEE
.L082F6BF4:
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
	bne .L082F6C12
	adds r0, r5, #0
	bl sub_082F4B78
.L082F6C12:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #64]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6CEE
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F6C68
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	str r3, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	b .L082F6C8A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F6C68:
	ldr r1, [pc, #56]
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
	movs r3, #0
	bl sub_08306DD4
.L082F6C8A:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6CB0
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #20]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
	b .L082F6CC0
	movs r0, r0
	str r0, [r1, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F6CB0:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #64]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_080002E0
.L082F6CC0:
	ldr r2, [pc, #56]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r2, #60
	ldrb r0, [r2, #0]
	subs r0, #1
	strb r0, [r5, #16]
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F6CEE:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0x082F6D05

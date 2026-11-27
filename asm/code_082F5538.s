	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F5538
	.thumb_func
sub_082F5538:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F55DA
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
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
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #6
	bne .L082F5590
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	b .L082F5596
	movs r0, r0
	strb r5, [r5, r7]
	lsrs r7, r5, #32
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082F5590:
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #28]
.L082F5596:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F55B8
	movs r0, #160
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	b .L082F55C4
	ble .L082F55B8
	.2byte 0xffff @ .raw
.L082F55B8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
.L082F55C4:
	adds r0, r0, r2
	str r0, [r1, #20]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F55DA
	movs r0, #20
	bl sub_083189D0
.L082F55DA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF600
	.4byte 0xFFFFEC00

	.thumb
	.align 1, 0
	.global sub_082F55EC
	.thumb_func
sub_082F55EC:
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
	beq .L082F5618
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F56B4
.L082F5618:
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
	bne .L082F5636
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5636:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #64]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F56B4
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F568C
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
	b .L082F56AE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F568C:
	ldr r1, [pc, #44]
	ldr r0, [pc, #48]
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
.L082F56AE:
	adds r0, r5, #0
	bl sub_082F4B78
.L082F56B4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D65F8
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F56C4
	.thumb_func
sub_082F56C4:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F56EC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #8]
	str r1, [r0, #0]
.L082F56EC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F56F9

	.thumb
	.align 1, 0
	.global sub_082F56F8
	.thumb_func
sub_082F56F8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	ldr r5, [pc, #76]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F578E
	ldr r0, [r4, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F5760
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F578E
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #7
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #0]
	add r0, sp, #8
	strb r3, [r0, #0]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #2
	bl sub_08306DD4
	b .L082F578E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r0, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F5760:
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F578E
	ldr r1, [pc, #48]
	ldr r0, [pc, #52]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #7
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #2
	bl sub_08306DD4
.L082F578E:
	adds r0, r6, #0
	bl sub_082F4B78
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D6600
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F57A4
	.thumb_func
sub_082F57A4:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L082F57BA
	b .L082F58BC
.L082F57BA:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	ldr r0, [r4, #16]
	ldrb r0, [r0, #7]
	cmp r0, #10
	beq .L082F5880
	cmp r0, #10
	blt .L082F5880
	cmp r0, #11
	beq .L082F57F8
	cmp r0, #12
	beq .L082F5840
	b .L082F5880
	movs r0, r0
	ldr r5, [r4, r3]
	lsrs r7, r5, #32
.L082F57F8:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5812
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F581E
.L082F5812:
	ldr r0, [pc, #36]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #28]
.L082F581E:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F58BA
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f683e
.L082F5840:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F585A
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F5866
.L082F585A:
	ldr r0, [pc, #24]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #16]
.L082F5866:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	b .L082F58B2
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f687a
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082F5880:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F589A
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F58A6
.L082F589A:
	ldr r0, [pc, #60]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #52]
.L082F58A6:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #44]
.L082F58B2:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #0
.L082F58BA:
	str r0, [r1, #32]
.L082F58BC:
	movs r0, #22
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F58CE
	movs r0, #22
	bl sub_083189D0
.L082F58CE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF800
	.4byte 0xFFFFF000
	.4byte 0xFFFFE800

	.thumb
	.align 1, 0
	.global sub_082F58E4
	.thumb_func
sub_082F58E4:
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
	bne .L082F591E
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
	beq .L082F5926
.L082F591E:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F59EA
.L082F5926:
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
	bne .L082F5944
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5944:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #84]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F59EA
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #228
	ldrb r2, [r0, #0]
	adds r2, #1
	ldr r1, [pc, #60]
	ldr r0, [pc, #64]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	muls r2, r0
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
	bne .L082F59B4
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #24]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
	b .L082F59C4
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F59B4:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #56]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl sub_080002E0
.L082F59C4:
	ldr r2, [pc, #48]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F59EA:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0x082F5A01

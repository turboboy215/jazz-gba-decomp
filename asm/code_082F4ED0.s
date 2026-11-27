	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F4ED0
	.thumb_func
sub_082F4ED0:
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
	beq .L082F4F44
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F4F0C
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F4F16
	b .L082F4F1A
	movs r5, #12
	lsls r0, r0, #12
.L082F4F0C:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F4F16
	movs r3, #1
.L082F4F16:
	cmp r3, #0
	beq .L082F4F44
.L082F4F1A:
	ldr r0, [pc, #96]
	ldr r2, [pc, #96]
	ldr r1, [pc, #100]
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
	adds r0, r4, #0
	bl sub_082F4B78
.L082F4F44:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L082F4F56
	adds r0, r4, #0
	bl sub_082F4B78
.L082F4F56:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne .L082F4F74
	ldr r0, [r4, #20]
	asrs r0, r0, #8
	ldr r1, [r4, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4F74
	movs r0, #40
	bl sub_083189D0
.L082F4F74:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D65D8
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F4F88
	.thumb_func
sub_082F4F88:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F4FBC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #25
	strh r0, [r1, #6]
	movs r0, #3
	bl sub_083189D0
.L082F4FBC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F4FC9

	.thumb
	.align 1, 0
	.global sub_082F4FC8
	.thumb_func
sub_082F4FC8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F503E
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
	beq .L082F5054
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F500C
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F5016
	b .L082F501A
	movs r5, #12
	lsls r0, r0, #12
.L082F500C:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F5016
	movs r3, #1
.L082F5016:
	cmp r3, #0
	beq .L082F5054
.L082F501A:
	ldr r0, [pc, #44]
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #60
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
.L082F503E:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F505A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F5054:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F505A:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F5064
	.thumb_func
sub_082F5064:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F510C
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
	bne .L082F50E8
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
	b .L082F5106
	ble .L082F50E0
	.2byte 0xffff @ .raw
.L082F50E0:
	str r1, [r4, r4]
	lsrs r7, r5, #32
	str r0, [r4, #80]
	lsrs r7, r2, #32
.L082F50E8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F5106:
	movs r0, #40
	bl sub_083189D0
.L082F510C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x08176520

	.thumb
	.align 1, 0
	.global sub_082F5120
	.thumb_func
sub_082F5120:
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
	beq .L082F51A4
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
	bne .L082F517A
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F517A
	movs r0, #33
	bl sub_083189D0
.L082F517A:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5194
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F519C
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r7, r1]
	lsrs r7, r5, #32
.L082F5194:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F519C:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5270
.L082F51A4:
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
	bne .L082F51C2
	adds r0, r5, #0
	bl sub_082F4B78
.L082F51C2:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5268
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F51E8
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F51F4
	movs r5, #12
	lsls r0, r0, #12
.L082F51E8:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F51F4:
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
	bne .L082F5270
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5270
	movs r0, #33
	bl sub_083189D0
	b .L082F5270
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r5, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r7, r1]
	lsrs r7, r5, #32
.L082F5268:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5270:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

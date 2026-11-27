	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F4BEC
	.thumb_func
sub_082F4BEC:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, [pc, #80]
.L082F4BF2:
	movs r0, #152
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #76]
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L082F4C5C
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L082F4C5C
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L082F4C5C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4C4C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r0, [r7, #8]
	subs r1, r1, r0
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	ldr r0, [r7, #12]
	subs r2, r2, r0
	ldrb r3, [r5, #16]
	adds r0, r4, #0
	bl sub_08000684
	b .L082F4C56
	subs r0, #204
	lsls r0, r0, #12
	cmp r0, #252
	lsls r0, r0, #12
.L082F4C4C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_0800060C
.L082F4C56:
	adds r0, r4, #0
	bl Sprite_Draw
.L082F4C5C:
	adds r6, #1
	cmp r6, #19
	bls .L082F4BF2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F4C68
	.thumb_func
sub_082F4C68:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F4D30
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
	bne .L082F4CEC
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082F4D0A
	b .L082F4CE4
	.2byte 0xffff @ .raw
.L082F4CE4:
	ldr r5, [pc, #276]
	lsrs r7, r5, #32
	adds r3, #0
	lsrs r3, r2, #32
.L082F4CEC:
	ldr r0, [pc, #72]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #60]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082F4D0A:
	movs r0, #35
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4D30
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4D30
	movs r0, #35
	bl sub_083189D0
.L082F4D30:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFF800
	.4byte 0x08133300

	.thumb
	.align 1, 0
	.global sub_082F4D44
	.thumb_func
sub_082F4D44:
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
	beq .L082F4DAC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #45
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4D80
	movs r0, #45
	bl sub_083189D0
.L082F4D80:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F4D98
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F4DA4
	ldr r6, [pc, #468]
	lsrs r7, r5, #32
.L082F4D98:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F4DA4:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F4E6C
.L082F4DAC:
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
	bne .L082F4DCA
	adds r0, r5, #0
	bl sub_082F4B78
.L082F4DCA:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4E64
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F4DF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F4DFC
	movs r5, #12
	lsls r0, r0, #12
.L082F4DF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F4DFC:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #80]
	ldr r2, [pc, #80]
	ldr r1, [pc, #84]
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
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	movs r0, #45
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4E6C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4E6C
	movs r0, #45
	bl sub_083189D0
	b .L082F4E6C
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	ldr r6, [pc, #468]
	lsrs r7, r5, #32
.L082F4E64:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F4E6C:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

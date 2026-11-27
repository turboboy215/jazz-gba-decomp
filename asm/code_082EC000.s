	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EC000
	.thumb_func
sub_082EC000:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EC0D4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EC020
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EC034
.L082EC020:
	cmp r3, #0
	beq .L082EC026
	b .L082EC194
.L082EC026:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EC034
	b .L082EC194
.L082EC034:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EC042
	b .L082EC194
.L082EC042:
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EC04E
	b .L082EC194
.L082EC04E:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EC098
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC060
	b .L082EC18C
.L082EC060:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EC066:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EC080
	b .L082EC194
.L082EC080:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC066
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082EC098:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EC18C
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EC0A8:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EC0A8
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EC0D4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EC0EC
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EC0FC
.L082EC0EC:
	cmp r3, #0
	bne .L082EC194
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EC194
.L082EC0FC:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EC194
	movs r7, #136
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EC194
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EC158
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EC18C
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EC128:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EC128
	b .L082EC18C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xbc00 @ .raw pop {}
	.2byte 0xffff @ .raw
.L082EC158:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EC18C
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EC168:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EC194
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EC168
.L082EC18C:
	movs r0, #1
	b .L082EC196
	movs r5, #12
	lsls r0, r0, #12
.L082EC194:
	movs r0, #0
.L082EC196:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EC1A0
	.thumb_func
sub_082EC1A0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EC1E0
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EC1C6
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EC1D0
.L082EC1C6:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EC1D0:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EC1EA
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EC1E0:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #76]
	bl sub_0800075C
.L082EC1EA:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EC238
	adds r0, r4, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #2
	beq .L082EC238
	adds r0, r4, #0
	adds r0, #236
	adds r1, r4, #0
	adds r1, #90
	ldrh r2, [r1, #0]
	ldrh r0, [r0, #0]
	subs r0, r2, r0
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082EC218
	movs r0, #0
	strh r0, [r1, #0]
.L082EC218:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EC228
	movs r0, #7
	strb r0, [r1, #0]
.L082EC228:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EC23A
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EC238:
	movs r0, #0
.L082EC23A:
	pop {r4}
	pop {r1}
	bx r1

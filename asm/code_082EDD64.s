	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EDD64
	.thumb_func
sub_082EDD64:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EDDA4
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EDD8A
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EDD94
.L082EDD8A:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EDD94:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EDDAE
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EDDA4:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #124]
	bl sub_0800075C
.L082EDDAE:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EDE2C
	adds r6, r4, #0
	adds r6, #232
	ldr r0, [r6, #0]
	adds r7, r4, #0
	adds r7, #236
	adds r5, r4, #0
	adds r5, #90
	cmp r0, #5
	bne .L082EDDE8
	movs r1, #28
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble .L082EDDDA
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EDE68
.L082EDDDA:
	ldr r0, [r6, #0]
	cmp r0, #5
	bne .L082EDDE8
	ldrh r2, [r5, #0]
	ldrh r1, [r7, #0]
	subs r0, r2, r1
	strh r0, [r5, #0]
.L082EDDE8:
	ldrh r2, [r5, #0]
	ldrh r7, [r7, #0]
	subs r0, r2, r7
	strh r0, [r5, #0]
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EDE00
	movs r0, #7
	strb r0, [r1, #0]
.L082EDE00:
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L082EDE0C
	movs r0, #0
	strh r0, [r5, #0]
.L082EDE0C:
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EDE1E
	movs r0, #42
	bl sub_083189D0
.L082EDE1E:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EDE2E
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EDE2C:
	movs r0, #0
.L082EDE2E:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

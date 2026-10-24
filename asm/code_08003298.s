	.include "asm/macros.inc"
	.syntax unified
	.text

@ Link_SerialIntr: [sure] in-game serial IRQ: one halfword per player per IRQ into bufs[0-3], 8 per packet, then swaps bufs[0-3]/[4-7]; 0xDEAD idle words (near miss)
	.thumb
	.align 1, 0
	.global sub_08003298
	.thumb_func
sub_08003298:
	.global Link_SerialIntr
	.thumb_set Link_SerialIntr, sub_08003298
	push {r4, r5, r6, r7, lr}
	ldr r2, [pc, #104]
	ldrb r4, [r2, #4]
	movs r1, #5
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne .L080032AA
	ldr r0, [pc, #96]
	strh r1, [r0, #0]
.L080032AA:
	ldr r0, [pc, #96]
	ldrh r1, [r0, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L080032C4
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080032C4
	bl _call_via_r0
	cmp r0, #0
	beq .L080033B8
.L080032C4:
	ldr r0, [pc, #60]
	ldr r1, [r0, #0]
	movs r2, #1
	negs r2, r2
	adds r3, r0, #0
	cmp r1, r2
	ble .L08003314
	subs r4, #1
	cmp r4, r2
	beq .L08003342
	adds r5, r3, #0
	adds r6, r2, #0
	lsls r0, r4, #1
	ldr r1, [pc, #48]
	adds r3, r0, r1
	lsls r0, r4, #2
	adds r0, #52
	adds r2, r0, r5
.L080032E8:
	ldr r0, [r5, #0]
	ldr r1, [r2, #0]
	subs r2, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	subs r3, #2
	subs r4, #1
	cmp r4, r6
	bne .L080032E8
	ldr r3, [pc, #4]
	b .L08003342
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
.L08003314:
	subs r4, #1
	cmp r4, r2
	beq .L08003342
	ldr r7, [pc, #84]
	lsls r0, r4, #1
	ldr r1, [pc, #84]
	adds r5, r0, r1
	adds r6, r2, #0
.L08003324:
	ldrh r0, [r5, #0]
	cmp r0, r7
	beq .L08003338
	ldr r0, [r3, #8]
	cmp r0, #0
	beq .L08003338
	bl _call_via_r0
	cmp r0, #0
	beq .L080033B8
.L08003338:
	subs r5, #2
	subs r4, #1
	ldr r3, [pc, #56]
	cmp r4, r6
	bne .L08003324
.L08003342:
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	cmp r0, #7
	bgt .L08003384
	ldr r2, [pc, #44]
	ldr r1, [r3, #12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne .L080033B2
	subs r2, #2
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	b .L080033B0
	udf #173
	movs r0, r0
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08003384:
	movs r0, #1
	negs r0, r0
	str r0, [r3, #0]
	ldr r1, [r3, #52]
	ldr r0, [r3, #68]
	str r0, [r3, #52]
	str r1, [r3, #68]
	ldr r1, [r3, #56]
	ldr r0, [r3, #72]
	str r0, [r3, #56]
	str r1, [r3, #72]
	ldr r1, [r3, #60]
	ldr r0, [r3, #76]
	str r0, [r3, #60]
	str r1, [r3, #76]
	ldr r1, [r3, #64]
	ldr r0, [r3, #80]
	str r0, [r3, #64]
	str r1, [r3, #80]
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	adds r0, r2, #0
.L080033B0:
	strh r0, [r1, #0]
.L080033B2:
	ldr r1, [pc, #20]
	movs r0, #0
	str r0, [r1, #0]
.L080033B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0400012A
	.4byte 0x0000DEAD
	.4byte 0x030058A0

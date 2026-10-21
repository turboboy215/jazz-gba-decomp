	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08003168
	.thumb_func
sub_08003168:
	push {r4, r5, r6, lr}
	ldr r3, [pc, #188]
	movs r1, #0
	str r1, [r3, #0]
	ldr r0, [pc, #184]
	str r1, [r0, #0]
	ldr r4, [pc, #184]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #16
	lsrs r1, r0, #16
	cmp r1, #0
	bne .L08003188
	ldr r0, [pc, #172]
	strh r1, [r0, #0]
.L08003188:
	ldrh r1, [r4, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	bne .L080031E4
	ldr r2, [pc, #164]
	ldrh r0, [r2, #0]
	ldr r1, [pc, #164]
	cmp r0, r1
	bne .L080031A2
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031A2:
	ldr r0, [pc, #156]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031B0
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031B0:
	ldr r0, [pc, #144]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031BE
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031BE:
	ldr r0, [pc, #136]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031CC
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031CC:
	ldrh r0, [r2, #0]
	cmp r0, #20
	bne .L080031E4
	ldr r2, [pc, #120]
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r3, #0]
	adds r0, #1
	strb r0, [r2, #4]
.L080031E4:
	ldr r6, [pc, #104]
	ldr r1, [pc, #84]
	adds r0, r1, #0
	strh r0, [r6, #0]
	ldr r0, [pc, #56]
	ldr r0, [r0, #0]
	cmp r0, #1
	bls .L08003270
	ldr r4, [pc, #56]
	ldrh r1, [r4, #0]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldr r2, [pc, #80]
	movs r0, #5
	movs r1, #15
	bl sub_08004914
	ldr r1, [pc, #72]
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800325C
	movs r0, #20
	strh r0, [r6, #0]
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	b .L08003284
	movs r0, r0
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	ldr r0, [r4, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	lsls r2, r4, #4
	lsls r0, r0, #16
	lsls r4, r4, #4
	lsls r0, r0, #16
	lsls r6, r4, #4
	lsls r0, r0, #16
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	adds r2, #0
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0800325C:
	ldrh r1, [r4, #0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	b .L08003284
.L08003270:
	ldr r2, [pc, #28]
	ldrh r1, [r2, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
.L08003284:
	ldr r1, [pc, #12]
	movs r0, #192
	strh r0, [r1, #0]
.L0800328A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x04000128
	.4byte 0x0400010E

@ Link_SerialIntr: [likely] SIO IRQ handler; 0xDEAD sync word
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

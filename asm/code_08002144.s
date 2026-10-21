	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08002144
	.thumb_func
sub_08002144:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r6, #0
	ldr r1, [pc, #104]
	movs r0, #0
	bl sub_08001FC8
	ldr r3, [pc, #100]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r0, [pc, #96]
	ldrb r0, [r0, #0]
	cmp r0, #150
	bne .L08002178
	ldr r0, [pc, #92]
	ldr r1, [pc, #96]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bne .L08002178
	ldrh r0, [r3, #0]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #0]
.L08002178:
	ldr r1, [pc, #76]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #76]
	movs r0, #1
	strh r0, [r1, #0]
	ldr r1, [pc, #72]
	ldr r0, [pc, #76]
	str r0, [r1, #0]
.L0800218A:
	ldr r0, [pc, #76]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L080021DC
	movs r0, #0
	movs r1, #15
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #16
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	b .L080021F0
	subs r4, #177
	lsrs r0, r0, #32
	lsls r0, r0, #8
	lsls r0, r0, #16
	lsls r2, r6, #2
	lsrs r0, r0, #32
	lsls r4, r5, #2
	lsrs r0, r0, #32
	adds r1, #4
	lsrs r5, r7, #32
	movs r4, r0
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsrs r0, r6, #3
	lsls r0, r0, #12
	lsrs r5, r0, #4
	lsls r0, r0, #12
	ldr r0, [r2, r2]
	lsls r0, r0, #12
.L080021DC:
	ldr r2, [pc, #48]
	movs r0, #0
	movs r1, #15
	bl sub_08004914
	ldr r2, [pc, #44]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
.L080021F0:
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	movs r0, #192
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #128
	cmp r1, r0
	bne .L08002208
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	cmp r0, #3
	bls .L08002220
.L08002208:
	bl VBlankIntrWait
	b .L08002228
	movs r0, r0
	adds r1, #12
	lsrs r5, r7, #32
	adds r1, #44
	lsrs r5, r7, #32
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
.L08002220:
	movs r0, #1
	movs r1, #128
	bl IntrWait
.L08002228:
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #5
	bls .L08002232
	b .L0800236C
.L08002232:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	lsrs r4, r2, #4
	lsls r0, r0, #12
	adds r1, #76
	lsrs r5, r7, #32
	ldr r1, [pc, #40]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #40]
	movs r0, #6
	bl sub_08001FC8
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	movs r1, #240
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08003790
	movs r6, #0
	ldr r1, [pc, #16]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L0800227C
	movs r0, #3
	b .L0800236A
	lsrs r0, r3, #4
	lsls r0, r0, #12
	lsls r5, r5, #19
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
.L0800227C:
	movs r0, #2
	b .L0800236A
	ldr r0, [pc, #112]
	ldr r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L080022A4
	movs r0, #64
	ands r1, r0
	cmp r1, #0
	beq .L0800229E
	ldr r0, [pc, #96]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
.L0800229E:
	ldr r1, [pc, #92]
	movs r0, #3
	str r0, [r1, #0]
.L080022A4:
	bl sub_08003848
	ldr r5, [pc, #72]
	ldr r0, [r5, #0]
	movs r1, #32
	ands r0, r1
	cmp r0, #0
	beq .L080022BA
	ldr r1, [pc, #68]
	movs r0, #4
	str r0, [r1, #0]
.L080022BA:
	ldr r0, [r5, #0]
	movs r1, #16
	ands r0, r1
	cmp r0, #0
	beq .L080022C6
	movs r6, #1
.L080022C6:
	ldr r4, [pc, #56]
	adds r0, r4, #0
	bl sub_080038B0
	str r0, [r5, #0]
	bl sub_08003848
	ldr r2, [pc, #44]
	ldrb r0, [r4, #5]
	ldrb r1, [r2, #0]
	cmp r1, r0
	beq .L080022E6
	strb r0, [r2, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
.L080022E6:
	ldr r1, [pc, #36]
	ldrb r2, [r2, #0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b .L0800236C
	movs r0, r0
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r0, r6, #3
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	lsrs r0, r4, #4
	lsls r0, r0, #12
	lsrs r0, r4, #5
	lsls r0, r0, #12
	lsrs r4, r4, #5
	lsls r0, r0, #12
	adds r0, #216
	lsrs r5, r7, #32
	bl sub_08003860
	ldr r0, [pc, #12]
	ldrb r0, [r0, #0]
	cmp r0, #11
	bne .L08002328
	movs r0, #6
	bl sub_08001FB4
	b .L080023A8
	lsrs r0, r4, #5
	lsls r0, r0, #12
.L08002328:
	ldr r1, [pc, #24]
	movs r0, #6
	bl sub_08001FC8
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	movs r1, #128
	ands r0, r1
	adds r1, r4, #0
	bl sub_080040C8
	ldr r1, [pc, #12]
	movs r0, #5
	b .L0800236A
	lsls r1, r7, #23
	lsls r0, r0, #12
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	ldr r0, [pc, #60]
	bl sub_08004164
	cmp r0, #0
	beq .L0800236C
	ldr r2, [pc, #56]
	ldr r1, [pc, #56]
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #52]
	movs r0, #1
.L0800236A:
	str r0, [r1, #0]
.L0800236C:
	ldr r2, [pc, #48]
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L08002386
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	movs r1, #128
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08002386
	movs r0, #1
	strb r0, [r2, #0]
.L08002386:
	ldr r0, [pc, #28]
	adds r1, r6, #0
	bl sub_080039F0
	b .L0800218A
	lsrs r4, r4, #5
	lsls r0, r0, #12
	lsrs r0, r3, #4
	lsls r0, r0, #12
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	lsrs r0, r5, #5
	lsls r0, r0, #12
	lsrs r0, r0, #4
	lsls r0, r0, #12
.L080023A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

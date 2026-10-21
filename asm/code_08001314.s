	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08001314
	.thumb_func
sub_08001314:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	mov sl, r0
	lsls r1, r1, #24
	lsrs r1, r1, #22
	mov r3, sl
	adds r3, #20
	adds r0, r3, r1
	str r2, [r0, #0]
	mov r0, sl
	adds r0, #36
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0]
	movs r6, #0
	movs r4, #0
	mov r8, r3
	mov r5, r8
	mov ip, r4
	mov r9, sp
.L08001344:
	movs r7, #0
	movs r1, #0
	cmp r1, r6
	bcs .L08001362
	mov r0, r8
	add r0, ip
	ldr r2, [r0, #0]
	mov r3, sp
.L08001354:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L0800135C
	movs r7, #1
.L0800135C:
	adds r1, #1
	cmp r1, r6
	bcc .L08001354
.L08001362:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08001378
	cmp r7, #0
	bne .L08001378
	mov r1, r9
	adds r1, #4
	mov r9, r1
	subs r1, #4
	stmia r1!, {r0}
	adds r6, #1
.L08001378:
	adds r5, #4
	movs r3, #4
	add ip, r3
	adds r4, #1
	cmp r4, #3
	bls .L08001344
	movs r0, #0
	str r0, [sp, #20]
	movs r4, #1
	cmp r4, r6
	bcs .L080013AE
	mov r2, sp
.L08001390:
	movs r1, #2
	ldr r0, [r2, #0]
	ldrh r3, [r0, #2]
	cmp r3, #4
	bne .L0800139C
	movs r1, #1
.L0800139C:
	ldrh r0, [r0, #0]
	muls r1, r0
	ldr r0, [r2, #20]
	adds r0, r0, r1
	str r0, [r2, #24]
	adds r2, #4
	adds r4, #1
	cmp r4, r6
	bcc .L08001390
.L080013AE:
	movs r4, #0
	add r0, sp, #20
	mov r9, r0
.L080013B4:
	movs r5, #1
	negs r5, r5
	movs r1, #0
	adds r7, r4, #1
	cmp r1, r6
	bcs .L080013D6
	lsls r0, r4, #2
	add r0, r8
	ldr r2, [r0, #0]
	mov r3, sp
.L080013C8:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L080013D0
	adds r5, r1, #0
.L080013D0:
	adds r1, #1
	cmp r1, r6
	bcc .L080013C8
.L080013D6:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq .L080013EE
	lsls r0, r4, #2
	mov r1, sl
	adds r1, #36
	adds r1, r1, r0
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L080013EE:
	adds r4, r7, #0
	cmp r4, #3
	bls .L080013B4
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08001404
	.thumb_func
sub_08001404:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	str r0, [sp, #0]
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r9, r6
	lsls r2, r7, #2
	adds r0, r2, #0
	adds r0, #116
	ldr r1, [sp, #0]
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #4
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	lsls r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	str r0, [sp, #12]
	cmp r4, #0
	bne .L08001456
	str r2, [sp, #28]
	lsls r2, r7, #1
	str r2, [sp, #24]
	lsls r4, r7, #3
	str r4, [sp, #32]
	ldr r5, [sp, #0]
	adds r5, #52
	mov r8, r5
	cmp r6, #0
	bne .L08001456
	b .L080016EA
.L08001456:
	lsls r2, r7, #1
	lsls r3, r7, #3
	ldr r1, [sp, #0]
	adds r1, #52
	adds r0, r1, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #16]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #20]
	str r2, [sp, #24]
	str r3, [sp, #32]
	mov r8, r1
	mov r0, sl
	cmp r0, #8
	ble .L08001482
	movs r4, #8
	b .L0800148E
.L08001482:
	movs r0, #8
	negs r0, r0
	mov r4, sl
	cmp sl, r0
	bge .L0800148E
	adds r4, r0, #0
.L0800148E:
	mov r1, r9
	cmp r1, #8
	ble .L08001498
	movs r6, #8
	b .L080014A4
.L08001498:
	movs r0, #8
	negs r0, r0
	mov r6, r9
	cmp r9, r0
	bge .L080014A4
	adds r6, r0, #0
.L080014A4:
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r4
	asrs r0, r0, #3
	ldr r2, [sp, #16]
	cmp r2, r0
	beq .L080014D2
	cmp r4, #0
	ble .L080014C4
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE98
	b .L080014D2
.L080014C4:
	cmp r4, #0
	bge .L080014D2
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_0831AE98
.L080014D2:
	ldr r0, [sp, #0]
	adds r0, #84
	ldr r5, [sp, #32]
	adds r2, r0, r5
	ldr r1, [r2, #0]
	adds r1, r1, r4
	str r1, [r2, #0]
	adds r3, r5, #0
	add r3, r8
	ldr r1, [r3, #0]
	adds r1, r1, r4
	str r1, [r3, #0]
	ldr r5, [sp, #4]
	ldrb r1, [r5, #0]
	str r0, [sp, #36]
	cmp r1, #0
	bne .L08001516
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L080014FE
	str r1, [r2, #0]
	str r1, [r3, #0]
.L080014FE:
	ldr r1, [sp, #8]
	subs r1, #240
	ldr r0, [r2, #0]
	lsls r5, r7, #2
	str r5, [sp, #28]
	cmp r0, r1
	blt .L0800154A
	ldr r0, [sp, #8]
	subs r0, #241
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L0800154A
.L08001516:
	ldr r3, [r2, #0]
	lsls r0, r7, #2
	str r0, [sp, #28]
	cmp r3, #0
	bge .L0800152E
	adds r0, r2, #0
	adds r2, r3, #0
.L08001524:
	ldr r1, [sp, #8]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08001524
	str r2, [r0, #0]
.L0800152E:
	ldr r2, [sp, #32]
	ldr r3, [sp, #36]
	adds r0, r3, r2
	ldr r0, [r0, #0]
	ldr r5, [sp, #8]
	cmp r0, r5
	blt .L0800154A
.L0800153C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	ldr r5, [sp, #8]
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r5
	bge .L0800153C
.L0800154A:
	ldr r2, [sp, #32]
	mov r3, r8
	adds r0, r2, #0
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001568
	movs r5, #128
	lsls r5, r5, #1
.L0800155C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L0800155C
.L08001568:
	ldr r1, [sp, #32]
	add r1, r8
	ldrb r0, [r1, #0]
	str r0, [r1, #0]
	asrs r0, r0, #3
	ldr r1, [sp, #16]
	cmp r1, r0
	beq .L08001596
	cmp r4, #0
	ble .L08001588
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_0831AE88
	b .L08001596
.L08001588:
	cmp r4, #0
	bge .L08001596
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE88
.L08001596:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r6
	asrs r0, r0, #3
	ldr r2, [sp, #20]
	cmp r2, r0
	beq .L080015C8
	cmp r6, #0
	ble .L080015BA
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE78
	b .L080015C8
.L080015BA:
	cmp r6, #0
	bge .L080015C8
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_0831AE78
.L080015C8:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	ldr r4, [sp, #36]
	adds r2, r4, r0
	ldr r1, [r2, #0]
	adds r1, r1, r6
	str r1, [r2, #0]
	mov r5, r8
	adds r3, r5, r0
	ldr r0, [r3, #0]
	adds r0, r0, r6
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L08001608
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L080015F4
	str r1, [r2, #0]
	str r1, [r3, #0]
.L080015F4:
	ldr r1, [sp, #12]
	subs r1, #160
	ldr r0, [r2, #0]
	cmp r0, r1
	blt .L08001642
	ldr r0, [sp, #12]
	subs r0, #161
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L08001642
.L08001608:
	ldr r3, [r2, #0]
	cmp r3, #0
	bge .L0800161C
	adds r0, r2, #0
	adds r2, r3, #0
.L08001612:
	ldr r1, [sp, #12]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08001612
	str r2, [r0, #0]
.L0800161C:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	ldr r2, [sp, #36]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	ldr r4, [sp, #12]
	cmp r0, r4
	blt .L08001642
.L08001630:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	ldr r5, [sp, #12]
	subs r1, r1, r5
	str r1, [r0, #0]
	cmp r1, r5
	bge .L08001630
.L08001642:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	mov r2, r8
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001668
	movs r4, #128
	lsls r4, r4, #1
.L08001658:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	adds r1, r1, r4
	str r1, [r0, #0]
	cmp r1, #0
	blt .L08001658
.L08001668:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #0]
	str r1, [r0, #0]
	asrs r1, r1, #3
	ldr r0, [sp, #20]
	cmp r0, r1
	beq .L0800169A
	cmp r6, #0
	ble .L0800168C
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_0831AE68
	b .L0800169A
.L0800168C:
	cmp r6, #0
	bge .L0800169A
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE68
.L0800169A:
	mov r1, sl
	cmp r1, #8
	ble .L080016A8
	movs r2, #8
	negs r2, r2
	add sl, r2
	b .L080016BA
.L080016A8:
	movs r0, #8
	negs r0, r0
	cmp sl, r0
	bge .L080016B6
	movs r4, #8
	add sl, r4
	b .L080016BA
.L080016B6:
	movs r5, #0
	mov sl, r5
.L080016BA:
	mov r0, r9
	cmp r0, #8
	ble .L080016C8
	movs r1, #8
	negs r1, r1
	add r9, r1
	b .L080016DA
.L080016C8:
	movs r0, #8
	negs r0, r0
	cmp r9, r0
	bge .L080016D6
	movs r2, #8
	add r9, r2
	b .L080016DA
.L080016D6:
	movs r4, #0
	mov r9, r4
.L080016DA:
	mov r5, sl
	cmp r5, #0
	beq .L080016E2
	b .L08001456
.L080016E2:
	mov r0, r9
	cmp r0, #0
	beq .L080016EA
	b .L08001456
.L080016EA:
	ldr r2, [sp, #28]
	ldr r4, [pc, #40]
	adds r1, r2, r4
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r5, [pc, #32]
	adds r1, r2, r5
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012

	.thumb
	.align 1, 0
	.global sub_08001720
	.thumb_func
sub_08001720:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #100
	mov r8, r0
	str r1, [sp, #0]
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r1, #2
	str r0, [sp, #24]
	adds r0, #116
	add r0, r8
	str r0, [sp, #20]
	mov r4, r8
	adds r4, #4
	ldr r1, [sp, #24]
	adds r4, r4, r1
	ldr r1, [r4, #0]
	ldr r0, [r1, #0]
	lsls r2, r0, #3
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	mov sl, r0
	mov r0, r8
	str r2, [sp, #88]
	bl sub_08001B94
	adds r0, #4
	str r0, [sp, #28]
	movs r3, #0
	ldr r0, [r4, #0]
	adds r0, #12
	str r0, [sp, #16]
	ldr r4, [sp, #0]
	lsls r4, r4, #1
	str r4, [sp, #32]
	ldr r0, [sp, #0]
	lsls r0, r0, #3
	mov ip, r0
	movs r1, #84
	add r1, r8
	mov r9, r1
	mov r7, r9
	add r7, ip
	str r5, [r7, #0]
	adds r1, r4, #0
	adds r1, #1
	lsls r1, r1, #2
	mov r4, r9
	adds r0, r4, r1
	str r6, [r0, #0]
	mov r4, r8
	adds r4, #52
	mov r0, ip
	adds r0, r4, r0
	str r0, [sp, #36]
	str r5, [r0, #0]
	adds r1, r4, r1
	str r6, [r1, #0]
	ldr r1, [sp, #20]
	ldrb r0, [r1, #0]
	ldr r2, [sp, #88]
	cmp r0, #0
	bne .L080017EE
	ldr r0, [r7, #0]
	cmp r0, #0
	bge .L080017B0
	str r3, [r7, #0]
	ldr r5, [sp, #36]
	str r3, [r5, #0]
.L080017B0:
	adds r1, r2, #0
	subs r1, #240
	ldr r0, [r7, #0]
	ldr r3, [sp, #24]
	str r3, [sp, #52]
	ldr r5, [sp, #32]
	str r5, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r4, sl
	lsrs r4, r4, #3
	str r4, [sp, #80]
	mov r5, r8
	adds r5, #20
	str r5, [sp, #56]
	mov r4, r8
	adds r4, #36
	str r4, [sp, #76]
	cmp r0, r1
	blt .L0800183E
	adds r0, r2, #0
	subs r0, #241
	str r0, [r7, #0]
	ldr r5, [sp, #36]
	str r0, [r5, #0]
	b .L0800183E
.L080017EE:
	ldr r1, [r7, #0]
	ldr r0, [sp, #24]
	str r0, [sp, #52]
	ldr r3, [sp, #32]
	str r3, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r0, sl
	lsrs r0, r0, #3
	str r0, [sp, #80]
	mov r4, r8
	adds r4, #20
	str r4, [sp, #56]
	mov r5, r8
	adds r5, #36
	str r5, [sp, #76]
	cmp r1, #0
	bge .L08001826
	adds r0, r7, #0
.L0800181E:
	adds r1, r1, r2
	cmp r1, #0
	blt .L0800181E
	str r1, [r0, #0]
.L08001826:
	mov r4, ip
	adds r5, r6, #0
	adds r0, r6, r4
	ldr r0, [r0, #0]
	cmp r0, r2
	blt .L0800183E
.L08001832:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
	cmp r0, r2
	bge .L08001832
.L0800183E:
	ldr r0, [sp, #20]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L0800186E
	ldr r0, [sp, #48]
	adds r0, #1
	lsls r5, r0, #2
	adds r4, r6, r5
	ldr r0, [r4, #0]
	cmp r0, #0
	bge .L0800185A
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
.L0800185A:
	mov r1, sl
	subs r1, #160
	ldr r0, [r4, #0]
	cmp r0, r1
	blt .L080018B4
	subs r1, #1
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
	b .L080018B4
.L0800186E:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001890
.L08001880:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	cmp r0, #0
	blt .L08001880
.L08001890:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, sl
	blt .L080018B4
.L080018A2:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	mov r5, sl
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, sl
	bge .L080018A2
.L080018B4:
	mov r4, ip
	adds r5, r3, #0
	adds r0, r3, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018D0
	movs r2, #128
	lsls r2, r2, #1
.L080018C4:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018C4
.L080018D0:
	ldr r4, [sp, #48]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018F6
	movs r5, #128
	lsls r5, r5, #1
.L080018E6:
	adds r1, r4, #1
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018E6
.L080018F6:
	mov r0, ip
	adds r4, r3, r0
	ldrb r0, [r4, #0]
	str r0, [r4, #0]
	ldr r2, [sp, #48]
	adds r2, #1
	lsls r2, r2, #2
	adds r3, r3, r2
	ldrb r0, [r3, #0]
	str r0, [r3, #0]
	ldr r5, [sp, #52]
	ldr r0, [pc, #272]
	adds r1, r5, r0
	ldr r0, [r4, #0]
	strh r0, [r1, #0]
	ldr r0, [pc, #268]
	adds r1, r5, r0
	ldr r0, [r3, #0]
	strh r0, [r1, #0]
	mov r1, ip
	adds r0, r6, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #8]
	adds r2, r6, r2
	ldr r0, [r2, #0]
	asrs r1, r0, #3
	ldr r0, [r4, #0]
	asrs r7, r0, #3
	ldr r0, [r3, #0]
	asrs r3, r0, #3
	cmp r7, #0
	bge .L0800193A
	adds r7, #32
.L0800193A:
	cmp r3, #0
	bge .L08001940
	adds r3, #32
.L08001940:
	ldr r0, [pc, #228]
	mov r2, r9
	subs r2, r0, r2
	str r2, [sp, #4]
	str r7, [sp, #12]
	adds r0, r1, #0
	movs r1, #0
.L0800194E:
	ldr r7, [sp, #12]
	ldr r6, [sp, #8]
	ldr r4, [sp, #80]
	cmp r0, r4
	blt .L0800195A
	subs r0, r0, r4
.L0800195A:
	asrs r5, r0, #1
	str r5, [sp, #60]
	ldr r2, [sp, #68]
	lsrs r2, r2, #1
	str r2, [sp, #64]
	lsls r4, r3, #5
	str r4, [sp, #84]
	adds r3, #1
	str r3, [sp, #72]
	adds r5, r0, #1
	str r5, [sp, #44]
	adds r1, #1
	str r1, [sp, #40]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	mov sl, r0
	ldr r2, [sp, #52]
	mov r8, r2
	ldr r3, [sp, #76]
	add r3, r8
	mov r9, r3
	movs r3, #30
.L08001988:
	ldr r4, [sp, #68]
	cmp r6, r4
	blt .L08001990
	subs r6, r6, r4
.L08001990:
	ldr r5, [sp, #60]
	ldr r1, [sp, #64]
	adds r0, r5, #0
	muls r0, r1
	asrs r1, r6, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #16]
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r1, r0, #2
	adds r0, r6, #0
	movs r4, #1
	ands r0, r4
	adds r1, r1, r0
	add r1, sl
	lsls r1, r1, #1
	ldr r5, [sp, #28]
	adds r1, r1, r5
	ldrh r4, [r1, #0]
	ldr r0, [sp, #84]
	adds r5, r0, r7
	lsls r5, r5, #1
	ldr r1, [sp, #4]
	adds r5, r5, r1
	str r5, [sp, #96]
	ldrh r0, [r5, #0]
	str r3, [sp, #92]
	bl sub_0831AE58
	ldr r0, [pc, #92]
	ands r0, r4
	ldr r1, [sp, #56]
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, #4
	mov r2, r9
	ldr r2, [r2, #0]
	mov ip, r2
	bl sub_0831AE48
	lsrs r4, r4, #4
	movs r5, #192
	lsls r5, r5, #4
	adds r1, r5, #0
	ands r4, r1
	orrs r4, r0
	ldr r0, [sp, #96]
	strh r4, [r0, #0]
	adds r7, #1
	movs r0, #31
	ands r7, r0
	adds r6, #1
	ldr r3, [sp, #92]
	subs r3, #1
	cmp r3, #0
	bge .L08001988
	adds r3, r0, #0
	ldr r1, [sp, #72]
	ands r3, r1
	ldr r0, [sp, #44]
	ldr r1, [sp, #40]
	cmp r1, #20
	ble .L0800194E
	add sp, #100
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012
	.4byte 0x0600F800
	.4byte 0x00003FFF

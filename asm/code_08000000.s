	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_080002E0
	.thumb_func
sub_080002E0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r5, r0, #0
	mov r8, r1
	str r2, [sp, #8]
	mov r9, r3
	mov r0, r8
	adds r1, r2, #0
	bl sub_0800079C
	str r0, [sp, #4]
	mov r0, r8
	str r0, [r5, #48]
	movs r0, #0
	str r0, [r5, #12]
	strb r0, [r5, #1]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl sub_08000680
	adds r0, r5, #0
	mov r1, r9
	bl sub_0800065C
	ldr r4, [pc, #148]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000730
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000738
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000734
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800075C
	adds r0, r5, #0
	bl sub_08000604
	movs r4, #0
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcs .L080003D4
	mov sl, r4
	adds r6, r5, #0
	adds r6, #52
.L08000350:
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_080007AC
	ldr r1, [pc, #84]
	ldrh r0, [r0, #4]
	ands r1, r0
	ldr r7, [pc, #80]
	cmp r1, r7
	beq .L080003B8
	mov r0, r8
	ldr r1, [sp, #8]
	mov r2, r9
	adds r3, r4, #0
	bl sub_080007CC
	ldrh r1, [r0, #0]
	ldrh r2, [r0, #2]
	ldrb r7, [r0, #12]
	lsls r3, r7, #31
	lsrs r3, r3, #31
	adds r0, #16
	str r0, [sp, #0]
	adds r0, r6, #0
	bl sub_08004408
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080003C4
	adds r3, r4, #0
	cmp r3, #11
	bhi .L080003A4
	adds r0, r5, #0
	adds r0, #52
	add r0, sl
	movs r1, #0
.L0800039C:
	adds r3, #1
	cmp r3, #11
	bls .L0800039C
	str r1, [r0, #0]
.L080003A4:
	adds r0, r5, #0
	bl sub_080005D4
	movs r0, #0
	b .L080003EA
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L080003B8:
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #52
	adds r1, r1, r0
	movs r0, #0
	str r0, [r1, #0]
.L080003C4:
	movs r0, #4
	add sl, r0
	adds r6, #4
	adds r4, #1
	ldr r1, [sp, #4]
	ldrh r1, [r1, #2]
	cmp r4, r1
	bcc .L08000350
.L080003D4:
	cmp r4, #11
	bhi .L080003E8
	movs r1, #0
	lsls r0, r4, #2
	adds r0, #52
	adds r0, r0, r5
.L080003E0:
	stmia r0!, {r1}
	adds r4, #1
	cmp r4, #11
	bls .L080003E0
.L080003E8:
	movs r0, #1
.L080003EA:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080003FC
	.thumb_func
sub_080003FC:
	str r1, [r0, #48]
	movs r1, #0
	strh r1, [r0, #8]
	strh r1, [r0, #10]
	str r1, [r0, #12]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000408
	.thumb_func
sub_08000408:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	adds r6, r0, #0
	bl sub_08000644
	str r0, [sp, #4]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L08000440
	movs r0, #0
	mov r8, r0
	adds r4, r6, #0
	adds r4, #52
.L0800042A:
	ldmia r4!, {r0}
	cmp r0, #0
	beq .L08000434
	bl sub_080045CC
.L08000434:
	movs r1, #1
	add r8, r1
	mov r2, r8
	cmp r2, #11
	bls .L0800042A
	b .L080005C2
.L08000440:
	movs r3, #0
	mov r8, r3
	ldr r5, [sp, #4]
	ldrh r5, [r5, #2]
	cmp r8, r5
	bcc .L0800044E
	b .L08000590
.L0800044E:
	adds r7, r6, #0
	adds r7, #52
	str r7, [sp, #8]
	str r3, [sp, #12]
.L08000456:
	adds r0, r6, #0
	mov r1, r8
	bl sub_08000614
	adds r4, r0, #0
	adds r0, r6, #0
	mov r1, r8
	bl sub_0800062C
	mov sl, r0
	ldr r1, [pc, #44]
	adds r0, r1, #0
	mov r2, sl
	ldrh r2, [r2, #4]
	ands r0, r2
	cmp r0, r1
	bne .L0800049C
	adds r0, r6, #0
	adds r0, #52
	ldr r3, [sp, #12]
	adds r4, r0, r3
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L08000576
	adds r0, r3, #0
	adds r0, #52
	adds r0, r6, r0
	bl sub_08004508
	movs r0, #0
	str r0, [r4, #0]
	b .L08000576
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L0800049C:
	adds r0, r6, #0
	adds r0, #52
	ldr r5, [sp, #12]
	adds r7, r0, r5
	ldr r5, [r7, #0]
	mov r9, r0
	cmp r5, #0
	bne .L080004E4
	ldrh r1, [r4, #0]
	ldrh r2, [r4, #2]
	ldrb r0, [r4, #12]
	lsls r3, r0, #31
	lsrs r3, r3, #31
	adds r0, r4, #0
	adds r0, #16
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	bl sub_08004408
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080004FA
	mov r1, r8
	cmp r1, #11
	bhi .L080004DA
	adds r0, r7, #0
	movs r2, #0
.L080004D2:
	adds r1, #1
	cmp r1, #11
	bls .L080004D2
	str r2, [r0, #0]
.L080004DA:
	adds r0, r6, #0
	bl sub_080005D4
	movs r0, #0
	b .L080005C4
.L080004E4:
	ldrh r1, [r4, #0]
	ldrh r2, [r4, #2]
	ldrb r7, [r4, #12]
	lsls r3, r7, #31
	lsrs r3, r3, #31
	adds r0, r4, #0
	adds r0, #16
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_08004534
.L080004FA:
	ldrb r2, [r4, #12]
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	bne .L08000538
	mov r1, r8
	lsls r0, r1, #1
	adds r1, r6, #0
	adds r1, #22
	adds r1, r1, r0
	ldr r0, [pc, #24]
	ldrh r3, [r1, #0]
	cmp r3, r0
	bne .L0800052C
	ldr r0, [sp, #12]
	add r0, r9
	ldr r0, [r0, #0]
	lsls r1, r2, #27
	lsrs r1, r1, #28
	bl sub_0800456C
	b .L08000538
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800052C:
	ldr r0, [sp, #12]
	add r0, r9
	ldr r0, [r0, #0]
	ldrh r1, [r1, #0]
	bl sub_0800456C
.L08000538:
	ldr r4, [sp, #12]
	add r4, r9
	ldr r0, [r4, #0]
	mov r5, sl
	ldrb r2, [r5, #5]
	lsls r1, r2, #25
	lsrs r1, r1, #31
	lsrs r2, r2, #7
	bl sub_08004578
	ldr r0, [r4, #0]
	movs r7, #2
	ldrsh r1, [r6, r7]
	movs r3, #0
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	movs r5, #4
	ldrsh r2, [r6, r5]
	mov r5, sl
	movs r7, #2
	ldrsh r3, [r5, r7]
	subs r2, r2, r3
	ldrb r3, [r6, #6]
	bl sub_08004584
	ldr r1, [r4, #0]
	ldrb r0, [r6, #1]
	strb r0, [r1, #19]
	ldr r0, [r4, #0]
	bl sub_080045C4
.L08000576:
	ldr r7, [sp, #8]
	adds r7, #4
	str r7, [sp, #8]
	ldr r0, [sp, #12]
	adds r0, #4
	str r0, [sp, #12]
	movs r1, #1
	add r8, r1
	ldr r2, [sp, #4]
	ldrh r2, [r2, #2]
	cmp r8, r2
	bcs .L08000590
	b .L08000456
.L08000590:
	mov r3, r8
	cmp r3, #11
	bhi .L080005C2
	lsls r0, r3, #2
	adds r0, #52
	adds r5, r0, r6
.L0800059C:
	mov r7, r8
	lsls r0, r7, #2
	adds r1, r6, #0
	adds r1, #52
	adds r4, r1, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L080005B6
	adds r0, r5, #0
	bl sub_08004508
	movs r0, #0
	str r0, [r4, #0]
.L080005B6:
	adds r5, #4
	movs r0, #1
	add r8, r0
	mov r1, r8
	cmp r1, #11
	bls .L0800059C
.L080005C2:
	movs r0, #1
.L080005C4:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080005D4
	.thumb_func
sub_080005D4:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
	adds r5, r7, #0
	adds r5, #52
.L080005DE:
	lsls r0, r6, #2
	adds r1, r7, #0
	adds r1, #52
	adds r4, r1, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L080005F2
	adds r0, r5, #0
	bl sub_08004508
.L080005F2:
	movs r0, #0
	str r0, [r4, #0]
	adds r5, #4
	adds r6, #1
	cmp r6, #11
	bls .L080005DE
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08000604
	.thumb_func
sub_08000604:
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800060C
	.thumb_func
sub_0800060C:
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000614
	.thumb_func
sub_08000614:
	push {r4, lr}
	adds r3, r1, #0
	ldr r4, [r0, #48]
	ldrh r1, [r0, #8]
	ldrh r2, [r0, #10]
	adds r0, r4, #0
	bl sub_080007CC
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800062C
	.thumb_func
sub_0800062C:
	push {r4, lr}
	adds r3, r1, #0
	ldr r4, [r0, #48]
	ldrh r1, [r0, #8]
	ldrh r2, [r0, #10]
	adds r0, r4, #0
	bl sub_080007AC
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000644
	.thumb_func
sub_08000644:
	push {lr}
	ldr r2, [r0, #48]
	ldrh r1, [r0, #8]
	adds r0, r2, #0
	bl sub_0800079C
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000654
	.thumb_func
sub_08000654:
	movs r1, #0
	str r1, [r0, #12]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800065C
	.thumb_func
sub_0800065C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08000814
	cmp r4, r0
	bls .L08000672
	adds r0, r5, #0
	bl sub_08000814
	adds r4, r0, #0
.L08000672:
	movs r0, #0
	strh r4, [r5, #10]
	str r0, [r5, #12]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000680
	.thumb_func
sub_08000680:
	strh r1, [r0, #8]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000684
	.thumb_func
sub_08000684:
	strh r1, [r0, #2]
	strh r2, [r0, #4]
	strb r3, [r0, #6]
	bx lr

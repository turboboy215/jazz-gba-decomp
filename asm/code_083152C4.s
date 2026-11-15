	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083152C4
	.thumb_func
sub_083152C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, [pc, #416]
	adds r0, r2, #0
	adds r0, #172
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	movs r6, #0
	ldr r4, [pc, #392]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315312:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L08315312
	movs r6, #0
	ldr r4, [pc, #352]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L0831533E:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L0831533E
	movs r5, #0
	ldr r2, [pc, #312]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L08315366:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L08315366
	movs r6, #0
	ldr r2, [pc, #244]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L083153AE:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L083153AE
	movs r6, #0
	ldr r7, [pc, #192]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083153EE:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L08315408:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L0831541A:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L0831541A
	adds r1, r3, #0
	cmp r1, #3
	bls .L08315408
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083153EE
	movs r1, #0
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x0200796C
	.4byte 0x02007970
	.4byte 0x02007974
	.4byte 0x02007976
	.4byte 0x02007968
	.4byte 0x03005A3C
	.4byte 0x03005A40
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_083154C0
	.thumb_func
sub_083154C0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r4, [pc, #356]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L083154D8:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L083154D8
	movs r6, #0
	ldr r4, [pc, #316]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315504:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L08315504
	movs r5, #0
	ldr r2, [pc, #276]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L0831552C:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L0831552C
	movs r6, #0
	ldr r2, [pc, #212]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L08315574:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L08315574
	movs r6, #0
	ldr r7, [pc, #160]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083155B4:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L083155CE:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L083155E0:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L083155E0
	adds r1, r3, #0
	cmp r1, #3
	bls .L083155CE
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083155B4
	movs r1, #0
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_08315664
	.thumb_func
sub_08315664:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #116
	ldr r0, [pc, #120]
	ldr r1, [pc, #124]
	bl sub_08002094
	movs r0, #0
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #64]
	ldr r0, [pc, #108]
	movs r1, #0
	adds r0, #12
.L0831568C:
	str r1, [r0, #0]
	str r1, [r0, #4]
	adds r0, #8
	ldr r2, [sp, #64]
	adds r2, #1
	str r2, [sp, #64]
	cmp r2, #19
	bls .L0831568C
	ldr r0, [pc, #84]
	movs r2, #0
	str r2, [r0, #8]
	str r2, [r0, #0]
	str r2, [r0, #4]
	adds r1, r0, #0
	adds r1, #180
	str r2, [r1, #0]
	adds r0, #184
	str r2, [r0, #0]
	str r2, [sp, #64]
	ldr r3, [pc, #68]
	ldr r0, [r3, #0]
	cmp r2, r0
	bcs .L0831571E
	ldr r4, [pc, #64]
	adds r6, r3, #0
	adds r2, r4, #0
	movs r5, #0
.L083156C2:
	ldrb r0, [r2, #0]
	cmp r0, #1
	bne .L08315704
	movs r1, #1
	str r1, [sp, #68]
	adds r0, r4, #0
	adds r0, #12
	adds r1, r5, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L08315700
	strb r0, [r2, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08315704
	add r0, sp, #68
	ldrb r0, [r0, #0]
	strb r0, [r2, #28]
	b .L08315704
	mov ip, fp
	lsls r0, r0, #12
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	strh r4, [r3, #48]
	lsls r0, r0, #8
	ldrb r4, [r7, #8]
	lsls r0, r0, #8
.L08315700:
	subs r0, #1
	str r0, [r1, #0]
.L08315704:
	ldr r1, [sp, #68]
	cmp r1, #0
	bne .L0831571E
	adds r2, #28
	adds r5, #28
	ldr r3, [sp, #64]
	adds r3, #1
	str r3, [sp, #64]
	adds r3, r6, #0
	ldr r0, [r3, #0]
	ldr r1, [sp, #64]
	cmp r1, r0
	bcc .L083156C2
.L0831571E:
	movs r7, #0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	ldr r2, [sp, #64]
	lsls r2, r2, #3
	str r2, [sp, #92]
	cmp r7, r0
	bcs .L083157CA
	ldr r5, [pc, #108]
	mov r9, r1
.L08315732:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r4, r0, #2
	adds r3, r4, r5
	mov r8, r3
	ldrb r0, [r3, #0]
	mov ip, r0
	adds r6, r7, #1
	cmp r0, #1
	bne .L083157C0
	adds r0, r5, #0
	adds r0, #24
	adds r0, r4, r0
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0831575A
	movs r1, #1
	str r1, [sp, #72]
.L0831575A:
	adds r0, r5, #0
	adds r0, #12
	adds r3, r4, r0
	ldr r1, [r3, #0]
	cmp r1, #0
	bne .L083157BC
	adds r0, #8
	adds r2, r4, r0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq .L083157A0
	adds r0, r5, #0
	adds r0, #16
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	subs r0, #1
	str r0, [r2, #0]
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, ip
	strb r3, [r0, #0]
	b .L083157C0
	strh r0, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r2, #13]
	lsls r0, r0, #8
.L083157A0:
	mov r4, r8
	strb r1, [r4, #0]
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r2, ip
	strb r2, [r0, #0]
	b .L083157C0
.L083157BC:
	subs r0, r1, #1
	str r0, [r3, #0]
.L083157C0:
	adds r7, r6, #0
	mov r3, r9
	ldr r0, [r3, #0]
	cmp r7, r0
	bcc .L08315732
.L083157CA:
	movs r4, #0
	mov r9, r4
	ldr r3, [pc, #80]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcs .L0831589A
	ldr r6, [pc, #76]
	ldr r5, [pc, #76]
	mov ip, r5
	adds r5, r6, #0
	movs r7, #0
	movs r0, #255
	mov sl, r0
.L083157E4:
	ldrb r1, [r5, #0]
	cmp r1, #1
	bne .L08315884
	movs r2, #1
	str r2, [sp, #84]
	mov r8, ip
	mov r0, r8
	adds r0, #176
	strb r2, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	bne .L08315880
	adds r0, r6, #4
	adds r4, r7, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne .L0831582C
	strb r1, [r5, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r9, r0
	bcs .L08315884
	add r0, sp, #84
	ldrb r0, [r0, #0]
	strb r0, [r5, #28]
	b .L08315884
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #44]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L0831582C:
	adds r0, r6, #0
	adds r0, #16
	adds r2, r7, r0
	subs r0, #8
	adds r0, r7, r0
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r2, #0]
	adds r0, r6, #0
	adds r0, #20
	adds r3, r7, r0
	ldr r0, [r3, #0]
	ldr r1, [r5, #12]
	adds r0, r0, r1
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315862
	mov r0, r8
	adds r0, #180
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	mov r1, sl
	ands r0, r1
	str r0, [r2, #0]
.L08315862:
	ldr r0, [r3, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315878
	mov r0, ip
	adds r0, #184
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	mov r2, sl
	ands r0, r2
	str r0, [r3, #0]
.L08315878:
	ldr r0, [r4, #0]
	subs r0, #1
	str r0, [r4, #0]
	b .L08315884
.L08315880:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315884:
	ldr r3, [sp, #84]
	cmp r3, #0
	bne .L0831589A
	adds r5, #28
	adds r7, #28
	movs r4, #1
	add r9, r4
	ldr r3, [pc, #108]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcc .L083157E4
.L0831589A:
	movs r5, #0
	str r5, [sp, #88]
	ldr r3, [pc, #100]
	ldr r0, [r3, #0]
	cmp r5, r0
	bcc .L083158A8
	b .L08315A32
.L083158A8:
	ldr r0, [pc, #92]
	mov r9, r0
	str r5, [sp, #100]
	mov r1, r9
	adds r1, #106
	str r1, [sp, #104]
	mov sl, r9
.L083158B6:
	mov r2, sl
	ldrb r2, [r2, #0]
	cmp r2, #1
	beq .L083158C0
	b .L08315A0C
.L083158C0:
	movs r4, #1
	str r4, [sp, #76]
	mov r0, r9
	adds r0, #112
	ldr r5, [sp, #100]
	adds r1, r5, r0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq .L083158D4
	b .L08315A08
.L083158D4:
	subs r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315914
	mov r0, sl
	strb r2, [r0, #0]
	ldr r1, [pc, #40]
	str r2, [r1, #0]
	ldr r4, [pc, #40]
	str r2, [r4, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r5, [sp, #88]
	cmp r5, r0
	bcc .L083158F6
	b .L08315A0C
.L083158F6:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	ldr r1, [sp, #104]
	strb r0, [r1, #10]
	b .L08315A0C
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
.L08315914:
	ldr r3, [pc, #32]
	ldr r1, [r3, #0]
	cmp r1, #24
	bls .L08315940
	ldr r1, [sp, #104]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0831594C
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	adds r0, #1
	ldr r4, [sp, #104]
	ldrb r4, [r4, #0]
	cmp r0, r4
	bcs .L0831594C
	str r2, [r3, #0]
	str r0, [r1, #0]
	b .L0831594C
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315940:
	ldr r5, [sp, #76]
	ands r0, r5
	cmp r0, #0
	beq .L0831594C
	adds r0, r1, #1
	str r0, [r3, #0]
.L0831594C:
	ldr r1, [pc, #120]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315974
	movs r0, #25
	ldr r1, [pc, #112]
	str r0, [r1, #0]
	ldr r2, [sp, #104]
	ldrb r0, [r2, #0]
	subs r0, #1
	ldr r3, [pc, #104]
	str r0, [r3, #0]
	mov r0, r9
	adds r0, #108
	ldr r4, [sp, #100]
	adds r0, r4, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315974:
	movs r6, #0
	ldr r3, [pc, #88]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcs .L083159F6
	ldr r2, [pc, #80]
	movs r0, #116
	ldr r5, [sp, #88]
	adds r1, r5, #0
	muls r1, r0
	adds r0, r2, #6
	adds r5, r1, r0
	mov r8, r6
	adds r7, r5, #0
	adds r4, r1, r2
.L08315994:
	ldrb r0, [r5, #0]
	adds r5, #25
	cmp r0, #0
	beq .L083159E6
	ldr r0, [r3, #0]
	cmp r6, r0
	bne .L083159D8
	add r0, sp, #4
	movs r1, #0
	movs r2, #25
	bl memset
	mov r0, r8
	adds r1, r7, r0
	ldr r3, [pc, #24]
	ldr r2, [r3, #0]
	add r0, sp, #4
	bl strncpy
	ldrh r0, [r4, #2]
	ldrh r2, [r4, #4]
	adds r1, r2, r6
	add r2, sp, #4
	bl sub_08004914
	b .L083159E6
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083159D8:
	ldrh r0, [r4, #2]
	ldrh r3, [r4, #4]
	adds r1, r3, r6
	mov r3, r8
	adds r2, r7, r3
	bl sub_08004914
.L083159E6:
	movs r0, #25
	add r8, r0
	adds r6, #1
	ldr r3, [pc, #20]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcc .L08315994
.L083159F6:
	mov r1, r9
	adds r1, #108
	ldr r2, [sp, #100]
	adds r1, r2, r1
	ldr r0, [r1, #0]
	subs r0, #1
	b .L08315A0A
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315A08:
	subs r0, r2, #1
.L08315A0A:
	str r0, [r1, #0]
.L08315A0C:
	ldr r3, [sp, #76]
	cmp r3, #0
	bne .L08315A32
	ldr r4, [sp, #100]
	adds r4, #116
	str r4, [sp, #100]
	ldr r5, [sp, #104]
	adds r5, #116
	str r5, [sp, #104]
	movs r0, #116
	add sl, r0
	ldr r1, [sp, #88]
	adds r1, #1
	str r1, [sp, #88]
	ldr r3, [pc, #128]
	ldr r0, [r3, #0]
	cmp r1, r0
	bcs .L08315A32
	b .L083158B6
.L08315A32:
	movs r2, #0
	mov r8, r2
	ldr r3, [pc, #120]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcc .L08315A40
	b .L08315BBA
.L08315A40:
	ldr r5, [pc, #112]
	movs r4, #1
	str r4, [sp, #96]
	movs r0, #32
	mov sl, r0
	movs r7, #0
	adds r6, r5, #0
	movs r1, #16
	adds r1, r1, r6
	mov r9, r1
.L08315A54:
	ldrb r2, [r6, #0]
	cmp r2, #1
	beq .L08315A5C
	b .L08315B98
.L08315A5C:
	movs r4, #1
	str r4, [sp, #80]
	adds r0, r5, #0
	adds r0, #28
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	beq .L08315A6E
	b .L08315B94
.L08315A6E:
	subs r0, #8
	adds r0, r7, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315B3C
	strb r1, [r6, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315A94
	ldr r0, [r6, #44]
	ldr r4, [sp, #96]
	cmp r0, #0
	bne .L08315AC0
	mov r0, sl
	add r0, r9
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315AC0
.L08315A94:
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315B1C
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B1C
	movs r0, #1
	bl sub_083100D4
	b .L08315B1C
	strh r4, [r4, #48]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #34]
	lsls r0, r0, #8
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
.L08315AC0:
	lsls r2, r4, #5
	ldr r1, [pc, #32]
	adds r0, r2, r1
	ldr r1, [r6, #12]
	ldr r0, [r0, #0]
	cmp r1, r0
	bhi .L08315ADC
	mov r3, r9
	adds r0, r7, r3
	adds r1, r2, r3
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bls .L08315AE8
.L08315ADC:
	movs r0, #1
	bl sub_083100D4
	b .L08315AEE
	strh r4, [r3, #34]
	lsls r0, r0, #8
.L08315AE8:
	movs r0, #0
	bl sub_083100D4
.L08315AEE:
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	ldr r3, [pc, #48]
	adds r2, r4, r3
	ldr r2, [r2, #0]
	str r2, [sp, #112]
	adds r2, r4, #0
	add r2, r9
	ldr r3, [r2, #0]
	mov ip, r3
	ldr r2, [pc, #36]
	adds r4, r4, r2
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	ldr r2, [sp, #112]
	bl sub_0830FFD4
.L08315B1C:
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315B82
	mov r3, sl
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1, #0]
	b .L08315B82
	strh r4, [r3, #34]
	lsls r0, r0, #8
	strh r0, [r5, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L08315B3C:
	ldr r4, [r6, #12]
	adds r2, r5, #0
	adds r2, #16
	cmp r4, #0
	bne .L08315B50
	mov r1, r9
	adds r0, r7, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B6C
.L08315B50:
	adds r0, r5, #4
	adds r0, r7, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r7, r1
	ldr r1, [r1, #0]
	adds r2, r7, r2
	ldr r3, [r2, #0]
	ldr r2, [r6, #24]
	str r2, [sp, #0]
	adds r2, r4, #0
	bl sub_0830FFD4
.L08315B6C:
	ldr r1, [pc, #32]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315B82
	adds r0, r5, #0
	adds r0, #20
	adds r0, r7, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315B82:
	adds r1, r5, #0
	adds r1, #20
	adds r1, r7, r1
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	b .L08315B98
	mov lr, fp
	lsls r0, r0, #12
.L08315B94:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315B98:
	ldr r2, [sp, #80]
	cmp r2, #0
	bne .L08315BBA
	ldr r3, [sp, #96]
	adds r3, #1
	str r3, [sp, #96]
	movs r4, #32
	add sl, r4
	adds r7, #32
	adds r6, #32
	movs r0, #1
	add r8, r0
	ldr r3, [pc, #248]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcs .L08315BBA
	b .L08315A54
.L08315BBA:
	ldr r3, [pc, #244]
	ldrh r1, [r3, #0]
	cmp r1, #0
	beq .L08315C1A
	ldr r4, [pc, #240]
	ldrh r2, [r4, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08315C1A
	movs r5, #0
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315BEE
	ldr r1, [pc, #204]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BEE:
	movs r0, #2
	ldrh r1, [r3, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315BFE
	ldr r1, [pc, #192]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BFE:
	movs r0, #1
	ldrh r2, [r3, #0]
	ands r0, r2
	cmp r0, #0
	beq .L08315C0E
	ldr r1, [pc, #180]
	movs r0, #20
	strh r0, [r1, #0]
.L08315C0E:
	movs r1, #0
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r3, #0]
	ldr r0, [pc, #172]
	strb r1, [r0, #0]
.L08315C1A:
	ldr r5, [sp, #68]
	cmp r5, #0
	beq .L08315C22
	b .L08316008
.L08315C22:
	ldr r0, [sp, #76]
	cmp r0, #0
	beq .L08315C2A
	b .L08316008
.L08315C2A:
	ldr r1, [sp, #72]
	cmp r1, #0
	beq .L08315C32
	b .L08316008
.L08315C32:
	ldr r2, [sp, #80]
	cmp r2, #0
	beq .L08315C3A
	b .L08316008
.L08315C3A:
	ldr r3, [sp, #84]
	cmp r3, #0
	beq .L08315C42
	b .L08316008
.L08315C42:
	ldr r3, [pc, #128]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L08315C4C
	b .L08315E1C
.L08315C4C:
	ldr r1, [pc, #120]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08315D00
	subs r0, #1
	str r0, [r1, #0]
	add r6, sp, #32
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r5, [pc, #104]
	adds r1, r6, #0
	adds r0, r0, r5
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r4}
	stmia r1!, {r2, r4}
	ldr r0, [pc, #92]
	ldr r4, [r0, #0]
	ldr r1, [pc, #92]
	movs r0, #1
	str r0, [r1, #0]
	bl sub_083154C0
	bl sub_0831A7F4
	adds r5, #32
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq .L08315CF8
	ldr r1, [r5, #12]
	cmp r1, #0
	beq .L08315CF8
	ldr r5, [r5, #16]
	cmp r5, #0
	beq .L08315CF8
	ldr r0, [r6, #12]
	cmp r0, r1
	bhi .L08315CA4
	ldr r0, [r6, #16]
	cmp r0, r5
	bls .L08315CD8
.L08315CA4:
	movs r0, #1
	bl sub_083100D4
	b .L08315CDE
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	mov lr, fp
	lsls r0, r0, #12
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315CD8:
	movs r0, #0
	bl sub_083100D4
.L08315CDE:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L0831600E
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315CF8:
	movs r0, #1
	bl sub_083100D4
	b .L0831600E
.L08315D00:
	ldr r5, [pc, #144]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08315DDC
	ldr r0, [pc, #140]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r6, [pc, #140]
	add r1, sp, #4
	adds r0, r0, r6
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r3, r4}
	stmia r1!, {r3, r4}
	bl sub_083154C0
	ldr r4, [pc, #120]
	adds r0, r4, #0
	adds r0, #172
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	ldr r0, [pc, #88]
	ldr r1, [r5, #0]
	str r1, [r0, #0]
	ldr r2, [sp, #80]
	str r2, [r5, #0]
	bl sub_0831A7E8
	ldr r0, [pc, #80]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315D68
	adds r0, r4, #0
	adds r0, #176
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
.L08315D68:
	adds r1, r6, #0
	adds r1, #32
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08315DCC
	ldr r2, [r1, #12]
	cmp r2, #0
	beq .L08315DCC
	ldr r1, [r1, #16]
	cmp r1, #0
	beq .L08315DCC
	ldr r0, [sp, #16]
	cmp r0, r2
	bhi .L08315D8A
	ldr r0, [sp, #20]
	cmp r0, r1
	bls .L08315DAC
.L08315D8A:
	movs r0, #1
	bl sub_083100D4
	b .L08315DB2
	movs r0, r0
	ldrh r0, [r0, r1]
	lsls r0, r0, #12
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	strh r0, [r2, #44]
	lsls r0, r0, #8
.L08315DAC:
	movs r0, #0
	bl sub_083100D4
.L08315DB2:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L08315DD2
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315DCC:
	movs r0, #1
	bl sub_083100D4
.L08315DD2:
	ldr r1, [pc, #4]
	movs r0, #2
	b .L0831600C
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315DDC:
	ldr r4, [pc, #56]
	adds r0, r4, #0
	adds r0, #172
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	movs r0, #1
	bl sub_083100D4
	bl sub_083154C0
	ldr r0, [sp, #80]
	str r0, [r4, #0]
	b .L0831600E
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E1C:
	ldr r0, [pc, #88]
	ldr r2, [pc, #92]
	ldrh r1, [r2, #0]
	ldrh r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E98
	add r4, sp, #80
	ldrb r4, [r4, #0]
	strb r4, [r3, #0]
	ldr r0, [pc, #76]
	ldr r5, [sp, #80]
	str r5, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315E44
	ldr r1, [pc, #68]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E44:
	movs r0, #2
	ldrh r1, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E54
	ldr r1, [pc, #56]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E54:
	movs r0, #1
	ldrh r3, [r2, #0]
	ands r0, r3
	cmp r0, #0
	beq .L08315E64
	ldr r1, [pc, #44]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E64:
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r2, #0]
	ldr r0, [pc, #36]
	add r5, sp, #80
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	ldr r1, [pc, #32]
	movs r0, #4
	b .L0831600C
	mov lr, fp
	lsls r0, r0, #12
	ldrb r4, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E98:
	ldr r1, [pc, #44]
	movs r0, #3
	str r0, [r1, #0]
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	movs r1, #10
	bl __umodsi3
	cmp r0, #0
	bne .L08315F38
	ldr r2, [pc, #32]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne .L08315ED8
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	movs r0, #1
	b .L08315EEA
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldrh r0, [r1, r1]
	lsls r0, r0, #12
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
.L08315ED8:
	ldr r1, [pc, #272]
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #4
	bhi .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	ldr r0, [sp, #80]
.L08315EEA:
	str r0, [r2, #0]
.L08315EEC:
	ldr r0, [pc, #252]
	ldr r0, [r0, #0]
	ldr r1, [pc, #252]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r2, [pc, #244]
	ldr r0, [pc, #244]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r1, r2, #4
	adds r1, r4, r1
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	subs r1, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r4, r0
	adds r2, #16
	adds r4, r4, r2
	ldr r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r2, r2, r0
	subs r2, #1
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	bl sub_0830F78C
.L08315F38:
	ldr r6, [pc, #192]
	ldr r0, [r6, #0]
	cmp r0, #0
	beq .L0831600E
	ldr r5, [pc, #176]
	ldr r0, [pc, #180]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	adds r2, r5, #0
	adds r2, #12
	adds r2, r4, r2
	ldr r2, [r2, #0]
	adds r3, r5, #0
	adds r3, #16
	adds r3, r4, r3
	ldr r3, [r3, #0]
	adds r5, #24
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	bl sub_0830FFD4
	ldr r4, [r6, #0]
	cmp r4, #0
	beq .L0831600E
.L08315F7A:
	movs r5, #0
	ldr r2, [pc, #128]
	ldr r0, [r2, #0]
	subs r0, r0, r4
	movs r1, #116
	muls r0, r1
	ldr r1, [pc, #124]
	adds r0, r0, r1
	adds r0, #106
	subs r3, r4, #1
	mov sl, r3
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcs .L08315FE4
	adds r7, r1, #0
	mov r9, r2
	movs r0, #116
	mov r8, r0
	adds r3, r7, #6
	movs r6, #0
.L08315FA2:
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, r0, r4
	mov r2, r8
	muls r2, r0
	adds r0, r6, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08315FCA
	adds r1, r2, r7
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	adds r1, r1, r5
	adds r2, r2, r3
	adds r2, r2, r6
	str r3, [sp, #108]
	bl sub_08004914
	ldr r3, [sp, #108]
.L08315FCA:
	adds r6, #25
	adds r5, #1
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, r0, r4
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r7
	adds r0, #106
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcc .L08315FA2
.L08315FE4:
	mov r4, sl
	cmp r4, #0
	bne .L08315F7A
	b .L0831600E
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	strh r0, [r2, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L08316008:
	ldr r1, [pc, #124]
	movs r0, #5
.L0831600C:
	str r0, [r1, #0]
.L0831600E:
	ldr r2, [pc, #120]
	ldr r1, [pc, #120]
	ldr r4, [sp, #92]
	ldr r5, [sp, #64]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [sp, #64]
	ldr r1, [pc, #104]
	ldr r0, [r1, #0]
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08316074
	ldr r5, [pc, #96]
	adds r7, r2, #0
	adds r7, #16
	adds r6, r1, #0
	adds r3, r5, #0
	movs r4, #0
.L0831603C:
	ldrb r0, [r3, #0]
	cmp r0, #1
	bne .L08316064
	ldr r1, [r2, #8]
	adds r0, r1, #1
	str r0, [r2, #8]
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #12
	adds r1, r1, r0
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, [r3, #8]
	str r1, [r0, #0]
.L08316064:
	adds r3, #28
	adds r4, #28
	ldr r1, [sp, #64]
	adds r1, #1
	str r1, [sp, #64]
	ldr r0, [r6, #0]
	cmp r1, r0
	bcc .L0831603C
.L08316074:
	ldr r0, [pc, #16]
	add sp, #116
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x02007A3C
	.4byte 0x02008620
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316098
	.thumb_func
sub_08316098:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [pc, #8]
	ldr r1, [r0, #0]
	cmp r1, #9
	bls .L083160B0
	movs r0, #0
	b .L083160F2
	strh r4, [r3, #48]
	lsls r0, r0, #8
.L083160B0:
	adds r2, r1, #1
	str r2, [r0, #0]
	ldr r0, [pc, #64]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r6, [r0, #0]
	cmp r2, #1
	bne .L083160F0
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L083160F0:
	movs r0, #1
.L083160F2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.4byte 0x02007A3C

	.thumb
	.align 1, 0
	.global sub_083160FC
	.thumb_func
sub_083160FC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, [sp, #20]
	ldr r5, [pc, #8]
	ldr r1, [r5, #0]
	cmp r1, #19
	bls .L08316114
	movs r0, #0
	b .L0831616C
	strh r0, [r4, #48]
	lsls r0, r0, #8
.L08316114:
	adds r0, r1, #1
	str r0, [r5, #0]
	ldr r0, [pc, #88]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #4
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r2, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r3, [r0, #0]
	movs r2, #1
	ands r3, r2
	cmp r3, #0
	beq .L08316160
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L08316160:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne .L0831616A
	mov r1, ip
	strb r0, [r1, #0]
.L0831616A:
	movs r0, #1
.L0831616C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316178
	.thumb_func
sub_08316178:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov ip, r2
	adds r7, r3, #0
	ldr r4, [pc, #8]
	ldr r1, [r4, #0]
	cmp r1, #14
	bls .L08316198
	movs r0, #0
	b .L08316278
	strh r4, [r4, #48]
	lsls r0, r0, #8
.L08316198:
	adds r0, r1, #1
	str r0, [r4, #0]
	ldr r3, [pc, #64]
	movs r0, #116
	mov r8, r0
	mov r0, r8
	muls r0, r1
	adds r1, r0, #0
	adds r2, r1, r3
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	adds r0, r3, #0
	adds r0, #108
	adds r0, r1, r0
	str r7, [r0, #0]
	adds r0, r3, #0
	adds r0, #112
	adds r1, r1, r0
	ldr r0, [sp, #28]
	str r0, [r1, #0]
	movs r5, #0
	adds r2, #106
	movs r0, #1
	strb r0, [r2, #0]
	mov r1, ip
	cmp r1, #0
	bne .L083161E4
	ldr r0, [r4, #0]
	subs r0, #1
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #6]
	b .L0831626A
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083161E4:
	adds r0, r3, #6
	mov r8, r0
	mov r9, r3
	mov r7, r9
	adds r6, r4, #0
	mov r3, ip
.L083161F0:
	ldrb r1, [r3, #0]
	cmp r1, #10
	bne .L08316232
	ldr r0, [r6, #0]
	subs r0, #1
	movs r4, #116
	adds r2, r0, #0
	muls r2, r4
	adds r0, r2, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L08316230
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	subs r0, #1
	muls r0, r4
	adds r0, r0, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	movs r5, #0
.L08316230:
	adds r3, #1
.L08316232:
	ldr r0, [r6, #0]
	subs r0, #1
	movs r1, #116
	adds r2, r0, #0
	muls r2, r1
	mov r1, r9
	adds r0, r2, r1
	adds r0, #106
	ldrb r1, [r0, #0]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	ldrb r1, [r3, #0]
	strb r1, [r0, #0]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L0831626A
	adds r5, #1
	adds r3, #1
	mov r0, ip
	adds r0, #99
	cmp r3, r0
	bls .L083161F0
.L0831626A:
	ldr r0, [pc, #24]
	ldr r1, [r0, #0]
	cmp r1, #1
	bne .L08316276
	ldr r0, [pc, #20]
	strb r1, [r0, #0]
.L08316276:
	movs r0, #1
.L08316278:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008624
	.4byte 0x02007D84

	.thumb
	.align 1, 0
	.global sub_0831628C
	.thumb_func
sub_0831628C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #9
	bls .L083162A8
	movs r0, #0
	b .L083162FC
	movs r0, r0
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L083162A8:
	adds r3, r0, #1
	str r3, [r1, #0]
	ldr r1, [pc, #84]
	mov ip, r1
	lsls r2, r0, #5
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r2, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r2, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r2, r0
	ldr r1, [sp, #20]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r2, r0
	ldr r1, [sp, #24]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #28
	adds r0, r2, r0
	ldr r1, [sp, #28]
	str r1, [r0, #0]
	cmp r3, #1
	bne .L083162FA
	mov r1, ip
	adds r0, r2, r1
	strb r3, [r0, #0]
.L083162FA:
	movs r0, #1
.L083162FC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02008450

	.thumb
	.align 1, 0
	.global sub_08316308
	.thumb_func
sub_08316308:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r9, r1
	adds r7, r2, #0
	mov sl, r3
	ldr r0, [pc, #12]
	ldr r1, [r0, #0]
	cmp r1, #4
	bls .L0831632C
	movs r0, #0
	b .L0831637A
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
.L0831632C:
	adds r2, r1, #1
	mov r8, r2
	str r2, [r0, #0]
	ldr r6, [pc, #84]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r5, r0, #2
	adds r4, r6, #0
	adds r4, #8
	adds r4, r5, r4
	mov r1, ip
	lsls r0, r1, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r4, r6, #0
	adds r4, #12
	adds r4, r5, r4
	mov r2, r9
	lsls r0, r2, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r0, r6, #4
	adds r0, r5, r0
	str r7, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r0, r5, r0
	mov r1, sl
	str r1, [r0, #0]
	mov r2, r8
	cmp r2, #1
	bne .L08316378
	adds r0, r5, r6
	strb r2, [r0, #0]
.L08316378:
	movs r0, #1
.L0831637A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008590

	.thumb
	.align 1, 0
	.global sub_0831638C
	.thumb_func
sub_0831638C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #8]
	str r4, [r0, #0]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x03005A3C

	.thumb
	.align 1, 0
	.global sub_083163A8
	.thumb_func
sub_083163A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #188
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #104]
	str r4, [r0, #0]
	ldr r1, [pc, #104]
	ldr r0, [r1, #52]
	asrs r5, r0, #8
	ldr r0, [r1, #56]
	asrs r4, r0, #8
	add r6, sp, #172
	add r0, sp, #176
	mov r9, r0
	movs r0, #173
	add r0, sp
	mov r8, r0
	adds r7, r1, #0
.L083163D8:
	bl VBlankIntrWait
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
	bl sub_080043B4
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L083163F8
	bl sub_08311F7C
.L083163F8:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08316444
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316438
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #28]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [r7, #52]
	asrs r5, r0, #8
	ldr r0, [r7, #56]
	asrs r4, r0, #8
	b .L08316458
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L08316438:
	ldr r0, [pc, #4]
	bl sub_08312174
	b .L08316458
	movs r5, #12
	lsls r0, r0, #12
.L08316444:
	add r0, sp, #180
	ldr r0, [r0, #0]
	adds r5, r5, r0
	add r0, sp, #184
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08301D98
.L08316458:
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316468
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	b .L0831646E
.L08316468:
	movs r0, #0
	bl sub_082F234C
.L0831646E:
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831647A
	bl sub_082EA2DC
.L0831647A:
	bl sub_082F4BBC
	movs r0, #0
	bl sub_082F27E8
	bl sub_082EA3A4
	bl sub_082F4BEC
	ldr r0, [sp, #0]
	cmp r0, #0
	bne .L083163D8
	movs r0, #1
	add sp, #188
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083164A4
	.thumb_func
sub_083164A4:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r3, [pc, #16]
	movs r2, #1
	strb r2, [r3, #0]
	ldr r2, [pc, #16]
	ldrh r3, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	bx lr
	.4byte 0x0200796C
	.4byte 0x02007974
	.4byte 0x02007970

	.thumb
	.align 1, 0
	.global sub_083164C8
	.thumb_func
sub_083164C8:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007976

	.thumb
	.align 1, 0
	.global sub_083164DC
	.thumb_func
sub_083164DC:
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq .L083164EA
	ldr r0, [pc, #8]
	str r1, [r0, #0]
.L083164EA:
	bx lr
	.4byte 0x02007978
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_083164F4
	.thumb_func
sub_083164F4:
	ldr r1, [pc, #4]
	movs r0, #0
	str r0, [r1, #0]
	bx lr
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_08316500
	.thumb_func
sub_08316500:
	ldr r1, [pc, #4]
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x03005A40

	.thumb
	.align 1, 0
	.global sub_0831650C
	.thumb_func
sub_0831650C:
	ldr r0, [pc, #16]
	adds r0, #172
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	bx lr
	.4byte 0x02007978
	.4byte 0x03000D1C
	.4byte 0x03000D14

	.thumb
	.align 1, 0
	.global sub_0831652C
	.thumb_func
sub_0831652C:
	ldr r0, [pc, #8]
	adds r0, #173
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831653C
	.thumb_func
sub_0831653C:
	ldr r0, [pc, #8]
	adds r0, #174
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831654C
	.thumb_func
sub_0831654C:
	push {r4, lr}
	ldr r0, [pc, #28]
	adds r0, #175
	movs r1, #1
	strb r1, [r0, #0]
	ldr r4, [pc, #24]
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L08316562
	bl sub_08004A1C
.L08316562:
	movs r0, #0
	strb r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x02007978
	.4byte 0x030059DD

	.thumb
	.align 1, 0
	.global sub_08316574
	.thumb_func
sub_08316574:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #240
	mov r8, r0
	str r0, [sp, #4]
	movs r4, #15
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #236]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #224]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #4
	movs r3, #120
	bl sub_08316178
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #15
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #240
	bl sub_08316098
	movs r0, #150
	movs r1, #30
	movs r2, #60
	movs r3, #255
	bl sub_08316308
	str r5, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	movs r4, #60
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r6, #5
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #124]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #55
	negs r0, r0
	movs r3, #210
	lsls r3, r3, #1
	movs r1, #13
	adds r2, r3, #0
	bl sub_08316308
	str r6, [sp, #0]
	movs r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #52]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #1
	bl sub_08316178
	movs r0, #8
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DF9C4
	.4byte 0x083DF9E0
	.4byte 0x083DF9E8
	.4byte 0x083DF9FC
	.4byte 0x083DFA18
	.4byte 0x083DFA2C

	.thumb
	.align 1, 0
	.global sub_083166A4
	.thumb_func
sub_083166A4:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r0, #5
	str r0, [sp, #0]
	movs r5, #200
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	str r4, [sp, #0]
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r3, #200
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #200
	movs r1, #200
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r1, #200
	negs r1, r1
	adds r0, r1, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r0, #4
	bl sub_083164DC
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DFA4C
	.4byte 0x083DFA58

	.thumb
	.align 1, 0
	.global sub_08316734
	.thumb_func
sub_08316734:
	push {r4, r5, r6, lr}
	sub sp, #12
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	movs r4, #0
	str r4, [sp, #0]
	movs r6, #240
	str r6, [sp, #4]
	movs r5, #60
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #136]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #5
	str r0, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #108]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #3
	movs r3, #120
	bl sub_08316178
	str r4, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r3, #150
	lsls r3, r3, #2
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #58
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08316098
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DFA5C
	.4byte 0x083DFA6C
	.4byte 0x083DFA80
	.4byte 0x083DFA94

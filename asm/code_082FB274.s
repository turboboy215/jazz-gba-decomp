	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FB274
	.thumb_func
sub_082FB274:
	ldr r1, [pc, #8]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB284
	.thumb_func
sub_082FB284:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [pc, #292]
	adds r6, r0, r1
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r0, r0, #24
	mov sl, r0
	cmp r0, #0
	bne .L082FB2AC
	b .L082FB3E8
.L082FB2AC:
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #272]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #260]
	ldr r0, [pc, #260]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r5, [pc, #220]
	ldr r0, [pc, #220]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r1, #0
	mov r9, r1
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #176]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #132]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, r9
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #88]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #44]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	b .L082FB516
	movs r5, #12
	lsls r0, r0, #12
	adds r4, #252
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	str r2, [sp, #84]
	lsrs r7, r5, #32
	lsls r7, r4, #15
	movs r0, r0
	str r6, [sp, #612]
	lsrs r7, r5, #32
	add r0, pc, #660
	lsrs r7, r5, #32
	ldr r2, [sp, #900]
	lsrs r7, r5, #32
	add r0, sp, #948
	lsrs r7, r5, #32
	add r6, sp, #420
	lsrs r7, r5, #32
.L082FB3E8:
	ldr r0, [pc, #320]
	ldrb r1, [r0, #0]
	cmp r1, #3
	bls .L082FB3F2
	b .L082FB554
.L082FB3F2:
	ldrb r0, [r0, #0]
	bl sub_08315020
	mov r9, r0
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #300]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #288]
	ldr r0, [pc, #292]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #18]
	ldr r5, [pc, #244]
	ldr r0, [pc, #248]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #20]
	ldr r0, [pc, #200]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r0, r9
	ldrh r2, [r0, #22]
	ldr r0, [pc, #156]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r1, sl
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #9
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r0, r9
	ldrh r2, [r0, #24]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #26]
	ldr r0, [pc, #64]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
.L082FB516:
	movs r3, #20
	bl sub_082FB9A8
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	b .L082FB67A
	strb r4, [r3, #21]
	lsls r0, r0, #8
	adds r4, #252
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	str r2, [sp, #84]
	lsrs r7, r5, #32
	lsls r7, r4, #15
	movs r0, r0
	str r6, [sp, #612]
	lsrs r7, r5, #32
	add r0, pc, #660
	lsrs r7, r5, #32
	ldr r2, [sp, #900]
	lsrs r7, r5, #32
	add r0, sp, #948
	lsrs r7, r5, #32
	add r6, sp, #420
	lsrs r7, r5, #32
.L082FB554:
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #304]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #292]
	ldr r0, [pc, #292]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r5, [pc, #252]
	ldr r0, [pc, #252]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r1, sl
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #164]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #9
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #120]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #76]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
.L082FB67A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030034FC
	.4byte 0x0000FFFF
	.4byte 0x082F9215
	.4byte 0x000003E7
	.4byte 0x082F9699
	.4byte 0x082FA0A5
	.4byte 0x082F9AE1
	.4byte 0x082FA8ED
	.4byte 0x082FAE69

	.thumb
	.align 1, 0
	.global sub_082FB6B0
	.thumb_func
sub_082FB6B0:
	push {lr}
	movs r2, #100
	muls r0, r2
	ldr r2, [pc, #24]
	adds r0, r0, r2
	ldr r2, [pc, #24]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300373C
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB6D8
	.thumb_func
sub_082FB6D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r6, #5
	subs r4, r4, r6
	lsls r4, r4, #3
	ldr r0, [pc, #68]
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #93
	strb r5, [r0, #0]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #4
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	ldr r2, [pc, #52]
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #96]
	bl sub_082FB99C
	ldr r1, [r4, #96]
	movs r0, #2
	strb r0, [r1, #0]
	ldr r1, [r4, #96]
	movs r0, #10
	strb r0, [r1, #14]
	movs r0, #100
	muls r0, r6
	ldr r1, [pc, #28]
	adds r0, r0, r1
	ldr r1, [pc, #28]
	lsls r5, r5, #4
	adds r5, r5, r1
	ldr r1, [r5, #0]
	bl sub_080003FC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x030034FC
	.4byte 0x0300373C
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB73C
	.thumb_func
sub_082FB73C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [pc, #88]
	adds r2, r4, #0
	adds r2, #93
	ldrb r3, [r4, #0]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	ldrb r2, [r2, #0]
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082FB802
	ldr r0, [r4, #96]
	bl sub_082FB264
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB770
	ldrb r0, [r4, #7]
	cmp r0, #3
	beq .L082FB802
	cmp r0, #5
	beq .L082FB802
.L082FB770:
	ldr r0, [r4, #96]
	bl sub_082FB9D0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB7C8
	ldr r0, [r4, #96]
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne .L082FB7B0
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FB7A0
	movs r0, #1
	negs r0, r0
	ldr r1, [r4, #64]
	movs r2, #192
	lsls r2, r2, #2
	ldr r3, [r4, #72]
	b .L082FB7AA
	adds r4, #228
	lsls r0, r0, #12
.L082FB7A0:
	ldr r1, [r4, #64]
	movs r2, #192
	lsls r2, r2, #2
	ldr r3, [r4, #72]
	movs r0, #1
.L082FB7AA:
	bl sub_083170B8
	str r0, [r4, #64]
.L082FB7B0:
	movs r0, #100
	ldrb r4, [r4, #0]
	muls r0, r4
	ldr r1, [pc, #12]
	adds r0, r0, r1
	bl sub_080006AC
	movs r0, #1
	b .L082FB804
	movs r0, r0
	adds r7, #60
	lsls r0, r0, #12
.L082FB7C8:
	ldr r0, [r4, #96]
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne .L082FB802
	movs r0, #6
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB802
	ldr r0, [pc, #44]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082FB802
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L082FB802
	movs r0, #6
	bl sub_083189D0
.L082FB802:
	movs r0, #0
.L082FB804:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_082FB810
	.thumb_func
sub_082FB810:
	push {lr}
	adds r3, r0, #0
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #4
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	ldr r1, [pc, #12]
	adds r3, r3, r1
	adds r0, r0, r3
	adds r1, r2, #0
	bl sub_082FBA80
	pop {r0}
	bx r0
	.4byte 0x030034FC

	.thumb
	.align 1, 0
	.global sub_082FB834
	.thumb_func
sub_082FB834:
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #8]
	adds r0, r0, r1
	adds r2, r2, r0
	ldrh r0, [r2, #6]
	bx lr
	.2byte 0x0000
	.4byte 0x030034FC

	.thumb
	.align 1, 0
	.global sub_082FB850
	.thumb_func
sub_082FB850:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r0, r0, #5
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #68]
	adds r6, r0, r1
	movs r0, #100
	mov r1, r8
	muls r1, r0
	ldr r0, [pc, #64]
	adds r5, r1, r0
	adds r7, r6, #0
	adds r7, #100
	adds r0, r7, #0
	bl sub_08000790
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08000680
	ldr r0, [r6, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB8BC
	ldr r0, [pc, #32]
	adds r1, r6, #0
	adds r1, #93
	ldrb r1, [r1, #0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne .L082FB8B4
	adds r0, r5, #0
	bl sub_08000704
	b .L082FB8EA
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	adds r7, #60
	lsls r0, r0, #12
	str r0, [r1, #112]
	lsrs r5, r7, #32
.L082FB8B4:
	adds r0, r5, #0
	bl sub_080006C4
	b .L082FB8EA
.L082FB8BC:
	adds r0, r6, #0
	adds r0, #110
	ldrh r4, [r0, #0]
	adds r0, r5, #0
	bl sub_08000724
	cmp r4, r0
	bhi .L082FB8DC
	adds r0, r7, #0
	bl sub_08000794
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800065C
	b .L082FB8EA
.L082FB8DC:
	adds r0, r5, #0
	bl sub_08000724
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800065C
.L082FB8EA:
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L082FB948
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq .L082FB948
	adds r0, r6, #0
	adds r0, #100
	ldr r1, [r6, #52]
	asrs r1, r1, #8
	ldr r2, [r6, #56]
	asrs r2, r2, #8
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB948
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082FB948
	movs r0, #100
	mov r4, r8
	muls r4, r0
	ldr r0, [pc, #40]
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r6, #0
	adds r0, #102
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #2
	ldrb r3, [r0, #0]
	adds r3, #1
	adds r0, r4, #0
	bl sub_08000684
	b .L082FB958
	adds r4, #228
	lsls r0, r0, #12
	adds r7, #60
	lsls r0, r0, #12
.L082FB948:
	movs r0, #100
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	ldr r1, [pc, #32]
	adds r0, r0, r1
	bl sub_0800060C
.L082FB958:
	movs r0, #100
	mov r2, r8
	muls r2, r0
	adds r0, r2, #0
	ldr r1, [pc, #16]
	adds r0, r0, r1
	bl Sprite_Draw
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300373C

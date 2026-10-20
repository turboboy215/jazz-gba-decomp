	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAX2_calc_mem: [sure] official name (GAX v3 manual; gaxtapper: GAX2_estimate); matches 3.05A layout; unused by Jazz
	.thumb
	.align 1, 0
	.global sub_083175A8
	.thumb_func
sub_083175A8:
	.global GAX2_calc_mem
	.thumb_set GAX2_calc_mem, sub_083175A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r0, #0
	movs r4, #0
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [r7, #48]
	cmp r0, #0
	bne .L083175C6
	ldr r1, [pc, #20]
	str r1, [r7, #48]
.L083175C6:
	ldrh r1, [r7, #8]
	ldr r0, [pc, #16]
	cmp r1, r0
	bne .L083175E4
	ldr r0, [r7, #48]
	ldrh r6, [r0, #24]
	mov r8, r0
	b .L083175EA
	movs r0, r0
	.2byte 0xfbf0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xffff @ .raw
	movs r0, r0
.L083175E0:
	adds r0, r2, #0
	b .L08317610
.L083175E4:
	ldrh r6, [r7, #8]
	ldr r2, [r7, #48]
	mov r8, r2
.L083175EA:
	ldr r5, [pc, #64]
	movs r2, #0
	mov r9, r5
	ldrh r3, [r7, #10]
	ldrh r0, [r7, #16]
	mov ip, r0
	ldr r1, [r7, #44]
	str r1, [sp, #4]
	ldrh r0, [r7, #14]
	mov sl, r0
	mov r1, r9
.L08317600:
	ldrh r0, [r1, #0]
	cmp r0, r6
	bcs .L083175E0
	adds r1, #4
	adds r2, #1
	cmp r2, #12
	bls .L08317600
	movs r0, #12
.L08317610:
	lsls r0, r0, #2
	adds r0, r5, r0
	ldrh r6, [r0, #0]
	ldr r0, [pc, #24]
	cmp r3, r0
	bne .L08317638
	mov r1, r8
	ldrh r0, [r1, #26]
	adds r5, r6, #0
	cmp r0, #0
	beq .L0831763A
	adds r5, r0, #0
	b .L0831763A
	movs r0, r0
	.2byte 0xfbbc @ .raw
	lsrs r5, r7, #32
	.2byte 0xffff @ .raw
	movs r0, r0
.L08317634:
	adds r0, r1, #0
	b .L08317650
.L08317638:
	ldrh r5, [r7, #10]
.L0831763A:
	mov r3, r9
	movs r1, #0
	adds r2, r3, #0
.L08317640:
	ldrh r0, [r2, #0]
	cmp r0, r5
	bcs .L08317634
	adds r2, #4
	adds r1, #1
	cmp r1, #12
	bls .L08317640
	movs r0, #12
.L08317650:
	lsls r0, r0, #2
	adds r0, r3, r0
	ldrh r5, [r0, #0]
	ldr r2, [pc, #28]
	cmp r8, r2
	bne .L0831765E
	adds r6, r5, #0
.L0831765E:
	cmp r5, r6
	beq .L08317666
	movs r0, #1
	str r0, [sp, #0]
.L08317666:
	ldr r0, [pc, #16]
	cmp ip, r0
	bne .L0831767C
	mov r1, r8
	ldrb r3, [r1, #28]
	b .L0831767E
	movs r0, r0
	.2byte 0xfbf0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831767C:
	ldrh r3, [r7, #16]
.L0831767E:
	ldr r2, [sp, #4]
	cmp r2, #0
	bne .L08317688
	movs r3, #0
	strh r3, [r7, #16]
.L08317688:
	adds r2, r4, #0
	adds r2, #140
	adds r0, r3, #4
	movs r1, #4
	negs r1, r1
	ands r0, r1
	adds r4, r2, r0
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r0, #64
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq .L083176AC
	ldr r2, [pc, #124]
	adds r4, r4, r2
.L083176AC:
	adds r4, #8
	ldr r0, [sp, #0]
	cmp r0, #0
	beq .L083176B6
	adds r4, #8
.L083176B6:
	adds r1, r5, #0
	cmp r5, r6
	bcs .L083176BE
	adds r1, r6, #0
.L083176BE:
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #96]
	mov r9, r1
	bl __udivsi3
	adds r0, #4
	lsls r0, r0, #1
	adds r4, r4, r0
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	mov r1, r9
	bl __udivsi3
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r2, [sp, #0]
	cmp r2, #0
	beq .L08317704
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	mov r1, r9
	bl __udivsi3
	lsls r0, r0, #1
	adds r4, r4, r0
.L08317704:
	movs r0, #16
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne .L08317730
	mov r0, r8
	adds r0, #196
	ldr r1, [r0, #0]
	cmp r1, #0
	beq .L08317730
	subs r0, #8
	ldr r2, [r0, #0]
	adds r4, #76
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	b .L08317736
	lsls r4, r4, #30
	movs r0, r0
	.2byte 0xe94f @ .raw
	movs r0, r0
.L08317730:
	mov r0, r8
	adds r0, #192
	ldr r2, [r0, #0]
.L08317736:
	cmp r2, #0
	beq .L0831775A
	adds r0, r2, #0
	muls r0, r6
	movs r1, #250
	lsls r1, r1, #2
	bl __udivsi3
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r4, #4
	movs r0, #4
	negs r0, r0
	ands r4, r0
	ldr r0, [pc, #80]
	ldr r1, [pc, #80]
	subs r0, r0, r1
	adds r4, r4, r0
.L0831775A:
	movs r0, #4
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq .L0831776C
	ldr r0, [pc, #68]
	ldr r1, [pc, #72]
	subs r0, r0, r1
	adds r4, r4, r0
.L0831776C:
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	ldr r1, [pc, #68]
	ldr r2, [pc, #72]
	subs r0, r1, r2
	adds r4, r4, r0
	adds r4, #76
	mov r0, r8
	ldrb r1, [r0, #0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r4, r4, r0
	str r4, [r7, #4]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0831A3E8
	.4byte 0x0831A2EC
	.4byte 0x0831A2EC
	.4byte 0x0831A220
	.4byte 0x0831A220
	.4byte 0x0831A100
	.4byte 0x0831A470
	.4byte 0x0831A3FC
	.4byte 0x0831A528
	.4byte 0x0831A470

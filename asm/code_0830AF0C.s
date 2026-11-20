	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830AF0C
	.thumb_func
sub_0830AF0C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	bl sub_083152BC
	adds r2, r0, #0
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	subs r0, #4
	cmp r0, #6
	bhi .L0830AF56
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	strb r5, [r3, #21]
	lsls r0, r0, #8
	push {r2, r4, r6, r7}
	lsrs r5, r7, #32
	ldrb r0, [r2, #2]
	b .L0830AF4A
	ldrb r0, [r2, #3]
	b .L0830AF4A
	ldrb r0, [r2, #4]
	b .L0830AF4A
	ldrb r0, [r2, #0]
	b .L0830AF4A
	ldrb r0, [r2, #1]
.L0830AF4A:
	cmp r0, #0
	bne .L0830AF56
	movs r0, #6
	bl sub_083189D0
	b .L0830B2F2
.L0830AF56:
	bl sub_08002058
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L0830AF88
	cmp r0, #2
	bgt .L0830AF70
	cmp r0, #1
	beq .L0830AF76
	b .L0830AFBA
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0830AF70:
	cmp r0, #3
	beq .L0830AF9A
	b .L0830AFBA
.L0830AF76:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	b .L0830AFBA
.L0830AF88:
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
	b .L0830AFBA
.L0830AF9A:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
.L0830AFBA:
	ldr r1, [pc, #236]
	ldrh r0, [r1, #0]
	cmp r0, #222
	beq .L0830B024
	ldr r5, [pc, #232]
	ldr r4, [pc, #232]
	adds r6, r1, #0
.L0830AFC8:
	movs r0, #222
	strh r0, [r5, #0]
	ldr r0, [pc, #228]
	ldrb r0, [r0, #0]
	strh r0, [r5, #2]
	ldr r0, [pc, #228]
	ldrh r0, [r0, #0]
	strh r0, [r5, #4]
	ldrb r1, [r4, #1]
	lsls r0, r1, #1
	ldrb r2, [r4, #0]
	orrs r0, r2
	ldrb r2, [r4, #2]
	lsls r1, r2, #2
	orrs r0, r1
	ldrb r2, [r4, #3]
	lsls r1, r2, #3
	orrs r0, r1
	ldrb r2, [r4, #4]
	lsls r1, r2, #4
	orrs r0, r1
	ldrb r2, [r4, #5]
	lsls r1, r2, #5
	orrs r0, r1
	ldrb r2, [r4, #6]
	lsls r1, r2, #6
	orrs r0, r1
	ldrb r2, [r4, #7]
	lsls r1, r2, #7
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [pc, #180]
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	ldr r0, [pc, #176]
	ldrb r0, [r0, #0]
	strh r0, [r5, #10]
	bl VBlankIntrWait
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08002F64
	ldrh r0, [r6, #0]
	cmp r0, #222
	bne .L0830AFC8
.L0830B024:
	movs r6, #0
	ldr r5, [pc, #132]
	ldr r4, [pc, #132]
.L0830B02A:
	movs r0, #222
	strh r0, [r5, #0]
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	strh r0, [r5, #2]
	ldr r0, [pc, #128]
	ldrh r0, [r0, #0]
	strh r0, [r5, #4]
	ldrb r1, [r4, #1]
	lsls r0, r1, #1
	ldrb r2, [r4, #0]
	orrs r0, r2
	ldrb r2, [r4, #2]
	lsls r1, r2, #2
	orrs r0, r1
	ldrb r2, [r4, #3]
	lsls r1, r2, #3
	orrs r0, r1
	ldrb r2, [r4, #4]
	lsls r1, r2, #4
	orrs r0, r1
	ldrb r2, [r4, #5]
	lsls r1, r2, #5
	orrs r0, r1
	ldrb r2, [r4, #6]
	lsls r1, r2, #6
	orrs r0, r1
	ldrb r2, [r4, #7]
	lsls r1, r2, #7
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [pc, #80]
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	ldr r0, [pc, #80]
	ldrb r0, [r0, #0]
	strh r0, [r5, #10]
	bl VBlankIntrWait
	adds r0, r5, #0
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r6, #1
	cmp r6, #4
	bls .L0830B02A
	movs r0, #1
	cmp r0, #0
	bne .L0830B08E
	b .L0830B2F2
.L0830B08E:
	ldr r1, [pc, #24]
	mov r9, r1
	ldr r7, [pc, #28]
	ldr r2, [pc, #44]
	mov sl, r2
	mov r8, r0
.L0830B09A:
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L0830B0CC
	movs r0, r0
	subs r3, #196
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r5, [r3, #21]
	lsls r0, r0, #8
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r6, [r3, #21]
	lsls r0, r0, #8
	strb r1, [r5, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830B0C8:
	bl VBlankIntrWait
.L0830B0CC:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830B0C8
	mov r1, r9
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	bl sub_08313D78
	bl sub_0800314C
	cmp r0, #3
	beq .L0830B0FC
	cmp r0, #3
	bhi .L0830B0F0
	cmp r0, #2
	beq .L0830B0F6
	b .L0830B106
.L0830B0F0:
	cmp r0, #4
	beq .L0830B102
	b .L0830B106
.L0830B0F6:
	bl Link_Results2
	b .L0830B106
.L0830B0FC:
	bl Link_Results3
	b .L0830B106
.L0830B102:
	bl Link_Results4
.L0830B106:
	movs r4, #0
	ldr r6, [pc, #40]
	ldr r5, [pc, #44]
.L0830B10C:
	bl VBlankIntrWait
	adds r4, #1
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0830B13C
	movs r0, #0
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #1
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	b .L0830B150
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
.L0830B13C:
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #100]
	bl sub_08004914
	movs r0, #0
	movs r1, #1
	ldr r2, [pc, #96]
	bl sub_08004914
.L0830B150:
	ldr r0, [pc, #92]
	adds r1, r6, #0
	bl sub_08002094
	movs r0, #120
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #84]
	bl sub_08002F64
	movs r0, #10
	ldrh r2, [r6, #0]
	ands r0, r2
	cmp r0, #0
	beq .L0830B10C
	ldr r0, [pc, #72]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne .L0830B250
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L0830B250
	ldr r5, [pc, #56]
	ldr r4, [pc, #44]
	movs r6, #127
.L0830B188:
	strh r6, [r5, #0]
	bl VBlankIntrWait
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08002F64
	ldrh r0, [r4, #0]
	cmp r0, #127
	bne .L0830B188
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830B1C4
	push {r2, r4, r7}
	lsrs r5, r7, #32
	push {r2, r4, r5, r7}
	lsrs r5, r7, #32
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
.L0830B1C0:
	bl VBlankIntrWait
.L0830B1C4:
	bl Fade_IsBusy
	adds r5, r0, #0
	cmp r5, #0
	bne .L0830B1C0
	ldr r1, [pc, #84]
	movs r0, #1
	strb r0, [r1, #0]
	bl sub_0830A638
	ldr r4, [pc, #76]
	ldr r0, [pc, #80]
	str r0, [r4, #0]
	mov r1, sl
	str r0, [r1, #0]
	bl sub_0830A140
	ldr r0, [pc, #72]
	strb r5, [r0, #0]
	ldr r0, [pc, #72]
	str r0, [r4, #0]
	ldr r0, [pc, #72]
	mov r2, sl
	str r0, [r2, #0]
	bl sub_0830A324
	mov r1, sl
	ldr r0, [r1, #0]
	movs r2, #216
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r5, [r0, #0]
	ldr r1, [pc, #52]
	ldr r2, [pc, #56]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #52]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #72
	ldr r2, [pc, #48]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #44]
	bl sub_08000604
	b .L0830B2F2
	subs r7, #16
	lsls r0, r0, #12
	strb r0, [r6, #21]
	lsls r0, r0, #8
	ldrb r0, [r0, r0]
	lsls r0, r0, #8
	strb r4, [r6, #21]
	lsls r0, r0, #8
	str r4, [r3, #16]
	lsls r0, r0, #8
	str r0, [r2, #44]
	lsls r0, r0, #8
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsls r2, r0, #17
	movs r0, r0
	lsls r3, r0, #12
	movs r0, r0
	subs r2, r0, #2
	movs r0, r0
	strb r0, [r0, #22]
	lsls r0, r0, #8
.L0830B250:
	ldr r5, [pc, #172]
	ldr r4, [pc, #176]
.L0830B254:
	movs r0, #222
	strh r0, [r5, #0]
	ldr r0, [pc, #172]
	ldrb r0, [r0, #0]
	strh r0, [r5, #2]
	ldr r0, [pc, #172]
	ldrh r0, [r0, #0]
	strh r0, [r5, #4]
	ldrb r1, [r4, #1]
	lsls r0, r1, #1
	ldrb r2, [r4, #0]
	orrs r0, r2
	ldrb r2, [r4, #2]
	lsls r1, r2, #2
	orrs r0, r1
	ldrb r2, [r4, #3]
	lsls r1, r2, #3
	orrs r0, r1
	ldrb r2, [r4, #4]
	lsls r1, r2, #4
	orrs r0, r1
	ldrb r2, [r4, #5]
	lsls r1, r2, #5
	orrs r0, r1
	ldrb r2, [r4, #6]
	lsls r1, r2, #6
	orrs r0, r1
	ldrb r2, [r4, #7]
	lsls r1, r2, #7
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [pc, #124]
	ldrb r0, [r0, #0]
	strh r0, [r5, #8]
	ldr r0, [pc, #120]
	ldrb r0, [r0, #0]
	strh r0, [r5, #10]
	bl VBlankIntrWait
	adds r0, r5, #0
	mov r1, r9
	bl sub_08002F64
	mov r0, r9
	ldrh r0, [r0, #0]
	cmp r0, #222
	bne .L0830B254
	mov r2, r9
	ldrh r1, [r2, #6]
	movs r0, #1
	ands r0, r1
	strb r0, [r7, #0]
	lsls r1, r1, #16
	lsrs r0, r1, #17
	mov r2, r8
	ands r0, r2
	strb r0, [r7, #1]
	lsrs r0, r1, #18
	ands r0, r2
	strb r0, [r7, #2]
	lsrs r0, r1, #19
	ands r0, r2
	strb r0, [r7, #3]
	lsrs r0, r1, #20
	ands r0, r2
	strb r0, [r7, #4]
	lsrs r0, r1, #21
	ands r0, r2
	strb r0, [r7, #5]
	lsrs r0, r1, #22
	ands r0, r2
	strb r0, [r7, #6]
	lsrs r1, r1, #23
	ands r1, r2
	strb r1, [r7, #7]
	movs r0, #1
	cmp r0, #0
	beq .L0830B2F2
	b .L0830B09A
.L0830B2F2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003C04
	.4byte 0x02007578
	.4byte 0x0200755D
	.4byte 0x02007564
	.4byte 0x0200755E
	.4byte 0x02007569

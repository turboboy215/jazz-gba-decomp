	.include "asm/macros.inc"
	.syntax unified
	.text

@ MainMenu: [sure] "MAIN MENU", NEW GAME / CONTINUE / SETTINGS / TOURNAMENT, "SELECT A SAVE FILE"; AgbMain's last call (never returns)
	.thumb
	.align 1, 0
	.global sub_0830AAA8
	.thumb_func
sub_0830AAA8:
	.global MainMenu
	.thumb_set MainMenu, sub_0830AAA8
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	ldr r0, [pc, #260]
	mov r9, r0
	movs r1, #216
	lsls r1, r1, #1
	mov r8, r1
	movs r7, #100
	ldr r6, [pc, #252]
.L0830AABE:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830AAD4
	ldr r0, [pc, #244]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #244]
	bl sub_08002F64
.L0830AAD4:
	bl VBlankIntrWait
	ldr r0, [pc, #236]
	mov r1, r9
	bl sub_08002094
	bl sub_08309F28
	movs r0, #64
	mov r2, r9
	ldrh r2, [r2, #0]
	ands r0, r2
	cmp r0, #0
	beq .L0830AB62
	movs r0, #5
	bl sub_083189D0
	ldr r4, [pc, #212]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #208]
	bl strcmp
	cmp r0, #0
	bne .L0830AB22
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl sub_0800060C
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl Sprite_Draw
.L0830AB22:
	ldr r2, [r4, #0]
	movs r3, #216
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0830AB32
	ldrb r0, [r2, #0]
.L0830AB32:
	subs r0, #1
	strb r0, [r1, #0]
	ldr r4, [pc, #148]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #144]
	bl strcmp
	cmp r0, #0
	bne .L0830AB62
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl sub_08000604
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl Sprite_Draw
.L0830AB62:
	movs r0, #128
	mov r1, r9
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830AC04
	movs r0, #5
	bl sub_083189D0
	ldr r4, [pc, #84]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #84]
	bl strcmp
	cmp r0, #0
	bne .L0830ABA0
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl sub_0800060C
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl Sprite_Draw
.L0830ABA0:
	ldr r0, [r4, #0]
	movs r2, #216
	lsls r2, r2, #1
	adds r1, r0, r2
	ldrb r2, [r1, #0]
	ldrb r0, [r0, #0]
	subs r0, #1
	cmp r2, r0
	bge .L0830ABD4
	adds r0, r2, #1
	b .L0830ABD6
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r4, [r6, #29]
	lsls r0, r0, #8
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
	strb r4, [r5, #21]
	lsls r0, r0, #8
	.2byte 0xb38c @ .raw cbz r4, 0x830ac36
	lsrs r5, r7, #32
.L0830ABD4:
	movs r0, #0
.L0830ABD6:
	strb r0, [r1, #0]
	ldr r4, [pc, #520]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #520]
	bl strcmp
	cmp r0, #0
	bne .L0830AC04
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl sub_08000604
	ldr r0, [r4, #0]
	add r0, r8
	ldrb r0, [r0, #0]
	muls r0, r7
	adds r0, r0, r6
	bl Sprite_Draw
.L0830AC04:
	ldr r4, [pc, #484]
	ldr r5, [pc, #476]
	ldr r1, [r5, #0]
	movs r3, #216
	lsls r3, r3, #1
	adds r2, r1, r3
	ldrb r3, [r2, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #64
	ldrh r1, [r1, #0]
	lsls r2, r1, #3
	adds r2, #8
	adds r0, r4, #0
	movs r1, #11
	movs r3, #128
	bl sub_08000684
	adds r0, r4, #0
	bl Sprite_Draw
	bl sub_080043B4
	movs r0, #2
	mov r1, r9
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830ACEE
	ldr r1, [r5, #0]
	adds r1, #1
	ldr r4, [pc, #424]
	ldr r0, [r4, #0]
	adds r0, #1
	cmp r1, r0
	beq .L0830ACEE
	ldr r1, [pc, #416]
	bl strcmp
	cmp r0, #0
	bne .L0830AC5E
	bl sub_0830BFAC
.L0830AC5E:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #404]
	bl strcmp
	cmp r0, #0
	bne .L0830AC70
	bl sub_0830B634
.L0830AC70:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #388]
	bl strcmp
	cmp r0, #0
	bne .L0830AC82
	bl sub_0830B704
.L0830AC82:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #376]
	bl strcmp
	cmp r0, #0
	bne .L0830AC94
	bl sub_0830B9A4
.L0830AC94:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #360]
	bl strcmp
	cmp r0, #0
	bne .L0830ACA6
	bl sub_0830BB74
.L0830ACA6:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #348]
	bl strcmp
	cmp r0, #0
	bne .L0830ACB8
	bl sub_0830BB74
.L0830ACB8:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #332]
	bl strcmp
	cmp r0, #0
	bne .L0830ACCA
	bl sub_0830B94C
.L0830ACCA:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #320]
	bl strcmp
	cmp r0, #0
	bne .L0830ACDC
	bl sub_0830B9FC
.L0830ACDC:
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #304]
	bl strcmp
	cmp r0, #0
	bne .L0830ACEE
	bl sub_0830BA54
.L0830ACEE:
	ldr r5, [pc, #244]
	ldr r2, [r5, #0]
	movs r3, #216
	lsls r3, r3, #1
	adds r1, r2, r3
	ldrb r3, [r1, #0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r0, r2, #0
	adds r0, #66
	mov r3, r9
	ldrh r1, [r3, #0]
	ldrh r0, [r0, #0]
	ands r1, r0
	adds r0, r1, #0
	cmp r0, #0
	beq .L0830AD1A
	ldr r0, [r2, #68]
	bl _call_via_r0
.L0830AD1A:
	ldr r2, [r5, #0]
	adds r2, #1
	movs r0, #1
	movs r1, #1
	bl sub_08004914
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #204]
	bl strcmp
	cmp r0, #0
	bne .L0830AD3E
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #220]
	bl sub_08004914
.L0830AD3E:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #216]
	bl strcmp
	cmp r0, #0
	bne .L0830AD56
	movs r0, #4
	movs r1, #5
	ldr r2, [pc, #204]
	bl sub_08004914
.L0830AD56:
	ldr r4, [pc, #152]
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [r5, #0]
	adds r1, #1
	bl strcmp
	cmp r0, #0
	beq .L0830AD8A
	movs r0, #14
	movs r1, #19
	ldr r2, [pc, #180]
	bl sub_08004914
	ldr r0, [r4, #0]
	adds r0, #1
	ldr r1, [pc, #176]
	bl strcmp
	cmp r0, #0
	beq .L0830AD8A
	movs r0, #12
	movs r1, #19
	ldr r2, [pc, #164]
	bl sub_08004914
.L0830AD8A:
	ldr r5, [pc, #88]
	ldr r0, [r5, #0]
	ldr r1, [pc, #160]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830ADA2
	movs r0, #0
	movs r1, #19
	ldr r2, [pc, #148]
	bl sub_08004914
.L0830ADA2:
	ldr r0, [r5, #0]
	adds r0, #1
	ldr r1, [pc, #64]
	bl strcmp
	movs r4, #0
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0]
	cmp r4, r0
	bcc .L0830ADB8
	b .L0830AABE
.L0830ADB8:
	ldr r2, [r5, #0]
	lsls r3, r4, #2
	adds r3, r3, r4
	lsls r3, r3, #3
	adds r1, r2, r3
	ldrh r0, [r1, #62]
	adds r0, #1
	adds r1, #64
	ldrh r1, [r1, #0]
	adds r3, #32
	adds r2, r2, r3
	bl sub_08004914
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0]
	cmp r4, r0
	bcc .L0830ADB8
	b .L0830AABE
	.2byte 0x0000
	.4byte 0x0200756C
	.4byte 0x083DB38C
	.4byte 0x02007580
	.4byte 0x02007570
	.4byte 0x083DB350
	.4byte 0x083DB3A0
	.4byte 0x083DB3AC
	.4byte 0x083DB3BC
	.4byte 0x083DB3D0
	.4byte 0x083DB3DC
	.4byte 0x083DB3EC
	.4byte 0x083DB3F8
	.4byte 0x083DB410
	.4byte 0x083DB428
	.4byte 0x083DB440
	.4byte 0x083DB44C
	.4byte 0x083DB464
	.4byte 0x083DB478
	.4byte 0x083DB384
	.4byte 0x000001B1
	.4byte 0x083DB488

	.thumb
	.align 1, 0
	.global sub_0830AE38
	.thumb_func
sub_0830AE38:
	push {lr}
	bl sub_08002058
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L0830AE6C
	cmp r0, #2
	bgt .L0830AE54
	cmp r0, #1
	beq .L0830AE5A
	b .L0830AE9E
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0830AE54:
	cmp r0, #3
	beq .L0830AE7E
	b .L0830AE9E
.L0830AE5A:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	b .L0830AE9E
.L0830AE6C:
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
	b .L0830AE9E
.L0830AE7E:
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
.L0830AE9E:
	ldr r1, [pc, #28]
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	movs r2, #216
	lsls r2, r2, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L0830AEC8
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
.L0830AEC4:
	bl VBlankIntrWait
.L0830AEC8:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830AEC4
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	bl sub_0831502C
	bl sub_08306670
	movs r0, #0
	bl sub_08312398
	ldr r0, [pc, #28]
	ldr r1, [pc, #28]
	str r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #0]
	bl sub_0830A638
	bl sub_0830A06C
	bl sub_0830A3B4
	pop {r0}
	bx r0
	.4byte 0x0200755C
	.4byte 0x02007570
	.4byte 0x02005C00
	.4byte 0x0200756C

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
	bl sub_0830E93C
	b .L0830B106
.L0830B0FC:
	bl sub_0830ECF4
	b .L0830B106
.L0830B102:
	bl sub_0830F0AC
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

	.thumb
	.align 1, 0
	.global sub_0830B318
	.thumb_func
sub_0830B318:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	bl sub_083152BC
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L0830B338
	cmp r0, #3
	beq .L0830B33C
	b .L0830B34A
	strb r7, [r3, #21]
	lsls r0, r0, #8
.L0830B338:
	ldrb r0, [r1, #0]
	b .L0830B33E
.L0830B33C:
	ldrb r0, [r1, #1]
.L0830B33E:
	cmp r0, #0
	bne .L0830B34A
	movs r0, #6
	bl sub_083189D0
	b .L0830B612
.L0830B34A:
	movs r0, #1
	mov r9, r0
	bl sub_08002058
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L0830B380
	cmp r0, #2
	bgt .L0830B368
	cmp r0, #1
	beq .L0830B36E
	b .L0830B3B2
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0830B368:
	cmp r0, #3
	beq .L0830B392
	b .L0830B3B2
.L0830B36E:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	b .L0830B3B2
.L0830B380:
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
	b .L0830B3B2
.L0830B392:
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
.L0830B3B2:
	ldr r4, [pc, #76]
	ldr r5, [pc, #76]
.L0830B3B6:
	movs r0, #222
	strh r0, [r4, #0]
	ldr r0, [pc, #76]
	ldrb r0, [r0, #0]
	strh r0, [r4, #2]
	ldr r0, [pc, #72]
	ldrh r0, [r0, #0]
	strh r0, [r4, #4]
	bl sub_0800314C
	strh r0, [r4, #6]
	ldr r0, [pc, #64]
	ldrb r0, [r0, #0]
	strh r0, [r4, #8]
	bl VBlankIntrWait
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002F64
	ldrh r1, [r5, #0]
	cmp r1, #222
	bne .L0830B3B6
	mov r2, r9
	cmp r2, #0
	bne .L0830B3EC
	b .L0830B612
.L0830B3EC:
	ldr r0, [pc, #36]
	mov r8, r0
	ldr r7, [pc, #36]
.L0830B3F2:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830B420
	movs r0, r0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	strb r7, [r3, #21]
	lsls r0, r0, #8
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r0, [r4, #21]
	lsls r0, r0, #8
	strb r4, [r6, #21]
	lsls r0, r0, #8
	mov r8, ip
	lsls r0, r0, #12
.L0830B41C:
	bl VBlankIntrWait
.L0830B420:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830B41C
	ldr r0, [pc, #28]
	ldrb r0, [r0, #0]
	ldr r1, [pc, #28]
	ldrh r1, [r1, #4]
	bl sub_08313D78
	bl sub_0800314C
	cmp r0, #3
	beq .L0830B45C
	cmp r0, #3
	bhi .L0830B450
	cmp r0, #2
	beq .L0830B456
	b .L0830B466
	movs r0, r0
	strb r7, [r3, #21]
	lsls r0, r0, #8
	subs r3, #196
	lsls r0, r0, #12
.L0830B450:
	cmp r0, #4
	beq .L0830B462
	b .L0830B466
.L0830B456:
	bl sub_0830E93C
	b .L0830B466
.L0830B45C:
	bl sub_0830ECF4
	b .L0830B466
.L0830B462:
	bl sub_0830F0AC
.L0830B466:
	movs r4, #0
	ldr r6, [pc, #36]
	ldr r5, [pc, #40]
.L0830B46C:
	adds r4, #1
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0830B498
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
	b .L0830B4AC
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
.L0830B498:
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #72]
	bl sub_08004914
	movs r0, #0
	movs r1, #1
	ldr r2, [pc, #68]
	bl sub_08004914
.L0830B4AC:
	ldr r0, [pc, #64]
	adds r1, r6, #0
	bl sub_08002094
	bl VBlankIntrWait
	movs r0, #120
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #52]
	bl sub_08002F64
	movs r0, #10
	ldrh r1, [r6, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830B46C
	ldr r1, [pc, #40]
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L0830B4DC
	b .L0830B5D8
.L0830B4DC:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl Fade_Start
	b .L0830B500
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
.L0830B4FC:
	bl VBlankIntrWait
.L0830B500:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830B4FC
	bl sub_0830A638
	ldr r6, [pc, #144]
	ldr r0, [pc, #144]
	str r0, [r6, #0]
	ldr r5, [pc, #144]
	str r0, [r5, #0]
	bl sub_0830A140
	mov r2, r8
	strb r4, [r2, #0]
	adds r0, r7, #0
	bl sub_083177CC
	adds r0, r7, #0
	adds r0, #56
	strb r4, [r0, #0]
	movs r4, #0
	ldr r0, [pc, #124]
	strh r0, [r7, #8]
	ldr r0, [pc, #124]
	str r0, [r7, #44]
	ldr r0, [pc, #124]
	str r0, [r7, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r7, #4]
	adds r0, r7, #0
	bl GAX2_init
	ldr r0, [pc, #112]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	movs r0, #1
	negs r0, r0
	bl sub_083191AC
	bl sub_083190E0
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830B568
	bl sub_0830A274
.L0830B568:
	ldr r0, [pc, #80]
	str r0, [r6, #0]
	ldr r0, [pc, #80]
	str r0, [r5, #0]
	bl sub_0830A324
	ldr r0, [r5, #0]
	movs r2, #216
	lsls r2, r2, #1
	adds r0, r0, r2
	strb r4, [r0, #0]
	ldr r1, [pc, #68]
	ldr r2, [pc, #68]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #72
	ldr r2, [pc, #60]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #60]
	bl sub_08000604
	b .L0830B612
	movs r0, r0
	strb r0, [r6, #21]
	lsls r0, r0, #8
	ldrb r0, [r0, r0]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	strh r1, [r4, r0]
	movs r0, r0
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	str r4, [r3, #16]
	lsls r0, r0, #8
	str r4, [r0, #72]
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
.L0830B5D8:
	ldr r4, [pc, #68]
	ldr r5, [pc, #72]
.L0830B5DC:
	movs r0, #222
	strh r0, [r4, #0]
	ldr r0, [pc, #68]
	ldrb r0, [r0, #0]
	strh r0, [r4, #2]
	ldr r0, [pc, #68]
	ldrh r0, [r0, #0]
	strh r0, [r4, #4]
	bl sub_0800314C
	strh r0, [r4, #6]
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	strh r0, [r4, #8]
	bl VBlankIntrWait
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002F64
	ldrh r0, [r5, #0]
	cmp r0, #222
	bne .L0830B5DC
	mov r1, r9
	cmp r1, #0
	beq .L0830B612
	b .L0830B3F2
.L0830B612:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003C04
	.4byte 0x03003BC4
	.4byte 0x0200755F
	.4byte 0x02007564
	.4byte 0x02007560

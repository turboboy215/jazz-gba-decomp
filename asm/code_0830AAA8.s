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

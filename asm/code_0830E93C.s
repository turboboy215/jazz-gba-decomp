	.include "asm/macros.inc"
	.syntax unified
	.text

@ Link_Results2: [sure] link result screen for 2 players: Link_PostMatch / Link_ClientStart call it when Link_GetUnk4 == 2; frag bars, bubble sort by frags, "%d" per player
	.thumb
	.align 1, 0
	.global sub_0830E93C
	.thumb_func
sub_0830E93C:
	.global Link_Results2
	.thumb_set Link_Results2, sub_0830E93C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #224
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #272]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r0, [pc, #260]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #260]
	bl sub_08002F64
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #240]
	ldr r1, [pc, #240]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #220]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #212]
	add r2, sp, #216
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #204]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #192]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #160]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #148]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #120]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	add r0, sp, #200
	mov r8, r0
	mov r1, sp
	adds r1, #204
	str r1, [sp, #220]
	b .L0830EAB0
	movs r0, r0
	strb r4, [r4, #21]
	lsls r0, r0, #8
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r1, #140
	lsls r0, r0, #12
	ldrh r0, [r6, r0]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830EAA0:
	bl VBlankIntrWait
	ldr r0, [pc, #68]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830EAB0:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830EAA0
	movs r7, #0
	mov r5, sp
.L0830EABC:
	ldr r0, [pc, #52]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830EB10
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EAFC
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #16]
	b .L0830EB22
	movs r0, r0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830EAFC:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #0]
	b .L0830EB36
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB10:
	cmp r6, #0
	beq .L0830EB74
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EB30
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
.L0830EB22:
	movs r3, #0
	bl sub_080002E0
	b .L0830EB3C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB30:
	adds r0, r5, #0
	ldr r1, [pc, #60]
	movs r2, #1
.L0830EB36:
	movs r3, #0
	bl sub_080002E0
.L0830EB3C:
	movs r0, #88
	adds r1, r7, #0
	muls r1, r0
	adds r1, #72
	adds r0, r5, #0
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830EBCC
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB74:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EB90
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830EB9C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EB90:
	adds r0, r5, #0
	ldr r1, [pc, #228]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830EB9C:
	movs r0, #88
	adds r1, r7, #0
	muls r1, r0
	adds r1, #72
	adds r0, r5, #0
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830EBCC:
	adds r5, #100
	adds r7, #1
	cmp r7, #1
	bhi .L0830EBD6
	b .L0830EABC
.L0830EBD6:
	movs r3, #0
	mov r2, r8
	ldr r4, [pc, #160]
	ldr r1, [sp, #220]
.L0830EBDE:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #1
	bls .L0830EBDE
	movs r1, #0
	movs r2, #2
	mov sl, r2
	mov r9, r8
.L0830EBF6:
	movs r7, #1
	mov r2, sl
	subs r0, r2, r1
	adds r1, #1
	mov ip, r1
	cmp r7, r0
	bge .L0830EC30
	mov r8, r0
	add r6, sp, #208
	mov r5, r9
	add r4, sp, #200
.L0830EC0C:
	ldr r1, [r5, #0]
	ldr r0, [r5, #8]
	cmp r1, r0
	bls .L0830EC24
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r6, #0]
	ldr r1, [r6, #4]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r6, #0]
	str r3, [r6, #4]
.L0830EC24:
	adds r6, #8
	adds r5, #8
	adds r4, #8
	adds r7, #1
	cmp r7, r8
	blt .L0830EC0C
.L0830EC30:
	mov r1, ip
	cmp r1, #1
	ble .L0830EBF6
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830EC40:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830EC48:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830EC48
	ldr r2, [sp, #220]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830ECA6
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830EC88:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830ECA6:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830EC88
	ldr r1, [sp, #220]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	movs r0, #11
	muls r0, r1
	adds r0, #9
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #1
	bls .L0830EC40
	add sp, #224
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

@ Link_Results3: [sure] the 3-player copy (Link_GetUnk4 == 3)
	.thumb
	.align 1, 0
	.global sub_0830ECF4
	.thumb_func
sub_0830ECF4:
	.global Link_Results3
	.thumb_set Link_Results3, sub_0830ECF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #336
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #268]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [pc, #248]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #244]
	bl sub_08002F64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #236]
	ldr r1, [pc, #236]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #216]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #208]
	add r2, sp, #324
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #188]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #156]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #116]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	movs r0, #152
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #328]
	b .L0830EE64
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	ldrsh r0, [r0, r4]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830EE54:
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #80]
	bl sub_08002F64
.L0830EE64:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830EE54
	movs r7, #0
	movs r1, #40
	str r1, [sp, #332]
	mov r5, sp
	mov sl, r1
	mov r8, r1
.L0830EE78:
	ldr r0, [pc, #56]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830EEDC
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EEBC
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #20]
	movs r3, #0
	bl sub_080002E0
	b .L0830EED0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEBC:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r3, #0
	bl sub_080002E0
.L0830EED0:
	adds r0, r5, #0
	mov r1, r8
	b .L0830EF0C
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEDC:
	cmp r6, #0
	beq .L0830EF38
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EEFC
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	b .L0830EF08
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EEFC:
	adds r0, r5, #0
	ldr r1, [pc, #52]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
.L0830EF08:
	adds r0, r5, #0
	mov r1, sl
.L0830EF0C:
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830EF8A
	sub sp, #320
	lsrs r0, r2, #32
.L0830EF38:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830EF54
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830EF60
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830EF54:
	adds r0, r5, #0
	ldr r1, [pc, #216]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830EF60:
	adds r0, r5, #0
	ldr r1, [sp, #332]
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830EF8A:
	ldr r2, [sp, #332]
	adds r2, #72
	str r2, [sp, #332]
	adds r5, #100
	movs r0, #72
	add sl, r0
	add r8, r0
	adds r7, #1
	cmp r7, #2
	bhi .L0830EFA0
	b .L0830EE78
.L0830EFA0:
	movs r3, #0
	add r2, sp, #300
	ldr r4, [pc, #140]
	ldr r1, [sp, #328]
.L0830EFA8:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #2
	bls .L0830EFA8
	movs r1, #0
	movs r7, #3
.L0830EFBC:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L0830EFE8
	add r4, sp, #300
	subs r5, r0, #1
.L0830EFC8:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L0830EFE0
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L0830EFE0:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L0830EFC8
.L0830EFE8:
	adds r1, r6, #0
	cmp r1, #2
	ble .L0830EFBC
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830EFF8:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830F000:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830F000
	ldr r2, [sp, #328]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830F05E
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830F040:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830F05E:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830F040
	ldr r1, [sp, #328]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	lsls r0, r1, #3
	adds r0, r0, r1
	adds r0, #5
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #2
	bls .L0830EFF8
	add sp, #336
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

@ Link_Results4: [sure] the 4-player copy (Link_GetUnk4 == 4)
	.thumb
	.align 1, 0
	.global sub_0830F0AC
	.thumb_func
sub_0830F0AC:
	.global Link_Results4
	.thumb_set Link_Results4, sub_0830F0AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #444
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	ldr r0, [pc, #268]
	ldrh r0, [r0, #0]
	movs r1, #5
	bl __udivsi3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r9, r0
	ldr r6, [pc, #256]
	ldr r0, [pc, #260]
	mov r8, r0
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #32
	bl sub_08001EBC
	ldr r0, [pc, #248]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #244]
	bl sub_08002F64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #236]
	ldr r1, [pc, #236]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #216]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001314
	ldr r1, [pc, #208]
	add r2, sp, #432
	ldr r0, [r2, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #200]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #196]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #188]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r4, #0
	bl sub_08001A8C
	ldr r1, [pc, #156]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	adds r2, #64
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012E4
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #0
	movs r3, #240
	bl sub_08001EBC
	ldr r5, [pc, #116]
	ldr r0, [r5, #8]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	adds r0, r6, #0
	mov r1, r8
	movs r2, #0
	movs r3, #160
	bl sub_08001EBC
	adds r0, r5, #0
	movs r1, #31
	bl sub_08004848
	movs r0, #15
	bl sub_08004880
	bl sub_0800436C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	movs r0, #202
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #436]
	b .L0830F21C
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	str r0, [r0, #64]
	lsrs r4, r0, #32
	ldr r1, [sp, #192]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
	strb r7, [r4, #21]
	lsls r0, r0, #8
	movs r0, #72
	lsrs r5, r7, #32
.L0830F20C:
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	movs r1, #120
	strh r1, [r0, #0]
	ldr r1, [pc, #80]
	bl sub_08002F64
.L0830F21C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830F20C
	movs r7, #0
	movs r1, #32
	str r1, [sp, #440]
	mov r5, sp
	mov sl, r1
	mov r8, r1
.L0830F230:
	ldr r0, [pc, #56]
	lsls r1, r7, #2
	adds r4, r1, r0
	ldr r6, [r4, #0]
	adds r0, r6, #0
	mov r1, r9
	bl __udivsi3
	cmp r0, #0
	beq .L0830F294
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F274
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r2, #6
	adds r0, r5, #0
	ldr r1, [pc, #20]
	movs r3, #0
	bl sub_080002E0
	b .L0830F288
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	sub sp, #320
	lsrs r0, r2, #32
.L0830F274:
	ldr r0, [r4, #0]
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r3, #0
	bl sub_080002E0
.L0830F288:
	adds r0, r5, #0
	mov r1, r8
	b .L0830F2C4
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F294:
	cmp r6, #0
	beq .L0830F2F0
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F2B4
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	b .L0830F2C0
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F2B4:
	adds r0, r5, #0
	ldr r1, [pc, #52]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
.L0830F2C0:
	adds r0, r5, #0
	mov r1, sl
.L0830F2C4:
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
	b .L0830F342
	sub sp, #320
	lsrs r0, r2, #32
.L0830F2F0:
	bl sub_0830A000
	cmp r0, #1
	bne .L0830F30C
	adds r0, r5, #0
	ldr r1, [pc, #12]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	b .L0830F318
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
.L0830F30C:
	adds r0, r5, #0
	ldr r1, [pc, #216]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830F318:
	adds r0, r5, #0
	ldr r1, [sp, #440]
	movs r2, #130
	movs r3, #40
	bl sub_08000684
	adds r1, r7, #2
	adds r0, r5, #0
	bl sub_0800075C
	adds r2, r7, #6
	adds r0, r5, #0
	movs r1, #5
	bl sub_0800073C
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L0830F342:
	ldr r2, [sp, #440]
	adds r2, #56
	str r2, [sp, #440]
	adds r5, #100
	movs r0, #56
	add sl, r0
	add r8, r0
	adds r7, #1
	cmp r7, #3
	bhi .L0830F358
	b .L0830F230
.L0830F358:
	movs r3, #0
	add r2, sp, #400
	ldr r4, [pc, #140]
	ldr r1, [sp, #436]
.L0830F360:
	str r3, [r1, #0]
	adds r1, #8
	ldmia r4!, {r0}
	str r0, [r2, #0]
	adds r2, #8
	adds r3, #1
	cmp r3, #3
	bls .L0830F360
	movs r1, #0
	movs r7, #4
.L0830F374:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L0830F3A0
	add r4, sp, #400
	subs r5, r0, #1
.L0830F380:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L0830F398
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L0830F398:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L0830F380
.L0830F3A0:
	adds r1, r6, #0
	cmp r1, #3
	ble .L0830F374
	movs r0, #0
	ldr r1, [pc, #68]
	mov sl, r1
	movs r2, #120
	mov r9, r2
.L0830F3B0:
	movs r4, #0
	lsls r7, r0, #3
	adds r0, #1
	mov r8, r0
.L0830F3B8:
	bl VBlankIntrWait
	mov r0, r9
	mov r1, sl
	strh r0, [r1, #0]
	mov r0, sl
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r4, #89
	bls .L0830F3B8
	ldr r2, [sp, #436]
	adds r4, r2, r7
	ldr r1, [r4, #0]
	movs r0, #100
	muls r0, r1
	add r0, sp
	bl sub_08000604
	movs r6, #100
	ldr r5, [pc, #12]
	b .L0830F416
	movs r0, r0
	sub sp, #320
	lsrs r0, r2, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830F3F8:
	bl VBlankIntrWait
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	mov r0, r9
	strh r0, [r5, #0]
	adds r0, r5, #0
	ldr r1, [pc, #68]
	bl sub_08002F64
.L0830F416:
	ldr r0, [r4, #0]
	muls r0, r6
	add r0, sp
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830F3F8
	ldr r1, [sp, #436]
	adds r0, r1, r7
	ldr r1, [r0, #0]
	lsls r0, r1, #3
	subs r0, r0, r1
	adds r0, #4
	ldr r2, [pc, #40]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r3, [r1, #0]
	movs r1, #19
	ldr r2, [pc, #32]
	bl sub_08004968
	mov r0, r8
	cmp r0, #3
	bls .L0830F3B0
	add sp, #444
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03003BC4
	.4byte 0x03005A0C
	.4byte 0x083DC6A0

	.thumb
	.align 1, 0
	.global sub_0830F464
	.thumb_func
sub_0830F464:
	push {r4, lr}
	bl sub_08004A1C
	ldr r2, [pc, #124]
	movs r0, #2
	movs r1, #11
	bl sub_08004914
	ldr r2, [pc, #116]
	movs r0, #2
	movs r1, #12
	bl sub_08004914
	ldr r4, [pc, #112]
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r4, #0
	movs r1, #8
	movs r2, #96
	movs r3, #127
	bl sub_08000684
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	adds r0, r4, #0
	bl Sprite_Draw
	bl sub_080043B4
	movs r4, #0
.L0830F4A6:
	bl VBlankIntrWait
	ldr r0, [pc, #72]
	ldr r1, [pc, #72]
	bl sub_08002094
	movs r0, #2
	movs r1, #7
	ldr r2, [pc, #68]
	bl sub_08004914
	movs r0, #2
	movs r1, #8
	ldr r2, [pc, #60]
	bl sub_08004914
	movs r0, #2
	movs r1, #9
	ldr r2, [pc, #56]
	bl sub_08004914
	cmp r4, #0
	beq .L0830F508
	cmp r4, #1
	bne .L0830F514
	ldr r0, [pc, #20]
	movs r1, #8
	movs r2, #96
	movs r3, #127
	bl sub_08000684
	b .L0830F514
	movs r0, r0
	hlt 0x0004
	lsrs r5, r7, #32
	hlt 0x0020
	lsrs r5, r7, #32
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	stmia r6!, {r2, r5, r7}
	lsrs r5, r7, #32
	stmia r6!, {r6, r7}
	lsrs r5, r7, #32
	stmia r6!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
.L0830F508:
	ldr r0, [pc, #36]
	movs r1, #8
	movs r2, #104
	movs r3, #127
	bl sub_08000684
.L0830F514:
	ldr r1, [pc, #28]
	movs r0, #192
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830F53A
	movs r0, #5
	bl sub_083189D0
	cmp r4, #1
	bne .L0830F538
	movs r4, #0
	b .L0830F53A
	movs r0, r0
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830F538:
	movs r4, #1
.L0830F53A:
	ldr r0, [pc, #44]
	bl Sprite_Draw
	bl sub_080043B4
	ldr r1, [pc, #36]
	ldrh r2, [r1, #0]
	movs r0, #11
	ands r0, r2
	cmp r0, #0
	beq .L0830F4A6
	cmp r4, #0
	beq .L0830F55C
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L0830F574
.L0830F55C:
	ldr r0, [pc, #16]
	bl sub_08002094
	bl sub_08004A1C
	b .L0830F5B8
	strb r0, [r0, #22]
	lsls r0, r0, #8
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L0830F574:
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	bl sub_083190E0
	bl sub_0831522C
	ldr r2, [pc, #56]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
	movs r4, #0
.L0830F590:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #44
	bls .L0830F590
	ldr r2, [pc, #40]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
	movs r4, #0
.L0830F5A6:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #44
	bls .L0830F5A6
	bl sub_083190F0
	bl sub_08004A1C
.L0830F5B8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DC6F8
	.4byte 0x083DC718

	.thumb
	.align 1, 0
	.global sub_0830F5C8
	.thumb_func
sub_0830F5C8:
	push {r4, r5, r6, r7, lr}
	sub sp, #120
	ldr r1, [pc, #52]
	mov r0, sp
	movs r2, #120
	bl memcpy
	ldr r0, [pc, #48]
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne .L0830F5E0
	b .L0830F772
.L0830F5E0:
	movs r2, #1
	ldr r1, [pc, #40]
.L0830F5E4:
	ldrh r0, [r1, #2]
	strh r0, [r1, #0]
	adds r1, #2
	adds r2, #1
	cmp r2, #11
	bls .L0830F5E4
	ldr r0, [pc, #24]
	ldr r1, [pc, #20]
	ldrh r1, [r1, #0]
	strh r1, [r0, #22]
	movs r4, #0
.L0830F5FA:
	movs r5, #0
	movs r3, #0
	adds r6, r4, #1
	b .L0830F618
	movs r0, r0
	ldmia r1!, {r3, r4, r5}
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r4, #20
	lsls r0, r0, #12
.L0830F610:
	cmp r3, #11
	bne .L0830F616
	movs r5, #1
.L0830F616:
	adds r3, #1
.L0830F618:
	cmp r3, #11
	bhi .L0830F636
	ldr r2, [pc, #44]
	lsls r1, r3, #1
	adds r2, r1, r2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r1, r1, r0
	mov r7, sp
	adds r0, r7, r1
	ldrh r2, [r2, #0]
	ldrh r0, [r0, #0]
	cmp r2, r0
	beq .L0830F610
.L0830F636:
	cmp r5, #0
	bne .L0830F63C
	b .L0830F76A
.L0830F63C:
	cmp r4, #4
	bls .L0830F642
	b .L0830F75A
.L0830F642:
	lsls r0, r4, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r4, #20
	lsls r0, r0, #12
	ldmia r1!, {r4, r5, r7}
	lsrs r5, r7, #32
	ldr r1, [pc, #4]
	movs r0, #1
	strb r0, [r1, #0]
	b .L0830F71E
	ldr r2, [r6, r3]
	lsls r0, r0, #12
	ldr r5, [pc, #92]
	movs r4, #1
	strb r4, [r5, #1]
	movs r0, #0
	movs r1, #1
	movs r2, #100
	bl sub_082FB810
	strb r4, [r5, #2]
	movs r0, #0
	movs r1, #2
	movs r2, #10
	bl sub_082FB810
	strb r4, [r5, #3]
	movs r0, #0
	movs r1, #3
	movs r2, #100
	bl sub_082FB810
	strb r4, [r5, #4]
	movs r0, #0
	movs r1, #4
	movs r2, #5
	bl sub_082FB810
	strb r4, [r5, #5]
	movs r0, #0
	movs r1, #5
	movs r2, #5
	bl sub_082FB810
	ldr r1, [pc, #32]
	ldrh r0, [r1, #0]
	adds r0, #10
	strh r0, [r1, #0]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #99
	bls .L0830F6B4
	movs r0, #99
	strh r0, [r1, #0]
.L0830F6B4:
	ldr r0, [pc, #16]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
	b .L0830F71E
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [pc, #32]
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #28]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #28]
	ldr r1, [pc, #12]
	ldrh r2, [r1, #0]
	movs r3, #250
	lsls r3, r3, #1
	b .L0830F71A
	strb r4, [r3, #21]
	lsls r0, r0, #8
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	ldr r0, [pc, #44]
	ldrb r7, [r0, #0]
	cmp r7, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #29]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #29]
	ldr r1, [pc, #24]
	ldrh r2, [r1, #0]
	movs r3, #250
	lsls r3, r3, #2
.L0830F71A:
	adds r0, r2, r3
	strh r0, [r1, #0]
.L0830F71E:
	movs r0, #17
	bl sub_083189D0
	b .L0830F75A
	movs r0, r0
	strb r4, [r3, #21]
	lsls r0, r0, #8
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	ldr r0, [pc, #72]
	ldrb r7, [r0, #0]
	cmp r7, #3
	bhi .L0830F75A
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r1, r0, #0
	ldrb r0, [r1, #30]
	cmp r0, #0
	bne .L0830F75A
	movs r0, #1
	strb r0, [r1, #30]
	ldr r1, [pc, #52]
	ldrh r2, [r1, #0]
	ldr r3, [pc, #52]
	adds r0, r2, r3
	strh r0, [r1, #0]
	movs r0, #17
	bl sub_083189D0
.L0830F75A:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #40]
.L0830F760:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #11
	bls .L0830F760
.L0830F76A:
	adds r4, r6, #0
	cmp r4, #4
	bhi .L0830F772
	b .L0830F5FA
.L0830F772:
	add sp, #120
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x030058F0
	.4byte 0x00001388
	.4byte 0x03003C14

	.thumb
	.align 1, 0
	.global sub_0830F78C
	.thumb_func
sub_0830F78C:
	push {r4, r5, r6, lr}
	ldr r5, [sp, #16]
	lsls r3, r3, #16
	lsrs r6, r3, #16
	lsls r0, r0, #11
	movs r3, #192
	lsls r3, r3, #19
	adds r4, r0, r3
	lsls r2, r2, #5
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r4, r4, r1
	cmp r4, #0
	beq .L0830F7C2
	ldrh r0, [r4, #0]
	bl sub_08004BA4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830F7BC
	ldrh r0, [r4, #0]
	bl sub_08004CA0
	b .L0830F7C2
.L0830F7BC:
	ldrh r0, [r4, #0]
	bl sub_0831AE58
.L0830F7C2:
	orrs r5, r6
	strh r5, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830F7CC
	.thumb_func
sub_0830F7CC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	mov sl, r1
	mov r8, r2
	adds r6, r3, #0
	movs r7, #0
	cmp r7, r8
	bcs .L0830F82E
.L0830F7E6:
	movs r5, #0
	adds r0, r7, #1
	mov r9, r0
	cmp r5, r6
	bcs .L0830F828
	adds r4, r7, #0
.L0830F7F2:
	ldr r1, [sp, #40]
	adds r0, r1, #0
	muls r0, r6
	adds r0, r4, r0
	ldr r1, [sp, #44]
	ldr r2, [sp, #52]
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	mov ip, r3
	mov r3, sl
	adds r2, r3, r5
	ldr r1, [sp, #56]
	lsls r0, r1, #12
	str r0, [sp, #0]
	movs r0, #31
	ldr r3, [sp, #4]
	adds r1, r3, r7
	mov r3, ip
	bl sub_0830F78C
	add r4, r8
	adds r5, #1
	cmp r5, r6
	bcc .L0830F7F2
.L0830F828:
	mov r7, r9
	cmp r7, r8
	bcc .L0830F7E6
.L0830F82E:
	movs r0, #1
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_0830F840
	.thumb_func
sub_0830F840:
	push {r4, r5, lr}
	ldr r1, [pc, #148]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #124]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #112]
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #14
	bl sub_08004880
	ldr r5, [pc, #100]
	ldr r1, [pc, #100]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	ldr r4, [pc, #92]
	ldr r1, [pc, #96]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r4, #0
	bl sub_0800060C
	ldr r0, [pc, #76]
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, [pc, #72]
	str r1, [r0, #0]
	movs r0, #1
	bl sub_083100D4
	movs r0, #1
	bl sub_08310110
	ldr r1, [pc, #60]
	movs r0, #1
	strb r0, [r1, #0]
	movs r0, #14
	bl sub_0830FDC8
	ldr r0, [pc, #52]
	bl sub_0830FDD4
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x04000008
	.4byte 0x083DC738
	.4byte 0x083DC758
	.4byte 0x03003C90
	.4byte 0x080B56E0
	.4byte 0x03003CF4
	.4byte 0x080B5670
	.4byte 0x030059D0
	.4byte 0x030059CC
	.4byte 0x030059DC
	.4byte 0x083DC778

	.thumb
	.align 1, 0
	.global sub_0830F904
	.thumb_func
sub_0830F904:
	push {r4, r5, r6, r7, lr}
	sub sp, #20
	ldr r0, [pc, #456]
	bl sub_08000604
	ldr r5, [pc, #456]
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830F934
	str r0, [sp, #0]
	ldr r0, [pc, #448]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #81
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #16
	movs r1, #0
	movs r2, #14
	movs r3, #4
	bl sub_0830F7CC
.L0830F934:
	ldr r4, [pc, #424]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F970
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830F970
	str r0, [sp, #0]
	ldr r0, [pc, #396]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #17
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F970:
	ldr r4, [pc, #364]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F9B2
	ldr r0, [pc, #332]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830F9B2
	movs r0, #2
	str r0, [sp, #0]
	ldr r0, [pc, #332]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #19
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F9B2:
	ldr r4, [pc, #300]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #2
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830F9F4
	ldr r0, [pc, #264]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830F9F4
	movs r0, #4
	str r0, [sp, #0]
	ldr r0, [pc, #264]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #21
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830F9F4:
	ldr r4, [pc, #232]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #3
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FA36
	ldr r0, [pc, #200]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FA36
	movs r0, #6
	str r0, [sp, #0]
	ldr r0, [pc, #200]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #23
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FA36:
	ldr r4, [pc, #168]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #4
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FA78
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FA78
	movs r0, #8
	str r0, [sp, #0]
	ldr r0, [pc, #132]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #25
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FA78:
	ldr r4, [pc, #100]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r4, #5
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L0830FABA
	ldr r0, [pc, #68]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830FABA
	movs r0, #10
	str r0, [sp, #0]
	ldr r0, [pc, #68]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #27
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0830FABA:
	ldr r0, [pc, #28]
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	cmp r0, #5
	bhi .L0830FB40
	lsls r0, r0, #2
	ldr r1, [pc, #32]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r3, [r1, r7]
	lsls r0, r0, #12
	bls .L0830FB00
	lsrs r5, r7, #32
	adds r4, #228
	lsls r0, r0, #12
	bvs .L0830FB08
	lsrs r5, r7, #32
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	ldmia r1!, {r2, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	movs r1, #136
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	movs r1, #152
.L0830FB00:
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
.L0830FB08:
	ldr r0, [pc, #4]
	movs r1, #168
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	movs r1, #184
	b .L0830FB24
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #12]
	movs r1, #200
.L0830FB24:
	movs r2, #8
	movs r3, #30
	bl sub_08000684
	b .L0830FB40
	movs r0, r0
	subs r4, #144
	lsls r0, r0, #12
	ldr r0, [pc, #88]
	movs r1, #216
	movs r2, #8
	movs r3, #30
	bl sub_08000684
.L0830FB40:
	bl sub_0800347C
	ldr r1, [pc, #76]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #136
	lsls r1, r1, #2
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FC2A
	ldr r1, [pc, #60]
	ldr r0, [r1, #0]
	cmp r0, #0
	ble .L0830FBD4
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L0830FC2A
	ldr r7, [pc, #48]
	adds r6, r1, #0
.L0830FB6C:
	subs r5, r4, #1
	cmp r5, #0
	ble .L0830FBA0
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, #1
	adds r1, r4, r1
	adds r1, r1, r7
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830FBB2
	str r5, [r6, #0]
	b .L0830FBFC
	subs r4, #144
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
.L0830FBA0:
	movs r0, #0
	str r0, [r6, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
.L0830FBB2:
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne .L0830FB6C
	b .L0830FC2A
.L0830FBBC:
	ldr r4, [pc, #16]
	str r5, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
	b .L0830FC96
	ldr r4, [r1, r7]
	lsls r0, r0, #12
.L0830FBD4:
	movs r5, #5
	ldr r7, [pc, #52]
	adds r6, r1, #0
.L0830FBDA:
	subs r4, r5, #1
	cmp r4, #0
	ble .L0830FC10
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, #1
	adds r1, r5, r1
	adds r1, r1, r7
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0830FC22
	str r4, [r6, #0]
.L0830FBFC:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
	b .L0830FC2A
	adds r4, #228
	lsls r0, r0, #12
.L0830FC10:
	movs r0, #0
	str r0, [r6, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r6, #0]
	bl sub_082FB6D8
.L0830FC22:
	lsls r0, r4, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L0830FBDA
.L0830FC2A:
	bl sub_0800347C
	ldr r1, [pc, #368]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #136
	lsls r1, r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FC96
	movs r7, #0
	ldr r0, [pc, #348]
	ldr r1, [r0, #0]
	adds r0, r1, #1
	cmp r0, #5
	bgt .L0830FC80
	lsls r0, r1, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bhi .L0830FC80
	ldr r6, [pc, #336]
.L0830FC58:
	adds r5, r4, #1
	cmp r5, #5
	bgt .L0830FC80
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	adds r1, r4, r1
	adds r1, r1, r6
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0830FBBC
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bls .L0830FC58
.L0830FC80:
	cmp r7, #0
	bne .L0830FC96
	ldr r4, [pc, #284]
	str r7, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
.L0830FC96:
	bl sub_0800347C
	ldr r4, [pc, #260]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r5, #1
	movs r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FCE4
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #240]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #216]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #220]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #220]
	strb r1, [r0, #0]
	ldr r1, [pc, #220]
	movs r0, #20
	strh r0, [r1, #0]
	ldr r0, [pc, #216]
	strb r5, [r0, #0]
.L0830FCE4:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r1, #2
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FD2E
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #164]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #144]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #148]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #144]
	strb r1, [r0, #0]
	ldr r1, [pc, #152]
	movs r0, #10
	strh r0, [r1, #0]
	ldr r0, [pc, #144]
	strb r5, [r0, #0]
.L0830FD2E:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r1, #4
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L0830FD72
	movs r0, #16
	movs r1, #0
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	ldr r0, [pc, #92]
	bl sub_0800060C
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [pc, #68]
	ldr r1, [r1, #0]
	bl sub_082FB6D8
	ldr r0, [pc, #72]
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [pc, #72]
	strb r1, [r0, #0]
	ldr r0, [pc, #76]
	strb r5, [r0, #0]
.L0830FD72:
	ldr r0, [pc, #56]
	bl Sprite_Draw
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	movs r4, #0
	strh r4, [r0, #0]
	bl sub_0800347C
	ldr r1, [pc, #56]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	strh r4, [r0, #0]
	movs r0, #1
	add sp, #20
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000D1C
	.4byte 0x030059CC
	.4byte 0x030034E4
	.4byte 0x03003C90
	.4byte 0x030059CA
	.4byte 0x030059CB
	.4byte 0x030059F8
	.4byte 0x030059DC
	.4byte 0x030059FA
	.4byte 0x03000D14

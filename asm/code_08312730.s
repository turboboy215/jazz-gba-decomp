	.include "asm/macros.inc"
	.syntax unified
	.text

@ Boot_LegalScreen: [sure] prints the Epic/Jaleco trademark text (083DF104-083DF2xx); first screen after AgbMain's GAX init (spacelevel)
	.thumb
	.align 1, 0
	.global sub_08312730
	.thumb_func
sub_08312730:
	.global Boot_LegalScreen
	.thumb_set Boot_LegalScreen, sub_08312730
	push {r4, lr}
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #216]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #128
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #200]
	adds r0, r4, #0
	movs r1, #31
	bl sub_08004848
	ldr r0, [r4, #8]
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #15
	bl sub_08004880
	ldr r2, [pc, #172]
	movs r0, #1
	movs r1, #1
	bl sub_08004914
	ldr r2, [pc, #168]
	movs r0, #1
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #160]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #156]
	movs r0, #1
	movs r1, #5
	bl sub_08004914
	ldr r4, [pc, #148]
	movs r0, #1
	movs r1, #6
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #140]
	movs r0, #1
	movs r1, #8
	bl sub_08004914
	movs r0, #1
	movs r1, #9
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #124]
	movs r0, #1
	movs r1, #11
	bl sub_08004914
	ldr r2, [pc, #120]
	movs r0, #1
	movs r1, #12
	bl sub_08004914
	ldr r2, [pc, #112]
	movs r0, #1
	movs r1, #13
	bl sub_08004914
	ldr r2, [pc, #108]
	movs r0, #1
	movs r1, #14
	bl sub_08004914
	ldr r2, [pc, #100]
	movs r0, #1
	movs r1, #15
	bl sub_08004914
	ldr r2, [pc, #96]
	movs r0, #1
	movs r1, #16
	bl sub_08004914
	ldr r2, [pc, #88]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	movs r4, #0
.L083127FC:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #179
	bls .L083127FC
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L08312854
	movs r0, r0
	movs r0, r1
	lsls r0, r0, #16
	movs r0, #72
	lsrs r5, r7, #32
	.2byte 0xf104 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf124 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf140 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf160 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf180 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf198 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1b4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1f0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf210 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf228 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf244 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf260 @ .raw
	lsrs r5, r7, #32
.L08312850:
	bl VBlankIntrWait
.L08312854:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08312850
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

@ Boot_LogoScreens: [sure] (order confirmed by the user) three ResBank screens with fade in/out (6 Fade_Start + Fade_IsBusy waits, ReadKeys skip): Jaleco, Epic Games, Game Titan/Shin'en
	.thumb
	.align 1, 0
	.global sub_08312864
	.thumb_func
sub_08312864:
	.global Boot_LogoScreens
	.thumb_set Boot_LogoScreens, sub_08312864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	mov r5, sp
	adds r5, #2
	movs r1, #0
	strh r1, [r5, #0]
	mov r0, sp
	strh r1, [r0, #0]
	mov r8, r1
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #128]
	ldr r1, [pc, #128]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #116]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	ldr r1, [pc, #100]
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r6, #128
	lsls r6, r6, #1
	orrs r0, r6
	ldr r1, [pc, #88]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #84]
	ands r0, r1
	str r0, [sp, #4]
	add r2, sp, #4
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001A48
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r1, [pc, #60]
	movs r2, #252
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #128
	lsls r0, r0, #19
	strh r6, [r0, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	adds r7, r5, #0
	add r6, sp, #8
	b .L08312940
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	adds r2, #48
	lsrs r4, r0, #32
	add r0, pc, #576
	lsrs r1, r4, #32
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
.L08312924:
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08312940
	movs r0, #1
	mov r8, r0
.L08312940:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08312924
	movs r4, #0
	b .L0831294E
.L0831294C:
	adds r4, #1
.L0831294E:
	cmp r4, #179
	bhi .L08312970
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312970
	mov r2, r8
	cmp r2, #0
	beq .L0831294C
.L08312970:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L08312980
.L0831297C:
	bl VBlankIntrWait
.L08312980:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0831297C
	movs r0, #0
	mov r8, r0
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L083129FC
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldr r0, [pc, #640]
	lsrs r4, r0, #32
	.2byte 0xf2e0 @ .raw
	lsrs r1, r4, #32
.L083129E0:
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083129FC
	movs r2, #1
	mov r8, r2
.L083129FC:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L083129E0
	movs r4, #0
	b .L08312A0A
.L08312A08:
	adds r4, #1
.L08312A0A:
	cmp r4, #179
	bhi .L08312A2C
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312A2C
	mov r0, r8
	cmp r0, #0
	beq .L08312A08
.L08312A2C:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L08312A3C
.L08312A38:
	bl VBlankIntrWait
.L08312A3C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08312A38
	movs r2, #0
	mov r8, r2
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #248]
	ldr r1, [pc, #252]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #236]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #220]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #204]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	ldr r1, [pc, #192]
	ldr r0, [sp, #8]
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	ldr r1, [pc, #184]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #180]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #172]
	ands r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl sub_08001A48
	add r0, sp, #8
	strb r4, [r0, #0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	strb r4, [r6, #3]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl sub_08001A48
	strb r4, [r6, #0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	movs r0, #2
	strb r0, [r6, #3]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl sub_08001A48
	movs r3, #160
	negs r3, r3
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r1, [pc, #84]
	movs r2, #252
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	subs r2, #255
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	subs r2, #255
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #12
	movs r2, #224
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L08312B78
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	subs r5, #32
	lsrs r4, r0, #32
	ldr r0, [r0, r7]
	lsrs r2, r4, #32
	ldrh r0, [r2, #46]
	lsrs r2, r4, #32
	str r2, [sp, #384]
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
.L08312B74:
	bl VBlankIntrWait
.L08312B78:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08312B74
	movs r4, #0
	ldr r5, [pc, #40]
.L08312B84:
	bl VBlankIntrWait
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl sub_08001404
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #4
	negs r3, r3
	bl sub_08001404
	adds r4, #1
	cmp r4, #39
	bls .L08312B84
	movs r4, #0
	b .L08312BB2
	subs r1, #140
	lsls r0, r0, #12
.L08312BB0:
	adds r4, #1
.L08312BB2:
	cmp r4, #239
	bhi .L08312BD4
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312BD4
	mov r0, r8
	cmp r0, #0
	beq .L08312BB0
.L08312BD4:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl Fade_Start
	b .L08312BE4
.L08312BE0:
	bl VBlankIntrWait
.L08312BE4:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L08312BE0
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

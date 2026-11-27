	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08308630
	.thumb_func
sub_08308630:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #160
	lsls r1, r1, #19
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #1
	bl sub_08001FC8
	movs r0, #1
	bl sub_08001FA0
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #16
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	bl sub_08309D50
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030007F5
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08308668
	.thumb_func
sub_08308668:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [r4, #64]
	ldr r0, [pc, #40]
	adds r1, r1, r0
	str r1, [r4, #64]
	ldr r2, [pc, #36]
	ldr r0, [r2, #8]
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [r4, #52]
	ldr r1, [r2, #12]
	lsls r1, r1, #8
	ldr r0, [r4, #68]
	adds r0, r0, r1
	str r0, [r4, #56]
	ldrh r0, [r4, #12]
	cmp r0, #1
	bhi .L083086A0
	adds r0, r4, #0
	adds r0, #100
	bl sub_08000704
	b .L083086B4
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
	subs r0, #204
	lsls r0, r0, #12
.L083086A0:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083086B4
	adds r0, r4, #0
	bl sub_08309D50
.L083086B4:
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #20]
	ldr r0, [r0, #8]
	subs r0, #16
	cmp r1, r0
	bge .L083086C8
	adds r0, r4, #0
	bl sub_08309D50
.L083086C8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_083086D4
	.thumb_func
sub_083086D4:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #1
	bne .L08308756
	ldr r1, [sp, #0]
	movs r2, #0
	movs r0, #19
	strb r0, [r1, #5]
	ldr r0, [sp, #0]
	strb r3, [r0, #1]
	ldr r0, [sp, #0]
	strb r3, [r0, #2]
	ldr r0, [sp, #0]
	strb r3, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #46
	strb r2, [r0, #0]
	ldr r2, [sp, #0]
	ldr r1, [pc, #84]
	ldr r0, [r1, #8]
	lsls r0, r0, #8
	adds r0, r4, r0
	str r0, [r2, #52]
	ldr r2, [sp, #0]
	ldr r0, [r1, #12]
	lsls r0, r0, #8
	adds r0, r5, r0
	str r0, [r2, #56]
	ldr r0, [sp, #0]
	str r4, [r0, #64]
	ldr r0, [sp, #0]
	str r5, [r0, #68]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #160
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #224
	movs r1, #255
	strh r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #100
	ldr r1, [pc, #32]
	adds r2, r6, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [sp, #0]
	strh r6, [r0, #12]
.L08308756:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC
	.4byte 0x08308669
	.4byte 0x08309E79
	.4byte 0x080BDF00
	.4byte 0x22001C03
	.4byte 0x71582012
	.4byte 0x70DA709A
	.4byte 0x31D41C19
	.4byte 0x60084806
	.4byte 0x4806390C
	.4byte 0x1C186008
	.4byte 0x780030E2
	.4byte 0x849A8358
	.4byte 0x845A83DA
	.4byte 0x00004770
	.4byte 0x08309E79
	.4byte 0x083087A5

	.thumb
	.align 1, 0
	.global sub_083087A4
	.thumb_func
sub_083087A4:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #26]
	movs r2, #26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L08308828
	ldr r1, [pc, #100]
	movs r3, #32
	ldrsh r0, [r4, r3]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r2, [pc, #92]
	movs r5, #30
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #0]
	ldr r3, [pc, #84]
	movs r5, #36
	ldrsh r2, [r4, r5]
	adds r2, r2, r3
	ldrb r2, [r2, #0]
	bl sub_083086D4
	ldr r1, [pc, #72]
	movs r2, #34
	ldrsh r0, [r4, r2]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	movs r1, #0
	strh r0, [r4, #26]
	ldrh r0, [r4, #32]
	adds r0, #1
	strh r0, [r4, #32]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #7
	ble .L083087F6
	strh r1, [r4, #32]
.L083087F6:
	ldrh r0, [r4, #30]
	adds r0, #1
	strh r0, [r4, #30]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #6
	ble .L08308806
	strh r1, [r4, #30]
.L08308806:
	ldrh r0, [r4, #34]
	adds r0, #1
	strh r0, [r4, #34]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #9
	ble .L0830882C
	strh r1, [r4, #34]
	b .L0830882C
	ldr r0, [r7, r5]
	lsls r0, r0, #12
	ldr r0, [r3, r6]
	lsls r0, r0, #12
	ldr r6, [r3, r5]
	lsls r0, r0, #12
	ldr r4, [r5, r5]
	lsls r0, r0, #12
.L08308828:
	subs r0, r1, #1
	strh r0, [r4, #26]
.L0830882C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308834
	.thumb_func
sub_08308834:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #23
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x083088F5
	.4byte 0x0300398C
	.4byte 0x08279EF0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

	.thumb
	.align 1, 0
	.global sub_083088F4
	.thumb_func
sub_083088F4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r4, [pc, #28]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_0830891C
	.thumb_func
sub_0830891C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r2, [r5, #38]
	movs r1, #38
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L08308954
	ldrh r1, [r5, #40]
	movs r3, #40
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L0830893A
	subs r0, r1, #1
	strh r0, [r5, #40]
	b .L08308954
.L0830893A:
	movs r0, #8
	strh r0, [r5, #40]
	subs r0, r2, #1
	strh r0, [r5, #38]
	movs r1, #12
	subs r1, r1, r0
	lsls r1, r1, #16
	adds r0, r2, #3
	lsls r0, r0, #24
	orrs r0, r1
	ldr r1, [pc, #36]
	lsrs r0, r0, #16
	strh r0, [r1, #0]
.L08308954:
	ldr r4, [pc, #32]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000052
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_0830897C
	.thumb_func
sub_0830897C:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L08308992
	subs r0, r1, #1
	strh r0, [r5, #28]
	b .L08308A26
.L08308992:
	ldr r4, [pc, #156]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #148]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #140]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #136]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #128]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #124]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #104]
	ldr r3, [pc, #108]
	adds r0, r3, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	movs r0, #0
	strh r0, [r5, #26]
	movs r0, #8
	strh r0, [r5, #40]
	movs r0, #12
	strh r0, [r5, #38]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	ldr r1, [pc, #60]
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	movs r3, #128
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1, #0]
.L08308A26:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x082539A0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82
	.4byte 0x0830891D
	.4byte 0x04000050
	.4byte 0x00002448
	.4byte 0x21001C02
	.4byte 0x71502018
	.4byte 0x70D17091
	.4byte 0x31D41C11
	.4byte 0x60084803
	.4byte 0x4803390C
	.4byte 0x20286008
	.4byte 0x47708390
	.4byte 0x08309E75
	.4byte 0x0830897D

	.thumb
	.align 1, 0
	.global sub_08308A84
	.thumb_func
sub_08308A84:
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, [pc, #32]
	movs r0, #1
	bl sub_08001FC8
	movs r0, #1
	bl sub_08001FA0
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #16
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	bl sub_08309D50
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300083D
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08308AB4
	.thumb_func
sub_08308AB4:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #13
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x08308B75
	.4byte 0x0300398C
	.4byte 0x0825AB50
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

	.thumb
	.align 1, 0
	.global sub_08308B74
	.thumb_func
sub_08308B74:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [pc, #32]
	ldr r4, [pc, #36]
	ldr r0, [r4, #80]
	strh r0, [r1, #0]
	movs r1, #26
	ldrsh r0, [r5, r1]
	ldr r3, [r4, #104]
	subs r3, r3, r0
	adds r0, r4, #0
	movs r1, #3
	movs r2, #3
	bl sub_08001404
	ldr r0, [r4, #104]
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03003A18
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08308BA4
	.thumb_func
sub_08308BA4:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r7, #0
	movs r0, #14
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r6, #1
	strb r6, [r4, #2]
	adds r0, r4, #0
	adds r0, #46
	strb r6, [r0, #0]
	adds r0, #1
	strb r7, [r0, #0]
	adds r5, r4, #0
	adds r5, #227
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08308BD6
	strb r6, [r4, #3]
	adds r1, #140
	b .L08308BF6
.L08308BD6:
	ldrb r0, [r5, #0]
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308C20
	ldrb r0, [r5, #0]
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308C00
	strb r6, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
.L08308BF6:
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L08308C2C
	ldrh r5, [r3, #34]
	lsrs r0, r6, #32
.L08308C00:
	strb r7, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	strh r6, [r4, #10]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	strh r0, [r4, #26]
	ldr r0, [r1, #56]
	asrs r0, r0, #8
	strh r0, [r4, #28]
	b .L08308C2C
	ldrh r1, [r1, #38]
	lsrs r0, r6, #32
.L08308C20:
	strb r7, [r4, #3]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	strh r7, [r4, #10]
.L08308C2C:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #32]
	adds r2, r4, #0
	adds r2, #226
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08308CC9
	.4byte 0x080B6430
	.4byte 0x08309E79

	.thumb
	.align 1, 0
	.global sub_08308C5C
	.thumb_func
sub_08308C5C:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #100
	adds r0, r5, #0
	bl sub_08000704
	ldr r0, [pc, #84]
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308C94
	movs r0, #31
	bl sub_083189D0
	ldr r0, [pc, #64]
	adds r1, r4, #0
	adds r1, #226
	ldrb r1, [r1, #0]
	adds r0, r1, r0
	movs r1, #1
	strb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08309D50
.L08308C94:
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	ldr r2, [r4, #56]
	asrs r2, r2, #8
	adds r0, r5, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308CB8
	adds r0, r4, #0
	bl sub_08309D50
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08308CB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x030028F0

	.thumb
	.align 1, 0
	.global sub_08308CC8
	.thumb_func
sub_08308CC8:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #227
	ldrb r0, [r5, #0]
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308D2E
	ldrb r0, [r5, #0]
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308D1C
	ldrh r1, [r4, #10]
	cmp r1, #1
	bne .L08308D08
	movs r2, #26
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	str r0, [r4, #52]
	movs r2, #28
	ldrsh r0, [r4, r2]
	subs r0, #16
	lsls r0, r0, #8
	str r0, [r4, #56]
	strb r1, [r4, #3]
	b .L08308D0C
.L08308D08:
	movs r0, #1
	strb r0, [r4, #3]
.L08308D0C:
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L08308D2E
	movs r0, r0
	ldrh r5, [r3, #34]
	lsrs r0, r6, #32
.L08308D1C:
	movs r0, #1
	strh r0, [r4, #10]
	ldr r1, [sp, #0]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	strh r0, [r4, #26]
	ldr r0, [r1, #56]
	asrs r0, r0, #8
	strh r0, [r4, #28]
.L08308D2E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308D38
	.thumb_func
sub_08308D38:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	movs r0, #15
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #44
	strb r0, [r1, #0]
	movs r2, #1
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	movs r1, #8
	negs r1, r1
	ands r0, r1
	lsls r0, r0, #8
	str r0, [r4, #52]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	ands r0, r1
	lsls r0, r0, #8
	str r0, [r4, #56]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r6, [r0, #0]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r5, [r0, #0]
	cmp r5, #0
	beq .L08308DAC
	cmp r5, #1
	bne .L08308DDE
	adds r0, #1
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308DA8
	strh r6, [r4, #10]
	b .L08308DDE
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	ldrh r1, [r2, #50]
	lsrs r0, r6, #32
.L08308DA8:
	strh r5, [r4, #10]
	b .L08308DDE
.L08308DAC:
	ldr r0, [pc, #28]
	adds r1, r4, #0
	adds r1, #228
	ldrb r1, [r1, #0]
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne .L08308DD0
	strh r2, [r4, #10]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	b .L08308DDE
	cmp r0, #240
	lsls r0, r0, #12
.L08308DD0:
	strh r5, [r4, #10]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
.L08308DDE:
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	subs r0, #20
	cmp r0, #3
	bhi .L08308E14
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E04
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	b .L08308E24
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
	ldrh r0, [r4, #14]
	lsrs r3, r1, #32
.L08308E04:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldrh r2, [r4, #10]
	adds r2, #2
	b .L08308E26
	ldrh r0, [r4, #14]
	lsrs r3, r1, #32
.L08308E14:
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E34
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #12]
.L08308E24:
	ldrh r2, [r4, #10]
.L08308E26:
	movs r3, #0
	bl sub_080002E0
	b .L08308E44
	movs r0, r0
	ldr r0, [r0, #0]
	lsrs r3, r1, #32
.L08308E34:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	ldrh r2, [r4, #10]
	adds r2, #2
	movs r3, #0
	bl sub_080002E0
.L08308E44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080B6800

	.thumb
	.align 1, 0
	.global sub_08308E50
	.thumb_func
sub_08308E50:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308E6A
	adds r4, r5, #0
	adds r4, #100
	ldrh r1, [r5, #10]
	adds r0, r4, #0
	bl sub_08000680
	b .L08308E78
.L08308E6A:
	adds r4, r5, #0
	adds r4, #100
	ldrh r1, [r5, #10]
	adds r1, #2
	adds r0, r4, #0
	bl sub_08000680
.L08308E78:
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08308EEC
	adds r0, r5, #0
	adds r0, #227
	ldrb r2, [r0, #0]
	movs r1, #0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08308E98
	movs r1, #1
.L08308E98:
	adds r0, r2, #0
	bl sub_08001DC8
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08308F2C
	ldr r7, [pc, #56]
	adds r6, r5, #0
	adds r6, #228
	ldrb r1, [r6, #0]
	adds r0, r1, r7
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne .L08308F2C
	ldr r0, [pc, #44]
	adds r1, r5, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308F2C
	ldrb r6, [r6, #0]
	adds r1, r6, r7
	movs r0, #2
	strb r0, [r1, #0]
	strh r4, [r5, #10]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	movs r0, #28
	bl sub_083189D0
	b .L08308F2C
	movs r0, r0
	cmp r0, #240
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r1, [r3, #58]
	lsrs r0, r6, #32
.L08308EEC:
	adds r4, r5, #0
	adds r4, #227
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08308F04
	ldrh r0, [r5, #10]
	adds r1, r0, #0
	cmp r1, #1
	beq .L08308F18
.L08308F04:
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F2C
	ldrh r0, [r5, #10]
	adds r1, r0, #0
	cmp r1, #0
	bne .L08308F2C
.L08308F18:
	movs r0, #1
	subs r0, r0, r1
	strh r0, [r5, #10]
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	movs r0, #28
	bl sub_083189D0
.L08308F2C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F4E
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L08308F4E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x08308F59

	.thumb
	.align 1, 0
	.global sub_08308F58
	.thumb_func
sub_08308F58:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308F70
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #8]
	str r0, [r1, #0]
.L08308F70:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08308E51
	.4byte 0x21102200
	.4byte 0x70827141
	.4byte 0x1C0270C2
	.4byte 0x490332C8
	.4byte 0x30D46011
	.4byte 0x60014902
	.4byte 0x00004770
	.4byte 0x08308FA1
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_08308FA0
	.thumb_func
sub_08308FA0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r1, [pc, #80]
	ldr r0, [r1, #52]
	asrs r7, r0, #11
	ldr r0, [r1, #56]
	asrs r0, r0, #11
	mov ip, r0
	ldr r0, [r4, #52]
	mov r8, r0
	asrs r5, r0, #11
	ldr r1, [r4, #56]
	mov r9, r1
	asrs r6, r1, #11
	adds r1, r4, #0
	adds r1, #227
	adds r0, r4, #0
	adds r0, #228
	ldrb r2, [r0, #0]
	adds r0, #1
	ldrb r3, [r0, #0]
	ldrb r1, [r1, #0]
	subs r0, r5, r1
	cmp r7, r0
	blt .L08309014
	adds r0, r5, r2
	cmp r7, r0
	bgt .L08309014
	subs r0, r6, r3
	cmp ip, r0
	blt .L08309014
	cmp ip, r6
	bgt .L08309014
	adds r0, r4, #0
	adds r0, #226
	ldrb r1, [r0, #0]
	cmp r1, #0
	bne .L08309008
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	ldr r0, [pc, #12]
	b .L08309012
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	cmp r0, #244
	lsls r0, r0, #12
	cmp r0, #248
	lsls r0, r0, #12
.L08309008:
	ldr r0, [pc, #56]
	mov r1, r8
	str r1, [r0, #0]
	ldr r0, [pc, #56]
	mov r1, r9
.L08309012:
	str r1, [r0, #0]
.L08309014:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309036
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r4, #0
	bl sub_08309D50
.L08309036:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030028F4
	.4byte 0x030028F8

	.thumb
	.align 1, 0
	.global sub_0830904C
	.thumb_func
sub_0830904C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	movs r0, #2
	movs r1, #0
	bl sub_08001DC8
	movs r0, #1
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #10]
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #12]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #14]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x083090B1

	.thumb
	.align 1, 0
	.global sub_083090B0
	.thumb_func
sub_083090B0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L083090FE
	ldrh r0, [r5, #14]
	cmp r0, #0
	bne .L083090FE
	movs r0, #0
	movs r1, #0
	bl sub_08001DC8
	movs r0, #1
	movs r1, #0
	bl sub_08001DC8
	strh r4, [r5, #14]
	movs r4, #8
.L083090DE:
	adds r0, r4, #0
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083090F2
	adds r0, r4, #0
	bl sub_08316920
.L083090F2:
	adds r4, #1
	cmp r4, #11
	bls .L083090DE
	movs r0, #12
	bl sub_08316920
.L083090FE:
	movs r0, #0
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309128
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309128
	ldrh r0, [r5, #14]
	cmp r0, #1
	bne .L08309128
	movs r0, #2
	movs r1, #0
	bl sub_08001DC8
	movs r0, #0
	strh r0, [r5, #14]
.L08309128:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309130
	.thumb_func
sub_08309130:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r0, #255
	strb r0, [r7, #5]
	movs r4, #0
	movs r6, #1
	strb r6, [r7, #2]
	strb r4, [r7, #3]
	adds r1, r7, #0
	adds r1, #212
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #72]
	str r0, [r1, #0]
	movs r0, #179
	lsls r0, r0, #9
	str r0, [r7, #52]
	movs r0, #252
	lsls r0, r0, #9
	str r0, [r7, #56]
	subs r1, #140
	movs r0, #39
	strb r0, [r1, #0]
	movs r5, #0
	strh r4, [r7, #10]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r7, #12]
	strh r4, [r7, #28]
	adds r0, r7, #0
	adds r0, #100
	ldr r1, [pc, #32]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r0, r7, #0
	adds r0, #46
	strb r6, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x0830919D
	.4byte 0x0810E140

	.thumb
	.align 1, 0
	.global sub_0830919C
	.thumb_func
sub_0830919C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #3]
	strh r0, [r4, #10]
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083091D4
	ldrh r0, [r4, #12]
	cmp r0, #0
	bne .L083091D4
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #1
	strh r0, [r4, #10]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #8
	bl sub_083189D0
	strh r0, [r4, #40]
.L083091D4:
	movs r0, #2
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	strh r0, [r4, #12]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083091ED

	.thumb
	.align 1, 0
	.global sub_083091EC
	.thumb_func
sub_083091EC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	movs r0, #1
	strb r0, [r5, #3]
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L08309222
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309286
	movs r0, #2
	strh r0, [r5, #10]
	movs r0, #3
	strh r0, [r5, #26]
	b .L08309252
.L08309222:
	cmp r0, #2
	bne .L0830925A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309286
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L0830924E
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L08309286
.L0830924E:
	movs r0, #3
	strh r0, [r5, #10]
.L08309252:
	adds r0, r4, #0
	bl sub_080006AC
	b .L08309286
.L0830925A:
	cmp r0, #3
	bne .L08309286
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309286
	adds r0, r5, #0
	adds r0, #200
	ldr r1, [pc, #152]
	str r1, [r0, #0]
	movs r1, #40
	ldrsh r0, [r5, r1]
	bl sub_08319148
.L08309286:
	movs r0, #1
	ldrh r2, [r5, #28]
	subs r0, r0, r2
	strh r0, [r5, #28]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L08309306
	movs r7, #0
	movs r0, #0
	mov r8, r0
	movs r6, #0
.L0830929C:
	ldr r0, [pc, #120]
	adds r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L083092D2
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083092D2
	mov r1, r8
	str r1, [sp, #0]
	add r0, sp, #4
	movs r1, #1
	strb r1, [r0, #0]
	add r0, sp, #8
	mov r2, r8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L083092D2:
	adds r6, #248
	adds r7, #1
	cmp r7, #7
	bls .L0830929C
	ldr r4, [pc, #64]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309306
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r0, sp, #8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L08309306:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0830919D
	.4byte 0x02004400
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08309320
	.thumb_func
sub_08309320:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #21
	strb r0, [r5, #5]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #46
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r5, #2]
	strb r0, [r5, #3]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #60]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309362
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L08309362:
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	subs r0, #4
	cmp r0, #19
	bhi .L08309398
	lsls r0, r0, #2
	ldr r1, [pc, #16]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldrb r0, [r2, r4]
	lsrs r7, r3, #32
	subs r7, #12
	lsls r0, r0, #12
	add sp, #304
	lsrs r5, r7, #32
	movs r0, #2
	b .L0830939E
	movs r0, #0
	b .L0830939E
	movs r0, #1
	b .L0830939E
	movs r0, #0
	b .L0830939E
	movs r0, #2
	b .L0830939E
.L08309398:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
.L0830939E:
	strh r0, [r5, #10]
	ldr r0, [pc, #28]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083093C8
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #20]
	ldrh r0, [r5, #10]
	lsls r2, r0, #1
	adds r2, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
	b .L083093DA
	movs r5, #12
	lsls r0, r0, #12
	ldrb r0, [r2, r4]
	lsrs r7, r3, #32
.L083093C8:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #56]
	ldrh r0, [r5, #10]
	lsls r2, r0, #1
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
.L083093DA:
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	cmp r0, #23
	bne .L083093F2
	adds r0, r4, #0
	movs r1, #8
	bl sub_0800075C
	adds r1, r5, #0
	adds r1, #60
	movs r0, #60
	strb r0, [r1, #0]
.L083093F2:
	adds r1, r5, #0
	adds r1, #212
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081F5D10
	.4byte 0x03003F0C
	.4byte 0x08309E79
	.4byte 0x08309419

	.thumb
	.align 1, 0
	.global sub_08309418
	.thumb_func
sub_08309418:
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [pc, #24]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L0830943C
	adds r4, r2, #0
	adds r4, #100
	ldrh r2, [r2, #10]
	lsls r1, r2, #1
	adds r1, #1
	adds r0, r4, #0
	bl sub_08000680
	b .L0830944A
	movs r5, #12
	lsls r0, r0, #12
.L0830943C:
	adds r4, r2, #0
	adds r4, #100
	ldrh r2, [r2, #10]
	lsls r1, r2, #1
	adds r0, r4, #0
	bl sub_08000680
.L0830944A:
	adds r0, r4, #0
	bl sub_08000704
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x714121FF
	.4byte 0x70812100
	.4byte 0x1C0270C1
	.4byte 0x490332D4
	.4byte 0x30C86011
	.4byte 0x60014902
	.4byte 0x00004770
	.4byte 0x08309E79
	.4byte 0x0830947D

	.thumb
	.align 1, 0
	.global sub_0830947C
	.thumb_func
sub_0830947C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #60
	adds r5, r0, #0
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #9
	beq .L083094F4
	cmp r0, #9
	bhi .L083094A0
	cmp r0, #4
	beq .L083094AC
	b .L083096DA
	subs r7, #12
	lsls r0, r0, #12
.L083094A0:
	cmp r0, #14
	beq .L0830958A
	cmp r0, #19
	bne .L083094AA
	b .L08309646
.L083094AA:
	b .L083096DA
.L083094AC:
	movs r4, #11
	add r6, sp, #4
.L083094B0:
	adds r0, r4, #0
	mov r1, sp
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083094C4
	adds r0, r5, #0
	bl sub_08309D50
.L083094C4:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L083094B0
	movs r4, #30
.L083094D2:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083094E6
	adds r0, r5, #0
	bl sub_08309D50
.L083094E6:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #32
	bls .L083094D2
	b .L083096DA
.L083094F4:
	movs r4, #4
	add r6, sp, #8
	add r7, sp, #12
	add r0, sp, #16
	mov r8, r0
	add r0, sp, #20
	mov r9, r0
.L08309502:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309516
	adds r0, r5, #0
	bl sub_08309D50
.L08309516:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L08309502
	movs r4, #15
.L08309524:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309538
	adds r0, r5, #0
	bl sub_08309D50
.L08309538:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L08309524
	movs r4, #24
.L08309546:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830955A
	ldr r0, [sp, #16]
	bl sub_08309D50
.L0830955A:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309546
	movs r4, #31
.L08309568:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830957C
	adds r0, r5, #0
	bl sub_08309D50
.L0830957C:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #32
	bls .L08309568
	b .L083096DA
.L0830958A:
	movs r4, #4
	add r6, sp, #24
	add r7, sp, #28
	add r0, sp, #32
	mov r8, r0
	add r0, sp, #36
	mov r9, r0
	add r0, sp, #40
	mov sl, r0
.L0830959C:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095B0
	adds r0, r5, #0
	bl sub_08309D50
.L083095B0:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L0830959C
	movs r4, #11
.L083095BE:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095D2
	adds r0, r5, #0
	bl sub_08309D50
.L083095D2:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #14
	bls .L083095BE
	movs r4, #19
.L083095E0:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083095F4
	adds r0, r5, #0
	bl sub_08309D50
.L083095F4:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #22
	bls .L083095E0
	movs r4, #24
.L08309602:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309616
	ldr r0, [sp, #36]
	bl sub_08309D50
.L08309616:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309602
	movs r4, #30
.L08309624:
	adds r0, r4, #0
	mov r1, sl
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309638
	adds r0, r5, #0
	bl sub_08309D50
.L08309638:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #2
	cmp r4, #32
	bls .L08309624
	b .L083096DA
.L08309646:
	movs r4, #4
	add r6, sp, #44
	add r7, sp, #48
	add r0, sp, #52
	mov r8, r0
	add r0, sp, #56
	mov r9, r0
.L08309654:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309668
	adds r0, r5, #0
	bl sub_08309D50
.L08309668:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #7
	bls .L08309654
	movs r4, #11
.L08309676:
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830968A
	adds r0, r5, #0
	bl sub_08309D50
.L0830968A:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #18
	bls .L08309676
	movs r4, #24
.L08309698:
	adds r0, r4, #0
	mov r1, r8
	bl sub_08309E38
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083096AC
	ldr r0, [sp, #52]
	bl sub_08309D50
.L083096AC:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #28
	bls .L08309698
	movs r4, #30
.L083096BA:
	adds r0, r4, #0
	mov r1, r9
	bl sub_08314AC4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083096CE
	adds r0, r5, #0
	bl sub_08309D50
.L083096CE:
	adds r0, r4, #0
	bl sub_08316910
	adds r4, #1
	cmp r4, #31
	bls .L083096BA
.L083096DA:
	add sp, #60
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x70812100
	.4byte 0x714170C1
	.4byte 0x32C81C02
	.4byte 0x60114902
	.4byte 0x490230D4
	.4byte 0x47706001
	.4byte 0x0830970D
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_0830970C
	.thumb_func
sub_0830970C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r6, #0
	adds r0, #226
	ldrb r4, [r0, #0]
	adds r0, #1
	b .L0830973E
.L0830971C:
	adds r0, r4, #0
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309736
	adds r0, r4, #0
	bl sub_08316F04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309738
.L08309736:
	movs r6, #1
.L08309738:
	adds r4, #1
	adds r0, r5, #0
	adds r0, #227
.L0830973E:
	ldrb r0, [r0, #0]
	cmp r4, r0
	ble .L0830971C
	cmp r6, #1
	bne .L08309756
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	b .L08309768
.L08309756:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
	adds r0, r5, #0
	bl sub_08309D50
.L08309768:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309770
	.thumb_func
sub_08309770:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #200
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	adds r1, #12
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	movs r1, #1
	bl sub_08001DC8
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	movs r1, #0
	bl sub_08001DC8
	adds r1, r4, #0
	adds r1, #228
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083097C1
	.4byte 0x08309E75

	.thumb
	.align 1, 0
	.global sub_083097C0
	.thumb_func
sub_083097C0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L083097D4
	subs r0, r1, #1
	b .L083097FA
.L083097D4:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001DF4
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001DF4
	movs r0, #5
	bl sub_083189D0
	adds r1, r5, #0
	adds r1, #228
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
.L083097FA:
	strh r0, [r5, #26]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #175
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830982E
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L0830982E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_0830983C
	.thumb_func
sub_0830983C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #22
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #46
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r5, r4, #0
	adds r5, #226
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L0830986A
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #136]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L0830986A:
	ldrb r0, [r5, #0]
	cmp r0, #1
	bne .L0830987E
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #116]
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
.L0830987E:
	ldrb r0, [r5, #0]
	cmp r0, #2
	bne .L08309892
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #96]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
.L08309892:
	ldrb r0, [r5, #0]
	cmp r0, #3
	bne .L083098A6
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #76]
	movs r2, #6
	movs r3, #0
	bl sub_080002E0
.L083098A6:
	ldrb r5, [r5, #0]
	cmp r5, #4
	bne .L083098BA
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #8
	movs r3, #0
	bl sub_080002E0
.L083098BA:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083098D8
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L083098D8:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081F71C0
	.4byte 0x08309E79
	.4byte 0x083098F9

	.thumb
	.align 1, 0
	.global sub_083098F8
	.thumb_func
sub_083098F8:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830992A
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L08309920
	adds r0, r5, #0
	adds r0, #100
	movs r1, #1
	bl sub_08000680
	b .L0830992A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08309920:
	adds r0, r5, #0
	adds r0, #100
	movs r1, #0
	bl sub_08000680
.L0830992A:
	adds r0, r5, #0
	adds r0, #226
	adds r6, r0, #0
	adds r4, r5, #0
	adds r4, #100
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L0830995C
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L08309954
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L0830995C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08309954:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L0830995C:
	ldrb r0, [r6, #0]
	cmp r0, #2
	bne .L08309984
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L0830997C
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L08309984
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L0830997C:
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L08309984:
	ldrb r0, [r6, #0]
	cmp r0, #3
	bne .L083099AC
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083099A4
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L083099AC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083099A4:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L083099AC:
	ldrb r6, [r6, #0]
	cmp r6, #4
	bne .L083099D4
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L083099CC
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L083099D4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083099CC:
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L083099D4:
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083099FE
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L083099FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309A04
	.thumb_func
sub_08309A04:
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	strb r1, [r4, #5]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #60
	strb r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	ldr r1, [pc, #56]
	ldrh r0, [r1, #0]
	strh r0, [r4, #26]
	ldrh r2, [r1, #0]
	movs r0, #25
	movs r1, #18
	bl sub_08311500
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	movs r0, #192
	lsls r0, r0, #8
	str r0, [r4, #52]
	movs r0, #152
	lsls r0, r0, #8
	str r0, [r4, #56]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309EED
	.4byte 0x08309A69
	.4byte 0x030058F0
	.4byte 0x080BD530

	.thumb
	.align 1, 0
	.global sub_08309A68
	.thumb_func
sub_08309A68:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #48]
	ldrh r0, [r5, #0]
	ldrh r1, [r4, #26]
	cmp r0, r1
	bne .L08309A7E
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08309A94
.L08309A7E:
	movs r0, #25
	movs r1, #18
	movs r2, #5
	movs r3, #1
	bl sub_080049D4
	ldrh r2, [r5, #0]
	movs r0, #25
	movs r1, #18
	bl sub_08311500
.L08309A94:
	ldr r0, [pc, #8]
	ldrh r0, [r0, #0]
	strh r0, [r4, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x030058F0
	.4byte 0x030059DC

	.thumb
	.align 1, 0
	.global sub_08309AA8
	.thumb_func
sub_08309AA8:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #30]
	movs r2, #30
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L08309AF4
	movs r1, #7
	strh r1, [r4, #30]
	ldrh r0, [r4, #28]
	adds r0, #1
	ands r0, r1
	strh r0, [r4, #28]
	ldrh r0, [r4, #32]
	subs r0, #1
	ands r0, r1
	strh r0, [r4, #32]
	ldr r3, [pc, #32]
	ldr r2, [pc, #32]
	movs r5, #32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #1
	adds r1, r1, r2
	movs r5, #28
	ldrsh r0, [r4, r5]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	ldrh r1, [r1, #0]
	orrs r0, r1
	strh r0, [r3, #0]
	b .L08309AF8
	movs r0, r0
	lsls r2, r2, #1
	lsls r0, r0, #16
	.2byte 0xb10c @ .raw cbz r4, 0x8309af6
	lsrs r5, r7, #32
.L08309AF4:
	subs r0, r1, #1
	strh r0, [r4, #30]
.L08309AF8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309B00
	.thumb_func
sub_08309B00:
	push {r4, lr}
	adds r3, r0, #0
	ldrh r1, [r3, #26]
	movs r2, #26
	ldrsh r0, [r3, r2]
	cmp r0, #0
	ble .L08309B14
	subs r0, r1, #1
	strh r0, [r3, #26]
	b .L08309B52
.L08309B14:
	ldrh r2, [r3, #28]
	adds r1, r2, #0
	adds r1, #8
	lsls r1, r1, #16
	movs r0, #8
	subs r0, r0, r2
	lsls r0, r0, #24
	orrs r0, r1
	ldr r2, [pc, #48]
	movs r4, #137
	lsls r4, r4, #6
	adds r1, r4, #0
	strh r1, [r2, #0]
	ldr r1, [pc, #44]
	lsrs r0, r0, #16
	strh r0, [r1, #0]
	ldrh r0, [r3, #28]
	subs r0, #1
	movs r2, #0
	strh r0, [r3, #28]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L08309B52
	adds r0, r3, #0
	adds r0, #200
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	movs r0, #7
	strh r0, [r3, #30]
	strh r2, [r3, #32]
	strh r2, [r3, #28]
.L08309B52:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x04000050
	.4byte 0x04000052
	.4byte 0x08309AA9
	.4byte 0x20001C02
	.4byte 0x70907150
	.4byte 0x1C1170D0
	.4byte 0x480531D4
	.4byte 0x390C6008
	.4byte 0x60084804
	.4byte 0x83502028
	.4byte 0x83902008
	.4byte 0x00004770
	.4byte 0x08309E75
	.4byte 0x08309B01

	.thumb
	.align 1, 0
	.global sub_08309B90
	.thumb_func
sub_08309B90:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r3, r4, #0
	adds r3, #60
	movs r0, #51
	strb r0, [r3, #0]
	adds r3, #152
	ldr r0, [pc, #40]
	str r0, [r3, #0]
	subs r3, #12
	ldr r0, [pc, #36]
	str r0, [r3, #0]
	str r1, [r4, #52]
	str r2, [r4, #56]
	adds r4, #100
	ldr r1, [pc, #32]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #1
	bl sub_0800078C
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08309C71
	.4byte 0x08200610

	.thumb
	.align 1, 0
	.global sub_08309BE0
	.thumb_func
sub_08309BE0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4, #5]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	adds r1, #152
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #44]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309C28
	ldr r0, [sp, #0]
	ldr r1, [r4, #52]
	ldr r2, [r4, #56]
	bl sub_08309B90
.L08309C28:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08309C3D
	.4byte 0x081FE510

	.thumb
	.align 1, 0
	.global sub_08309C3C
	.thumb_func
sub_08309C3C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309C68
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r4, #0
	bl sub_08309D50
.L08309C68:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309C70
	.thumb_func
sub_08309C70:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08309C92
	adds r0, r4, #0
	bl sub_08309D50
.L08309C92:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08309C98
	.thumb_func
sub_08309C98:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #1
.L08309CA0:
	strb r2, [r0, #0]
	adds r0, #248
	adds r1, #1
	cmp r1, #15
	bls .L08309CA0
	bx lr
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309CB0
	.thumb_func
sub_08309CB0:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [pc, #12]
.L08309CB6:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L08309CC8
	str r1, [r3, #0]
	movs r0, #1
	b .L08309CD2
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08309CC8:
	adds r1, #248
	adds r2, #1
	cmp r2, #15
	bls .L08309CB6
	movs r0, #0
.L08309CD2:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08309CD4
	.thumb_func
sub_08309CD4:
	push {r4, r5, r6, lr}
	movs r6, #0
	movs r5, #0
.L08309CDA:
	ldr r0, [pc, #64]
	adds r4, r5, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L08309D0C
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne .L08309D0C
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08309D00
	adds r0, r4, #0
	adds r0, #220
	ldr r1, [r0, #0]
	adds r0, r4, #0
	bl sub_0831A7E8
.L08309D00:
	adds r0, r4, #0
	adds r0, #200
	ldr r1, [r0, #0]
	adds r0, r4, #0
	bl sub_0831A7E8
.L08309D0C:
	adds r5, #248
	adds r6, #1
	cmp r6, #15
	bls .L08309CDA
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309D20
	.thumb_func
sub_08309D20:
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
.L08309D26:
	ldr r0, [pc, #36]
	adds r2, r4, r0
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq .L08309D3C
	adds r0, r2, #0
	adds r0, #212
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl sub_0831A7E8
.L08309D3C:
	adds r4, #248
	adds r5, #1
	cmp r5, #15
	bls .L08309D26
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.thumb
	.align 1, 0
	.global sub_08309D50
	.thumb_func
sub_08309D50:
	push {lr}
	adds r1, r0, #0
	movs r0, #0
	strb r0, [r1, #1]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L08309D66
	adds r0, r1, #0
	adds r0, #100
	bl sub_080005D4
.L08309D66:
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309D6C
	.thumb_func
sub_08309D6C:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r3, #0
	ldr r0, [pc, #40]
	movs r5, #1
	adds r2, r0, #0
	adds r2, #224
	adds r1, r0, #0
.L08309D7C:
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L08309D8A
	ldrh r0, [r2, #0]
	cmp r0, r4
	bne .L08309D8A
	strb r5, [r1, #4]
.L08309D8A:
	adds r2, #248
	adds r1, #248
	adds r3, #1
	cmp r3, #16
	bne .L08309D7C
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004C80

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08301BD8
	.thumb_func
sub_08301BD8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, [pc, #388]
	movs r7, #0
	str r7, [r0, #0]
	ldr r0, [pc, #388]
	str r7, [r0, #0]
	ldr r0, [pc, #388]
	mov r9, r0
	ldr r1, [pc, #388]
	mov sl, r1
	movs r0, #76
	adds r1, r2, #0
	muls r1, r0
	mov r8, r1
	mov r0, r8
	add r0, sl
	adds r0, #45
	ldrb r2, [r0, #0]
	mov r0, r9
	movs r1, #1
	bl sub_080012F4
	mov r0, sl
	adds r0, #32
	add r0, r8
	ldr r2, [r0, #0]
	mov r0, r9
	movs r1, #1
	bl sub_08001314
	ldr r6, [pc, #348]
	mov r0, r9
	ldr r1, [r0, #8]
	ldr r0, [r1, #0]
	lsls r0, r0, #3
	subs r0, #240
	str r0, [r6, #24]
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	subs r0, #208
	str r0, [r6, #28]
	str r7, [r6, #32]
	str r7, [r6, #36]
	subs r4, #120
	str r4, [r6, #8]
	subs r5, #80
	str r5, [r6, #12]
	cmp r4, #0
	bge .L08301C4A
	str r7, [r6, #8]
.L08301C4A:
	ldr r0, [r6, #8]
	ldr r1, [r6, #24]
	cmp r0, r1
	ble .L08301C54
	str r1, [r6, #8]
.L08301C54:
	ldr r0, [r6, #12]
	ldr r1, [r6, #36]
	cmp r0, r1
	bge .L08301C5E
	str r1, [r6, #12]
.L08301C5E:
	ldr r0, [r6, #12]
	ldr r1, [r6, #28]
	cmp r0, r1
	ble .L08301C68
	str r1, [r6, #12]
.L08301C68:
	str r7, [r6, #16]
	str r7, [r6, #20]
	mov r0, r9
	movs r1, #0
	bl sub_080012C0
	movs r7, #0
	str r6, [sp, #4]
	mov r6, sl
	mov r1, r8
	str r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r0, #140
	mov sl, r0
.L08301C84:
	ldr r4, [sp, #4]
	adds r4, #88
	adds r4, r7, r4
	ldr r1, [sp, #8]
	adds r5, r7, r1
	adds r0, r6, #0
	adds r0, #22
	adds r0, r5, r0
	ldrb r3, [r0, #0]
	strb r3, [r4, #0]
	adds r0, r6, #0
	adds r0, #68
	adds r0, r5, r0
	ldr r1, [pc, #228]
	ldr r2, [sp, #0]
	ands r2, r1
	ldrb r0, [r0, #0]
	orrs r2, r0
	str r2, [sp, #0]
	adds r0, r6, #0
	adds r0, #72
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldr r1, [pc, #208]
	ands r1, r2
	orrs r1, r0
	lsls r3, r3, #16
	ldr r0, [pc, #204]
	ands r1, r0
	orrs r1, r3
	str r1, [sp, #0]
	adds r0, r6, #0
	adds r0, #48
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	lsls r2, r0, #24
	ldr r0, [pc, #192]
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0]
	mov r0, r9
	adds r1, r7, #0
	mov r2, sp
	bl sub_08001A48
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L08301D4C
	adds r0, r7, #0
	bl sub_08301EE8
	adds r0, r6, #0
	adds r0, #52
	add r0, r8
	ldrh r1, [r0, #0]
	adds r0, r6, #0
	adds r0, #60
	add r0, r8
	ldrh r2, [r0, #0]
	adds r0, r7, #0
	bl sub_08301F14
	lsls r4, r7, #24
	lsrs r4, r4, #24
	adds r0, r6, #0
	adds r0, #44
	adds r0, r5, r0
	ldrb r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_080012F4
	lsls r5, r7, #2
	ldr r1, [sp, #8]
	adds r0, r5, r1
	ldr r1, [pc, #116]
	adds r0, r0, r1
	ldr r2, [r0, #0]
	mov r0, r9
	adds r1, r4, #0
	bl sub_08001314
	adds r0, r7, #0
	bl sub_08301F34
	ldr r0, [sp, #4]
	adds r0, #124
	adds r5, r5, r0
	ldr r2, [r5, #0]
	mov r0, sl
	ldr r3, [r0, #0]
	mov r0, r9
	adds r1, r7, #0
	bl Bg_DrawLevelScreen
	movs r1, #0
	str r1, [r5, #0]
	mov r0, sl
	str r1, [r0, #0]
.L08301D4C:
	movs r1, #4
	add sl, r1
	movs r0, #2
	add r8, r0
	adds r7, #1
	cmp r7, #4
	bne .L08301C84
	ldr r0, [pc, #28]
	bl sub_08001A8C
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030058F8
	.4byte 0x030058FC
	.4byte 0x0300398C
	.4byte 0x083D39CC
	.4byte 0x030038CC
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x083D39E8

	.thumb
	.align 1, 0
	.global sub_08301D98
	.thumb_func
sub_08301D98:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	movs r4, #0
	ldr r5, [pc, #144]
	adds r6, r5, #0
	adds r6, #140
.L08301DAC:
	adds r7, r5, #0
	adds r7, #88
	adds r0, r4, r7
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08301DCC
	lsls r0, r4, #2
	adds r1, r5, #0
	adds r1, #124
	adds r0, r0, r1
	ldr r2, [r0, #0]
	ldr r3, [r6, #0]
	ldr r0, [pc, #116]
	adds r1, r4, #0
	bl sub_08001404
.L08301DCC:
	adds r6, #4
	adds r4, #1
	cmp r4, #3
	bls .L08301DAC
	adds r2, r5, #0
	ldr r0, [r2, #8]
	str r0, [r2, #16]
	ldr r0, [r2, #12]
	str r0, [r2, #20]
	mov r1, r8
	subs r1, #120
	str r1, [r2, #8]
	mov r0, r9
	subs r0, #128
	str r0, [r2, #12]
	ldr r0, [r2, #32]
	cmp r1, r0
	bge .L08301DF2
	str r0, [r2, #8]
.L08301DF2:
	ldr r0, [r2, #8]
	ldr r1, [r2, #24]
	cmp r0, r1
	ble .L08301DFC
	str r1, [r2, #8]
.L08301DFC:
	ldr r0, [r2, #12]
	ldr r1, [r2, #36]
	cmp r0, r1
	bge .L08301E06
	str r1, [r2, #12]
.L08301E06:
	ldr r0, [r5, #28]
	adds r1, r0, #0
	adds r1, #48
	ldr r0, [r5, #12]
	cmp r0, r1
	ble .L08301E14
	str r1, [r5, #12]
.L08301E14:
	movs r5, #0
	adds r4, r7, #0
.L08301E18:
	ldrb r0, [r4, #0]
	adds r4, #1
	cmp r0, #1
	bne .L08301E26
	adds r0, r5, #0
	bl sub_08301F34
.L08301E26:
	adds r5, #1
	cmp r5, #4
	bne .L08301E18
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030038CC
	.4byte 0x0300398C

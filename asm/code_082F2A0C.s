	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F2A0C
	.thumb_func
sub_082F2A0C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082F2A30
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	ldrh r0, [r5, #14]
	cmp r0, #0
	bne .L082F2A30
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F2A30:
	ldrh r1, [r5, #14]
	cmp r1, #1
	bne .L082F2A9A
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F2A4E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082F2A5A
.L082F2A4E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082F2A5A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L082F2A6A
	strh r0, [r5, #14]
.L082F2A6A:
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2A98
	b .L082F2E4C
.L082F2A98:
	b .L082F2E52
.L082F2A9A:
	ldr r0, [r5, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2AA8
	b .L082F2CCC
.L082F2AA8:
	ldr r6, [pc, #76]
	ldrb r2, [r5, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r2, [r0, #0]
	movs r0, #64
	ands r0, r2
	cmp r0, #0
	beq .L082F2B40
	movs r1, #1
	adds r0, r1, #0
	eors r0, r2
	ands r0, r1
	cmp r0, #0
	beq .L082F2B40
	movs r0, #48
	ands r0, r2
	adds r4, r5, #0
	adds r4, #100
	adds r7, r5, #0
	adds r7, #48
	cmp r0, #0
	beq .L082F2B06
	adds r0, r4, #0
	bl sub_080006AC
	ldrb r3, [r5, #0]
	lsls r0, r3, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	movs r0, #32
	ands r0, r1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	cmp r2, #0
	beq .L082F2AFC
	movs r0, #1
	strb r0, [r7, #0]
	b .L082F2B06
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2AFC:
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F2B06
	strb r2, [r7, #0]
.L082F2B06:
	adds r0, r4, #0
	bl sub_08000790
	cmp r0, #27
	beq .L082F2B20
	adds r0, r4, #0
	bl sub_08000790
	cmp r0, #26
	beq .L082F2B20
	adds r0, r4, #0
	bl sub_080006AC
.L082F2B20:
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F2B30
	adds r0, r4, #0
	movs r1, #27
	bl sub_08000680
	b .L082F2B38
.L082F2B30:
	adds r0, r4, #0
	movs r1, #26
	bl sub_08000680
.L082F2B38:
	adds r0, r4, #0
	bl sub_080006C4
	b .L082F2BAA
.L082F2B40:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, #0
	bne .L082F2B5A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #93
	bl sub_08000680
	b .L082F2B66
.L082F2B5A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #92
	bl sub_08000680
.L082F2B66:
	adds r0, r5, #0
	adds r0, #90
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #64
	bgt .L082F2B8C
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F2B82
	adds r0, r4, #0
	movs r1, #93
	bl sub_08000680
	b .L082F2BA4
.L082F2B82:
	adds r0, r4, #0
	movs r1, #92
	bl sub_08000680
	b .L082F2BA4
.L082F2B8C:
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F2B9C
	adds r0, r4, #0
	movs r1, #33
	bl sub_08000680
	b .L082F2BA4
.L082F2B9C:
	adds r0, r4, #0
	movs r1, #32
	bl sub_08000680
.L082F2BA4:
	adds r0, r4, #0
	bl sub_08000704
.L082F2BAA:
	ldr r0, [r5, #64]
	cmp r0, #0
	beq .L082F2BB8
	adds r0, r5, #0
	movs r1, #6
	bl sub_082F1CC0
.L082F2BB8:
	ldr r1, [pc, #84]
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r1
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2C4C
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F2C2E
	add r0, sp, #12
	movs r1, #3
	bl sub_08309DE4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2C2E
	ldr r1, [r5, #52]
	mov r9, r1
	mov r2, r9
	asrs r2, r2, #8
	mov ip, r2
	ldr r2, [sp, #12]
	ldr r1, [r2, #52]
	asrs r3, r1, #8
	mov r8, r3
	mov r6, ip
	subs r0, r6, r3
	cmp r0, #0
	bge .L082F2BFE
	negs r0, r0
.L082F2BFE:
	cmp r0, #38
	bgt .L082F2C2E
	cmp r9, r1
	bge .L082F2C14
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F2C2E
	b .L082F2C1E
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2C14:
	ldrb r7, [r7, #0]
	cmp r7, #1
	beq .L082F2C1E
	cmp ip, r8
	bne .L082F2C2E
.L082F2C1E:
	adds r0, r5, #0
	adds r0, #208
	str r2, [r0, #0]
	adds r0, r5, #0
	movs r1, #13
	bl sub_082F1CC0
	b .L082F2ED0
.L082F2C2E:
	adds r0, r5, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F2CCC
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F2CCC
.L082F2C4C:
	ldr r1, [pc, #60]
	adds r1, r2, r1
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2C6E
	ldr r0, [pc, #48]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L082F2C6E
	adds r0, r5, #0
	movs r1, #9
	bl sub_082F1CC0
.L082F2C6E:
	ldr r1, [pc, #28]
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r1
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2C94
	adds r0, r5, #0
	movs r1, #3
	bl sub_082F1CC0
	b .L082F2ED0
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
.L082F2C94:
	ldr r0, [pc, #120]
	adds r0, r2, r0
	ldrh r1, [r0, #0]
	movs r0, #48
	ands r0, r1
	cmp r0, #0
	beq .L082F2CB2
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	bne .L082F2CB2
	adds r0, r5, #0
	movs r1, #2
	bl sub_082F1CC0
.L082F2CB2:
	ldr r0, [pc, #92]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2CCC
	adds r0, r5, #0
	movs r1, #7
	bl sub_082F1CC0
.L082F2CCC:
	ldr r0, [r5, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L082F2CDC
	b .L082F2E5A
.L082F2CDC:
	ldr r3, [pc, #48]
	ldrb r6, [r5, #0]
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L082F2D5E
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F2D14
	movs r0, #0
	strh r2, [r5, #16]
	adds r1, r5, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #51
	bl sub_08000680
	b .L082F2E1A
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2D14:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F2D34
	movs r0, #1
	strh r2, [r5, #16]
	adds r1, r5, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #50
	bl sub_08000680
	b .L082F2E1A
.L082F2D34:
	movs r0, #3
	strh r0, [r5, #16]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F2D50
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #85
	bl sub_08000680
	b .L082F2E1A
.L082F2D50:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #84
	bl sub_08000680
	b .L082F2E1A
.L082F2D5E:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L082F2DBE
	movs r0, #2
	strh r0, [r5, #16]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F2D88
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	b .L082F2DA2
.L082F2D88:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F2D98
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
	b .L082F2DB0
.L082F2D98:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F2DB0
.L082F2DA2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #53
	bl sub_08000680
	b .L082F2E1A
.L082F2DB0:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #52
	bl sub_08000680
	b .L082F2E1A
.L082F2DBE:
	strh r0, [r5, #16]
	ldrb r6, [r5, #0]
	lsls r0, r6, #1
	adds r0, r0, r3
	ldrh r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F2DDA
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	b .L082F2E00
.L082F2DDA:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F2DF6
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #48
	bl sub_08000680
	b .L082F2E1A
.L082F2DF6:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F2E0E
.L082F2E00:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #49
	bl sub_08000680
	b .L082F2E1A
.L082F2E0E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #48
	bl sub_08000680
.L082F2E1A:
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2E52
.L082F2E4C:
	movs r0, #0
	str r0, [r5, #64]
	b .L082F2E5A
.L082F2E52:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F2E5A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F2E80
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F2E98
.L082F2E80:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2E90
	str r4, [r5, #68]
	b .L082F2E98
.L082F2E90:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F2E98:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F2EB6
	strh r0, [r5, #14]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB99C
.L082F2EB6:
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F2ED0
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F2ED0:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F2EE0
	.thumb_func
sub_082F2EE0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	adds r7, r0, #0
	ldrb r0, [r7, #8]
	cmp r0, #2
	beq .L082F2F00
	ldrb r0, [r7, #7]
	strb r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
.L082F2F00:
	adds r0, r7, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082F2F18
	ldr r0, [pc, #4]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	b .L082F2F1E
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2F18:
	ldr r0, [pc, #72]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
.L082F2F1E:
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L082F2F30
	movs r0, #1
.L082F2F30:
	strh r0, [r7, #16]
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2FF0
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F2F76
	ldr r0, [pc, #28]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2F68
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #47
	bl sub_08000680
	b .L082F2FA8
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2F68:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #45
	bl sub_08000680
	b .L082F2FA8
.L082F2F76:
	ldr r0, [pc, #32]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2F9C
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #46
	bl sub_08000680
	b .L082F2FA8
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2F9C:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #44
	bl sub_08000680
.L082F2FA8:
	mov r8, r4
	ldr r0, [pc, #60]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2FCA
	ldr r0, [r7, #96]
	bl sub_082FB264
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2FCA
	b .L082F30F4
.L082F2FCA:
	ldr r0, [pc, #32]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F2FDE
	b .L082F3156
.L082F2FDE:
	adds r0, r7, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F3156
	lsrs r4, r3, #20
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F2FF0:
	ldr r0, [pc, #48]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3036
	ldr r0, [r7, #96]
	bl sub_082FB274
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3036
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F3028
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #43
	bl sub_08000680
	b .L082F3056
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3028:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #42
	bl sub_08000680
	b .L082F3056
.L082F3036:
	ldrb r4, [r6, #0]
	cmp r4, #1
	bne .L082F304A
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #40
	bl sub_08000680
	b .L082F3056
.L082F304A:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #41
	bl sub_08000680
.L082F3056:
	mov r8, r4
	ldr r0, [pc, #72]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F30E2
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F30C2
	add r0, sp, #12
	movs r1, #3
	bl sub_08309DE4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F30C2
	ldr r3, [r7, #52]
	asrs r5, r3, #8
	ldr r2, [sp, #12]
	ldr r1, [r2, #52]
	asrs r4, r1, #8
	subs r0, r5, r4
	cmp r0, #0
	bge .L082F3094
	negs r0, r0
.L082F3094:
	cmp r0, #38
	bgt .L082F30C2
	cmp r3, r1
	bge .L082F30A8
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F30C2
	b .L082F30B2
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F30A8:
	ldrb r0, [r6, #0]
	cmp r0, #1
	beq .L082F30B2
	cmp r5, r4
	bne .L082F30C2
.L082F30B2:
	adds r0, r7, #0
	adds r0, #208
	str r2, [r0, #0]
	adds r0, r7, #0
	movs r1, #13
	bl sub_082F1CC0
	b .L082F3284
.L082F30C2:
	adds r0, r7, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F30E2
	ldr r0, [r7, #96]
	bl sub_082FB274
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F30E2
	adds r0, r7, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F30E2:
	ldr r4, [pc, #28]
	ldrb r1, [r7, #0]
	lsls r2, r1, #1
	adds r1, r2, r4
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3104
.L082F30F4:
	adds r0, r7, #0
	movs r1, #3
	bl sub_082F1CC0
	b .L082F3284
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
.L082F3104:
	ldr r1, [pc, #240]
	adds r1, r2, r1
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L082F311A
	adds r0, r7, #0
	movs r1, #6
	bl sub_082F1CC0
.L082F311A:
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r4
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3132
	adds r0, r7, #0
	movs r1, #7
	bl sub_082F1CC0
.L082F3132:
	ldrb r0, [r7, #0]
	lsls r2, r0, #1
	adds r1, r2, r4
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3156
	ldr r0, [pc, #180]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L082F3156
	adds r0, r7, #0
	movs r1, #9
	bl sub_082F1CC0
.L082F3156:
	mov r0, r8
	bl sub_08000704
	ldr r1, [pc, #152]
	mov r9, r1
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	add r1, r9
	movs r4, #16
	mov sl, r4
	mov r0, sl
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3196
	movs r0, #0
	strb r0, [r6, #0]
	ldr r5, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F3196:
	ldrb r0, [r7, #0]
	lsls r1, r0, #1
	add r1, r9
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F31CC
	movs r0, #1
	strb r0, [r6, #0]
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F31CC:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	ldr r2, [r7, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, sl
	str r4, [sp, #4]
	movs r4, #8
	negs r4, r4
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3200
	movs r0, #0
	str r0, [r7, #64]
	b .L082F3208
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
.L082F3200:
	ldr r0, [r7, #52]
	ldr r1, [r7, #64]
	adds r0, r0, r1
	str r0, [r7, #52]
.L082F3208:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F322E
	adds r0, r7, #0
	adds r0, #52
	adds r1, r7, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r7, #68]
	b .L082F3246
.L082F322E:
	adds r0, r7, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F323E
	str r4, [r7, #68]
	b .L082F3246
.L082F323E:
	adds r0, r7, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F3246:
	adds r0, r7, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L082F326A
	adds r0, r7, #0
	movs r1, #1
	bl sub_082F1CC0
	strh r4, [r7, #14]
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r7, #96]
	bl sub_082FB99C
.L082F326A:
	adds r0, r7, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F3284
	ldr r0, [r7, #96]
	bl sub_082FB99C
	adds r0, r7, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F3284:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F3294
	.thumb_func
sub_082F3294:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082F32B0
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F32B0:
	adds r0, r5, #0
	adds r0, #48
	adds r7, r0, #0
	ldrb r1, [r7, #0]
	cmp r1, #1
	bne .L082F32CA
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #86
	bl sub_08000680
	b .L082F32D6
.L082F32CA:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #87
	bl sub_08000680
.L082F32D6:
	mov r8, r4
	mov r0, r8
	bl sub_08000704
	ldr r4, [pc, #28]
	ldrb r2, [r5, #0]
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq .L082F3300
	adds r0, r5, #0
	movs r1, #3
	bl sub_082F1CC0
	b .L082F349C
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
.L082F3300:
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	beq .L082F3310
	adds r0, r5, #0
	movs r1, #7
	bl sub_082F1CC0
.L082F3310:
	ldrb r0, [r5, #0]
	lsls r2, r0, #1
	adds r1, r2, r4
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3334
	ldr r0, [pc, #92]
	adds r0, r2, r0
	ldrh r0, [r0, #0]
	cmp r0, #0
	beq .L082F3334
	adds r0, r5, #0
	movs r1, #9
	bl sub_082F1CC0
.L082F3334:
	ldr r0, [pc, #76]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F33B8
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F33A2
	add r0, sp, #12
	movs r1, #3
	bl sub_08309DE4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F33A2
	ldr r3, [r5, #52]
	asrs r6, r3, #8
	ldr r2, [sp, #12]
	ldr r1, [r2, #52]
	asrs r4, r1, #8
	subs r0, r6, r4
	cmp r0, #0
	bge .L082F3370
	negs r0, r0
.L082F3370:
	cmp r0, #38
	bgt .L082F33A2
	cmp r3, r1
	bge .L082F3388
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F33A2
	b .L082F3392
	adds r4, #220
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
.L082F3388:
	ldrb r7, [r7, #0]
	cmp r7, #1
	beq .L082F3392
	cmp r6, r4
	bne .L082F33A2
.L082F3392:
	adds r0, r5, #0
	adds r0, #208
	str r2, [r0, #0]
	adds r0, r5, #0
	movs r1, #13
	bl sub_082F1CC0
	b .L082F349C
.L082F33A2:
	adds r0, r5, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F33B8
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F33B8:
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F33EA
	movs r0, #0
	str r0, [r5, #64]
	b .L082F33F2
.L082F33EA:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F33F2:
	ldr r0, [r5, #64]
	cmp r0, #0
	bne .L082F3420
	ldr r0, [pc, #24]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3418
	adds r0, r5, #0
	movs r1, #2
	bl sub_082F1CC0
	b .L082F3420
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3418:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F3420:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F3446
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F345E
.L082F3446:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3456
	str r4, [r5, #68]
	b .L082F345E
.L082F3456:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F345E:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L082F3482
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	strh r4, [r5, #14]
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB99C
.L082F3482:
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F349C
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F349C:
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F34A8
	.thumb_func
sub_082F34A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #8]
	cmp r0, #3
	beq .L082F34DE
	ldrb r0, [r7, #7]
	strb r0, [r7, #8]
	ldrh r0, [r7, #14]
	cmp r0, #0
	bne .L082F34CA
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
.L082F34CA:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r7, #0]
	cmp r1, r0
	bne .L082F34DE
	movs r0, #15
	bl sub_083189D0
.L082F34DE:
	adds r0, r7, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F34FC
	strh r0, [r7, #14]
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r7, #96]
	bl sub_082FB99C
.L082F34FC:
	ldrh r2, [r7, #14]
	cmp r2, #1
	bne .L082F353A
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F351A
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082F3526
.L082F351A:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082F3526:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L082F3536
	b .L082F375E
.L082F3536:
	strh r0, [r7, #14]
	b .L082F375E
.L082F353A:
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L082F3624
	ldr r1, [r7, #64]
	cmp r1, #0
	bne .L082F3574
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3566
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #25
	bl sub_08000680
	b .L082F35D8
.L082F3566:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #24
	bl sub_08000680
	b .L082F35D8
.L082F3574:
	adds r2, r1, #0
	cmp r1, #0
	bge .L082F357C
	negs r2, r1
.L082F357C:
	ldr r0, [pc, #24]
	cmp r2, r0
	bgt .L082F35A6
	adds r0, r1, #0
	bl sub_08317090
	cmp r0, #1
	bne .L082F359C
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #25
	b .L082F35B8
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
.L082F359C:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #24
	b .L082F35CC
.L082F35A6:
	adds r0, r1, #0
	bl sub_08317090
	cmp r0, #1
	bne .L082F35C4
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #19
.L082F35B8:
	bl sub_08000680
	adds r0, r7, #0
	adds r0, #48
	strb r5, [r0, #0]
	b .L082F35D8
.L082F35C4:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #18
.L082F35CC:
	bl sub_08000680
	adds r1, r7, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
.L082F35D8:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [pc, #136]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F35FE
	ldrh r0, [r7, #18]
	cmp r0, #1
	bne .L082F35FE
	adds r0, r7, #0
	movs r1, #8
	bl sub_082F1CC0
.L082F35FE:
	ldr r0, [pc, #108]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3624
	adds r0, r7, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F3624
	adds r0, r4, #0
	bl sub_080006AC
.L082F3624:
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L082F3634
	b .L082F375E
.L082F3634:
	ldr r0, [pc, #52]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L082F36BA
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F3670
	movs r0, #0
	strh r2, [r7, #16]
	adds r1, r7, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #69
	bl sub_08000680
	b .L082F3758
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3670:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F3690
	movs r0, #1
	strh r2, [r7, #16]
	adds r1, r7, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #68
	bl sub_08000680
	b .L082F3758
.L082F3690:
	movs r0, #3
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F36AC
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #75
	bl sub_08000680
	b .L082F3758
.L082F36AC:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #74
	bl sub_08000680
	b .L082F3758
.L082F36BA:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L082F3732
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F36E8
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	strb r1, [r0, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #71
	bl sub_08000680
	b .L082F3758
.L082F36E8:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F3708
	movs r0, #2
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	strb r2, [r0, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #70
	bl sub_08000680
	b .L082F3758
.L082F3708:
	movs r0, #4
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3724
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #73
	bl sub_08000680
	b .L082F3758
.L082F3724:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #72
	bl sub_08000680
	b .L082F3758
.L082F3732:
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F374C
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #67
	bl sub_08000680
	b .L082F3758
.L082F374C:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #66
	bl sub_08000680
.L082F3758:
	adds r0, r4, #0
	bl sub_08000704
.L082F375E:
	ldr r0, [pc, #184]
	mov r8, r0
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	add r1, r8
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3790
	ldr r5, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F3790:
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	add r1, r8
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F37C2
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F37C2:
	ldr r1, [r7, #68]
	movs r0, #1
	movs r2, #64
	bl sub_083170A0
	adds r2, r0, #0
	str r2, [r7, #68]
	ldrb r0, [r7, #0]
	lsls r1, r0, #1
	add r1, r8
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L082F37F2
	ldr r0, [pc, #56]
	cmp r2, r0
	ble .L082F37F2
	movs r0, #1
	adds r1, r2, #0
	movs r2, #48
	bl sub_083170A0
	str r0, [r7, #68]
.L082F37F2:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	ldr r2, [r7, #68]
	movs r3, #4
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #4
	str r4, [sp, #4]
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3820
	movs r0, #0
	str r0, [r7, #68]
	b .L082F3828
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
	.2byte 0xf880 @ .raw
	.2byte 0xffff @ .raw
.L082F3820:
	ldr r0, [r7, #56]
	ldr r1, [r7, #68]
	adds r0, r0, r1
	str r0, [r7, #56]
.L082F3828:
	ldr r0, [r7, #68]
	bl sub_08317090
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq .L082F383E
	adds r0, r7, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F383E:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	ldr r2, [r7, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3866
	movs r0, #0
	str r0, [r7, #64]
	b .L082F386E
.L082F3866:
	ldr r0, [r7, #52]
	ldr r1, [r7, #64]
	adds r0, r0, r1
	str r0, [r7, #52]
.L082F386E:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F387C
	.thumb_func
sub_082F387C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #8]
	cmp r0, #5
	beq .L082F389E
	ldrb r0, [r7, #7]
	strb r0, [r7, #8]
	ldrh r0, [r7, #14]
	cmp r0, #0
	bne .L082F389E
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
.L082F389E:
	ldrh r1, [r7, #14]
	cmp r1, #1
	bne .L082F38DC
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F38BC
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082F38C8
.L082F38BC:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082F38C8:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L082F38D8
	b .L082F3AFE
.L082F38D8:
	strh r0, [r7, #14]
	b .L082F3AFE
.L082F38DC:
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r5, #0
	bne .L082F39C4
	ldr r1, [r7, #64]
	cmp r1, #0
	bne .L082F3916
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3908
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	b .L082F3978
.L082F3908:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
	b .L082F3978
.L082F3916:
	adds r2, r1, #0
	cmp r1, #0
	bge .L082F391E
	negs r2, r1
.L082F391E:
	ldr r0, [pc, #24]
	cmp r2, r0
	bgt .L082F3946
	adds r0, r1, #0
	bl sub_08317090
	cmp r0, #1
	bne .L082F393C
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #21
	b .L082F3958
	lsls r7, r7, #7
	movs r0, r0
.L082F393C:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #20
	b .L082F396C
.L082F3946:
	adds r0, r1, #0
	bl sub_08317090
	cmp r0, #1
	bne .L082F3964
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
.L082F3958:
	bl sub_08000680
	adds r0, r7, #0
	adds r0, #48
	strb r5, [r0, #0]
	b .L082F3978
.L082F3964:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
.L082F396C:
	bl sub_08000680
	adds r1, r7, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
.L082F3978:
	adds r0, r4, #0
	bl sub_080006C4
	ldr r0, [pc, #136]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F399E
	ldrh r3, [r7, #18]
	cmp r3, #1
	bne .L082F399E
	adds r0, r7, #0
	movs r1, #8
	bl sub_082F1CC0
.L082F399E:
	ldr r0, [pc, #108]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F39C4
	adds r0, r7, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F39C4
	adds r0, r4, #0
	bl sub_080006AC
.L082F39C4:
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	beq .L082F39D4
	b .L082F3AFE
.L082F39D4:
	ldr r0, [pc, #52]
	ldrb r3, [r7, #0]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r1, [r1, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L082F3A5A
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F3A10
	movs r0, #0
	strh r2, [r7, #16]
	adds r1, r7, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #59
	bl sub_08000680
	b .L082F3AF8
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3A10:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F3A30
	movs r0, #1
	strh r2, [r7, #16]
	adds r1, r7, #0
	adds r1, #48
	strb r0, [r1, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #58
	bl sub_08000680
	b .L082F3AF8
.L082F3A30:
	movs r0, #3
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3A4C
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #65
	bl sub_08000680
	b .L082F3AF8
.L082F3A4C:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #64
	bl sub_08000680
	b .L082F3AF8
.L082F3A5A:
	movs r0, #128
	ands r0, r1
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L082F3AD2
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L082F3A88
	movs r1, #0
	movs r0, #2
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	strb r1, [r0, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #61
	bl sub_08000680
	b .L082F3AF8
.L082F3A88:
	movs r0, #32
	ands r0, r1
	cmp r0, #0
	beq .L082F3AA8
	movs r0, #2
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	strb r2, [r0, #0]
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #60
	bl sub_08000680
	b .L082F3AF8
.L082F3AA8:
	movs r0, #4
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3AC4
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #63
	bl sub_08000680
	b .L082F3AF8
.L082F3AC4:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #62
	bl sub_08000680
	b .L082F3AF8
.L082F3AD2:
	strh r0, [r7, #16]
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3AEC
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #57
	bl sub_08000680
	b .L082F3AF8
.L082F3AEC:
	adds r4, r7, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #56
	bl sub_08000680
.L082F3AF8:
	adds r0, r4, #0
	bl sub_08000704
.L082F3AFE:
	ldr r6, [pc, #140]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #16
	mov r8, r0
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3B30
	ldr r5, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F3B30:
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r6
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3B62
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F3B62:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	ldr r2, [r7, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, r8
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3B90
	movs r0, #0
	str r0, [r7, #64]
	b .L082F3B98
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3B90:
	ldr r0, [r7, #52]
	ldr r1, [r7, #64]
	adds r0, r0, r1
	str r0, [r7, #52]
.L082F3B98:
	ldr r1, [r7, #68]
	movs r3, #128
	lsls r3, r3, #4
	movs r0, #1
	movs r2, #64
	bl sub_083170B8
	str r0, [r7, #68]
	ldr r1, [r7, #56]
	adds r1, r1, r0
	str r1, [r7, #56]
	movs r4, #0
	ldr r0, [r7, #52]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3BCE
	adds r0, r7, #0
	adds r0, #52
	adds r1, r7, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	b .L082F3BE2
.L082F3BCE:
	adds r0, r7, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3BDC
	movs r4, #1
.L082F3BDC:
	cmp r4, #0
	bne .L082F3BE2
	b .L082F3CEC
.L082F3BE2:
	adds r0, r7, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F3BFE
	ldr r0, [r7, #96]
	bl sub_082FB99C
	adds r0, r7, #0
	movs r1, #12
	bl sub_082F1CC0
	b .L082F3D0A
.L082F3BFE:
	ldr r0, [r7, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F3C6A
	ldr r0, [r7, #56]
	asrs r0, r0, #8
	movs r2, #34
	ldrsh r1, [r7, r2]
	subs r0, r0, r1
	ldr r1, [pc, #68]
	cmp r0, r1
	ble .L082F3C60
	ldr r0, [r7, #96]
	bl sub_082FB99C
	movs r1, #0
	str r1, [sp, #0]
	add r0, sp, #4
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #32
	movs r3, #2
	bl sub_08306DD4
	adds r0, r7, #0
	movs r1, #10
	bl sub_082F1CC0
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3CE8
	movs r0, #45
	bl sub_083189D0
	b .L082F3CE8
	lsls r3, r5, #4
	movs r0, r0
.L082F3C60:
	adds r0, r7, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F3CE8
.L082F3C6A:
	ldr r0, [r7, #56]
	asrs r0, r0, #8
	movs r3, #34
	ldrsh r1, [r7, r3]
	subs r0, r0, r1
	ldr r1, [pc, #68]
	cmp r0, r1
	ble .L082F3CC0
	ldr r0, [r7, #96]
	bl sub_082FB99C
	adds r0, r7, #0
	movs r1, #10
	bl sub_082F1CC0
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3CA0
	movs r0, #45
	bl sub_083189D0
.L082F3CA0:
	movs r0, #0
	str r0, [sp, #0]
	add r1, sp, #4
	strb r0, [r1, #0]
	add r1, sp, #8
	strb r0, [r1, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #32
	movs r3, #2
	bl sub_08306DD4
	b .L082F3CE8
	movs r0, r0
	lsls r3, r5, #4
	movs r0, r0
.L082F3CC0:
	ldr r0, [pc, #24]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3CE0
	adds r0, r7, #0
	movs r1, #7
	bl sub_082F1CC0
	b .L082F3CE8
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3CE0:
	adds r0, r7, #0
	movs r1, #4
	bl sub_082F1CC0
.L082F3CE8:
	movs r0, #0
	str r0, [r7, #68]
.L082F3CEC:
	adds r0, r7, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F3D0A
	strh r0, [r7, #14]
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r7, #96]
	bl sub_082FB99C
.L082F3D0A:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F3D18
	.thumb_func
sub_082F3D18:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082F3D40
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	ldrh r0, [r5, #14]
	cmp r0, #0
	beq .L082F3D38
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F3EAC
.L082F3D38:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F3D40:
	ldr r1, [r5, #64]
	cmp r1, #0
	bge .L082F3D48
	negs r1, r1
.L082F3D48:
	ldr r0, [pc, #28]
	cmp r1, r0
	bgt .L082F3D7A
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3D6C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #23
	bl sub_08000680
	b .L082F3D9E
	movs r0, r0
	lsls r7, r7, #7
	movs r0, r0
.L082F3D6C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #22
	bl sub_08000680
	b .L082F3D9E
.L082F3D7A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3D92
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #17
	bl sub_08000680
	b .L082F3D9E
.L082F3D92:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #16
	bl sub_08000680
.L082F3D9E:
	adds r7, r4, #0
	adds r0, r7, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F3DB4
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F3DB4:
	ldr r0, [pc, #56]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3DCE
	adds r0, r5, #0
	movs r1, #2
	bl sub_082F1CC0
.L082F3DCE:
	ldr r0, [pc, #36]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	lsls r0, r0, #16
	lsrs r6, r0, #16
	cmp r6, #0
	beq .L082F3DF8
	adds r0, r5, #0
	movs r1, #3
	bl sub_082F1CC0
	b .L082F3EAC
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
.L082F3DF8:
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3E28
	str r6, [r5, #64]
	b .L082F3E30
.L082F3E28:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F3E30:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F3E56
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F3E6E
.L082F3E56:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F3E66
	str r4, [r5, #68]
	b .L082F3E6E
.L082F3E66:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F3E6E:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L082F3E92
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	strh r4, [r5, #14]
	adds r0, r7, #0
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB99C
.L082F3E92:
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F3EAC
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F3EAC:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F3EB4
	.thumb_func
sub_082F3EB4:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082F3ECC
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F3ECC:
	ldrh r0, [r5, #12]
	cmp r0, #0
	bne .L082F3F06
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3EEA
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082F3EF6
.L082F3EEA:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082F3EF6:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F3F06
	movs r0, #1
	strh r0, [r5, #12]
.L082F3F06:
	ldrh r2, [r5, #12]
	cmp r2, #1
	bne .L082F3FF2
	ldr r3, [pc, #80]
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3F26
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
.L082F3F26:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r3
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3F3C
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
.L082F3F3C:
	ldr r0, [r5, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F3FB2
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3F64
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082F3F70
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3F64:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082F3F70:
	adds r0, r4, #0
	movs r1, #3
	bl sub_0800065C
	ldr r2, [pc, #96]
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L082F3F8E
	movs r0, #2
	strh r0, [r5, #12]
.L082F3F8E:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F3FB2
	adds r0, r5, #0
	bl sub_082FB73C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F3FB2
	adds r0, r4, #0
	bl sub_080006AC
.L082F3FB2:
	ldr r0, [r5, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F3FF2
	movs r0, #0
	strh r0, [r5, #16]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F3FE0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #55
	bl sub_08000680
	b .L082F3FEC
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F3FE0:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #54
	bl sub_08000680
.L082F3FEC:
	adds r0, r4, #0
	bl sub_08000704
.L082F3FF2:
	ldrh r1, [r5, #12]
	cmp r1, #2
	bne .L082F4000
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F4000:
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4032
	movs r0, #0
	str r0, [r5, #64]
	b .L082F403A
.L082F4032:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F403A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F4060
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F4078
.L082F4060:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4070
	str r4, [r5, #68]
	b .L082F4078
.L082F4070:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F4078:
	adds r0, r5, #0
	bl sub_082F2860
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F4098
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F4098:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F40A0
	.thumb_func
sub_082F40A0:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r7, r0, #0
	ldrb r0, [r7, #8]
	cmp r0, #8
	beq .L082F40D2
	ldrb r0, [r7, #7]
	strb r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #100
	bl sub_080006AC
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r7, #0]
	cmp r1, r0
	bne .L082F40D2
	movs r0, #14
	bl sub_083189D0
	strh r0, [r7, #40]
.L082F40D2:
	ldr r0, [pc, #152]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	adds r4, r7, #0
	adds r4, #100
	cmp r0, #0
	beq .L082F4104
	adds r1, r7, #0
	adds r1, #48
	ldrb r0, [r1, #0]
	cmp r0, #1
	beq .L082F4104
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006AC
.L082F4104:
	ldr r0, [pc, #100]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F4132
	adds r1, r7, #0
	adds r1, #48
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082F4132
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006AC
.L082F4132:
	adds r0, r4, #0
	bl sub_08000790
	cmp r0, #4
	beq .L082F4146
	adds r0, r4, #0
	bl sub_08000790
	cmp r0, #5
	bne .L082F417A
.L082F4146:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F41D0
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F4170
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F41D0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F4170:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	b .L082F41D0
.L082F417A:
	ldr r0, [pc, #36]
	ldrb r2, [r7, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F41AE
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F41A4
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F41CA
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F41A4:
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	b .L082F41CA
.L082F41AE:
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F41C2
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F41CA
.L082F41C2:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F41CA:
	adds r0, r4, #0
	bl sub_08000704
.L082F41D0:
	ldr r6, [pc, #164]
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L082F41EA
	adds r0, r7, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F41EA:
	ldrb r0, [r7, #0]
	lsls r1, r0, #1
	adds r1, r1, r6
	movs r2, #16
	mov r8, r2
	mov r0, r8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F421C
	ldr r5, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	movs r0, #1
	adds r1, r5, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F421C:
	ldrb r4, [r7, #0]
	lsls r1, r4, #1
	adds r1, r1, r6
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F424E
	movs r5, #1
	negs r5, r5
	ldr r6, [r7, #64]
	adds r0, r7, #0
	bl sub_082F29E4
	adds r4, r0, #0
	adds r0, r7, #0
	bl sub_082F29F4
	adds r3, r0, #0
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl sub_083170B8
	str r0, [r7, #64]
.L082F424E:
	ldr r0, [r7, #52]
	ldr r1, [r7, #56]
	ldr r2, [r7, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	mov r4, r8
	str r4, [sp, #4]
	movs r4, #4
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F427C
	movs r0, #0
	str r0, [r7, #64]
	b .L082F4284
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F427C:
	ldr r0, [r7, #52]
	ldr r1, [r7, #64]
	adds r0, r0, r1
	str r0, [r7, #52]
.L082F4284:
	ldr r1, [r7, #68]
	movs r3, #128
	lsls r3, r3, #2
	movs r0, #1
	movs r2, #16
	bl sub_083170B8
	adds r2, r0, #0
	str r2, [r7, #68]
	ldr r0, [r7, #56]
	adds r4, r0, r2
	str r4, [r7, #56]
	cmp r2, #0
	ble .L082F42FA
	movs r5, #0
	ldr r0, [r7, #52]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F42C2
	adds r0, r7, #0
	adds r0, #52
	adds r1, r7, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	b .L082F42D4
.L082F42C2:
	adds r0, r7, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F42D0
	movs r5, #1
.L082F42D0:
	cmp r5, #0
	beq .L082F431A
.L082F42D4:
	adds r0, r7, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F42F0
	ldr r0, [r7, #96]
	bl sub_082FB99C
	adds r0, r7, #0
	movs r1, #12
	bl sub_082F1CC0
	b .L082F4362
.L082F42F0:
	adds r0, r7, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F4316
.L082F42FA:
	ldr r0, [r7, #52]
	movs r3, #8
	negs r3, r3
	movs r1, #32
	negs r1, r1
	str r1, [sp, #0]
	movs r1, #8
	str r1, [sp, #4]
	adds r1, r4, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F431A
.L082F4316:
	movs r0, #0
	str r0, [r7, #68]
.L082F431A:
	adds r0, r7, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F4332
	strh r0, [r7, #14]
	adds r0, r7, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F4332:
	ldrh r0, [r7, #26]
	subs r0, #1
	strh r0, [r7, #26]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082F4346
	adds r0, r7, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F4346:
	ldrb r2, [r7, #7]
	cmp r2, #8
	beq .L082F4362
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r7, #0]
	cmp r4, r0
	bne .L082F4362
	movs r1, #40
	ldrsh r0, [r7, r1]
	bl sub_08319148
.L082F4362:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F4370
	.thumb_func
sub_082F4370:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #9
	beq .L082F4388
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F4388:
	ldr r0, [r5, #64]
	movs r1, #64
	bl sub_083170E8
	adds r2, r0, #0
	str r2, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F43BA
	movs r0, #0
	str r0, [r5, #64]
	b .L082F43C2
.L082F43BA:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F43C2:
	ldr r0, [pc, #48]
	ldrb r2, [r5, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #128
	lsls r0, r0, #2
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F43DC
	ldrh r0, [r5, #30]
	adds r0, #1
	strh r0, [r5, #30]
.L082F43DC:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F43F8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #97
	bl sub_08000680
	b .L082F4404
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F43F8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #96
	bl sub_08000680
.L082F4404:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L082F441E
	strh r0, [r5, #30]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F447A
.L082F441E:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #8
	bne .L082F447A
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082F447A
	ldr r4, [pc, #120]
	ldrb r1, [r5, #0]
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r1, [r0, #0]
	subs r1, #1
	strh r1, [r0, #0]
	movs r2, #30
	ldrsh r1, [r5, r2]
	movs r0, #13
	muls r1, r0
	movs r0, #128
	lsls r0, r0, #3
	adds r1, r1, r0
	negs r1, r1
	adds r0, r5, #0
	bl sub_082F8DEC
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne .L082F447A
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, #0
	bne .L082F447A
	movs r0, #0
	movs r1, #17
	movs r2, #4
	movs r3, #3
	bl sub_080049D4
.L082F447A:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F448A
	strh r0, [r5, #14]
.L082F448A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F44B0
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082F44C4
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
.L082F44B0:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F44C4
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F44C4:
	adds r0, r5, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L082F44DE
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F44DE:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F44E8
	.thumb_func
sub_082F44E8:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #10
	beq .L082F4500
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F4500:
	ldrh r0, [r5, #20]
	cmp r0, #0
	bne .L082F4544
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F451E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #89
	bl sub_08000680
	b .L082F452A
.L082F451E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #88
	bl sub_08000680
.L082F452A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4544
	movs r0, #2
	strh r0, [r5, #20]
	movs r0, #3
	strh r0, [r5, #32]
	adds r0, r4, #0
	bl sub_080006AC
.L082F4544:
	ldrh r1, [r5, #20]
	cmp r1, #2
	beq .L082F454C
	b .L082F465E
.L082F454C:
	ldr r4, [pc, #156]
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r4
	movs r7, #16
	adds r0, r7, #0
	ldrh r1, [r1, #0]
	ands r0, r1
	adds r6, r5, #0
	adds r6, #48
	cmp r0, #0
	beq .L082F4576
	movs r0, #0
	strb r0, [r6, #0]
	ldr r1, [r5, #64]
	movs r0, #1
	movs r2, #64
	movs r3, #64
	bl sub_083170B8
	str r0, [r5, #64]
.L082F4576:
	ldrb r0, [r5, #0]
	lsls r1, r0, #1
	adds r1, r1, r4
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F4598
	movs r0, #1
	strb r0, [r6, #0]
	subs r0, #2
	ldr r1, [r5, #64]
	movs r2, #64
	movs r3, #64
	bl sub_083170B8
	str r0, [r5, #64]
.L082F4598:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	str r7, [sp, #4]
	movs r4, #8
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F45BC
	movs r0, #0
	str r0, [r5, #64]
.L082F45BC:
	ldr r1, [r5, #52]
	ldr r0, [r5, #64]
	adds r1, r1, r0
	str r1, [r5, #52]
	movs r1, #64
	bl sub_083170E8
	str r0, [r5, #64]
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F45F0
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082F4604
	lsrs r4, r2, #20
	lsls r0, r0, #12
.L082F45F0:
	adds r0, r5, #0
	bl sub_08307AD0
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4604
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F1CC0
.L082F4604:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F4618
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #91
	bl sub_08000680
	b .L082F4624
.L082F4618:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #90
	bl sub_08000680
.L082F4624:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F465E
	ldrh r0, [r5, #32]
	subs r0, #1
	strh r0, [r5, #32]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L082F4658
	movs r0, #1
	strh r0, [r5, #20]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4658
	movs r0, #57
	bl sub_083189D0
.L082F4658:
	adds r0, r4, #0
	bl sub_080006AC
.L082F465E:
	ldrh r1, [r5, #20]
	cmp r1, #1
	bne .L082F46D8
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F467C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #99
	bl sub_08000680
	b .L082F4688
.L082F467C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #98
	bl sub_08000680
.L082F4688:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F46D8
	adds r1, r5, #0
	adds r1, #46
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F46D0
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F46C6
	ldr r0, [r5, #96]
	bl sub_082FB99C
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F1CC0
	b .L082F46D8
.L082F46C6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F46D8
.L082F46D0:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F46D8:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F46E8
	movs r0, #1
	strh r0, [r5, #14]
.L082F46E8:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F46F0
	.thumb_func
sub_082F46F0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #208
	ldr r6, [r0, #0]
	ldrb r0, [r4, #8]
	cmp r0, #13
	beq .L082F4768
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r5, r4, #0
	adds r5, #100
	adds r0, r5, #0
	bl sub_080006AC
	ldr r1, [r4, #52]
	ldr r0, [r6, #52]
	cmp r1, r0
	bge .L082F473C
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r6, #0
	bl sub_083073B8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4732
	adds r0, r5, #0
	movs r1, #30
	bl sub_08000680
	b .L082F4762
.L082F4732:
	adds r0, r5, #0
	movs r1, #29
	bl sub_08000680
	b .L082F4762
.L082F473C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r6, #0
	bl sub_083073B8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F475A
	adds r0, r5, #0
	movs r1, #28
	bl sub_08000680
	b .L082F4762
.L082F475A:
	adds r0, r5, #0
	movs r1, #31
	bl sub_08000680
.L082F4762:
	adds r0, r6, #0
	bl sub_083073C8
.L082F4768:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L082F4782
	str r0, [r4, #64]
	adds r0, r4, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F4782:
	adds r0, r4, #0
	bl sub_082F2860
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4792
	movs r0, #1
	strh r0, [r4, #14]
.L082F4792:
	adds r0, r4, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F47AC
	ldr r0, [r4, #96]
	bl sub_082FB99C
	adds r0, r4, #0
	movs r1, #12
	bl sub_082F1CC0
.L082F47AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F47B4
	.thumb_func
sub_082F47B4:
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_08306E28
	ldrb r0, [r5, #8]
	cmp r0, #12
	beq .L082F47E8
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB99C
	str r4, [r5, #64]
	movs r0, #0
	strh r4, [r5, #28]
	strh r4, [r5, #14]
	adds r1, r5, #0
	adds r1, #46
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
.L082F47E8:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F4800
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082F480C
.L082F4800:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082F480C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne .L082F4834
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F482C
	adds r0, r5, #0
	bl sub_082F483C
	strb r4, [r5, #1]
.L082F482C:
	adds r0, r5, #0
	movs r1, #11
	bl sub_082F1CC0
.L082F4834:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F483C
	.thumb_func
sub_082F483C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08306E28
	ldrb r0, [r5, #8]
	cmp r0, #11
	beq .L082F4860
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB99C
	strh r4, [r5, #38]
.L082F4860:
	movs r1, #38
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082F4904
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, #0
	bne .L082F4882
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082F488E
.L082F4882:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082F488E:
	adds r6, r4, #0
	adds r0, r6, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F492C
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F492C
	ldr r0, [pc, #68]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne .L082F48B6
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F48BE
.L082F48B6:
	str r1, [r5, #52]
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	str r0, [r5, #56]
.L082F48BE:
	movs r0, #1
	strh r0, [r5, #38]
	movs r0, #57
	bl sub_083189D0
	adds r4, r5, #0
	adds r4, #92
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L082F492C
	subs r0, #1
	strb r0, [r4, #0]
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F492C
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L082F48F4
	adds r0, r6, #0
	movs r1, #99
	bl sub_08000680
	b .L082F48FC
	cmp r0, #244
	lsls r0, r0, #12
	cmp r0, #248
	lsls r0, r0, #12
.L082F48F4:
	adds r0, r6, #0
	movs r1, #98
	bl sub_08000680
.L082F48FC:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F492C
.L082F4904:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F492C
	adds r1, r5, #0
	adds r1, #90
	movs r0, #255
	strh r0, [r1, #0]
	subs r1, #44
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
.L082F492C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F4934
	.thumb_func
sub_082F4934:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #14
	beq .L082F4952
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F4952:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F496A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #95
	bl sub_08000680
	b .L082F4976
.L082F496A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #94
	bl sub_08000680
.L082F4976:
	adds r6, r4, #0
	movs r0, #2
	add r1, sp, #12
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4A62
	ldr r0, [sp, #12]
	ldr r4, [r0, #64]
	movs r1, #1
	mov r9, r1
	cmp r4, #0
	bge .L082F499C
	movs r2, #16
	negs r2, r2
	mov r8, r2
	movs r7, #8
	b .L082F49A4
.L082F499C:
	movs r7, #8
	negs r7, r7
	mov r8, r7
	movs r7, #16
.L082F49A4:
	ldr r2, [r5, #52]
	asrs r0, r2, #8
	subs r0, #54
	movs r1, #197
	lsls r1, r1, #1
	cmp r0, r1
	bls .L082F49E2
	ldr r1, [r5, #56]
	adds r0, r2, #0
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F49D4
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #0
	bl sub_08000A70
	b .L082F49E2
.L082F49D4:
	movs r0, #0
	mov r9, r0
	ldr r0, [r5, #56]
	movs r1, #128
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r5, #56]
.L082F49E2:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #16
	negs r2, r2
	str r2, [sp, #0]
	str r7, [sp, #4]
	adds r2, #8
	str r2, [sp, #8]
	adds r2, r4, #0
	mov r3, r8
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4A28
	movs r4, #0
	adds r0, r6, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4A5C
	ldrh r1, [r5, #36]
	movs r2, #36
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082F4A1E
	subs r0, r1, #1
	strh r0, [r5, #36]
	b .L082F4A5C
.L082F4A1E:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082F1CC0
	b .L082F4A72
.L082F4A28:
	mov r7, r9
	cmp r7, #1
	bne .L082F4A56
	ldr r2, [r5, #56]
	asrs r3, r2, #8
	ldr r0, [sp, #12]
	ldr r1, [r0, #56]
	asrs r1, r1, #8
	adds r0, #82
	movs r7, #0
	ldrsh r0, [r0, r7]
	adds r1, r1, r0
	cmp r3, r1
	bge .L082F4A4C
	movs r1, #192
	lsls r1, r1, #2
	adds r0, r2, r1
	b .L082F4A54
.L082F4A4C:
	cmp r3, r1
	ble .L082F4A56
	ldr r7, [pc, #44]
	adds r0, r2, r7
.L082F4A54:
	str r0, [r5, #56]
.L082F4A56:
	adds r0, r6, #0
	bl sub_08000704
.L082F4A5C:
	ldr r0, [r5, #52]
	adds r0, r0, r4
	str r0, [r5, #52]
.L082F4A62:
	adds r0, r5, #0
	bl sub_082F2860
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4A72
	movs r0, #1
	strh r0, [r5, #14]
.L082F4A72:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE00

	.thumb
	.align 1, 0
	.global sub_082F4A84
	.thumb_func
sub_082F4A84:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r9, r0
	movs r2, #0
.L082F4A94:
	movs r0, #152
	mov r1, r9
	muls r1, r0
	ldr r0, [pc, #164]
	adds r1, r1, r0
	strb r2, [r1, #2]
	str r2, [r1, #52]
	strh r2, [r1, #48]
	strh r2, [r1, #50]
	str r2, [r1, #88]
	adds r0, r1, #0
	adds r0, #40
	strb r2, [r0, #0]
	movs r0, #0
	movs r3, #1
	add r3, r9
	mov sl, r3
	adds r3, r1, #0
	adds r3, #92
.L082F4ABA:
	stmia r3!, {r2}
	adds r0, #1
	cmp r0, #11
	bls .L082F4ABA
	adds r0, r1, #0
	adds r0, #41
	strb r2, [r0, #0]
	strh r2, [r1, #60]
	strh r2, [r1, #58]
	movs r3, #0
	movs r0, #46
	adds r0, r0, r1
	mov ip, r0
	adds r5, r1, #0
	adds r5, #36
	adds r7, r1, #0
	adds r7, #148
	adds r6, r1, #0
	adds r6, #144
	movs r0, #140
	adds r0, r0, r1
	mov r8, r0
	movs r4, #0
	adds r0, r1, #0
	adds r0, #62
.L082F4AEC:
	strh r4, [r0, #0]
	adds r0, #2
	adds r3, #1
	cmp r3, #11
	bls .L082F4AEC
	strh r2, [r1, #56]
	strh r2, [r1, #42]
	strh r2, [r1, #44]
	mov r3, ip
	strb r2, [r3, #0]
	strh r2, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #38]
	strb r2, [r5, #0]
	mov r0, r9
	strb r0, [r1, #0]
	strb r2, [r1, #2]
	strb r2, [r1, #4]
	str r2, [r7, #0]
	str r2, [r6, #0]
	strb r2, [r1, #1]
	mov r3, r8
	str r2, [r3, #0]
	strb r2, [r1, #3]
	strb r2, [r1, #14]
	str r2, [r1, #28]
	str r2, [r1, #20]
	strb r2, [r1, #15]
	str r2, [r1, #32]
	str r2, [r1, #24]
	strb r2, [r1, #16]
	mov r9, sl
	mov r0, r9
	cmp r0, #20
	bne .L082F4A94
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030028FC

	.thumb
	.align 1, 0
	.global sub_082F4B44
	.thumb_func
sub_082F4B44:
	push {r4, lr}
	adds r2, r0, #0
	movs r4, #1
	ldr r1, [pc, #20]
	ldr r0, [pc, #20]
	adds r3, r1, r0
.L082F4B50:
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L082F4B68
	strb r4, [r1, #2]
	str r1, [r2, #0]
	movs r0, #1
	b .L082F4B70
	movs r0, r0
	cmp r0, #252
	lsls r0, r0, #12
	lsrs r0, r1, #13
	movs r0, r0
.L082F4B68:
	adds r1, #152
	cmp r1, r3
	bls .L082F4B50
	movs r0, #0
.L082F4B70:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EE9C0
	.thumb_func
sub_082EE9C0:
	adds r2, r0, #0
	ldr r0, [pc, #16]
	ldr r1, [r2, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	ble .L082EE9D8
	adds r1, r2, #0
	adds r1, #48
	movs r0, #1
	b .L082EE9DE
	movs r5, #12
	lsls r0, r0, #12
.L082EE9D8:
	adds r1, r2, #0
	adds r1, #48
	movs r0, #0
.L082EE9DE:
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EE9E4
	.thumb_func
sub_082EE9E4:
	adds r2, r0, #0
	strb r1, [r2, #7]
	cmp r1, #1
	beq .L082EEA10
	cmp r1, #1
	bcc .L082EE9FA
	cmp r1, #2
	beq .L082EEA28
	cmp r1, #3
	beq .L082EEA34
	b .L082EEA3C
.L082EE9FA:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r0, #240
	strh r0, [r2, #26]
	movs r0, #30
	strh r0, [r2, #30]
	b .L082EEA1C
	.2byte 0xeb55 @ .raw
	lsrs r6, r5, #32
.L082EEA10:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r0, #0
	strh r0, [r2, #12]
.L082EEA1C:
	movs r0, #15
	strh r0, [r2, #28]
	b .L082EEA3C
	movs r0, r0
	.2byte 0xed45 @ .raw
	lsrs r6, r5, #32
.L082EEA28:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EEA3A
	.2byte 0xeffd @ .raw
	lsrs r6, r5, #32
.L082EEA34:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EEA3A:
	str r0, [r1, #0]
.L082EEA3C:
	bx lr
	.2byte 0x0000
	.4byte 0x082EF0B1

	.thumb
	.align 1, 0
	.global sub_082EEA44
	.thumb_func
sub_082EEA44:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #2
	bl sub_082F8A24
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #5]
	movs r0, #3
	strb r0, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r1, [r0, #0]
	movs r0, #82
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [pc, #60]
	mov r5, ip
	strh r0, [r5, #0]
	adds r0, r4, #0
	adds r0, #60
	movs r5, #50
	strb r5, [r0, #0]
	str r1, [r4, #68]
	str r1, [r4, #64]
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r0, r4, #0
	adds r0, #87
	strb r3, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r3, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EEAC6
	cmp r0, #1
	bgt .L082EEAB4
	cmp r0, #0
	beq .L082EEABE
	b .L082EEADE
	.2byte 0xfff0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EEAB4:
	cmp r0, #2
	beq .L082EEACE
	cmp r0, #3
	beq .L082EEAD6
	b .L082EEADE
.L082EEABE:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #20
	b .L082EEADC
.L082EEAC6:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #35
	b .L082EEADC
.L082EEACE:
	adds r0, r4, #0
	adds r0, #90
	strh r5, [r0, #0]
	b .L082EEADE
.L082EEAD6:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #65
.L082EEADC:
	strh r0, [r1, #0]
.L082EEADE:
	adds r2, r4, #0
	adds r2, #84
	movs r1, #0
	movs r0, #240
	strh r0, [r2, #0]
	strh r1, [r4, #14]
	strh r1, [r4, #10]
	movs r0, #15
	strh r0, [r4, #28]
	strh r1, [r4, #30]
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EEB18
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	movs r2, #6
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082EEB2C
	movs r0, r0
	subs r1, #224
	lsrs r5, r2, #32
.L082EEB18:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #48]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082EEB2C:
	strb r0, [r1, #0]
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EEB3C
	subs r1, #139
	strh r0, [r1, #0]
.L082EEB3C:
	movs r0, #0
	strb r0, [r4, #8]
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EE9E4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081539E0

	.thumb
	.align 1, 0
	.global sub_082EEB54
	.thumb_func
sub_082EEB54:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #52]
	mov r8, r0
	ldrb r0, [r5, #8]
	cmp r0, #0
	beq .L082EEB74
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EEB74:
	ldrh r0, [r5, #10]
	cmp r0, #0
	beq .L082EEB7C
	b .L082EEC88
.L082EEB7C:
	adds r0, r5, #0
	adds r0, #48
	adds r6, r0, #0
	ldrb r1, [r6, #0]
	cmp r1, #1
	bne .L082EEB9C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
	ldr r0, [pc, #0]
	b .L082EEBAC
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
.L082EEB9C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	movs r0, #128
	lsls r0, r0, #1
.L082EEBAC:
	str r0, [r5, #64]
	adds r7, r4, #0
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEBC6
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
.L082EEBC6:
	adds r0, r7, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEBF8
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	b .L082EEC00
.L082EEBF8:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEC00:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEC20
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEC2C
.L082EEC20:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	mov r2, r8
	str r2, [r5, #52]
.L082EEC2C:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EEC3C
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L082EEC4A
.L082EEC3C:
	movs r0, #180
	strh r0, [r5, #26]
	movs r0, #1
	strh r0, [r5, #10]
	adds r0, r7, #0
	bl sub_080006AC
.L082EEC4A:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEC6C
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	adds r0, #120
	cmp r1, r0
	ble .L082EECE6
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EECE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EEC6C:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r0, #120
	cmp r1, r0
	bge .L082EECE6
	movs r0, #0
	strb r0, [r6, #0]
	b .L082EECE6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EEC88:
	cmp r0, #1
	bne .L082EECE6
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EECA4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EECB0
.L082EECA4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EECB0:
	adds r7, r4, #0
	adds r0, r7, #0
	bl sub_08000704
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EECCE
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
.L082EECCE:
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EECDE
	subs r0, r1, #1
	strh r0, [r5, #26]
	b .L082EECE6
.L082EECDE:
	movs r1, #0
	movs r0, #240
	strh r0, [r5, #26]
	strh r1, [r5, #10]
.L082EECE6:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #1
	bne .L082EED08
	adds r0, r5, #0
	bl sub_082EE9C0
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EE9E4
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EED08
	adds r0, #1
	strh r0, [r5, #14]
.L082EED08:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #0
	beq .L082EED1A
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EED1A:
	ldrh r1, [r5, #30]
	movs r2, #30
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EED28
	subs r0, r1, #1
	b .L082EED34
.L082EED28:
	ldrh r0, [r5, #14]
	cmp r0, #0
	beq .L082EED32
	subs r0, #1
	strh r0, [r5, #14]
.L082EED32:
	movs r0, #30
.L082EED34:
	strh r0, [r5, #30]
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EED44
	.thumb_func
sub_082EED44:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r7, [r5, #52]
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EED5E
	movs r0, #1
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EED5E:
	ldrh r0, [r5, #12]
	cmp r0, #0
	beq .L082EED66
	b .L082EEE90
.L082EED66:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EED7E
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	b .L082EEFF2
.L082EED7E:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #36]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EED90
	negs r1, r1
.L082EED90:
	cmp r1, #39
	bgt .L082EEDAC
	movs r0, #1
	strh r0, [r5, #12]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEDAC:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEDD2
	ldrh r1, [r5, #14]
	lsls r0, r1, #2
	movs r2, #128
	lsls r2, r2, #2
	adds r0, r0, r2
	str r0, [r5, #64]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEDE8
.L082EEDD2:
	ldrh r1, [r5, #14]
	lsls r0, r1, #2
	ldr r1, [pc, #68]
	subs r1, r1, r0
	str r1, [r5, #64]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEDE8:
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEE20
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	b .L082EEE28
	movs r0, r0
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
.L082EEE20:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEE28:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEE48
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEE52
.L082EEE48:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	str r7, [r5, #52]
.L082EEE52:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEE74
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	adds r0, #120
	cmp r1, r0
	bgt .L082EEE6A
	b .L082EEFAE
.L082EEE6A:
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEE74:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	subs r0, #120
	cmp r1, r0
	blt .L082EEE86
	b .L082EEFAE
.L082EEE86:
	movs r0, #0
	strb r0, [r6, #0]
	b .L082EEFAE
	movs r5, #12
	lsls r0, r0, #12
.L082EEE90:
	cmp r0, #1
	bne .L082EEEEA
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEEAE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EEEBA
.L082EEEAE:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EEEBA:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EEFAE
	movs r0, #2
	strh r0, [r5, #12]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EEEDA
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEEE2
.L082EEEDA:
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEEE2:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EEFAE
.L082EEEEA:
	cmp r0, #2
	bne .L082EEFAE
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	bne .L082EEF24
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE778
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEF12
	strh r6, [r5, #12]
	b .L082EEF24
.L082EEF12:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EEF24
	adds r0, #1
	strh r0, [r5, #14]
.L082EEF24:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EEF40
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r5, #64]
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EEF4C
.L082EEF40:
	ldr r0, [pc, #52]
	str r0, [r5, #64]
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EEF4C:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #24
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEF7C
	movs r0, #1
	ldrb r2, [r6, #0]
	subs r0, r0, r2
	strb r0, [r6, #0]
	str r7, [r5, #52]
	b .L082EEF84
	.2byte 0xfe00 @ .raw
	.2byte 0xffff @ .raw
.L082EEF7C:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EEF84:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EEFA4
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082EEFAE
.L082EEFA4:
	movs r0, #1
	ldrb r1, [r6, #0]
	subs r0, r0, r1
	strb r0, [r6, #0]
	str r7, [r5, #52]
.L082EEFAE:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #0
	beq .L082EEFD2
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EEFC2
	adds r0, #1
	strh r0, [r5, #14]
.L082EEFC2:
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L082EEFD2
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EE9E4
.L082EEFD2:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #0
	beq .L082EEFE4
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EEFE4:
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EEFF2
	subs r0, r1, #1
	strh r0, [r5, #28]
.L082EEFF2:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EEFFC
	.thumb_func
sub_082EEFFC:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EF018
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #37
	bl sub_083189D0
.L082EF018:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EF032
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082EF03E
.L082EF032:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082EF03E:
	adds r0, r5, #0
	bl sub_082EE918
	cmp r0, #1
	bne .L082EF05A
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #1
	bne .L082EF05A
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
.L082EF05A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #0
	bne .L082EF09E
	ldr r0, [pc, #12]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EF07C
	movs r0, #1
	strb r0, [r6, #0]
	b .L082EF07E
	movs r5, #12
	lsls r0, r0, #12
.L082EF07C:
	strb r2, [r6, #0]
.L082EF07E:
	adds r0, r5, #0
	bl sub_082EE9AC
	cmp r0, #1
	bne .L082EF092
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EE9E4
	b .L082EF09E
.L082EF092:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EE9E4
	movs r0, #15
	strh r0, [r5, #28]
.L082EF09E:
	ldrh r0, [r5, #14]
	cmp r0, #3
	bhi .L082EF0A8
	adds r0, #2
	strh r0, [r5, #14]
.L082EF0A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF0B0
	.thumb_func
sub_082EF0B0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #3
	beq .L082EF0E4
	ldrb r0, [r6, #7]
	movs r5, #0
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_0800075C
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	adds r1, r6, #0
	adds r1, #224
	movs r0, #255
	strh r0, [r1, #0]
.L082EF0E4:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF100
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082EF10C
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF100:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082EF10C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF11E
	adds r0, r6, #0
	bl sub_082EA2C0
.L082EF11E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EF124
	.thumb_func
sub_082EF124:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082EF13E
	ldr r0, [pc, #116]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EF14E
.L082EF13E:
	cmp r3, #0
	bne .L082EF1F8
	ldr r0, [pc, #100]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	ble .L082EF1F8
.L082EF14E:
	ldr r3, [r5, #56]
	ldr r1, [pc, #88]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EF1F8
	movs r4, #140
	lsls r4, r4, #7
	adds r0, r3, r4
	cmp r1, r0
	bge .L082EF1F8
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EF1B4
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EF1EC
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082EF17E:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF1F8
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EF17E
	b .L082EF1EC
	movs r5, #12
	lsls r0, r0, #12
	beq .L082EF1B0
	.2byte 0xffff @ .raw
.L082EF1B0:
	bvs .L082EF1B4
	.2byte 0xffff @ .raw
.L082EF1B4:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EF1EC
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082EF1C4:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF1F8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EF1C4
.L082EF1EC:
	movs r0, #1
	b .L082EF1FA
	bvs .L082EF1F4
	.2byte 0xffff @ .raw
.L082EF1F4:
	movs r5, #12
	lsls r0, r0, #12
.L082EF1F8:
	movs r0, #0
.L082EF1FA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EF204
	.thumb_func
sub_082EF204:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082EF244
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082EF22A
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082EF234
.L082EF22A:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082EF234:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082EF24E
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF244:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #84]
	bl sub_0800075C
.L082EF24E:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EF2A4
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EF26A
	movs r0, #42
	bl sub_083189D0
.L082EF26A:
	adds r0, r4, #0
	adds r0, #236
	adds r1, r4, #0
	adds r1, #90
	ldrh r2, [r1, #0]
	ldrh r0, [r0, #0]
	subs r0, r2, r0
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082EF284
	movs r0, #0
	strh r0, [r1, #0]
.L082EF284:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082EF294
	movs r0, #7
	strb r0, [r1, #0]
.L082EF294:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082EF2A6
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EF2A4:
	movs r0, #0
.L082EF2A6:
	pop {r4}
	pop {r1}
	bx r1

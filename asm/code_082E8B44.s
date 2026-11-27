	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082E8B44
	.thumb_func
sub_082E8B44:
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r4, [pc, #44]
	ldr r3, [r2, #56]
	movs r1, #128
	lsls r1, r1, #5
	adds r0, r3, r1
	ldr r1, [r4, #56]
	cmp r1, r0
	bge .L082E8B90
	ldr r5, [pc, #32]
	adds r0, r3, r5
	cmp r1, r0
	ble .L082E8B90
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8B80
	movs r3, #0
	ldr r1, [r4, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082E8B8C
	b .L082E8B8A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xc000 @ .raw stmia r0!, {}
	.2byte 0xffff @ .raw
.L082E8B80:
	movs r3, #0
	ldr r1, [r4, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082E8B8C
.L082E8B8A:
	movs r3, #1
.L082E8B8C:
	adds r0, r3, #0
	b .L082E8B92
.L082E8B90:
	movs r0, #0
.L082E8B92:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082E8B98
	.thumb_func
sub_082E8B98:
	adds r2, r0, #0
	ldrb r3, [r2, #7]
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #6
	bhi .L082E8C28
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r0, #52]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	ldrh r5, [r6, #50]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	ldrh r1, [r1, #46]
	lsrs r6, r5, #32
	ldr r0, [pc, #12]
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bne .L082E8BE0
	strb r3, [r2, #7]
	b .L082E8C28
	movs r5, #12
	lsls r0, r0, #12
.L082E8BE0:
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r0, [sp, #116]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r0, [sp, #932]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #46
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	b .L082E8C28
	movs r0, r0
	str r1, [sp, #420]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082E8C26
	str r1, [sp, #900]
	lsrs r6, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082E8C26:
	str r0, [r1, #0]
.L082E8C28:
	bx lr
	.2byte 0x0000
	.4byte 0x082E9251

	.thumb
	.align 1, 0
	.global sub_082E8C30
	.thumb_func
sub_082E8C30:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r5, [r0, #0]
	cmp r5, #2
	beq .L082E8C72
	cmp r5, #2
	bgt .L082E8C46
	cmp r5, #1
	beq .L082E8C8A
	b .L082E8C9E
.L082E8C46:
	cmp r5, #7
	beq .L082E8C5A
	cmp r5, #8
	bne .L082E8C9E
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082E8C80
	adds r0, r4, #0
	movs r1, #5
	b .L082E8C7C
.L082E8C5A:
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082E8C68
	adds r0, r4, #0
	movs r1, #5
	bl sub_082E8B98
.L082E8C68:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	b .L082E8C9E
.L082E8C72:
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082E8C80
	adds r0, r4, #0
	movs r1, #6
.L082E8C7C:
	bl sub_082E8B98
.L082E8C80:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	b .L082E8C9E
.L082E8C8A:
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082E8C98
	adds r0, r4, #0
	movs r1, #6
	bl sub_082E8B98
.L082E8C98:
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
.L082E8C9E:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E8CA4
	.thumb_func
sub_082E8CA4:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0
	bl sub_082F8A24
	movs r2, #0
	movs r3, #1
	strb r3, [r5, #5]
	strb r2, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r3, [r0, #0]
	adds r0, #1
	strb r3, [r0, #0]
	adds r0, #33
	movs r4, #0
	strh r2, [r0, #0]
	adds r1, r5, #0
	adds r1, #82
	ldr r0, [pc, #60]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r5, #68]
	movs r0, #128
	str r0, [r5, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r5, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r5, #76]
	adds r0, r5, #0
	adds r0, #87
	strb r4, [r0, #0]
	adds r0, #1
	strb r3, [r0, #0]
	subs r0, #2
	strb r4, [r0, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082E8D22
	cmp r0, #1
	bgt .L082E8D10
	cmp r0, #0
	beq .L082E8D1A
	b .L082E8D3A
	movs r0, r0
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082E8D10:
	cmp r0, #2
	beq .L082E8D2A
	cmp r0, #3
	beq .L082E8D32
	b .L082E8D3A
.L082E8D1A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #15
	b .L082E8D38
.L082E8D22:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #20
	b .L082E8D38
.L082E8D2A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #30
	b .L082E8D38
.L082E8D32:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #40
.L082E8D38:
	strh r0, [r1, #0]
.L082E8D3A:
	adds r1, r5, #0
	adds r1, #84
	movs r0, #250
	lsls r0, r0, #1
	strh r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E8D58
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E8D60
.L082E8D58:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E8D60:
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E8D88
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #12]
	movs r2, #8
	movs r3, #0
	bl sub_080002E0
	b .L082E8D9E
	movs r0, r0
	ldr r2, [pc, #256]
	lsrs r1, r2, #32
.L082E8D88:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #9
	movs r3, #0
	bl sub_080002E0
.L082E8D9E:
	adds r1, r5, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082E8DAC
	subs r1, #139
	strh r0, [r1, #0]
.L082E8DAC:
	adds r0, r5, #0
	adds r0, #220
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	movs r0, #0
	strb r0, [r5, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08114A40
	.4byte 0x082E8C31

	.thumb
	.align 1, 0
	.global sub_082E8DC8
	.thumb_func
sub_082E8DC8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E8DDE
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8DDE:
	adds r0, r5, #0
	bl sub_082E8B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8DFC
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082E8DFC
	adds r0, r5, #0
	movs r1, #2
	bl sub_082E8B98
	b .L082E8E42
.L082E8DFC:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E8E14
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E8E1A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E8E14:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E8E1A:
	strb r0, [r1, #0]
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L082E8E30
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8E3C
.L082E8E30:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8E3C:
	adds r0, r4, #0
	bl sub_08000704
.L082E8E42:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E8E6C
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E8E6C
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E8E6C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E8E74
	.thumb_func
sub_082E8E74:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082E8E8C
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E8E8C:
	adds r0, r5, #0
	bl sub_082E8B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8EAA
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082E8EAA
	adds r0, r5, #0
	movs r1, #2
	bl sub_082E8B98
	b .L082E8FE8
.L082E8EAA:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E8EC4
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #129
	b .L082E8ECE
	movs r5, #12
	lsls r0, r0, #12
.L082E8EC4:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #128
.L082E8ECE:
	str r1, [r5, #64]
	adds r7, r0, #0
	ldr r0, [pc, #80]
	ldr r4, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r4, r0
	cmp r0, #0
	bge .L082E8EE0
	negs r0, r0
.L082E8EE0:
	asrs r0, r0, #8
	cmp r0, #60
	ble .L082E8F36
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #8
	str r0, [sp, #4]
	subs r0, #24
	str r0, [sp, #8]
	adds r0, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8F10
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E8F10:
	ldrb r2, [r7, #0]
	cmp r2, #1
	bne .L082E8F28
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
	b .L082E8F56
	movs r5, #12
	lsls r0, r0, #12
.L082E8F28:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082E8F56
.L082E8F36:
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L082E8F4A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8F56
.L082E8F4A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8F56:
	ldrb r0, [r7, #0]
	ldr r6, [pc, #88]
	cmp r0, #0
	bne .L082E8F62
	movs r6, #128
	lsls r6, r6, #6
.L082E8F62:
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8FA2
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E8FA2
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E8FBC
.L082E8FA2:
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082E8FE2
	movs r0, r0
	b .L082E8FB8
	.2byte 0xffff @ .raw
.L082E8FB8:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082E8FBC:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
	ldrb r7, [r7, #0]
	cmp r7, #1
	bne .L082E8FD4
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082E8FDC
.L082E8FD4:
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082E8FDC:
	adds r0, r4, #0
	bl sub_080006AC
.L082E8FE2:
	adds r0, r4, #0
	bl sub_08000704
.L082E8FE8:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9012
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9012
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E9012:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E901C
	.thumb_func
sub_082E901C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082E903C
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	movs r0, #11
	bl sub_083189D0
.L082E903C:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082E9054
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082E905A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082E9054:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082E905A:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082E9070
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082E907C
.L082E9070:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082E907C:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E90A4
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E909C
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E90A4
.L082E909C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E90A4:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #2
	bne .L082E90BE
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082E90BE
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082E90BE:
	adds r0, r5, #0
	bl sub_082E8A9C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E90E2
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E90E2
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
.L082E90E2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E90E8
	.thumb_func
sub_082E90E8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082E90FE
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E90FE:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9116
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082E9122
.L082E9116:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082E9122:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E9162
	adds r0, r5, #0
	bl sub_082E8B30
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082E9146
	adds r0, r5, #0
	movs r1, #4
	bl sub_082E8B98
	b .L082E9162
.L082E9146:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E915A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9162
.L082E915A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9162:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E9168
	.thumb_func
sub_082E9168:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #4
	beq .L082E919C
	movs r5, #0
	movs r0, #4
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	ldr r1, [pc, #56]
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
.L082E919C:
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #24]
	adds r0, r4, #0
	bl sub_0800075C
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E91C0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082E91C8
	.2byte 0xffff @ .raw
	movs r0, r0
.L082E91C0:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082E91C8:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E91DA
	adds r0, r6, #0
	bl sub_082EA2C0
.L082E91DA:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082E91E0
	.thumb_func
sub_082E91E0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082E91F6
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E91F6:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E920E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082E921A
.L082E920E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082E921A:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082E9248
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E9240
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9248
.L082E9240:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9248:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082E9250
	.thumb_func
sub_082E9250:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082E9268
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082E9268:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082E9282
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	movs r0, #128
	b .L082E9292
.L082E9282:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082E9292:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	subs r4, #24
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082E92C4
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082E92C4:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082E92E4
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082E92EC
.L082E92E4:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082E92EC:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #1
	bls .L082E9314
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082E930C
	adds r0, r5, #0
	movs r1, #7
	bl sub_082E8B98
	b .L082E9314
.L082E930C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082E8B98
.L082E9314:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

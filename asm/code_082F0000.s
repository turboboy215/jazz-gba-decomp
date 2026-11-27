	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F0050
	.thumb_func
sub_082F0050:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082F0066
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F0066:
	adds r0, r5, #0
	bl sub_082EFDA8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0084
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082F0084
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EFE08
	b .L082F00CA
.L082F0084:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F009C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082F00A2
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F009C:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082F00A2:
	strb r0, [r1, #0]
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L082F00B8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082F00C4
.L082F00B8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082F00C4:
	adds r0, r4, #0
	bl sub_08000704
.L082F00CA:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082EFD00
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F00F4
	adds r0, r5, #0
	bl sub_082EFD94
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F00F4
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EFE08
.L082F00F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F00FC
	.thumb_func
sub_082F00FC:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082F0114
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F0114:
	adds r0, r5, #0
	bl sub_082EFDA8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0132
	movs r1, #26
	ldrsh r0, [r5, r1]
	cmp r0, #60
	ble .L082F0132
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EFE08
	b .L082F026E
.L082F0132:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F014C
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #129
	b .L082F0156
	movs r5, #12
	lsls r0, r0, #12
.L082F014C:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #128
.L082F0156:
	str r1, [r5, #64]
	adds r7, r0, #0
	ldr r0, [pc, #80]
	ldr r4, [r5, #52]
	ldr r0, [r0, #52]
	subs r0, r4, r0
	cmp r0, #0
	bge .L082F0168
	negs r0, r0
.L082F0168:
	asrs r0, r0, #8
	cmp r0, #60
	ble .L082F01BE
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
	bne .L082F0198
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F0198:
	ldrb r2, [r7, #0]
	cmp r2, #1
	bne .L082F01B0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082F01DE
	movs r5, #12
	lsls r0, r0, #12
.L082F01B0:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #15
	bl sub_08000680
	b .L082F01DE
.L082F01BE:
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L082F01D2
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082F01DE
.L082F01D2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082F01DE:
	adds r0, r4, #0
	bl sub_08000704
	ldrb r0, [r7, #0]
	ldr r6, [pc, #88]
	cmp r0, #0
	bne .L082F01F0
	movs r6, #128
	lsls r6, r6, #6
.L082F01F0:
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0230
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
	bne .L082F0230
	ldr r0, [r5, #52]
	adds r0, r0, r6
	ldr r1, [r5, #56]
	ldr r2, [pc, #32]
	adds r1, r1, r2
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0248
.L082F0230:
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L082F026E
	b .L082F0244
	.2byte 0xffff @ .raw
.L082F0244:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F0248:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
	ldrb r7, [r7, #0]
	cmp r7, #1
	bne .L082F0260
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
	b .L082F0268
.L082F0260:
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
.L082F0268:
	adds r0, r4, #0
	bl sub_080006AC
.L082F026E:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	adds r0, r5, #0
	bl sub_082EFD00
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F0298
	adds r0, r5, #0
	bl sub_082EFD94
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F0298
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EFE08
.L082F0298:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F02A0
	.thumb_func
sub_082F02A0:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082F02C0
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	strh r4, [r5, #26]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082F02C0:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F02D8
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082F02DE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F02D8:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082F02DE:
	strb r0, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082F02F4
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082F0300
.L082F02F4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082F0300:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0328
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F0320
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EFE08
	b .L082F0328
.L082F0320:
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EFE08
.L082F0328:
	adds r0, r5, #0
	bl sub_082EFD00
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F034C
	adds r0, r5, #0
	bl sub_082EFD94
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F034C
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EFE08
.L082F034C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F0354
	.thumb_func
sub_082F0354:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082F036A
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F036A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0382
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F038E
.L082F0382:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F038E:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F03CE
	adds r0, r5, #0
	bl sub_082EFD94
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F03B2
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EFE08
	b .L082F03CE
.L082F03B2:
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F03C6
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EFE08
	b .L082F03CE
.L082F03C6:
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EFE08
.L082F03CE:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F03D4
	.thumb_func
sub_082F03D4:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #4
	beq .L082F0408
	movs r5, #0
	movs r0, #4
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
.L082F0408:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0424
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F0430
	.2byte 0xffff @ .raw
	movs r0, r0
.L082F0424:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F0430:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0442
	adds r0, r6, #0
	bl sub_082EA2C0
.L082F0442:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F0448
	.thumb_func
sub_082F0448:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082F046A
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #46
	strb r4, [r0, #0]
	adds r0, #1
	strb r4, [r0, #0]
.L082F046A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0482
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082F048E
.L082F0482:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082F048E:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #9
	cmp r0, #1
	bls .L082F04B4
	adds r1, r5, #0
	adds r1, #46
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	movs r1, #6
	bl sub_082EFE08
.L082F04B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F04BC
	.thumb_func
sub_082F04BC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082F04D2
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F04D2:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F04EA
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082F04F6
.L082F04EA:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
.L082F04F6:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0516
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #11
	cmp r0, #1
	bls .L082F0516
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EFE08
.L082F0516:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F051C
	.thumb_func
sub_082F051C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #7
	beq .L082F053A
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r0, r5, #0
	adds r0, #46
	strb r4, [r0, #0]
.L082F053A:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0552
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082F055E
.L082F0552:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082F055E:
	adds r0, r4, #0
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082F0598
	adds r1, r5, #0
	adds r1, #46
	movs r0, #1
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F0590
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EFE08
	b .L082F0598
.L082F0590:
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EFE08
.L082F0598:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

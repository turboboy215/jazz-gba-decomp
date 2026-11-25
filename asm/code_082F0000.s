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

	.thumb
	.align 1, 0
	.global sub_082F05A0
	.thumb_func
sub_082F05A0:
	push {r4, lr}
	ldr r4, [pc, #36]
	ldr r3, [pc, #36]
	ldrh r2, [r3, #0]
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #16
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #24
	orrs r0, r2
	asrs r1, r0, #31
	str r0, [r4, #0]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058E4
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_082F05D0
	.thumb_func
sub_082F05D0:
	push {r4, lr}
	ldr r4, [pc, #32]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	bl __muldi3
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x030058E4
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

	.thumb
	.align 1, 0
	.global sub_082F0608
	.thumb_func
sub_082F0608:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r3, r3, #24
	cmp r3, #0
	beq .L082F0622
	ldrh r1, [r4, #32]
	movs r3, #32
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble .L082F0622
	subs r0, r1, #1
	b .L082F065A
.L082F0622:
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F0638
	ldr r5, [pc, #4]
	ldr r0, [r4, #52]
	ldr r1, [r5, #52]
	b .L082F063E
	movs r5, #12
	lsls r0, r0, #12
.L082F0638:
	ldr r5, [pc, #36]
	ldr r0, [r5, #52]
	ldr r1, [r4, #52]
.L082F063E:
	subs r0, r0, r1
	lsls r1, r6, #8
	cmp r0, r1
	bge .L082F0664
	lsls r2, r2, #8
	ldr r3, [r4, #56]
	subs r0, r3, r2
	ldr r1, [r5, #56]
	cmp r1, r0
	ble .L082F0664
	adds r0, r3, r2
	cmp r1, r0
	bge .L082F0664
	movs r0, #180
.L082F065A:
	strh r0, [r4, #32]
	movs r0, #1
	b .L082F0666
	movs r5, #12
	lsls r0, r0, #12
.L082F0664:
	movs r0, #0
.L082F0666:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082F066C
	.thumb_func
sub_082F066C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082F0736
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082F0692
	adds r0, r5, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082F072A
.L082F0692:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #24]
	adds r0, r4, #0
	bl sub_0800075C
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #20
	beq .L082F06D4
	cmp r0, #20
	bhi .L082F06B8
	cmp r0, #7
	beq .L082F06BE
	b .L082F06F6
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
.L082F06B8:
	cmp r0, #22
	beq .L082F06D4
	b .L082F06F6
.L082F06BE:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F06DE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F072A
.L082F06D4:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F06EA
.L082F06DE:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #6
	bl sub_0800073C
	b .L082F072A
.L082F06EA:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #7
	bl sub_0800073C
	b .L082F072A
.L082F06F6:
	adds r6, r5, #0
	adds r6, #228
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F070A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_0800073C
.L082F070A:
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082F071A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0800073C
.L082F071A:
	ldrb r6, [r6, #0]
	cmp r6, #2
	bne .L082F072A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
.L082F072A:
	adds r1, r5, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082F07CE
.L082F0736:
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #24]
	adds r0, r4, #0
	bl sub_0800075C
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #20
	beq .L082F0778
	cmp r0, #20
	bhi .L082F075C
	cmp r0, #7
	beq .L082F0762
	b .L082F079A
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
.L082F075C:
	cmp r0, #22
	beq .L082F0778
	b .L082F079A
.L082F0762:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0782
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F07CE
.L082F0778:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F078E
.L082F0782:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #6
	bl sub_0800073C
	b .L082F07CE
.L082F078E:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #7
	bl sub_0800073C
	b .L082F07CE
.L082F079A:
	adds r6, r5, #0
	adds r6, #228
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082F07AE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_0800073C
.L082F07AE:
	ldrb r1, [r6, #0]
	cmp r1, #1
	bne .L082F07BE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0800073C
.L082F07BE:
	ldrb r6, [r6, #0]
	cmp r6, #2
	bne .L082F07CE
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
.L082F07CE:
	adds r0, r5, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F0864
	adds r1, r5, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082F07E8
	movs r0, #7
	strb r0, [r1, #0]
.L082F07E8:
	movs r2, #0
	movs r0, #180
	strh r0, [r5, #32]
	adds r0, r5, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #2
	bne .L082F0802
	ldrh r0, [r5, #36]
	subs r0, #96
	strh r0, [r5, #36]
	lsls r0, r0, #16
	b .L082F0814
.L082F0802:
	ldrh r1, [r5, #36]
	movs r3, #36
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L082F0810
	subs r0, r1, #3
	strh r0, [r5, #36]
.L082F0810:
	movs r1, #36
	ldrsh r0, [r5, r1]
.L082F0814:
	cmp r0, #0
	bge .L082F081A
	strh r2, [r5, #36]
.L082F081A:
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F0830
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082F0836
	movs r5, #12
	lsls r0, r0, #12
.L082F0830:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082F0836:
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #236
	adds r1, r5, #0
	adds r1, #90
	ldrh r2, [r1, #0]
	ldrh r0, [r0, #0]
	subs r0, r2, r0
	strh r0, [r1, #0]
	adds r0, r5, #0
	bl sub_08306E28
	movs r0, #53
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0860
	movs r0, #53
	bl sub_083189D0
.L082F0860:
	movs r0, #1
	b .L082F0866
.L082F0864:
	movs r0, #0
.L082F0866:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_082F086C
	.thumb_func
sub_082F086C:
	movs r1, #0
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt .L082F087A
	movs r1, #1
.L082F087A:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F0880
	.thumb_func
sub_082F0880:
	adds r2, r0, #0
	strb r1, [r2, #7]
	cmp r1, #16
	bls .L082F088A
	b .L082F0960
.L082F088A:
	lsls r0, r1, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r5, #72]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	lsrs r1, r6, #20
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	lsrs r1, r6, #24
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	lsrs r5, r7, #26
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	lsrs r1, r1, #29
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	lsrs r1, r5, #31
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r1, r1, #2
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r1, r4, #6
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r1, r0, #9
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r1, r5, #11
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r7, #14
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r5, #17
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r3, #20
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r6, #22
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r1, #25
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r5, #27
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082F095E
	asrs r5, r2, #30
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082F095E:
	str r0, [r1, #0]
.L082F0960:
	bx lr
	.2byte 0x0000
	.4byte 0x082F1AF1

	.thumb
	.align 1, 0
	.global sub_082F0968
	.thumb_func
sub_082F0968:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #41
	bls .L082F0978
	b .L082F0B54
.L082F0978:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r6, #76]
	lsrs r5, r7, #32
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082F0996
	adds r0, r4, #0
	movs r1, #0
	bl sub_082F0880
.L082F0996:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne .L082F09A6
	b .L082F0B4C
.L082F09A6:
	adds r0, r4, #0
	movs r1, #0
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #1
	beq .L082F09BA
	adds r0, r4, #0
	movs r1, #1
	bl sub_082F0880
.L082F09BA:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne .L082F09CA
	b .L082F0B4C
.L082F09CA:
	adds r0, r4, #0
	movs r1, #1
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #2
	beq .L082F09DE
	adds r0, r4, #0
	movs r1, #2
	bl sub_082F0880
.L082F09DE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #2
	bne .L082F09EE
	b .L082F0B4C
.L082F09EE:
	adds r0, r4, #0
	movs r1, #2
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #3
	beq .L082F0A02
	adds r0, r4, #0
	movs r1, #3
	bl sub_082F0880
.L082F0A02:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #3
	bne .L082F0A12
	b .L082F0B4C
.L082F0A12:
	adds r0, r4, #0
	movs r1, #3
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #4
	beq .L082F0A26
	adds r0, r4, #0
	movs r1, #4
	bl sub_082F0880
.L082F0A26:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #4
	bne .L082F0A36
	b .L082F0B4C
.L082F0A36:
	adds r0, r4, #0
	movs r1, #4
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082F0A4A
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F0A4A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #5
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082F0A6C
	adds r0, r4, #0
	movs r1, #6
	bl sub_082F0880
.L082F0A6C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #6
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082F0A8E
	adds r0, r4, #0
	movs r1, #7
	bl sub_082F0880
.L082F0A8E:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #7
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #8
	beq .L082F0AB0
	adds r0, r4, #0
	movs r1, #8
	bl sub_082F0880
.L082F0AB0:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #8
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #8
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #14
	beq .L082F0AD2
	adds r0, r4, #0
	movs r1, #14
	bl sub_082F0880
.L082F0AD2:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #14
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #14
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #15
	beq .L082F0B54
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F0B54
	ldrb r0, [r4, #7]
	cmp r0, #16
	beq .L082F0B54
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F0880
	b .L082F0B54
	ldrb r0, [r4, #7]
	cmp r0, #9
	beq .L082F0B14
	adds r0, r4, #0
	movs r1, #9
	bl sub_082F0880
.L082F0B14:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #9
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #9
	b .L082F0B48
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082F0B36
	adds r0, r4, #0
	movs r1, #13
	bl sub_082F0880
.L082F0B36:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	b .L082F0B52
	ldrb r0, [r4, #7]
	cmp r0, #13
	beq .L082F0B4C
	adds r0, r4, #0
	movs r1, #13
.L082F0B48:
	bl sub_082F0880
.L082F0B4C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
.L082F0B52:
	strb r0, [r1, #0]
.L082F0B54:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F0B5C
	.thumb_func
sub_082F0B5C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #7
	bl sub_082F8A24
	movs r2, #0
	movs r4, #1
	strb r4, [r6, #5]
	movs r0, #8
	strb r0, [r6, #6]
	adds r0, r6, #0
	adds r0, #46
	strb r4, [r0, #0]
	adds r0, #1
.L082F0B78:
	strb r4, [r0, #0]
	adds r0, #33
	movs r5, #0
	strh r2, [r0, #0]
	adds r1, r6, #0
	adds r1, #82
	ldr r0, [pc, #104]
	strh r0, [r1, #0]
	subs r1, #22
	movs r0, #50
	strb r0, [r1, #0]
	str r2, [r6, #68]
	movs r0, #128
	str r0, [r6, #64]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r6, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r6, #76]
	adds r0, r6, #0
	bl sub_08306E28
	adds r1, r6, #0
	adds r1, #84
	movs r0, #220
	strh r0, [r1, #0]
	adds r0, r6, #0
	adds r0, #87
	strb r5, [r0, #0]
	adds r0, #1
	strb r4, [r0, #0]
	subs r0, #2
	strb r5, [r0, #0]
.L082F0BBC:
	movs r1, #0
	movs r2, #0
	subs r0, #60
.L082F0BC2:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #5
	bls .L082F0BC2
	adds r0, r6, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0BF8
	adds r1, r6, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #16]
	adds r0, r4, #0
	movs r2, #30
	movs r3, #0
	bl sub_080002E0
	b .L082F0C10
	.2byte 0xfff0 @ .raw
	movs r0, r0
	bvs .L082F0B78
	lsrs r0, r3, #32
.L082F0BF8:
	adds r1, r6, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #48]
	adds r0, r4, #0
	movs r2, #31
	movs r3, #0
	bl sub_080002E0
.L082F0C10:
	adds r0, r6, #0
	adds r0, #228
	ldrb r1, [r0, #0]
	adds r5, r0, #0
	cmp r1, #0
	bne .L082F0C4A
	adds r0, r6, #0
	movs r1, #15
	bl sub_082F0880
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #7
	bne .L082F0C40
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F0C4A
	bvs .L082F0BBC
	lsrs r0, r3, #32
	subs r7, #12
	lsls r0, r0, #12
.L082F0C40:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_0800073C
.L082F0C4A:
	ldrb r0, [r5, #0]
	cmp r0, #1
	bne .L082F0C7A
	adds r0, r6, #0
	movs r1, #15
	bl sub_082F0880
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #7
	bne .L082F0C70
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F0C7A
	subs r7, #12
	lsls r0, r0, #12
.L082F0C70:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0800073C
.L082F0C7A:
	ldrb r5, [r5, #0]
	cmp r5, #2
	bne .L082F0CAA
	adds r0, r6, #0
	movs r1, #15
	bl sub_082F0880
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #7
	bne .L082F0CA0
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F0CAA
	subs r7, #12
	lsls r0, r0, #12
.L082F0CA0:
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
.L082F0CAA:
	adds r0, r6, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0CBC
	adds r0, r6, #0
	movs r1, #15
	bl sub_082F0880
.L082F0CBC:
	adds r1, r6, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082F0CCA
	subs r1, #139
	b .L082F0D08
.L082F0CCA:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082F0CF2
	cmp r0, #1
	bgt .L082F0CE0
	cmp r0, #0
	beq .L082F0CEA
	b .L082F0D0A
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F0CE0:
	cmp r0, #2
	beq .L082F0CFA
	cmp r0, #3
	beq .L082F0D02
	b .L082F0D0A
.L082F0CEA:
	adds r1, r6, #0
	adds r1, #90
	movs r0, #15
	b .L082F0D08
.L082F0CF2:
	adds r1, r6, #0
	adds r1, #90
	movs r0, #25
	b .L082F0D08
.L082F0CFA:
	adds r1, r6, #0
	adds r1, #90
	movs r0, #35
	b .L082F0D08
.L082F0D02:
	adds r1, r6, #0
	adds r1, #90
	movs r0, #45
.L082F0D08:
	strh r0, [r1, #0]
.L082F0D0A:
	bl sub_082F05A0
	bl sub_082F05D0
	movs r1, #127
	ands r0, r1
	strh r0, [r6, #36]
	adds r1, r6, #0
	adds r1, #220
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r0, #255
	strb r0, [r6, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082F0969

	.thumb
	.align 1, 0
	.global sub_082F0D30
	.thumb_func
sub_082F0D30:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq .L082F0D88
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #21
	adds r2, r4, #0
	adds r2, #48
	cmp r0, #1
	bls .L082F0D64
	ldr r0, [pc, #12]
	ldr r1, [r0, #52]
	ldr r0, [r4, #52]
	cmp r1, r0
	bge .L082F0D60
	movs r0, #1
	b .L082F0D62
	movs r5, #12
	lsls r0, r0, #12
.L082F0D60:
	movs r0, #0
.L082F0D62:
	strb r0, [r2, #0]
.L082F0D64:
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L082F0D76
	adds r0, r4, #0
	adds r0, #100
	movs r1, #1
	bl sub_08000680
	b .L082F0D80
.L082F0D76:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #0
	bl sub_08000680
.L082F0D80:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F0D88:
	movs r0, #51
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0D9A
	movs r0, #51
	bl sub_083189D0
.L082F0D9A:
	movs r2, #0
	adds r5, r4, #0
	adds r5, #100
	movs r3, #128
	ldr r1, [pc, #136]
.L082F0DA4:
	ldrh r0, [r1, #36]
	adds r0, #2
	strh r0, [r1, #36]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #128
	ble .L082F0DB4
	strh r3, [r1, #36]
.L082F0DB4:
	adds r1, #248
	adds r2, #1
	cmp r2, #7
	bls .L082F0DA4
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0DEA
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #21
	cmp r0, #1
	bhi .L082F0DDA
	adds r0, r5, #0
	bl sub_080006AC
.L082F0DDA:
	movs r1, #36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L082F0DEA
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
.L082F0DEA:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0E0C
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F0E0C:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F0E24
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F0E24:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082F0E30
	.thumb_func
sub_082F0E30:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #1
	beq .L082F0E66
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0E54
	adds r0, r4, #0
	adds r0, #100
	movs r1, #3
	bl sub_08000680
	b .L082F0E5E
.L082F0E54:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #2
	bl sub_08000680
.L082F0E5E:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F0E66:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0E7C
	adds r0, r4, #0
	movs r1, #14
	bl sub_082F0880
.L082F0E7C:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0E9E
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F0E9E:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F0EB6
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F0EB6:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F0EBC
	.thumb_func
sub_082F0EBC:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #2
	beq .L082F0EF2
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0EE0
	adds r0, r4, #0
	adds r0, #100
	movs r1, #5
	bl sub_08000680
	b .L082F0EEA
.L082F0EE0:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #4
	bl sub_08000680
.L082F0EEA:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F0EF2:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0F08
	adds r0, r4, #0
	movs r1, #7
	bl sub_082F0880
.L082F0F08:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0F2A
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F0F2A:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F0F42
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F0F42:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F0F48
	.thumb_func
sub_082F0F48:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #3
	beq .L082F0F7E
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F0F6C
	adds r0, r4, #0
	adds r0, #100
	movs r1, #7
	bl sub_08000680
	b .L082F0F76
.L082F0F6C:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #6
	bl sub_08000680
.L082F0F76:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F0F7E:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F0FA6
	movs r1, #36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L082F0F9E
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F0FA6
.L082F0F9E:
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F0880
.L082F0FA6:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F0FC8
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F0FC8:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F0FE0
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F0FE0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F0FE8
	.thumb_func
sub_082F0FE8:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #4
	beq .L082F101E
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F100C
	adds r0, r4, #0
	adds r0, #100
	movs r1, #9
	bl sub_08000680
	b .L082F1016
.L082F100C:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #8
	bl sub_08000680
.L082F1016:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F101E:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1046
	movs r1, #36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L082F103E
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F1046
.L082F103E:
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F0880
.L082F1046:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1068
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F1068:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1080
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F1080:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F1088
	.thumb_func
sub_082F1088:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #5
	beq .L082F1164
	movs r5, #0
	movs r0, #5
	strb r0, [r6, #8]
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	ldr r1, [pc, #40]
	adds r0, r4, #0
	bl sub_0800075C
	movs r0, #52
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F10C6
	movs r0, #52
	bl sub_083189D0
.L082F10C6:
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #20
	beq .L082F1100
	cmp r0, #20
	bhi .L082F10E0
	cmp r0, #7
	beq .L082F10E6
	b .L082F1126
	.2byte 0xffff @ .raw
	movs r0, r0
	subs r7, #12
	lsls r0, r0, #12
.L082F10E0:
	cmp r0, #22
	beq .L082F1100
	b .L082F1126
.L082F10E6:
	adds r0, r6, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F10FC
	adds r0, r4, #0
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
	b .L082F115C
.L082F10FC:
	adds r0, r4, #0
	b .L082F110E
.L082F1100:
	adds r0, r6, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1118
	adds r0, r6, #0
	adds r0, #100
.L082F110E:
	movs r1, #1
	movs r2, #6
	bl sub_0800073C
	b .L082F115C
.L082F1118:
	adds r0, r6, #0
	adds r0, #100
	movs r1, #1
	movs r2, #7
	bl sub_0800073C
	b .L082F115C
.L082F1126:
	adds r5, r6, #0
	adds r5, #228
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L082F113A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #3
	bl sub_0800073C
.L082F113A:
	ldrb r0, [r5, #0]
	cmp r0, #1
	bne .L082F114A
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	bl sub_0800073C
.L082F114A:
	ldrb r5, [r5, #0]
	cmp r5, #2
	bne .L082F115C
	adds r0, r6, #0
	adds r0, #100
	movs r1, #1
	movs r2, #5
	bl sub_0800073C
.L082F115C:
	adds r1, r6, #0
	adds r1, #224
	movs r0, #255
	strh r0, [r1, #0]
.L082F1164:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F117C
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
	b .L082F1188
.L082F117C:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #10
	bl sub_08000680
.L082F1188:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F119A
	adds r0, r6, #0
	bl sub_082EA2C0
.L082F119A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F11A0
	.thumb_func
sub_082F11A0:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #6
	beq .L082F11D6
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F11C4
	adds r0, r4, #0
	adds r0, #100
	movs r1, #15
	bl sub_08000680
	b .L082F11CE
.L082F11C4:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_08000680
.L082F11CE:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F11D6:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F11FE
	movs r1, #36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L082F11F6
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F11FE
.L082F11F6:
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F0880
.L082F11FE:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1220
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F1220:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1238
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F1238:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F1240
	.thumb_func
sub_082F1240:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #7
	beq .L082F1276
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1264
	adds r0, r4, #0
	adds r0, #100
	movs r1, #19
	bl sub_08000680
	b .L082F126E
.L082F1264:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #18
	bl sub_08000680
.L082F126E:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F1276:
	adds r0, r4, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #31
	cmp r0, #1
	bls .L082F12A8
	ldrh r0, [r4, #36]
	lsls r1, r0, #16
	asrs r1, r1, #19
	adds r1, #140
	adds r0, r4, #0
	movs r2, #32
	movs r3, #1
	bl sub_082F0608
	cmp r0, #0
	beq .L082F12A8
	adds r0, r4, #0
	movs r1, #4
	bl sub_082F0880
.L082F12A8:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F12CA
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F12CA:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F12E2
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F12E2:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F12E8
	.thumb_func
sub_082F12E8:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082F1300
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F1300:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F131A
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	movs r0, #128
	b .L082F132A
.L082F131A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
	movs r0, #128
	negs r0, r0
.L082F132A:
	str r0, [r5, #64]
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F135A
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F135A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F137E
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F1386
.L082F137E:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	subs r0, r0, r1
	str r0, [r5, #52]
.L082F1386:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r0, #1
	bls .L082F139A
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
.L082F139A:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F13B2
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F13B2:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F13BC
	.thumb_func
sub_082F13BC:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #9
	beq .L082F1404
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F13E0
	adds r0, r4, #0
	adds r0, #100
	movs r1, #23
	bl sub_08000680
	b .L082F13EA
.L082F13E0:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #22
	bl sub_08000680
.L082F13EA:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #54
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1404
	movs r0, #54
	bl sub_083189D0
.L082F1404:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F142C
	movs r1, #36
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble .L082F1424
	adds r0, r4, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F142C
.L082F1424:
	adds r0, r4, #0
	movs r1, #16
	bl sub_082F0880
.L082F142C:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F144E
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F144E:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1466
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F1466:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F146C
	.thumb_func
sub_082F146C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #10
	beq .L082F14C6
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #28]
	strh r4, [r5, #30]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	ldrh r1, [r5, #36]
	movs r2, #36
	ldrsh r0, [r5, r2]
	cmp r0, #127
	bgt .L082F149E
	adds r0, r1, #1
	strh r0, [r5, #36]
.L082F149E:
	movs r1, #36
	ldrsh r0, [r5, r1]
	cmp r0, #128
	ble .L082F14AA
	movs r0, #128
	strh r0, [r5, #36]
.L082F14AA:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F14BE
	adds r0, r6, #0
	movs r1, #25
	bl sub_08000680
	b .L082F14C6
.L082F14BE:
	adds r0, r6, #0
	movs r1, #24
	bl sub_08000680
.L082F14C6:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F14DC
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
.L082F14DC:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F14FE
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082F14FE:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1516
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F1516:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F151C
	.thumb_func
sub_082F151C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #11
	beq .L082F155C
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #28]
	strh r4, [r5, #30]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1554
	adds r0, r6, #0
	movs r1, #27
	bl sub_08000680
	b .L082F155C
.L082F1554:
	adds r0, r6, #0
	movs r1, #26
	bl sub_08000680
.L082F155C:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1572
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
.L082F1572:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1594
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082F1594:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F15AC
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F15AC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F15B4
	.thumb_func
sub_082F15B4:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #12
	beq .L082F15F4
	ldrb r0, [r5, #7]
	movs r4, #0
	strb r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #100
	adds r0, r6, #0
	bl sub_080006AC
	strh r4, [r5, #28]
	strh r4, [r5, #30]
	ldr r0, [r5, #96]
	bl sub_082FB9D0
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F15EC
	adds r0, r6, #0
	movs r1, #29
	bl sub_08000680
	b .L082F15F4
.L082F15EC:
	adds r0, r6, #0
	movs r1, #28
	bl sub_08000680
.L082F15F4:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F160A
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
.L082F160A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F162C
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082F162C:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1644
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F1644:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F164C
	.thumb_func
sub_082F164C:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #13
	beq .L082F1684
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1672
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #31
	bl sub_08000680
	b .L082F167E
.L082F1672:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #30
	bl sub_08000680
.L082F167E:
	adds r0, r4, #0
	bl sub_080006AC
.L082F1684:
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #1
	bls .L082F16AA
	movs r1, #36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L082F16A2
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
	b .L082F16AA
.L082F16A2:
	adds r0, r5, #0
	movs r1, #16
	bl sub_082F0880
.L082F16AA:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F16CC
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
.L082F16CC:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F16E4
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F16E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F16EC
	.thumb_func
sub_082F16EC:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #14
	beq .L082F1722
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1710
	adds r0, r4, #0
	adds r0, #100
	movs r1, #33
	bl sub_08000680
	b .L082F171A
.L082F1710:
	adds r0, r4, #0
	adds r0, #100
	movs r1, #32
	bl sub_08000680
.L082F171A:
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082F1722:
	adds r0, r4, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #39
	cmp r0, #1
	bls .L082F1754
	ldrh r0, [r4, #36]
	lsls r1, r0, #16
	asrs r1, r1, #19
	adds r1, #140
	adds r0, r4, #0
	movs r2, #32
	movs r3, #1
	bl sub_082F0608
	cmp r0, #0
	beq .L082F1754
	adds r0, r4, #0
	movs r1, #3
	bl sub_082F0880
.L082F1754:
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1776
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r4, #68]
.L082F1776:
	adds r0, r4, #0
	bl sub_082F066C
	adds r0, r4, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F178E
	adds r0, r4, #0
	movs r1, #5
	bl sub_082F0880
.L082F178E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F1794
	.thumb_func
sub_082F1794:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	adds r5, r0, #0
	bl sub_082F05A0
	ldr r7, [r5, #52]
	ldr r0, [r5, #56]
	mov r8, r0
	ldrb r1, [r5, #8]
	cmp r1, #15
	beq .L082F17BA
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F17BA:
	ldr r4, [pc, #20]
	ldrb r2, [r4, #7]
	cmp r2, #9
	bne .L082F17D4
	ldrh r0, [r5, #36]
	subs r0, #4
	strh r0, [r5, #36]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082F1828
	b .L082F1800
	movs r5, #12
	lsls r0, r0, #12
.L082F17D4:
	ldr r0, [r4, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1828
	adds r0, r4, #0
	adds r0, #93
	ldrb r0, [r0, #0]
	cmp r0, #4
	bne .L082F17F6
	ldrh r0, [r5, #36]
	subs r0, #16
	strh r0, [r5, #36]
	lsls r0, r0, #16
	cmp r0, #0
	ble .L082F1800
.L082F17F6:
	ldr r0, [pc, #24]
	adds r0, #93
	ldrb r0, [r0, #0]
	cmp r0, #5
	bne .L082F1814
.L082F1800:
	movs r0, #0
	strh r0, [r5, #36]
	adds r0, r5, #0
	movs r1, #9
	bl sub_082F0880
	b .L082F1AE4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F1814:
	adds r0, r5, #0
	movs r1, #200
	movs r2, #96
	movs r3, #1
	bl sub_082F0608
	cmp r0, #0
	beq .L082F1828
	movs r0, #180
	strh r0, [r5, #32]
.L082F1828:
	bl sub_082F05D0
	movs r2, #31
	ands r2, r0
	movs r1, #120
	subs r1, r1, r2
	ldrh r2, [r5, #36]
	lsls r0, r2, #16
	asrs r0, r0, #18
	subs r1, r1, r0
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	adds r0, #1
	lsls r2, r0, #4
	subs r2, r2, r0
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r3, #0
	bl sub_082F0608
	adds r4, r0, #0
	cmp r4, #0
	beq .L082F1900
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #40
	ble .L082F18C8
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F1878
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	b .L082F187E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F1878:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
.L082F187E:
	strb r0, [r1, #0]
	ldr r3, [pc, #44]
	ldr r1, [r5, #56]
	ldr r0, [r3, #56]
	subs r2, r1, r0
	asrs r1, r2, #8
	movs r0, #10
	negs r0, r0
	cmp r1, r0
	ble .L082F18BE
	ldrb r3, [r3, #7]
	cmp r3, #7
	bne .L082F18B4
	adds r0, r2, #0
	cmp r0, #0
	bge .L082F18A0
	negs r0, r0
.L082F18A0:
	asrs r0, r0, #8
	cmp r0, #9
	bgt .L082F18B4
	adds r0, r5, #0
	movs r1, #12
	bl sub_082F0880
	b .L082F1ABC
	movs r5, #12
	lsls r0, r0, #12
.L082F18B4:
	adds r0, r5, #0
	movs r1, #10
	bl sub_082F0880
	b .L082F1ABC
.L082F18BE:
	adds r0, r5, #0
	movs r1, #11
	bl sub_082F0880
	b .L082F1ABC
.L082F18C8:
	adds r0, r5, #0
	adds r0, #108
	ldrh r1, [r0, #0]
	adds r0, r1, #0
	subs r0, #20
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #1
	bls .L082F18F0
	adds r0, r1, #0
	cmp r0, #30
	beq .L082F18F0
	cmp r0, #31
	beq .L082F18F0
	adds r0, r5, #0
	adds r0, #100
	movs r1, #2
	bl sub_0800065C
	b .L082F18F8
.L082F18F0:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006C4
.L082F18F8:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	b .L082F1ABC
.L082F1900:
	ldrh r2, [r5, #36]
	lsls r1, r2, #16
	asrs r1, r1, #19
	adds r1, #140
	adds r0, r5, #0
	movs r2, #32
	movs r3, #1
	bl sub_082F0608
	cmp r0, #0
	bne .L082F1918
	b .L082F1A62
.L082F1918:
	ldr r0, [pc, #44]
	ldr r2, [r5, #52]
	ldr r1, [r0, #52]
	subs r0, r2, r1
	cmp r0, #0
	bge .L082F1926
	negs r0, r0
.L082F1926:
	asrs r0, r0, #8
	cmp r0, #8
	ble .L082F195C
	cmp r1, r2
	bge .L082F194C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	ldrh r0, [r5, #36]
	lsls r1, r0, #16
	asrs r1, r1, #17
	movs r0, #228
	negs r0, r0
	subs r0, r0, r1
	b .L082F195A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F194C:
	adds r0, r5, #0
	adds r0, #48
	strb r4, [r0, #0]
	ldrh r1, [r5, #36]
	lsls r0, r1, #16
	asrs r0, r0, #17
	adds r0, #228
.L082F195A:
	str r0, [r5, #64]
.L082F195C:
	ldr r0, [pc, #108]
	adds r1, r5, #0
	adds r1, #224
	ldrh r1, [r1, #0]
	bl sub_08316EF8
	ldr r6, [r5, #52]
	asrs r1, r6, #8
	ldrh r0, [r0, #0]
	subs r0, r0, r1
	cmp r0, #0
	bge .L082F1976
	negs r0, r0
.L082F1976:
	cmp r0, #149
	bgt .L082F1A50
	ldr r2, [r5, #64]
	cmp r2, #0
	bge .L082F19D6
	ldr r1, [r5, #56]
	movs r3, #60
	negs r3, r3
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #8
	str r0, [sp, #4]
	subs r0, #24
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1A38
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1A38
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F19D0
	adds r4, r5, #0
	adds r4, #100
	b .L082F1A24
	subs r1, #140
	lsls r0, r0, #12
.L082F19D0:
	adds r4, r5, #0
	adds r4, #100
	b .L082F1A2E
.L082F19D6:
	adds r4, r5, #0
	adds r4, #100
	cmp r2, #0
	ble .L082F1A86
	ldr r1, [r5, #56]
	movs r3, #8
	negs r3, r3
	movs r0, #32
	negs r0, r0
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	subs r0, #76
	str r0, [sp, #8]
	adds r0, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1A38
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1A38
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F1A2E
.L082F1A24:
	adds r0, r4, #0
	movs r1, #20
	bl sub_08000680
	b .L082F1A86
.L082F1A2E:
	adds r0, r4, #0
	movs r1, #21
	bl sub_08000680
	b .L082F1A86
.L082F1A38:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082F1A6C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #31
	bl sub_08000680
	b .L082F1A86
.L082F1A50:
	movs r0, #0
	strh r0, [r5, #36]
	adds r0, r5, #0
	movs r1, #16
	bl sub_082F0880
	adds r4, r5, #0
	adds r4, #100
	b .L082F1A86
.L082F1A62:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F1A7A
.L082F1A6C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #30
	bl sub_08000680
	b .L082F1A86
.L082F1A7A:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #31
	bl sub_08000680
.L082F1A86:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1AAA
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F1AB0
.L082F1AAA:
	str r7, [r5, #52]
	mov r2, r8
	str r2, [r5, #56]
.L082F1AB0:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	adds r0, r4, #0
	bl sub_08000704
.L082F1ABC:
	movs r1, #36
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L082F1ACC
	adds r0, r5, #0
	movs r1, #16
	bl sub_082F0880
.L082F1ACC:
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1AE4
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F1AE4:
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F1AF0
	.thumb_func
sub_082F1AF0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #52]
	mov r8, r0
	ldr r2, [r5, #56]
	mov r9, r2
	ldrb r0, [r5, #8]
	cmp r0, #16
	beq .L082F1B36
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F1B24
	adds r0, r5, #0
	adds r0, #100
	movs r1, #21
	bl sub_08000680
	b .L082F1B2E
.L082F1B24:
	adds r0, r5, #0
	adds r0, #100
	movs r1, #20
	bl sub_08000680
.L082F1B2E:
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082F1B36:
	bl sub_082F05A0
	movs r2, #36
	ldrsh r4, [r5, r2]
	bl sub_082F05D0
	movs r1, #63
	ands r0, r1
	adds r0, #64
	cmp r4, r0
	ble .L082F1B68
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #2
	bne .L082F1B60
	adds r0, r5, #0
	movs r1, #0
	bl sub_082F0880
	b .L082F1B68
.L082F1B60:
	adds r0, r5, #0
	movs r1, #15
	bl sub_082F0880
.L082F1B68:
	ldr r0, [pc, #28]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082F1B8C
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	ldrh r2, [r5, #36]
	lsls r0, r2, #16
	asrs r0, r0, #17
	adds r0, #228
	str r0, [r5, #64]
	adds r7, r1, #0
	b .L082F1BA4
	movs r5, #12
	lsls r0, r0, #12
.L082F1B8C:
	adds r2, r5, #0
	adds r2, #48
	movs r0, #1
	strb r0, [r2, #0]
	ldrh r0, [r5, #36]
	lsls r1, r0, #16
	asrs r1, r1, #17
	movs r0, #228
	negs r0, r0
	subs r0, r0, r1
	str r0, [r5, #64]
	adds r7, r2, #0
.L082F1BA4:
	ldr r4, [r5, #64]
	cmp r4, #0
	bge .L082F1BFC
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #60
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #8
	str r2, [sp, #4]
	subs r2, #24
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	adds r6, r5, #0
	adds r6, #100
	cmp r0, #0
	bne .L082F1C5A
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1C5A
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldrb r7, [r7, #0]
	cmp r7, #1
	beq .L082F1C48
	adds r0, r6, #0
	movs r1, #21
	bl sub_08000680
	b .L082F1C5A
.L082F1BFC:
	adds r6, r5, #0
	adds r6, #100
	cmp r4, #0
	ble .L082F1C5A
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r3, #8
	negs r3, r3
	movs r2, #32
	negs r2, r2
	str r2, [sp, #0]
	movs r2, #60
	str r2, [sp, #4]
	subs r2, #76
	str r2, [sp, #8]
	adds r2, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F1C5A
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1C5A
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldrb r7, [r7, #0]
	cmp r7, #1
	bne .L082F1C52
.L082F1C48:
	adds r0, r6, #0
	movs r1, #20
	bl sub_08000680
	b .L082F1C5A
.L082F1C52:
	adds r0, r6, #0
	movs r1, #21
	bl sub_08000680
.L082F1C5A:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F1C7E
	adds r0, r5, #0
	adds r0, #52
	adds r1, r5, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	movs r0, #0
	str r0, [r5, #68]
	b .L082F1C86
.L082F1C7E:
	mov r2, r8
	str r2, [r5, #52]
	mov r0, r9
	str r0, [r5, #56]
.L082F1C86:
	ldrh r0, [r5, #28]
	adds r0, #1
	strh r0, [r5, #28]
	adds r0, r6, #0
	bl sub_08000704
	ldrh r0, [r5, #36]
	adds r0, #1
	strh r0, [r5, #36]
	adds r0, r5, #0
	bl sub_082F066C
	adds r0, r5, #0
	bl sub_082F086C
	cmp r0, #1
	bne .L082F1CB0
	adds r0, r5, #0
	movs r1, #5
	bl sub_082F0880
.L082F1CB0:
	add sp, #12
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F1CC0
	.thumb_func
sub_082F1CC0:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x71e1 @ strb r1, [r4, #7]
	.2byte 0x1e48 @ subs r0, r1, #1
	.2byte 0x280d @ cmp r0, #13
	.2byte 0xd900 @ bls.n 0x82f1cce
	.2byte 0xe09d @ b.n 0x82f1e0a
	.2byte 0x0080 @ lsls r0, r0, #2
	.2byte 0x4901 @ ldr r1, [pc, #4]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0x6598 @ str r0, [r3, #88]
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4900 @ ldr r1, [pc, #0]
	.2byte 0xe02e @ b.n 0x82f1d42
	.2byte 0x2a0d @ cmp r2, #13
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe08b @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x2ee1 @ cmp r6, #225
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe083 @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x3295 @ adds r2, #149
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6460 @ str r0, [r4, #68]
	.2byte 0x3104 @ adds r1, #4
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe076 @ b.n 0x82f1e0a
	.2byte 0x34a9 @ adds r4, #169
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6ba0 @ ldr r0, [r4, #56]
	.2byte 0x1200 @ asrs r0, r0, #8
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x8460 @ strh r0, [r4, #34]
	.2byte 0xe01e @ b.n 0x82f1d74
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x387d @ subs r0, #125
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x8260 @ strh r0, [r4, #18]
	.2byte 0xe05f @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x3d19 @ subs r5, #25
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x81a0 @ strh r0, [r4, #12]
	.2byte 0xe055 @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x3eb5 @ subs r6, #181
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x205a @ movs r0, #90
	.2byte 0x8360 @ strh r0, [r4, #26]
	.2byte 0x8261 @ strh r1, [r4, #18]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30cc @ adds r0, #204
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0xe046 @ b.n 0x82f1e0a
	.2byte 0x40a1 @ lsls r1, r4
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x83e0 @ strh r0, [r4, #30]
	.2byte 0xe03d @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4371 @ muls r1, r6
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4807 @ ldr r0, [pc, #28]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x2500 @ movs r5, #0
	.2byte 0x6425 @ str r5, [r4, #64]
	.2byte 0xf511, 0xfb76 @ bl 0x8003490
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd003 @ beq.n 0x82f1db2
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x7821 @ ldrb r1, [r4, #0]
	.2byte 0x1808 @ adds r0, r1, r0
	.2byte 0x7001 @ strb r1, [r0, #0]
	.2byte 0x82a5 @ strh r5, [r4, #20]
	.2byte 0xe029 @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x44e9 @ add r9, sp
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x58ec @ ldr r4, [r5, r3]
	.2byte 0x0300 @ lsls r0, r0, #12
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe01f @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x46f1 @ mov r9, lr
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe017 @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x483d @ ldr r0, [pc, #244]
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe00f @ b.n 0x82f1e0a
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x47b5 @ @ <UNDEFINED> instruction: 0x47b5
	.2byte 0x082f @ lsrs r7, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4806 @ ldr r0, [pc, #24]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x6e20 @ ldr r0, [r4, #96]
	.2byte 0xf009, 0xfdcf @ bl 0x82fb99c
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x6460 @ str r0, [r4, #68]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x82e0 @ strh r0, [r4, #22]
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x84a0 @ strh r0, [r4, #36]
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x082F4935

	.thumb
	.align 1, 0
	.global sub_082F1E14
	.thumb_func
sub_082F1E14:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	mov r9, r1
	lsls r2, r2, #24
	lsrs r2, r2, #24
	lsls r0, r7, #5
	subs r0, r0, r7
	lsls r0, r0, #3
	ldr r1, [pc, #8]
	adds r6, r0, r1
	cmp r2, #0
	bne .L082F1E3C
	strb r2, [r6, #1]
	b .L082F205C
	movs r5, #12
	lsls r0, r0, #12
.L082F1E3C:
	movs r5, #0
	strb r7, [r6, #0]
	ldr r4, [pc, #204]
	adds r0, r4, #0
	bl sub_08316E68
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [r6, #52]
	adds r0, r4, #0
	bl sub_08316E68
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	str r0, [r6, #56]
	adds r1, r6, #0
	adds r1, #60
	movs r0, #41
	strb r0, [r1, #0]
	adds r0, r6, #0
	adds r0, #80
	movs r2, #0
	strh r5, [r0, #0]
	adds r1, #22
	ldr r0, [pc, #164]
	strh r0, [r1, #0]
	str r5, [r6, #64]
	str r5, [r6, #68]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r6, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r6, #76]
	adds r0, r6, #0
	adds r0, #48
	strb r2, [r0, #0]
	strb r2, [r6, #8]
	subs r0, #2
	movs r1, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	strb r1, [r6, #1]
	strb r1, [r6, #3]
	adds r0, #40
	strb r2, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	movs r3, #0
	movs r0, #204
	adds r0, r0, r6
	mov r8, r0
	movs r1, #90
	adds r1, r1, r6
	mov ip, r1
	lsls r5, r7, #1
	movs r0, #100
	adds r0, r0, r6
	mov sl, r0
	movs r2, #0
	adds r1, r6, #0
	adds r1, #26
	adds r0, r6, #0
	adds r0, #10
.L082F1EBE:
	strh r2, [r0, #0]
	adds r0, #2
	strh r2, [r1, #0]
	adds r1, #2
	adds r3, #1
	cmp r3, #7
	bls .L082F1EBE
	movs r4, #0
	mov r1, r8
	str r4, [r1, #0]
	ldr r0, [pc, #68]
	strb r4, [r0, #0]
	strb r4, [r0, #1]
	strb r4, [r0, #2]
	movs r3, #0
	mov r8, r3
	movs r0, #255
	mov r1, ip
	strh r0, [r1, #0]
	strh r4, [r6, #28]
	strh r4, [r6, #40]
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #0
	beq .L082F1F24
	ldr r0, [pc, #36]
	adds r0, r5, r0
	strh r4, [r0, #0]
	ldr r2, [pc, #36]
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r3, r1, r2
	movs r0, #1
	strb r0, [r3, #0]
	adds r0, r2, #1
	adds r0, r1, r0
	mov r3, r8
	b .L082F2008
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	.2byte 0xfff0 @ .raw
	movs r0, r0
	cmp r0, #240
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
.L082F1F24:
	ldr r0, [pc, #56]
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L082F1FBC
	ldrb r0, [r0, #0]
	bl sub_08315020
	adds r4, r0, #0
	ldrb r1, [r4, #15]
	adds r0, r6, #0
	adds r0, #92
	strb r1, [r0, #0]
	ldr r0, [pc, #36]
	adds r0, r5, r0
	ldrb r1, [r4, #17]
	strh r1, [r0, #0]
	ldr r1, [pc, #32]
	ldrh r0, [r4, #6]
	strh r0, [r1, #0]
	mov r3, r9
	cmp r3, #0
	bne .L082F1F70
	ldr r1, [pc, #24]
	adds r0, r5, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r1, r8
	strb r1, [r0, #0]
	b .L082F1F7C
	movs r0, r0
	strb r4, [r3, #21]
	lsls r0, r0, #8
	adds r4, #220
	lsls r0, r0, #12
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
.L082F1F70:
	ldr r0, [pc, #64]
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1, #0]
.L082F1F7C:
	ldr r1, [pc, #56]
	ldrb r0, [r4, #14]
	strb r0, [r1, #0]
	ldr r3, [pc, #48]
	adds r2, r5, r7
	lsls r2, r2, #1
	adds r0, r3, #1
	adds r0, r2, r0
	ldrb r1, [r4, #9]
	strb r1, [r0, #0]
	adds r0, r3, #2
	adds r0, r2, r0
	ldrb r1, [r4, #10]
	strb r1, [r0, #0]
	adds r0, r3, #3
	adds r0, r2, r0
	ldrb r1, [r4, #11]
	strb r1, [r0, #0]
	adds r0, r3, #4
	adds r0, r2, r0
	ldrb r1, [r4, #12]
	strb r1, [r0, #0]
	adds r3, #5
	adds r2, r2, r3
	ldrb r0, [r4, #13]
	strb r0, [r2, #0]
	b .L082F2022
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	cmp r0, #236
	lsls r0, r0, #12
.L082F1FBC:
	adds r1, r6, #0
	adds r1, #92
	movs r0, #3
	strb r0, [r1, #0]
	ldr r0, [pc, #28]
	adds r0, r5, r0
	strh r2, [r0, #0]
	ldr r0, [pc, #28]
	strh r2, [r0, #0]
	mov r3, r9
	cmp r3, #0
	bne .L082F1FF0
	ldr r1, [pc, #20]
	adds r0, r5, r7
	lsls r0, r0, #1
	adds r0, r0, r1
	mov r1, r8
	strb r1, [r0, #0]
	b .L082F1FFC
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
.L082F1FF0:
	ldr r0, [pc, #120]
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1, #0]
.L082F1FFC:
	ldr r2, [pc, #108]
	adds r1, r5, r7
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r1, r0
	movs r3, #0
.L082F2008:
	strb r3, [r0, #0]
	adds r0, r2, #2
	adds r0, r1, r0
	strb r3, [r0, #0]
	adds r0, r2, #3
	adds r0, r1, r0
	strb r3, [r0, #0]
	adds r0, r2, #4
	adds r0, r1, r0
	strb r3, [r0, #0]
	adds r2, #5
	adds r1, r1, r2
	strb r3, [r1, #0]
.L082F2022:
	ldr r1, [pc, #76]
	mov r0, sl
	movs r2, #93
	movs r3, #0
	bl sub_080002E0
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L082F203E
	ldrb r1, [r6, #0]
	adds r1, #2
	mov r0, sl
	bl sub_0800075C
.L082F203E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_082F1CC0
	adds r0, r7, #0
	bl sub_082FB284
	adds r0, r7, #0
	movs r1, #0
	bl sub_082FB6B0
	adds r0, r7, #0
	movs r1, #0
	bl sub_082FB6D8
.L082F205C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030034E4
	.4byte 0x080C0B80

	.thumb
	.align 1, 0
	.global sub_082F2074
	.thumb_func
sub_082F2074:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #100
	str r0, [sp, #48]
	str r2, [sp, #52]
	str r3, [sp, #56]
	lsls r0, r0, #5
	ldr r1, [sp, #48]
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #96]
	adds r0, r0, r1
	mov r8, r0
	cmp r2, #0
	blt .L082F209C
	cmp r3, #0
	bge .L082F2190
.L082F209C:
	movs r2, #0
	mov r9, r2
	mov r3, r8
	adds r3, #48
	str r3, [sp, #72]
	mov r5, r8
	adds r5, #46
	str r5, [sp, #64]
	mov r0, r8
	adds r0, #47
	str r0, [sp, #68]
	mov r2, r8
	adds r2, #204
	str r2, [sp, #76]
	adds r3, #42
	str r3, [sp, #80]
	ldr r5, [sp, #48]
	lsls r5, r5, #1
	str r5, [sp, #92]
	subs r0, #37
	str r0, [sp, #96]
	subs r2, #178
	str r2, [sp, #60]
	adds r3, #10
	str r3, [sp, #84]
.L082F20CE:
	ldr r0, [pc, #36]
	mov r1, r9
	bl sub_08316EA4
	ldrh r0, [r0, #0]
	mov sl, r0
	ldr r0, [pc, #24]
	mov r1, r9
	bl sub_08316EA4
	ldrh r7, [r0, #2]
	movs r6, #0
	ldr r4, [pc, #8]
	adds r4, #56
	movs r5, #0
	b .L082F212C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
.L082F20F8:
	ldr r0, [pc, #100]
	adds r0, #52
	adds r0, r5, r0
	ldr r1, [r0, #0]
	asrs r1, r1, #8
	ldr r0, [r4, #0]
	adds r4, #248
	asrs r0, r0, #8
	mov r2, sl
	subs r1, r2, r1
	subs r2, r7, r0
	adds r1, #240
	movs r0, #180
	lsls r0, r0, #2
	cmp r1, r0
	bhi .L082F2128
	movs r0, #160
	negs r0, r0
	cmp r2, r0
	blt .L082F2128
	movs r0, #160
	lsls r0, r0, #1
	cmp r2, r0
	ble .L082F213A
.L082F2128:
	adds r5, #248
	adds r6, #1
.L082F212C:
	bl sub_0800314C
	cmp r6, r0
	bcc .L082F20F8
	movs r3, #0
	cmp r3, #0
	beq .L082F2144
.L082F213A:
	movs r5, #1
	add r9, r5
	mov r0, r9
	cmp r0, #4
	bls .L082F20CE
.L082F2144:
	mov r1, r9
	cmp r1, #5
	bhi .L082F2168
	ldr r4, [pc, #24]
	adds r0, r4, #0
	bl sub_08316EA4
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #52]
	adds r0, r4, #0
	mov r1, r9
	b .L082F227E
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
.L082F2168:
	ldr r4, [pc, #32]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08316EA4
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r5, r8
	str r0, [r5, #52]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08316EA4
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	str r0, [r5, #56]
	b .L082F228A
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L082F2190:
	movs r7, #0
	mov r0, sp
	adds r0, #4
	str r0, [sp, #88]
	mov r1, r8
	adds r1, #48
	str r1, [sp, #72]
	mov r2, r8
	adds r2, #46
	str r2, [sp, #64]
	mov r3, r8
	adds r3, #47
	str r3, [sp, #68]
	mov r5, r8
	adds r5, #204
	str r5, [sp, #76]
	mov r0, r8
	adds r0, #90
	str r0, [sp, #80]
	ldr r1, [sp, #48]
	lsls r1, r1, #1
	str r1, [sp, #92]
	subs r2, #36
	str r2, [sp, #96]
	subs r3, #21
	str r3, [sp, #60]
	subs r5, #104
	str r5, [sp, #84]
	ldr r0, [pc, #372]
	mov sl, r0
	mov r9, sp
.L082F21CE:
	mov r0, sl
	adds r1, r7, #0
	bl sub_08316EA4
	adds r6, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_08316EA4
	adds r5, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_08316EA4
	adds r4, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl sub_08316EA4
	ldrh r6, [r6, #0]
	ldr r1, [sp, #52]
	subs r2, r6, r1
	ldrh r5, [r5, #0]
	subs r1, r5, r1
	muls r2, r1
	ldrh r4, [r4, #2]
	ldr r3, [sp, #56]
	subs r1, r4, r3
	ldrh r0, [r0, #2]
	subs r0, r0, r3
	muls r0, r1
	adds r0, r2, r0
	cmp r0, #0
	bge .L082F2214
	negs r0, r0
.L082F2214:
	bl Sqrt
	lsls r1, r7, #3
	lsls r0, r0, #16
	lsrs r0, r0, #16
	mov r5, r9
	str r0, [r5, #0]
	ldr r0, [sp, #88]
	adds r1, r0, r1
	str r7, [r1, #0]
	movs r1, #8
	add r9, r1
	adds r7, #1
	cmp r7, #5
	bls .L082F21CE
	movs r1, #0
	movs r7, #6
.L082F2236:
	subs r0, r7, r1
	adds r6, r1, #1
	cmp r0, #1
	ble .L082F2262
	mov r4, sp
	subs r5, r0, #1
.L082F2242:
	ldr r1, [r4, #0]
	ldr r0, [r4, #8]
	cmp r1, r0
	bls .L082F225A
	ldr r2, [r4, #0]
	ldr r3, [r4, #4]
	ldr r0, [r4, #8]
	ldr r1, [r4, #12]
	str r0, [r4, #0]
	str r1, [r4, #4]
	str r2, [r4, #8]
	str r3, [r4, #12]
.L082F225A:
	adds r4, #8
	subs r5, #1
	cmp r5, #0
	bne .L082F2242
.L082F2262:
	adds r1, r6, #0
	cmp r1, #4
	ble .L082F2236
	ldr r4, [pc, #212]
	ldr r1, [sp, #4]
	adds r0, r4, #0
	bl sub_08316EA4
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	mov r2, r8
	str r0, [r2, #52]
	ldr r1, [sp, #4]
	adds r0, r4, #0
.L082F227E:
	bl sub_08316EA4
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	mov r3, r8
	str r0, [r3, #56]
.L082F228A:
	movs r1, #0
	mov r5, r8
	str r1, [r5, #64]
	str r1, [r5, #68]
	ldr r0, [sp, #72]
	strb r1, [r0, #0]
	strb r1, [r5, #8]
	movs r3, #1
	ldr r2, [sp, #64]
	strb r3, [r2, #0]
	ldr r5, [sp, #68]
	strb r3, [r5, #0]
	mov r0, r8
	strb r3, [r0, #1]
	strb r3, [r0, #3]
	ldr r2, [sp, #76]
	str r1, [r2, #0]
	movs r4, #0
	movs r0, #255
	ldr r5, [sp, #80]
	strh r0, [r5, #0]
	ldr r0, [pc, #140]
	ldr r2, [sp, #92]
	adds r0, r2, r0
	strh r1, [r0, #0]
	mov r5, r8
	strh r1, [r5, #28]
	strh r1, [r5, #40]
	ldr r2, [pc, #132]
	ldr r0, [sp, #92]
	ldr r5, [sp, #48]
	adds r1, r0, r5
	lsls r1, r1, #1
	adds r0, r1, r2
	strb r3, [r0, #0]
	adds r0, r2, #1
	adds r0, r1, r0
	strb r4, [r0, #0]
	adds r0, r2, #2
	adds r0, r1, r0
	strb r4, [r0, #0]
	adds r0, r2, #3
	adds r0, r1, r0
	strb r4, [r0, #0]
	adds r0, r2, #4
	adds r0, r1, r0
	strb r4, [r0, #0]
	adds r2, #5
	adds r1, r1, r2
	strb r4, [r1, #0]
	movs r2, #0
	movs r3, #0
	ldr r1, [sp, #60]
	ldr r0, [sp, #96]
.L082F22F6:
	strh r3, [r0, #0]
	adds r0, #2
	strh r3, [r1, #0]
	adds r1, #2
	adds r2, #1
	cmp r2, #7
	bls .L082F22F6
	mov r0, r8
	bl sub_08306E28
	ldr r0, [sp, #84]
	movs r1, #93
	bl sub_08000680
	mov r0, r8
	movs r1, #1
	bl sub_082F1CC0
	ldr r0, [sp, #48]
	bl sub_082FB284
	ldr r0, [sp, #48]
	movs r1, #0
	bl sub_082FB6D8
	mov r1, r8
	ldr r0, [r1, #96]
	bl sub_082FB99C
	add sp, #100
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300398C
	.4byte 0x030034DC
	.4byte 0x030034E4

	.thumb
	.align 1, 0
	.global sub_082F234C
	.thumb_func
sub_082F234C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	adds r2, r0, #0
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	ldr r1, [pc, #100]
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt .L082F2380
	ldr r0, [pc, #88]
	lsls r1, r2, #1
	adds r0, r1, r0
	movs r2, #0
	strh r2, [r0, #0]
	ldr r0, [pc, #84]
	adds r1, r1, r0
	strh r2, [r1, #0]
.L082F2380:
	adds r0, r5, #0
	adds r0, #200
	ldr r1, [r0, #0]
	adds r0, r5, #0
	bl sub_0831A7E8
	ldr r0, [r5, #96]
	bl sub_082FB9FC
	ldrh r1, [r5, #28]
	movs r2, #28
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082F23E8
	subs r0, r1, #1
	strh r0, [r5, #28]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082F23B2
	adds r1, r5, #0
	adds r1, #47
	movs r0, #1
	strb r0, [r1, #0]
	subs r1, #1
	strb r0, [r1, #0]
.L082F23B2:
	movs r0, #7
	ldrh r1, [r5, #28]
	ands r0, r1
	cmp r0, #1
	bgt .L082F23D4
	adds r0, r5, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082F240C
	movs r5, #12
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
.L082F23D4:
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq .L082F23EE
	adds r0, r5, #0
	adds r0, #100
	ldrb r1, [r5, #0]
	adds r1, #2
	bl sub_0800075C
	b .L082F240C
.L082F23E8:
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L082F2400
.L082F23EE:
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #8]
	bl sub_0800075C
	b .L082F240C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082F2400:
	adds r0, r5, #0
	adds r0, #100
	ldrb r1, [r5, #0]
	adds r1, #2
	bl sub_0800075C
.L082F240C:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F2418
	b .L082F2534
.L082F2418:
	movs r2, #0
	mov sl, r2
	mov r9, r2
.L082F241E:
	ldr r0, [pc, #144]
	mov r1, r9
	adds r4, r1, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F251C
	cmp r5, r4
	beq .L082F251C
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F251C
	ldr r2, [r5, #52]
	ldr r3, [r4, #52]
	subs r1, r2, r3
	cmp r1, #0
	bge .L082F244A
	negs r1, r1
.L082F244A:
	ldr r0, [pc, #104]
	cmp r1, r0
	bgt .L082F251C
	cmp r2, r3
	bge .L082F24BC
	ldr r1, [pc, #96]
	adds r0, r2, r1
	ldr r1, [r5, #56]
	movs r2, #32
	negs r2, r2
	mov r8, r2
	str r2, [sp, #0]
	movs r7, #12
	str r7, [sp, #4]
	movs r6, #8
	negs r6, r6
	str r6, [sp, #8]
	ldr r2, [pc, #72]
	movs r3, #12
	negs r3, r3
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F2484
	ldr r0, [r5, #52]
	ldr r1, [pc, #56]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F2484:
	ldr r0, [r4, #52]
	ldr r2, [pc, #48]
	adds r0, r0, r2
	ldr r1, [r4, #56]
	mov r2, r8
	str r2, [sp, #0]
	str r7, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #3
	movs r3, #12
	negs r3, r3
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F251C
	ldr r0, [r4, #52]
	movs r1, #128
	lsls r1, r1, #3
	b .L082F2518
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	subs r7, r7, r7
	movs r0, r0
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
.L082F24BC:
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r2, r1
	ldr r1, [r5, #56]
	movs r2, #32
	negs r2, r2
	mov r8, r2
	str r2, [sp, #0]
	movs r7, #12
	str r7, [sp, #4]
	movs r6, #8
	negs r6, r6
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #3
	movs r3, #12
	negs r3, r3
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F24F2
	ldr r0, [r5, #52]
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #52]
.L082F24F2:
	ldr r0, [r4, #52]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r4, #56]
	mov r2, r8
	str r2, [sp, #0]
	str r7, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #40]
	movs r3, #12
	negs r3, r3
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F251C
	ldr r0, [r4, #52]
	ldr r1, [pc, #24]
.L082F2518:
	adds r0, r0, r1
	str r0, [r4, #52]
.L082F251C:
	movs r2, #248
	add r9, r2
	movs r0, #1
	add sl, r0
	mov r1, sl
	cmp r1, #4
	beq .L082F252C
	b .L082F241E
.L082F252C:
	b .L082F25D8
	movs r0, r0
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
.L082F2534:
	ldrb r2, [r5, #7]
	cmp r2, #14
	beq .L082F25D8
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_080011F0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F25D8
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #80
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ldr r2, [r1, #52]
	adds r0, r2, r0
	ldr r3, [r5, #52]
	subs r0, r3, r0
	ldr r1, [pc, #64]
	cmp r0, r1
	bgt .L082F25D8
	ldr r0, [r5, #64]
	cmp r0, #0
	bge .L082F256A
	negs r0, r0
.L082F256A:
	asrs r0, r0, #1
	cmp r3, r2
	bge .L082F25A8
	negs r0, r0
	str r0, [r5, #64]
	ldr r2, [pc, #44]
	adds r0, r3, r2
	ldr r1, [r5, #56]
	movs r3, #12
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #12
	str r4, [sp, #4]
	subs r4, #20
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F25D8
	ldr r0, [r5, #52]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082F25D6
	movs r0, r0
	asrs r7, r7, #23
	movs r0, r0
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
.L082F25A8:
	str r0, [r5, #64]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r3, r2
	ldr r1, [r5, #56]
	movs r3, #12
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #12
	str r4, [sp, #4]
	subs r4, #20
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F25D8
	ldr r0, [r5, #52]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r0, r2
.L082F25D6:
	str r0, [r5, #52]
.L082F25D8:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08000898
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F25F2
	adds r1, r5, #0
	adds r1, #90
	movs r0, #0
	strh r0, [r1, #0]
.L082F25F2:
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r4, [pc, #72]
	ldr r0, [r4, #32]
	adds r0, #32
	cmp r1, r0
	bge .L082F2604
	lsls r0, r0, #8
	str r0, [r5, #52]
.L082F2604:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r4, #24]
	adds r1, #208
	cmp r0, r1
	ble .L082F2614
	lsls r0, r1, #8
	str r0, [r5, #52]
.L082F2614:
	ldr r0, [r5, #56]
	asrs r0, r0, #8
	ldr r1, [r4, #36]
	cmp r0, r1
	bge .L082F2622
	lsls r0, r1, #8
	str r0, [r5, #56]
.L082F2622:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2644
	ldr r0, [r5, #56]
	asrs r0, r0, #8
	ldr r1, [r4, #28]
	adds r1, #200
	cmp r0, r1
	ble .L082F2710
	lsls r0, r1, #8
	str r0, [r5, #56]
	b .L082F2710
	movs r0, r0
	subs r0, #204
	lsls r0, r0, #12
.L082F2644:
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r0, [pc, #32]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	movs r2, #128
	lsls r2, r2, #1
	adds r0, r0, r2
	cmp r1, r0
	bls .L082F2700
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	adds r4, r5, #0
	adds r4, #92
	b .L082F2674
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L082F2670:
	bl VBlankIntrWait
.L082F2674:
	bl Fade_IsBusy
	adds r2, r0, #0
	cmp r2, #0
	bne .L082F2670
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L082F26EE
	subs r0, #1
	strb r0, [r4, #0]
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F26EE
	ldr r0, [pc, #52]
	movs r1, #0
	strh r2, [r0, #0]
	ldr r0, [pc, #48]
	strh r2, [r0, #0]
	str r2, [r5, #64]
	str r2, [r5, #68]
	adds r0, r5, #0
	adds r0, #48
	strb r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #90
	movs r0, #255
	strh r0, [r1, #0]
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	cmp r1, #0
	bne .L082F26BA
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F26D4
.L082F26BA:
	str r1, [r5, #52]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	b .L082F26EC
	movs r0, r0
	lsrs r4, r2, #20
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	cmp r0, #244
	lsls r0, r0, #12
	cmp r0, #248
	lsls r0, r0, #12
.L082F26D4:
	ldr r4, [pc, #36]
	adds r0, r4, #0
	bl sub_08316E68
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [r5, #52]
	adds r0, r4, #0
	bl sub_08316E68
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
.L082F26EC:
	str r0, [r5, #56]
.L082F26EE:
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L082F2710
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L082F2700:
	ldr r0, [pc, #84]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F2710
	ldr r0, [pc, #80]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
.L082F2710:
	ldrb r0, [r5, #7]
	cmp r0, #8
	beq .L082F2748
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r5, [r5, #0]
	cmp r5, r0
	bne .L082F2748
	movs r0, #14
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2748
	movs r0, #14
	bl sub_08316874
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq .L082F2748
	movs r0, #14
	bl sub_08316874
	bl sub_08319148
.L082F2748:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030058F2
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082F2760
	.thumb_func
sub_082F2760:
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #3
	ldr r1, [pc, #108]
	adds r5, r0, r1
	cmp r4, #2
	bne .L082F2784
	ldr r0, [pc, #104]
	lsls r1, r3, #1
	adds r0, r1, r0
	movs r2, #16
	strh r2, [r0, #0]
	ldr r0, [pc, #100]
	adds r1, r1, r0
	strh r2, [r1, #0]
.L082F2784:
	cmp r4, #1
	bne .L082F2798
	ldr r0, [pc, #84]
	lsls r1, r3, #1
	adds r0, r1, r0
	movs r2, #32
	strh r2, [r0, #0]
	ldr r0, [pc, #80]
	adds r1, r1, r0
	strh r2, [r1, #0]
.L082F2798:
	cmp r4, #8
	bne .L082F27B2
	adds r0, r5, #0
	adds r0, #48
	movs r2, #0
	strb r2, [r0, #0]
	ldr r0, [pc, #56]
	lsls r1, r3, #1
	adds r0, r1, r0
	strh r2, [r0, #0]
	ldr r0, [pc, #52]
	adds r1, r1, r0
	strh r2, [r1, #0]
.L082F27B2:
	cmp r4, #7
	bne .L082F27CE
	adds r1, r5, #0
	adds r1, #48
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #28]
	lsls r1, r3, #1
	adds r0, r1, r0
	strh r2, [r0, #0]
	ldr r0, [pc, #24]
	adds r1, r1, r0
	strh r2, [r1, #0]
.L082F27CE:
	adds r0, r3, #0
	bl sub_082F234C
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x03000D14
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_082F27E8
	.thumb_func
sub_082F27E8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #3
	ldr r1, [pc, #72]
	adds r5, r0, r1
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L082F2844
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2844
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r3, [pc, #32]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #60
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	b .L082F284E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	subs r0, #204
	lsls r0, r0, #12
.L082F2844:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_0800060C
.L082F284E:
	adds r0, r4, #0
	bl Sprite_Draw
	adds r0, r6, #0
	bl sub_082FB850
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F2860
	.thumb_func
sub_082F2860:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F2874
	b .L082F2980
.L082F2874:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F2880
	b .L082F29D8
.L082F2880:
	adds r0, r4, #0
	adds r0, #232
	ldr r0, [r0, #0]
	cmp r0, #4
	beq .L082F2900
	cmp r0, #4
	bgt .L082F2894
	cmp r0, #3
	beq .L082F289E
	b .L082F292C
.L082F2894:
	cmp r0, #7
	beq .L082F2900
	cmp r0, #8
	beq .L082F2918
	b .L082F292C
.L082F289E:
	ldrb r0, [r4, #7]
	cmp r0, #14
	beq .L082F292C
	adds r0, r4, #0
	movs r1, #14
	bl sub_082F1CC0
	adds r0, r4, #0
	adds r0, #240
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L082F28BE
	adds r0, r4, #0
	adds r0, #48
	strb r5, [r0, #0]
	b .L082F28C6
.L082F28BE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
.L082F28C6:
	movs r0, #2
	mov r1, sp
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F28F2
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F28EA
	ldr r0, [r1, #52]
	movs r1, #184
	lsls r1, r1, #6
	adds r0, r0, r1
	b .L082F28F0
.L082F28EA:
	ldr r0, [r1, #52]
	ldr r3, [pc, #12]
	adds r0, r0, r3
.L082F28F0:
	str r0, [r4, #52]
.L082F28F2:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #0
	b .L082F29DA
	bcs .L082F2900
	.2byte 0xffff @ .raw
.L082F2900:
	ldrb r0, [r4, #7]
	cmp r0, #3
	beq .L082F292C
	cmp r0, #5
	beq .L082F292C
	cmp r0, #8
	beq .L082F292C
	adds r0, r4, #0
	movs r1, #10
	bl sub_082F1CC0
	b .L082F292C
.L082F2918:
	adds r0, r4, #0
	adds r0, #240
	ldr r0, [r0, #0]
	cmp r0, #1
	bne .L082F2928
	movs r0, #128
	lsls r0, r0, #4
	b .L082F292A
.L082F2928:
	ldr r0, [pc, #68]
.L082F292A:
	str r0, [r4, #64]
.L082F292C:
	ldrh r0, [r4, #14]
	cmp r0, #0
	bne .L082F2938
	adds r0, r4, #0
	adds r0, #244
	ldrb r5, [r0, #0]
.L082F2938:
	adds r0, r4, #0
	adds r0, #245
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F294E
	adds r1, r4, #0
	adds r1, #46
	movs r0, #0
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
.L082F294E:
	adds r0, r4, #0
	adds r0, #246
	ldrb r0, [r0, #0]
	strh r0, [r4, #28]
	adds r0, r4, #0
	adds r0, #236
	ldrh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #90
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r0, r2
	cmp r0, #0
	blt .L082F2974
	ldrh r3, [r1, #0]
	subs r0, r3, r2
	b .L082F2976
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F2974:
	movs r0, #0
.L082F2976:
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_08306E28
	b .L082F29D8
.L082F2980:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F29D8
	ldrh r0, [r4, #14]
	cmp r0, #0
	bne .L082F2996
	adds r0, r4, #0
	adds r0, #244
	ldrb r5, [r0, #0]
.L082F2996:
	adds r0, r4, #0
	adds r0, #245
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F29AC
	adds r1, r4, #0
	adds r1, #46
	movs r0, #0
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
.L082F29AC:
	adds r0, r4, #0
	adds r0, #246
	ldrb r0, [r0, #0]
	strh r0, [r4, #28]
	adds r0, r4, #0
	adds r0, #236
	ldrh r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #90
	movs r3, #0
	ldrsh r0, [r1, r3]
	subs r0, r0, r2
	cmp r0, #0
	blt .L082F29CE
	ldrh r3, [r1, #0]
	subs r0, r3, r2
	b .L082F29D0
.L082F29CE:
	movs r0, #0
.L082F29D0:
	strh r0, [r1, #0]
	adds r0, r4, #0
	bl sub_08306E28
.L082F29D8:
	adds r0, r5, #0
.L082F29DA:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F29E4
	.thumb_func
sub_082F29E4:
	push {lr}
	ldr r0, [r0, #96]
	bl sub_082FB23C
	adds r0, #64
	pop {r1}
	bx r1
	.2byte 0x0000

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
	bl Sprite_Init
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
	bl Sprite_Init
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
	bl Sprite_Init
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

	.thumb
	.align 1, 0
	.global sub_082F29F4
	.thumb_func
sub_082F29F4:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #96]
	bl sub_082FB250
	adds r1, r0, #0
	ldr r0, [r4, #72]
	adds r0, r0, r1
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

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

	.thumb
	.align 1, 0
	.global sub_082F4B78
	.thumb_func
sub_082F4B78:
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq .L082F4B94
	movs r0, #0
	strb r0, [r1, #2]
	ldrb r0, [r1, #3]
	cmp r0, #0
	beq .L082F4B94
	adds r0, r1, #0
	adds r0, #40
	bl sub_080005D4
.L082F4B94:
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F4B98
	.thumb_func
sub_082F4B98:
	push {r4, r5, lr}
	ldr r4, [pc, #24]
	ldr r0, [pc, #24]
	adds r5, r4, r0
.L082F4BA0:
	adds r0, r4, #0
	bl sub_082F4B78
	adds r4, #152
	cmp r4, r5
	bls .L082F4BA0
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030028FC
	.4byte 0x00000B48

	.thumb
	.align 1, 0
	.global sub_082F4BBC
	.thumb_func
sub_082F4BBC:
	push {r4, lr}
	movs r4, #0
.L082F4BC0:
	movs r0, #152
	adds r1, r4, #0
	muls r1, r0
	ldr r0, [pc, #32]
	adds r2, r1, r0
	ldrb r0, [r2, #2]
	cmp r0, #1
	bne .L082F4BDC
	adds r0, r2, #0
	adds r0, #140
	ldr r1, [r0, #0]
	adds r0, r2, #0
	bl sub_0831A7E8
.L082F4BDC:
	adds r4, #1
	cmp r4, #19
	bls .L082F4BC0
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030028FC

	.thumb
	.align 1, 0
	.global sub_082F4BEC
	.thumb_func
sub_082F4BEC:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r7, [pc, #80]
.L082F4BF2:
	movs r0, #152
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #76]
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L082F4C5C
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L082F4C5C
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L082F4C5C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4C4C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r0, [r7, #8]
	subs r1, r1, r0
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	ldr r0, [r7, #12]
	subs r2, r2, r0
	ldrb r3, [r5, #16]
	adds r0, r4, #0
	bl sub_08000684
	b .L082F4C56
	subs r0, #204
	lsls r0, r0, #12
	cmp r0, #252
	lsls r0, r0, #12
.L082F4C4C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_0800060C
.L082F4C56:
	adds r0, r4, #0
	bl Sprite_Draw
.L082F4C5C:
	adds r6, #1
	cmp r6, #19
	bls .L082F4BF2
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F4C68
	.thumb_func
sub_082F4C68:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F4D30
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F4CEC
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F4D0A
	b .L082F4CE4
	.2byte 0xffff @ .raw
.L082F4CE4:
	ldr r5, [pc, #276]
	lsrs r7, r5, #32
	adds r3, #0
	lsrs r3, r2, #32
.L082F4CEC:
	ldr r0, [pc, #72]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #60]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F4D0A:
	movs r0, #35
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4D30
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4D30
	movs r0, #35
	bl sub_083189D0
.L082F4D30:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFF800
	.4byte 0x08133300

	.thumb
	.align 1, 0
	.global sub_082F4D44
	.thumb_func
sub_082F4D44:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4DAC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #45
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4D80
	movs r0, #45
	bl sub_083189D0
.L082F4D80:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F4D98
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F4DA4
	ldr r6, [pc, #468]
	lsrs r7, r5, #32
.L082F4D98:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F4DA4:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F4E6C
.L082F4DAC:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4DCA
	adds r0, r5, #0
	bl sub_082F4B78
.L082F4DCA:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4E64
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F4DF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F4DFC
	movs r5, #12
	lsls r0, r0, #12
.L082F4DF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F4DFC:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #80]
	ldr r2, [pc, #80]
	ldr r1, [pc, #84]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	movs r0, #45
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4E6C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4E6C
	movs r0, #45
	bl sub_083189D0
	b .L082F4E6C
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	ldr r6, [pc, #468]
	lsrs r7, r5, #32
.L082F4E64:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F4E6C:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F4E74
	.thumb_func
sub_082F4E74:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F4E8A
	adds r0, r4, #0
	bl sub_082F4B78
.L082F4E8A:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F4E90
	.thumb_func
sub_082F4E90:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F4EC2
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #16
	strh r0, [r1, #6]
.L082F4EC2:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082F4ED1

	.thumb
	.align 1, 0
	.global sub_082F4ED0
	.thumb_func
sub_082F4ED0:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #144
	ldr r0, [r5, #0]
	ldr r0, [r0, #16]
	ldr r6, [pc, #40]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4F44
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F4F0C
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F4F16
	b .L082F4F1A
	movs r5, #12
	lsls r0, r0, #12
.L082F4F0C:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F4F16
	movs r3, #1
.L082F4F16:
	cmp r3, #0
	beq .L082F4F44
.L082F4F1A:
	ldr r0, [pc, #96]
	ldr r2, [pc, #96]
	ldr r1, [pc, #100]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #75
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	adds r0, r4, #0
	bl sub_082F4B78
.L082F4F44:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L082F4F56
	adds r0, r4, #0
	bl sub_082F4B78
.L082F4F56:
	ldrb r0, [r4, #2]
	cmp r0, #0
	bne .L082F4F74
	ldr r0, [r4, #20]
	asrs r0, r0, #8
	ldr r1, [r4, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F4F74
	movs r0, #40
	bl sub_083189D0
.L082F4F74:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D65D8
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F4F88
	.thumb_func
sub_082F4F88:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F4FBC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #25
	strh r0, [r1, #6]
	movs r0, #3
	bl sub_083189D0
.L082F4FBC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F4FC9

	.thumb
	.align 1, 0
	.global sub_082F4FC8
	.thumb_func
sub_082F4FC8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F503E
	adds r5, r4, #0
	adds r5, #144
	ldr r0, [r5, #0]
	ldr r0, [r0, #16]
	ldr r6, [pc, #40]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5054
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F500C
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F5016
	b .L082F501A
	movs r5, #12
	lsls r0, r0, #12
.L082F500C:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F5016
	movs r3, #1
.L082F5016:
	cmp r3, #0
	beq .L082F5054
.L082F501A:
	ldr r0, [pc, #44]
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #60
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
.L082F503E:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F505A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F5054:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F505A:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F5064
	.thumb_func
sub_082F5064:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F510C
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F50E8
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F5106
	ble .L082F50E0
	.2byte 0xffff @ .raw
.L082F50E0:
	str r1, [r4, r4]
	lsrs r7, r5, #32
	str r0, [r4, #80]
	lsrs r7, r2, #32
.L082F50E8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F5106:
	movs r0, #40
	bl sub_083189D0
.L082F510C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x08176520

	.thumb
	.align 1, 0
	.global sub_082F5120
	.thumb_func
sub_082F5120:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F51A4
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #68]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F517A
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F517A
	movs r0, #33
	bl sub_083189D0
.L082F517A:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5194
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F519C
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r7, r1]
	lsrs r7, r5, #32
.L082F5194:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F519C:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5270
.L082F51A4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F51C2
	adds r0, r5, #0
	bl sub_082F4B78
.L082F51C2:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5268
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F51E8
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F51F4
	movs r5, #12
	lsls r0, r0, #12
.L082F51E8:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F51F4:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #88]
	ldr r2, [pc, #88]
	ldr r1, [pc, #92]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #64]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5270
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5270
	movs r0, #33
	bl sub_083189D0
	b .L082F5270
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r5, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r7, r1]
	lsrs r7, r5, #32
.L082F5268:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5270:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5278
	.thumb_func
sub_082F5278:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F528E
	adds r0, r4, #0
	bl sub_082F4B78
.L082F528E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5294
	.thumb_func
sub_082F5294:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5342
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [pc, #56]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5324
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	b .L082F5342
	movs r0, r0
	ble .L082F5318
	.2byte 0xffff @ .raw
.L082F5318:
	strh r1, [r3, r5]
	lsrs r7, r5, #32
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
	strh r0, [r0, #36]
	lsrs r7, r2, #32
.L082F5324:
	ldr r0, [pc, #36]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #32]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F5342:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFD00
	.4byte 0xFFFFEC00
	.4byte 0x08178480

	.thumb
	.align 1, 0
	.global sub_082F5358
	.thumb_func
sub_082F5358:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F53C4
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #60]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F53B2
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F53B2
	movs r0, #33
	bl sub_083189D0
.L082F53B2:
	ldrb r0, [r5, #14]
	cmp r0, #0
	beq .L082F5418
	b .L082F542C
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F53C4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #160
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F543C
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #68]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5412
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5412
	movs r0, #33
	bl sub_083189D0
.L082F5412:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F542C
.L082F5418:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5434
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F542C:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5434:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5514
.L082F543C:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	adds r2, #64
	str r2, [r5, #32]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5464
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5464:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F550C
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F548C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5498
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F548C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5498:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #88]
	ldr r2, [pc, #88]
	ldr r1, [pc, #92]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #64]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	movs r0, #33
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5514
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5514
	movs r0, #33
	bl sub_083189D0
	b .L082F5514
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r5, [r3, r4]
	lsrs r7, r5, #32
.L082F550C:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5514:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F551C
	.thumb_func
sub_082F551C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5532
	adds r0, r4, #0
	bl sub_082F4B78
.L082F5532:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5538
	.thumb_func
sub_082F5538:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F55DA
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #28]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #6
	bne .L082F5590
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	b .L082F5596
	movs r0, r0
	strb r5, [r5, r7]
	lsrs r7, r5, #32
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082F5590:
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #28]
.L082F5596:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F55B8
	movs r0, #160
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	b .L082F55C4
	ble .L082F55B8
	.2byte 0xffff @ .raw
.L082F55B8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
.L082F55C4:
	adds r0, r0, r2
	str r0, [r1, #20]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F55DA
	movs r0, #20
	bl sub_083189D0
.L082F55DA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF600
	.4byte 0xFFFFEC00

	.thumb
	.align 1, 0
	.global sub_082F55EC
	.thumb_func
sub_082F55EC:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F5618
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F56B4
.L082F5618:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5636
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5636:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #64]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F56B4
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F568C
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	str r3, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	b .L082F56AE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #92]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F568C:
	ldr r1, [pc, #44]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #0
	bl sub_08306DD4
.L082F56AE:
	adds r0, r5, #0
	bl sub_082F4B78
.L082F56B4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D65F8
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F56C4
	.thumb_func
sub_082F56C4:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F56EC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #8]
	str r1, [r0, #0]
.L082F56EC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F56F9

	.thumb
	.align 1, 0
	.global sub_082F56F8
	.thumb_func
sub_082F56F8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	ldr r5, [pc, #76]
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F578E
	ldr r0, [r4, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F5760
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F578E
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #7
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #0]
	add r0, sp, #8
	strb r3, [r0, #0]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #2
	bl sub_08306DD4
	b .L082F578E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r0, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F5760:
	ldr r1, [r5, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F578E
	ldr r1, [pc, #48]
	ldr r0, [pc, #52]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #7
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #0
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	movs r1, #4
	movs r3, #2
	bl sub_08306DD4
.L082F578E:
	adds r0, r6, #0
	bl sub_082F4B78
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D6600
	.4byte 0x02007566

	.thumb
	.align 1, 0
	.global sub_082F57A4
	.thumb_func
sub_082F57A4:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L082F57BA
	b .L082F58BC
.L082F57BA:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	ldr r0, [r4, #16]
	ldrb r0, [r0, #7]
	cmp r0, #10
	beq .L082F5880
	cmp r0, #10
	blt .L082F5880
	cmp r0, #11
	beq .L082F57F8
	cmp r0, #12
	beq .L082F5840
	b .L082F5880
	movs r0, r0
	ldr r5, [r4, r3]
	lsrs r7, r5, #32
.L082F57F8:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5812
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F581E
.L082F5812:
	ldr r0, [pc, #36]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #28]
.L082F581E:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F58BA
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f683e
.L082F5840:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F585A
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F5866
.L082F585A:
	ldr r0, [pc, #24]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #16]
.L082F5866:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	b .L082F58B2
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f687a
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082F5880:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F589A
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F58A6
.L082F589A:
	ldr r0, [pc, #60]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #52]
.L082F58A6:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #44]
.L082F58B2:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #0
.L082F58BA:
	str r0, [r1, #32]
.L082F58BC:
	movs r0, #22
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F58CE
	movs r0, #22
	bl sub_083189D0
.L082F58CE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF800
	.4byte 0xFFFFF000
	.4byte 0xFFFFE800

	.thumb
	.align 1, 0
	.global sub_082F58E4
	.thumb_func
sub_082F58E4:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F591E
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F5926
.L082F591E:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F59EA
.L082F5926:
	ldr r1, [r5, #24]
	ldr r0, [r5, #32]
	adds r1, r1, r0
	str r1, [r5, #24]
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5944
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5944:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #84]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F59EA
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #228
	ldrb r2, [r0, #0]
	adds r2, #1
	ldr r1, [pc, #60]
	ldr r0, [pc, #64]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	muls r2, r0
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F59B4
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #24]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	b .L082F59C4
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F59B4:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #56]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
.L082F59C4:
	ldr r2, [pc, #48]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F59EA:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0x082F5A01

	.thumb
	.align 1, 0
	.global sub_082F5A00
	.thumb_func
sub_082F5A00:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5A16
	adds r0, r4, #0
	bl sub_082F4B78
.L082F5A16:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5A1C
	.thumb_func
sub_082F5A1C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5AD0
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5AA0
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #5
	movs r3, #0
	bl Sprite_Init
	b .L082F5ABE
	ble .L082F5A98
	.2byte 0xffff @ .raw
.L082F5A98:
	ldrh r5, [r4, r3]
	lsrs r7, r5, #32
	stmia r2!, {r5}
	lsrs r1, r3, #32
.L082F5AA0:
	ldr r0, [pc, #52]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #40]
	movs r2, #4
	movs r3, #0
	bl Sprite_Init
.L082F5ABE:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5AD0
	movs r0, #40
	bl sub_083189D0
.L082F5AD0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x0819C220

	.thumb
	.align 1, 0
	.global sub_082F5AE4
	.thumb_func
sub_082F5AE4:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5B54
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5B2C
	movs r0, #41
	bl sub_083189D0
.L082F5B2C:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5B44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5B4C
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrb r1, [r3, r0]
	lsrs r7, r5, #32
.L082F5B44:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5B4C:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5C10
.L082F5B54:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5B72
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5B72:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5C08
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5B98
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F5BA4
	movs r5, #12
	lsls r0, r0, #12
.L082F5B98:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F5BA4:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5C10
	movs r0, #41
	bl sub_083189D0
	b .L082F5C10
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrb r1, [r3, r0]
	lsrs r7, r5, #32
.L082F5C08:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5C10:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5C18
	.thumb_func
sub_082F5C18:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5C2E
	adds r0, r4, #0
	bl sub_082F4B78
.L082F5C2E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5C34
	.thumb_func
sub_082F5C34:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F5CF0
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F5CC0
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F5CDE
	.2byte 0xf100, 0xffff @ bl 0x83f6cb6
	ldrb r5, [r0, r4]
	lsrs r7, r5, #32
	stmia r2!, {r5}
	lsrs r1, r3, #32
.L082F5CC0:
	ldr r0, [pc, #52]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #40]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F5CDE:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5CF0
	movs r0, #40
	bl sub_083189D0
.L082F5CF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFC00
	.4byte 0xFFFFC000
	.4byte 0x0819C220

	.thumb
	.align 1, 0
	.global sub_082F5D04
	.thumb_func
sub_082F5D04:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	movs r4, #0
	str r4, [sp, #0]
	movs r4, #16
	str r4, [sp, #4]
	movs r4, #32
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5D70
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5D44
	movs r0, #41
	bl sub_083189D0
.L082F5D44:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5D5C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082F5D68
	ldrsh r5, [r7, r0]
	lsrs r7, r5, #32
.L082F5D5C:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082F5D68:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5E34
.L082F5D70:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5D94
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5D94:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5E2C
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5DBC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5DC8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F5DBC:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5DC8:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5E34
	movs r0, #41
	bl sub_083189D0
	b .L082F5E34
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5E2C:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5E34:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5E3C
	.thumb_func
sub_082F5E3C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5EAC
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5E84
	movs r0, #41
	bl sub_083189D0
.L082F5E84:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5E9C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5EA4
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5E9C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5EA4:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F5F68
.L082F5EAC:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5ECA
	adds r0, r5, #0
	bl sub_082F4B78
.L082F5ECA:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F5F60
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F5EF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F5EFC
	movs r5, #12
	lsls r0, r0, #12
.L082F5EF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F5EFC:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5F68
	movs r0, #41
	bl sub_083189D0
	b .L082F5F68
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrsh r1, [r6, r5]
	lsrs r7, r5, #32
.L082F5F60:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F5F68:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5F70
	.thumb_func
sub_082F5F70:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F5F86
	adds r0, r4, #0
	bl sub_082F4B78
.L082F5F86:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F5F8C
	.thumb_func
sub_082F5F8C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F605A
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r2, [sp, #0]
	ldrb r0, [r2, #14]
	cmp r0, #0
	bne .L082F601C
	movs r0, #128
	lsls r0, r0, #1
	str r0, [r2, #28]
	ldr r1, [sp, #0]
	ldr r0, [pc, #40]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #240
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	b .L082F603E
	movs r0, r0
	.2byte 0xc900 @ .raw ldmia r1!, {}
	.2byte 0xffff @ .raw
	str r1, [r6, #4]
	lsrs r7, r5, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F601C:
	ldr r1, [pc, #68]
	str r1, [r2, #28]
	ldr r0, [sp, #0]
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #60]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
.L082F603E:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6050
	movs r0, #40
	bl sub_083189D0
.L082F6050:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #6]
	ldr r0, [sp, #0]
	strh r1, [r0, #8]
.L082F605A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFE200
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F6070
	.thumb_func
sub_082F6070:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F609C
	ldr r1, [r5, #28]
	ldr r0, [pc, #12]
	cmp r1, r0
	ble .L082F60C4
	adds r0, r1, #0
	subs r0, #15
	b .L082F60C2
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F609C:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F60B8
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F60C4
	adds r0, r1, #0
	adds r0, #15
	b .L082F60C2
	lsls r7, r1, #6
	movs r0, r0
.L082F60B8:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F60C4
	movs r0, #0
.L082F60C2:
	str r0, [r5, #28]
.L082F60C4:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F60EC
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F6110
	adds r0, r1, #0
	subs r0, #15
	b .L082F610E
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F60EC:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F610C
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F6110
	adds r0, r1, #0
	adds r0, #15
	b .L082F610E
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f5f08
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F610C:
	movs r0, #0
.L082F610E:
	str r0, [r5, #32]
.L082F6110:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F6126
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F6126
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F6186
.L082F6126:
	cmp r1, #0
	ble .L082F6148
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F613A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F6186
.L082F613A:
	cmp r0, #0
	ble .L082F6148
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F6186
.L082F6148:
	cmp r1, #0
	bge .L082F615C
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F615C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F6186
.L082F615C:
	cmp r1, #0
	ble .L082F616A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F6186
.L082F616A:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F617A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F6186
.L082F617A:
	cmp r0, #0
	bge .L082F618E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F6186:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F619E
.L082F618E:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F619E
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F619E:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F61CC
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #200
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F6204
.L082F61CC:
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F61F4
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F61FC
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #40]
	lsrs r7, r5, #32
.L082F61F4:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F61FC:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F62AA
.L082F6204:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6228
	adds r0, r5, #0
	bl sub_082F4B78
.L082F6228:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F62A4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F624C
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F6254
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F624C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F6254:
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [pc, #52]
	ldr r2, [pc, #52]
	ldr r1, [pc, #56]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	b .L082F62AA
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #40]
	lsrs r7, r5, #32
.L082F62A4:
	adds r0, r6, #0
	bl sub_08000704
.L082F62AA:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F62B4
	.thumb_func
sub_082F62B4:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F62CA
	adds r0, r4, #0
	bl sub_082F4B78
.L082F62CA:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F62D0
	.thumb_func
sub_082F62D0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	bne .L082F6366
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [pc, #52]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F6344
	movs r0, #160
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	b .L082F6350
	movs r5, #12
	lsls r0, r0, #12
	str r1, [r7, #52]
	lsrs r7, r5, #32
	ble .L082F6344
	.2byte 0xffff @ .raw
.L082F6344:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
.L082F6350:
	adds r0, r0, r2
	str r0, [r1, #20]
	movs r0, #21
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6366
	movs r0, #21
	bl sub_083189D0
.L082F6366:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF600
	.4byte 0xFFFFEC00

	.thumb
	.align 1, 0
	.global sub_082F6378
	.thumb_func
sub_082F6378:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F63A4
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F6496
.L082F63A4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F63C2
	adds r0, r5, #0
	bl sub_082F4B78
.L082F63C2:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #64]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6496
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F6418
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	str r3, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	b .L082F643A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r5, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F6418:
	ldr r1, [pc, #56]
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #0
	bl sub_08306DD4
.L082F643A:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6460
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #20]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	b .L082F6470
	movs r0, r0
	str r0, [r5, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F6460:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #56]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
.L082F6470:
	ldr r2, [pc, #48]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F6496:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0x082F64AD

	.thumb
	.align 1, 0
	.global sub_082F64AC
	.thumb_func
sub_082F64AC:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F64C2
	adds r0, r4, #0
	bl sub_082F4B78
.L082F64C2:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F64C8
	.thumb_func
sub_082F64C8:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F6500
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #24
	strh r0, [r1, #6]
	movs r0, #44
	bl sub_083189D0
.L082F6500:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082F650D

	.thumb
	.align 1, 0
	.global sub_082F650C
	.thumb_func
sub_082F650C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #144
	ldr r0, [r5, #0]
	ldr r0, [r0, #16]
	ldr r6, [pc, #40]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F65A8
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F6548
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F6552
	b .L082F6556
	movs r5, #12
	lsls r0, r0, #12
.L082F6548:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F6552
	movs r3, #1
.L082F6552:
	cmp r3, #0
	beq .L082F65A8
.L082F6556:
	adds r0, r4, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	movs r6, #7
	ldrh r1, [r0, #10]
	cmp r1, #1
	bne .L082F6568
	movs r6, #8
.L082F6568:
	ldr r5, [pc, #48]
	ldr r1, [r5, #52]
	ldr r0, [r0, #52]
	movs r3, #1
	cmp r1, r0
	bge .L082F6576
	movs r3, #0
.L082F6576:
	ldr r1, [pc, #40]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #1
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08306DD4
	b .L082F65B2
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F65A8:
	ldrh r1, [r4, #6]
	movs r2, #6
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne .L082F65BA
.L082F65B2:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F65BE
.L082F65BA:
	subs r0, r1, #1
	strh r0, [r4, #6]
.L082F65BE:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F65C8
	.thumb_func
sub_082F65C8:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F666A
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F664C
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	b .L082F666A
	bhi .L082F6644
	.2byte 0xffff @ .raw
.L082F6644:
	str r1, [r0, #104]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F664C:
	ldr r0, [pc, #36]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #32]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #7
	movs r3, #0
	bl Sprite_Init
.L082F666A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFC00
	.4byte 0xFFFFF000
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F6680
	.thumb_func
sub_082F6680:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F66F0
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F66C8
	movs r0, #41
	bl sub_083189D0
.L082F66C8:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F66E0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F66E8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #120]
	lsrs r7, r5, #32
.L082F66E0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F66E8:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F67AC
.L082F66F0:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F670E
	adds r0, r5, #0
	bl sub_082F4B78
.L082F670E:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F67A4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6734
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F6740
	movs r5, #12
	lsls r0, r0, #12
.L082F6734:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
.L082F6740:
	ldr r0, [pc, #76]
	ldr r2, [pc, #80]
	ldr r1, [pc, #80]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #52]
	adds r0, r4, #0
	bl sub_080003FC
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F67AC
	movs r0, #41
	bl sub_083189D0
	b .L082F67AC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #96]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r5, [r6, #120]
	lsrs r7, r5, #32
.L082F67A4:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F67AC:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F67B4
	.thumb_func
sub_082F67B4:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F67CA
	adds r0, r4, #0
	bl sub_082F4B78
.L082F67CA:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F67D0
	.thumb_func
sub_082F67D0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F6896
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #72]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F685C
	movs r0, #128
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	b .L082F687A
	movs r0, r0
	bge .L082F6854
	.2byte 0xffff @ .raw
.L082F6854:
	ldr r5, [r5, #8]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F685C:
	ldr r0, [pc, #64]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #60]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #7
	movs r3, #0
	bl Sprite_Init
.L082F687A:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F688C
	movs r0, #40
	bl sub_083189D0
.L082F688C:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #8]
	ldr r0, [sp, #0]
	strh r1, [r0, #6]
.L082F6896:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFEE00
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F68AC
	.thumb_func
sub_082F68AC:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082F68C0
	adds r0, r1, #1
	strh r0, [r5, #8]
.L082F68C0:
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #30
	ble .L082F6964
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F68F0
	ldr r1, [r5, #28]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F6918
	adds r0, r1, #0
	subs r0, #15
	b .L082F6916
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F68F0:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F690C
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F6918
	adds r0, r1, #0
	adds r0, #15
	b .L082F6916
	lsls r7, r1, #6
	movs r0, r0
.L082F690C:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F6918
	movs r0, #0
.L082F6916:
	str r0, [r5, #28]
.L082F6918:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F6940
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F6964
	adds r0, r1, #0
	subs r0, #15
	b .L082F6962
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F6940:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F6960
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F6964
	adds r0, r1, #0
	adds r0, #15
	b .L082F6962
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f675c
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F6960:
	movs r0, #0
.L082F6962:
	str r0, [r5, #32]
.L082F6964:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F697A
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F697A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F69DA
.L082F697A:
	cmp r1, #0
	ble .L082F699C
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F698E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F69DA
.L082F698E:
	cmp r0, #0
	ble .L082F699C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F69DA
.L082F699C:
	cmp r1, #0
	bge .L082F69B0
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F69B0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F69DA
.L082F69B0:
	cmp r1, #0
	ble .L082F69BE
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F69DA
.L082F69BE:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F69CE
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F69DA
.L082F69CE:
	cmp r0, #0
	bge .L082F69E2
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F69DA:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F69F2
.L082F69E2:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F69F2
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F69F2:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6A20
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #150
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F6A58
.L082F6A20:
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6A48
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F6A50
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r1, [r1, #48]
	lsrs r7, r5, #32
.L082F6A48:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F6A50:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F6AFE
.L082F6A58:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6A7C
	adds r0, r5, #0
	bl sub_082F4B78
.L082F6A7C:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6AF8
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6AA0
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F6AA8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F6AA0:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F6AA8:
	ldr r0, [pc, #56]
	ldr r2, [pc, #60]
	ldr r1, [pc, #60]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #32]
	adds r0, r6, #0
	bl sub_080003FC
	adds r0, r6, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	b .L082F6AFE
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r0, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r1, [r1, #48]
	lsrs r7, r5, #32
.L082F6AF8:
	adds r0, r6, #0
	bl sub_08000704
.L082F6AFE:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F6B08
	.thumb_func
sub_082F6B08:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6B1E
	adds r0, r4, #0
	bl sub_082F4B78
.L082F6B1E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F6B24
	.thumb_func
sub_082F6B24:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r2, r0, #24
	cmp r2, #1
	bne .L082F6BB6
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #40]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #32]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F6B94
	movs r0, #160
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #4
	b .L082F6BA0
	ldr r1, [r1, #60]
	lsrs r7, r5, #32
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F6B94:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
.L082F6BA0:
	adds r0, r0, r2
	str r0, [r1, #20]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6BB6
	movs r0, #20
	bl sub_083189D0
.L082F6BB6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF600
	.4byte 0xFFFFEC00

	.thumb
	.align 1, 0
	.global sub_082F6BC8
	.thumb_func
sub_082F6BC8:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F6BF4
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F6CEE
.L082F6BF4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6C12
	adds r0, r5, #0
	bl sub_082F4B78
.L082F6C12:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #64]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6CEE
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	adds r0, #48
	ldrb r3, [r0, #0]
	cmp r3, #1
	bne .L082F6C68
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	str r3, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	b .L082F6C8A
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F6C68:
	ldr r1, [pc, #56]
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #0
	bl sub_08306DD4
.L082F6C8A:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F6CB0
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #20]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	b .L082F6CC0
	movs r0, r0
	str r0, [r1, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F6CB0:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #64]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
.L082F6CC0:
	ldr r2, [pc, #56]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r2, #60
	ldrb r0, [r2, #0]
	subs r0, #1
	strb r0, [r5, #16]
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F6CEE:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0x082F6D05

	.thumb
	.align 1, 0
	.global sub_082F6D04
	.thumb_func
sub_082F6D04:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6D1A
	adds r0, r4, #0
	bl sub_082F4B78
.L082F6D1A:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F6D20
	.thumb_func
sub_082F6D20:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F6DEA
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #64]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	adds r0, #148
	ldr r1, [r4, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #44]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F6DAC
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	b .L082F6DC4
	ldr r5, [r6, #92]
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7ef7da6
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F6DAC:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
.L082F6DC4:
	movs r3, #0
	bl Sprite_Init
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	bne .L082F6DE4
	ldr r0, [sp, #0]
	strb r1, [r0, #2]
	b .L082F6DEA
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xe200 @ b.n 0x82f71e0
	.2byte 0xffff @ .raw
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F6DE4:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F6DEA:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F6DF4
	.thumb_func
sub_082F6DF4:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6E10
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F6EB2
.L082F6E10:
	ldr r0, [r4, #20]
	ldr r1, [r4, #28]
	adds r0, r0, r1
	str r0, [r4, #20]
	ldr r0, [r4, #24]
	ldr r1, [r4, #32]
	adds r0, r0, r1
	str r0, [r4, #24]
	subs r1, #12
	str r1, [r4, #32]
	adds r0, r5, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F6E38
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F6E50
.L082F6E38:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F6E48
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F6E52
	subs r0, #4
	b .L082F6E50
.L082F6E48:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F6E52
	adds r0, #4
.L082F6E50:
	str r0, [r4, #28]
.L082F6E52:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F6EB2
	ldr r5, [pc, #84]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F6EB2
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F6EB2
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F6EB2
	adds r0, r5, #0
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r4, #16]
	adds r2, r4, #0
	adds r2, #148
	str r5, [r2, #0]
	adds r0, r1, #1
	strb r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #32]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r2, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r4, #8]
	adds r0, r6, #0
	bl sub_080006AC
.L082F6EB2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x082F6EC1

	.thumb
	.align 1, 0
	.global sub_082F6EC0
	.thumb_func
sub_082F6EC0:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F6F12
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F6EE4
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F6EF0
.L082F6EE4:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F6EF0:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F6F1A
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F6F12
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F6F12:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F700C
.L082F6F1A:
	adds r3, r5, #0
	adds r3, #148
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	adds r6, r3, #0
	cmp r1, r0
	ble .L082F6F3C
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F6F3C:
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F6F58
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F6F58:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F6FFC
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r7, #8
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082F6F9E
	adds r0, r2, #0
	subs r0, #128
	b .L082F6FA6
.L082F6F9E:
	cmp r2, r0
	bge .L082F6FA8
	adds r0, r2, #0
	adds r0, #128
.L082F6FA6:
	str r0, [r5, #20]
.L082F6FA8:
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	adds r5, r0, #0
	cmp r5, #0
	bne .L082F700C
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F700C
	ldr r0, [r6, #0]
	ldr r2, [pc, #28]
	ldr r1, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	str r5, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082F700C
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F6FFC:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F700C:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7014
	.thumb_func
sub_082F7014:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F7046
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #16
	strh r0, [r1, #6]
.L082F7046:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082F7055

	.thumb
	.align 1, 0
	.global sub_082F7054
	.thumb_func
sub_082F7054:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F70CA
	adds r5, r4, #0
	adds r5, #144
	ldr r0, [r5, #0]
	ldr r0, [r0, #16]
	ldr r6, [pc, #40]
	adds r1, r6, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F70E0
	movs r3, #0
	ldr r0, [r5, #0]
	ldr r2, [r0, #16]
	adds r0, r2, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082F7098
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082F70A2
	b .L082F70A6
	movs r5, #12
	lsls r0, r0, #12
.L082F7098:
	ldr r1, [r6, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082F70A2
	movs r3, #1
.L082F70A2:
	cmp r3, #0
	beq .L082F70E0
.L082F70A6:
	ldr r0, [pc, #44]
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #75
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
.L082F70CA:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F70E6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r3, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F70E0:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F70E6:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F70F0
	.thumb_func
sub_082F70F0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F7106
	b .L082F7212
.L082F7106:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #32]
	str r1, [r0, #0]
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #9
	bne .L082F7158
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #10
	b .L082F718E
	strb r1, [r5, #8]
	lsrs r7, r5, #32
	bhi .L082F7158
	.2byte 0xffff @ .raw
.L082F7158:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #10
	bne .L082F717C
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #230
	lsls r0, r0, #1
	b .L082F718E
	bcc .L082F717C
	.2byte 0xffff @ .raw
.L082F717C:
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #76]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #150
	lsls r0, r0, #1
.L082F718E:
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	movs r0, #0
	strh r0, [r1, #8]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #52]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F71DC
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #134
	lsls r2, r2, #7
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F71FA
	movs r0, r0
	ble .L082F71D4
	.2byte 0xffff @ .raw
.L082F71D4:
	bcs .L082F71D8
	.2byte 0xffff @ .raw
.L082F71D8:
	add r1, pc, #64
	lsrs r5, r3, #32
.L082F71DC:
	ldr r0, [pc, #60]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #56]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F71FA:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7212
	movs r0, #40
	bl sub_083189D0
.L082F7212:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFD00
	.4byte 0xFFFFBD00
	.4byte 0x081DA110

	.thumb
	.align 1, 0
	.global sub_082F7228
	.thumb_func
sub_082F7228:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L082F729C
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7272
	movs r0, #41
	bl sub_083189D0
.L082F7272:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F728C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F7294
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F728C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F7294:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F7390
.L082F729C:
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #19
	bgt .L082F72B0
	movs r0, #200
	str r0, [r5, #32]
	b .L082F72B2
.L082F72B0:
	str r1, [r5, #32]
.L082F72B2:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldrh r1, [r5, #6]
	adds r1, #10
	strh r1, [r5, #6]
	ldr r2, [pc, #76]
	movs r3, #6
	ldrsh r1, [r5, r3]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsls r1, r1, #16
	asrs r1, r1, #23
	ldr r2, [r5, #32]
	adds r2, r2, r1
	ldr r1, [r5, #24]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F72EE
	adds r0, r5, #0
	bl sub_082F4B78
.L082F72EE:
	ldr r1, [pc, #36]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F7388
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F7318
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7324
	strh r4, [r5, r4]
	lsrs r5, r7, #32
	movs r5, #12
	lsls r0, r0, #12
.L082F7318:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7324:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7390
	movs r0, #41
	bl sub_083189D0
	b .L082F7390
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F7388:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F7390:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7398
	.thumb_func
sub_082F7398:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F73AE
	adds r0, r4, #0
	bl sub_082F4B78
.L082F73AE:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F73B4
	.thumb_func
sub_082F73B4:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F745C
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7438
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #140
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F7456
	bcs .L082F7430
	.2byte 0xffff @ .raw
.L082F7430:
	strb r1, [r6, #17]
	lsrs r7, r5, #32
	ldrb r0, [r2, #29]
	lsrs r5, r3, #32
.L082F7438:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F7456:
	movs r0, #34
	bl sub_083189D0
.L082F745C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFD00
	.4byte 0xFFFFDD00
	.4byte 0x081D7F50

	.thumb
	.align 1, 0
	.global sub_082F7470
	.thumb_func
sub_082F7470:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F74D0
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #32]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F74C0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F74C8
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r0, #22]
	lsrs r7, r5, #32
.L082F74C0:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F74C8:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F7578
.L082F74D0:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F74EE
	adds r0, r5, #0
	bl sub_082F4B78
.L082F74EE:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F7570
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F7514
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7520
	movs r5, #12
	lsls r0, r0, #12
.L082F7514:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7520:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #52]
	ldr r2, [pc, #52]
	ldr r1, [pc, #56]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	b .L082F7578
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r5, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F7570:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F7578:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7580
	.thumb_func
sub_082F7580:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7596
	adds r0, r4, #0
	bl sub_082F4B78
.L082F7596:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F759C
	.thumb_func
sub_082F759C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F75CE
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #5
	strh r0, [r1, #6]
.L082F75CE:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082F75DD

	.thumb
	.align 1, 0
	.global sub_082F75DC
	.thumb_func
sub_082F75DC:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082F75F2
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7720
.L082F75F2:
	adds r4, r5, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	ldr r7, [pc, #88]
	adds r1, r7, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	adds r6, r4, #0
	cmp r0, #0
	bne .L082F760E
	b .L082F771A
.L082F760E:
	adds r0, r7, #0
	adds r0, #46
	ldrb r4, [r0, #0]
	cmp r4, #1
	beq .L082F761A
	b .L082F771A
.L082F761A:
	movs r0, #34
	bl sub_083189D0
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r1, [r7, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	bge .L082F7660
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_08306DD4
	strb r4, [r5, #14]
	b .L082F7686
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7660:
	ldr r1, [pc, #112]
	ldr r0, [pc, #116]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r7, #0
	movs r1, #8
	movs r3, #1
	bl sub_08306DD4
	movs r0, #0
	strb r0, [r5, #14]
.L082F7686:
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r5, #16]
	ldr r0, [pc, #64]
	ldr r0, [r0, #56]
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F76E4
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r5, #28]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r1, #140
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #32]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F770C
	movs r0, r0
	str r0, [r6, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	movs r5, #12
	lsls r0, r0, #12
	strh r0, [r6, #46]
	lsrs r5, r3, #32
.L082F76E4:
	ldr r0, [pc, #64]
	str r0, [r5, #28]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r1, [pc, #60]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #52]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F770C:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
.L082F771A:
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
.L082F7720:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE00
	.4byte 0xFFFFDD00
	.4byte 0x081D85F0
	.4byte 0x082F7739

	.thumb
	.align 1, 0
	.global sub_082F7738
	.thumb_func
sub_082F7738:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F774E
	adds r0, r4, #0
	bl sub_082F4B78
.L082F774E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7754
	.thumb_func
sub_082F7754:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F77FC
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	movs r0, #40
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #64]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #52]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F77D8
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F77F6
	ldrb r1, [r2, #0]
	lsrs r7, r5, #32
	bvs .L082F77D4
	.2byte 0xffff @ .raw
.L082F77D4:
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F77D8:
	ldr r0, [pc, #40]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F77F6:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F77FC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE00
	.4byte 0xFFFFD800
	.4byte 0x080FA3D0

	.thumb
	.align 1, 0
	.global sub_082F7810
	.thumb_func
sub_082F7810:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F782C
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F78C8
.L082F782C:
	ldr r0, [r4, #20]
	ldr r1, [r4, #28]
	adds r0, r0, r1
	str r0, [r4, #20]
	ldr r0, [r4, #24]
	ldr r1, [r4, #32]
	adds r0, r0, r1
	str r0, [r4, #24]
	subs r1, #2
	str r1, [r4, #32]
	adds r0, r5, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F7854
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F786C
.L082F7854:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F7864
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F786E
	subs r0, #4
	b .L082F786C
.L082F7864:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F786E
	adds r0, #4
.L082F786C:
	str r0, [r4, #28]
.L082F786E:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F78C8
	ldr r5, [pc, #80]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F78C8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F78C8
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F78C8
	movs r0, #40
	strb r0, [r4, #16]
	adds r2, r4, #0
	adds r2, #148
	str r5, [r2, #0]
	adds r0, r1, #1
	strb r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r2, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r4, #8]
	adds r0, r6, #0
	bl sub_080006AC
.L082F78C8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x082F78D9

	.thumb
	.align 1, 0
	.global sub_082F78D8
	.thumb_func
sub_082F78D8:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F792A
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F78FC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7908
.L082F78FC:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7908:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7932
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F792A
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F792A:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7A24
.L082F7932:
	adds r3, r5, #0
	adds r3, #148
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	adds r6, r3, #0
	cmp r1, r0
	ble .L082F7954
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F7954:
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F7970
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F7970:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F7A14
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r7, #8
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082F79B6
	adds r0, r2, #0
	subs r0, #128
	b .L082F79BE
.L082F79B6:
	cmp r2, r0
	bge .L082F79C0
	adds r0, r2, #0
	adds r0, #128
.L082F79BE:
	str r0, [r5, #20]
.L082F79C0:
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	adds r5, r0, #0
	cmp r5, #0
	bne .L082F7A24
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F7A24
	ldr r0, [r6, #0]
	ldr r2, [pc, #28]
	ldr r1, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	str r5, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082F7A24
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7A14:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F7A24:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7A2C
	.thumb_func
sub_082F7A2C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F7A42
	b .L082F7BF0
.L082F7A42:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #76]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #64]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #0
	bne .L082F7AD0
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #28]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7AC4
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #224
	lsls r2, r2, #5
	b .L082F7BAE
	ldrb r1, [r0, #16]
	lsrs r7, r5, #32
	b .L082F7AC0
	.2byte 0xffff @ .raw
.L082F7AC0:
	.2byte 0xe600 @ b.n 0x82f76c4
	.2byte 0xffff @ .raw
.L082F7AC4:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	.2byte 0xe400 @ b.n 0x82f72d0
	.2byte 0xffff @ .raw
.L082F7AD0:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #1
	bne .L082F7B0C
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7B00
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #180
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	bvs .L082F7B00
	.2byte 0xffff @ .raw
.L082F7B00:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	bcc .L082F7B0C
	.2byte 0xffff @ .raw
.L082F7B0C:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #2
	bne .L082F7B48
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7B3C
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #208
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	.2byte 0xc200 @ .raw stmia r2!, {}
	.2byte 0xffff @ .raw
.L082F7B3C:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #0]
	b .L082F7BAE
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
.L082F7B48:
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #3
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #4
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #5
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #6
	beq .L082F7B84
	ldr r0, [r4, #16]
	adds r0, #100
	bl sub_08000794
	cmp r0, #7
	bne .L082F7BB2
.L082F7B84:
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #24]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7BA8
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #6
	b .L082F7BAE
	movs r0, r0
	add r6, pc, #0
	.2byte 0xffff @ .raw
.L082F7BA8:
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #32]
.L082F7BAE:
	adds r0, r0, r2
	str r0, [r1, #20]
.L082F7BB2:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7BD8
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F7BEA
	bmi .L082F7BD4
	.2byte 0xffff @ .raw
.L082F7BD4:
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F7BD8:
	ldr r0, [pc, #28]
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F7BEA:
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
.L082F7BF0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE80
	.4byte 0x080FA3D0

	.thumb
	.align 1, 0
	.global sub_082F7C00
	.thumb_func
sub_082F7C00:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #40
	adds r0, r5, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7C1C
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F7CBE
.L082F7C1C:
	ldr r0, [r4, #20]
	ldr r1, [r4, #28]
	adds r0, r0, r1
	str r0, [r4, #20]
	ldr r0, [r4, #24]
	ldr r1, [r4, #32]
	adds r0, r0, r1
	str r0, [r4, #24]
	subs r1, #12
	str r1, [r4, #32]
	adds r0, r5, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F7C44
	adds r0, r5, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F7C5C
.L082F7C44:
	ldrb r0, [r4, #14]
	cmp r0, #0
	bne .L082F7C54
	ldr r0, [r4, #28]
	cmp r0, #0
	ble .L082F7C5E
	subs r0, #4
	b .L082F7C5C
.L082F7C54:
	ldr r0, [r4, #28]
	cmp r0, #0
	bge .L082F7C5E
	adds r0, #4
.L082F7C5C:
	str r0, [r4, #28]
.L082F7C5E:
	adds r6, r4, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	cmp r0, #10
	bhi .L082F7CBE
	ldr r5, [pc, #84]
	ldrb r0, [r5, #1]
	cmp r0, #0
	beq .L082F7CBE
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F7CBE
	adds r3, r5, #0
	adds r3, #87
	ldrb r1, [r3, #0]
	cmp r1, #2
	bhi .L082F7CBE
	adds r2, r4, #0
	adds r2, #148
	ldr r0, [r2, #0]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r4, #16]
	str r5, [r2, #0]
	adds r0, r1, #1
	strb r0, [r3, #0]
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #32]
	str r0, [r1, #0]
	ldr r0, [r2, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r4, #6]
	ldr r0, [r2, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r4, #8]
	adds r0, r6, #0
	bl sub_080006AC
.L082F7CBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x082F7CCD

	.thumb
	.align 1, 0
	.global sub_082F7CCC
	.thumb_func
sub_082F7CCC:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r0, #148
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L082F7D1E
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F7CF0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F7CFC
.L082F7CF0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F7CFC:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7D26
	adds r0, r5, #0
	adds r0, #148
	ldr r0, [r0, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F7D1E
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F7D1E:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7E18
.L082F7D26:
	adds r3, r5, #0
	adds r3, #148
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	adds r6, r3, #0
	cmp r1, r0
	ble .L082F7D48
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F7D48:
	ldr r0, [r3, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r7, #0
	ldrsh r1, [r1, r7]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F7D64
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F7D64:
	ldr r2, [r3, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082F7E08
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r7, #6
	ldrsh r1, [r5, r7]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r7, #8
	ldrsh r2, [r5, r7]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r3, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082F7DAA
	adds r0, r2, #0
	subs r0, #128
	b .L082F7DB2
.L082F7DAA:
	cmp r2, r0
	bge .L082F7DB4
	adds r0, r2, #0
	adds r0, #128
.L082F7DB2:
	str r0, [r5, #20]
.L082F7DB4:
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	adds r5, r0, #0
	cmp r5, #0
	bne .L082F7E18
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082F7E18
	ldr r0, [r6, #0]
	ldr r2, [pc, #28]
	ldr r1, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	str r5, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082F7E18
	str r0, [r2, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7E08:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r3, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082F7E18:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F7E20
	.thumb_func
sub_082F7E20:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F7EE6
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #72]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F7EAC
	movs r0, #128
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #208
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	b .L082F7ECA
	movs r0, r0
	bcc .L082F7EA4
	.2byte 0xffff @ .raw
.L082F7EA4:
	ldrb r5, [r7, #27]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F7EAC:
	ldr r0, [pc, #64]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #60]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #7
	movs r3, #0
	bl Sprite_Init
.L082F7ECA:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F7EDC
	movs r0, #40
	bl sub_083189D0
.L082F7EDC:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #6]
	ldr r0, [sp, #0]
	strh r1, [r0, #8]
.L082F7EE6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFCC00
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F7EFC
	.thumb_func
sub_082F7EFC:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082F7F10
	adds r0, r1, #1
	strh r0, [r5, #8]
.L082F7F10:
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #15
	ble .L082F7FB4
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F7F40
	ldr r1, [r5, #28]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F7F68
	adds r0, r1, #0
	subs r0, #15
	b .L082F7F66
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F7F40:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F7F5C
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F7F68
	adds r0, r1, #0
	adds r0, #15
	b .L082F7F66
	lsls r7, r1, #6
	movs r0, r0
.L082F7F5C:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F7F68
	movs r0, #0
.L082F7F66:
	str r0, [r5, #28]
.L082F7F68:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F7F90
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F7FB4
	adds r0, r1, #0
	subs r0, #15
	b .L082F7FB2
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F7F90:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F7FB0
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F7FB4
	adds r0, r1, #0
	adds r0, #15
	b .L082F7FB2
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f7dac
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F7FB0:
	movs r0, #0
.L082F7FB2:
	str r0, [r5, #32]
.L082F7FB4:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F7FCA
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F7FCA
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F802A
.L082F7FCA:
	cmp r1, #0
	ble .L082F7FEC
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F7FDE
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F802A
.L082F7FDE:
	cmp r0, #0
	ble .L082F7FEC
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F802A
.L082F7FEC:
	cmp r1, #0
	bge .L082F8000
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F8000
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F802A
.L082F8000:
	cmp r1, #0
	ble .L082F800E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F802A
.L082F800E:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F801E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F802A
.L082F801E:
	cmp r0, #0
	bge .L082F8032
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F802A:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F8042
.L082F8032:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F8042
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F8042:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8070
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #150
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F80A8
.L082F8070:
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8098
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F80A0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r3, #10]
	lsrs r7, r5, #32
.L082F8098:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F80A0:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F814E
.L082F80A8:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F80CC
	adds r0, r5, #0
	bl sub_082F4B78
.L082F80CC:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8148
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F80F0
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F80F8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F80F0:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F80F8:
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [pc, #52]
	ldr r2, [pc, #52]
	ldr r1, [pc, #56]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	b .L082F814E
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r7, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r3, #10]
	lsrs r7, r5, #32
.L082F8148:
	adds r0, r6, #0
	bl sub_08000704
.L082F814E:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F8158
	.thumb_func
sub_082F8158:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F816E
	adds r0, r4, #0
	bl sub_082F4B78
.L082F816E:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F8174
	.thumb_func
sub_082F8174:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F8228
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F81F8
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #140
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F8216
	bge .L082F81F0
	.2byte 0xffff @ .raw
.L082F81F0:
	strh r5, [r7, #16]
	lsrs r7, r5, #32
	adds r5, #0
	lsrs r0, r2, #32
.L082F81F8:
	ldr r0, [pc, #52]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #40]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F8216:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8228
	movs r0, #40
	bl sub_083189D0
.L082F8228:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFFD00
	.4byte 0xFFFFDD00
	.4byte 0x08103500

	.thumb
	.align 1, 0
	.global sub_082F823C
	.thumb_func
sub_082F823C:
	push {r4, r5, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F82AC
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8284
	movs r0, #41
	bl sub_083189D0
.L082F8284:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F829C
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
	b .L082F82A4
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strb r1, [r3, #14]
	lsrs r7, r5, #32
.L082F829C:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
.L082F82A4:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082F8368
.L082F82AC:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F82CA
	adds r0, r5, #0
	bl sub_082F4B78
.L082F82CA:
	ldr r1, [pc, #32]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8360
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F82F0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F82FC
	movs r5, #12
	lsls r0, r0, #12
.L082F82F0:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F82FC:
	adds r0, r4, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r4, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8368
	movs r0, #41
	bl sub_083189D0
	b .L082F8368
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r4, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	strh r1, [r6, #26]
	lsrs r7, r5, #32
.L082F8360:
	adds r0, r5, #0
	adds r0, #40
	bl sub_08000704
.L082F8368:
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F8370
	.thumb_func
sub_082F8370:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8386
	adds r0, r4, #0
	bl sub_082F4B78
.L082F8386:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F838C
	.thumb_func
sub_082F838C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F844C
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	movs r0, #39
	strb r0, [r1, #16]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #28]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F83E8
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #5
	b .L082F83F4
	movs r0, r0
	strh r1, [r3, #34]
	lsrs r7, r5, #32
.L082F83E8:
	ldr r0, [pc, #44]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #40]
.L082F83F4:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #4
	bne .L082F8424
	movs r0, #1
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #12]
	b .L082F8430
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf000, 0xffff @ bl 0x82f941e
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082F8424:
	movs r0, #0
	strh r0, [r1, #6]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #36]
.L082F8430:
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	movs r0, #20
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F844C
	movs r0, #20
	bl sub_083189D0
.L082F844C:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0xFFFFE800

	.thumb
	.align 1, 0
	.global sub_082F8458
	.thumb_func
sub_082F8458:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8492
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F849A
.L082F8492:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F855C
.L082F849A:
	ldr r1, [r5, #24]
	ldr r0, [r5, #32]
	adds r1, r1, r0
	str r1, [r5, #24]
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F84B8
	adds r0, r5, #0
	bl sub_082F4B78
.L082F84B8:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	ldr r6, [pc, #68]
	adds r2, r6, #0
	bl sub_08000C00
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F855C
	ldr r1, [pc, #60]
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #1
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r6, #0
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8518
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #24]
	adds r0, r4, #0
	movs r2, #2
	movs r3, #0
	bl Sprite_Init
	b .L082F8528
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r0, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	adds r4, #192
	lsrs r7, r1, #32
.L082F8518:
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #68]
	adds r0, r4, #0
	movs r2, #3
	movs r3, #0
	bl Sprite_Init
.L082F8528:
	ldr r2, [pc, #60]
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldrh r0, [r5, #6]
	cmp r0, #1
	bne .L082F8548
	ldr r0, [r5, #24]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r5, #24]
.L082F8548:
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
.L082F855C:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x080F34C0
	.4byte 0x0300250C
	.4byte 0xFFFFF600
	.4byte 0x082F8575

	.thumb
	.align 1, 0
	.global sub_082F8574
	.thumb_func
sub_082F8574:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F858A
	adds r0, r4, #0
	bl sub_082F4B78
.L082F858A:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F8590
	.thumb_func
sub_082F8590:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L082F8656
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #72]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F861C
	movs r0, #128
	lsls r0, r0, #1
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	movs r2, #208
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #20]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	b .L082F863A
	movs r0, r0
	.2byte 0xe200 @ b.n 0x82f8a14
	.2byte 0xffff @ .raw
	strh r5, [r5, #50]
	lsrs r7, r5, #32
	ldr r7, [sp, #192]
	lsrs r7, r3, #32
.L082F861C:
	ldr r0, [pc, #64]
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #60]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #7
	movs r3, #0
	bl Sprite_Init
.L082F863A:
	movs r0, #40
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F864C
	movs r0, #40
	bl sub_083189D0
.L082F864C:
	ldr r0, [sp, #0]
	movs r1, #0
	strh r1, [r0, #6]
	ldr r0, [sp, #0]
	strh r1, [r0, #8]
.L082F8656:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFF00
	.4byte 0xFFFFCC00
	.4byte 0x081F9F30

	.thumb
	.align 1, 0
	.global sub_082F866C
	.thumb_func
sub_082F866C:
	push {r4, r5, r6, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #199
	bgt .L082F8680
	adds r0, r1, #1
	strh r0, [r5, #8]
.L082F8680:
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #15
	ble .L082F8724
	ldr r0, [pc, #28]
	ldr r2, [r0, #52]
	movs r1, #160
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #20]
	cmp r1, r0
	ble .L082F86B0
	ldr r1, [r5, #28]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F86D8
	adds r0, r1, #0
	subs r0, #15
	b .L082F86D6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F86B0:
	movs r3, #160
	lsls r3, r3, #4
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F86CC
	ldr r1, [r5, #28]
	ldr r0, [pc, #8]
	cmp r1, r0
	bgt .L082F86D8
	adds r0, r1, #0
	adds r0, #15
	b .L082F86D6
	lsls r7, r1, #6
	movs r0, r0
.L082F86CC:
	ldr r0, [r5, #28]
	adds r0, #99
	cmp r0, #198
	bhi .L082F86D8
	movs r0, #0
.L082F86D6:
	str r0, [r5, #28]
.L082F86D8:
	ldr r0, [pc, #24]
	ldr r2, [r0, #56]
	ldr r1, [pc, #24]
	adds r0, r2, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F8700
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	ble .L082F8724
	adds r0, r1, #0
	subs r0, #15
	b .L082F8722
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082F8700:
	ldr r3, [pc, #20]
	adds r0, r2, r3
	cmp r1, r0
	bge .L082F8720
	ldr r1, [r5, #32]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082F8724
	adds r0, r1, #0
	adds r0, #15
	b .L082F8722
	movs r0, r0
	.2byte 0xe700 @ b.n 0x82f851c
	.2byte 0xffff @ .raw
	lsls r7, r1, #6
	movs r0, r0
.L082F8720:
	movs r0, #0
.L082F8722:
	str r0, [r5, #32]
.L082F8724:
	ldr r1, [r5, #28]
	cmp r1, #0
	bge .L082F873A
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F873A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #6
	b .L082F879A
.L082F873A:
	cmp r1, #0
	ble .L082F875C
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F874E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	b .L082F879A
.L082F874E:
	cmp r0, #0
	ble .L082F875C
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #5
	b .L082F879A
.L082F875C:
	cmp r1, #0
	bge .L082F8770
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082F8770
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	b .L082F879A
.L082F8770:
	cmp r1, #0
	ble .L082F877E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	b .L082F879A
.L082F877E:
	ldr r0, [r5, #32]
	cmp r0, #0
	ble .L082F878E
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #4
	b .L082F879A
.L082F878E:
	cmp r0, #0
	bge .L082F87A2
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
.L082F879A:
	bl sub_08000680
	adds r6, r4, #0
	b .L082F87B2
.L082F87A2:
	adds r6, r5, #0
	adds r6, #40
	cmp r1, #0
	bge .L082F87B2
	adds r0, r6, #0
	movs r1, #7
	bl sub_08000680
.L082F87B2:
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F87E0
	movs r0, #6
	ldrsh r1, [r5, r0]
	movs r0, #150
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082F882C
.L082F87E0:
	ldr r1, [pc, #48]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8802
	movs r0, #41
	bl sub_083189D0
.L082F8802:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F881C
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F8824
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrh r1, [r6, #6]
	lsrs r7, r5, #32
.L082F881C:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F8824:
	adds r0, r6, #0
	bl sub_080006AC
	b .L082F88E6
.L082F882C:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	adds r1, r1, r2
	str r1, [r5, #24]
	asrs r0, r0, #8
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8850
	adds r0, r5, #0
	bl sub_082F4B78
.L082F8850:
	ldr r1, [pc, #28]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F88E0
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F8874
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000680
	b .L082F887C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082F8874:
	adds r0, r6, #0
	movs r1, #1
	bl sub_08000680
.L082F887C:
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [pc, #72]
	ldr r2, [pc, #72]
	ldr r1, [pc, #76]
	ldrb r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r2, [r1, #0]
	movs r1, #90
	str r1, [sp, #0]
	add r1, sp, #4
	movs r3, #1
	strb r3, [r1, #0]
	add r1, sp, #8
	strb r3, [r1, #0]
	movs r1, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #48]
	adds r0, r6, #0
	bl sub_080003FC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	movs r0, #41
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F88E6
	movs r0, #41
	bl sub_083189D0
	b .L082F88E6
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r1, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldrh r1, [r6, #6]
	lsrs r7, r5, #32
.L082F88E0:
	adds r0, r6, #0
	bl sub_08000704
.L082F88E6:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F88F0
	.thumb_func
sub_082F88F0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F8906
	adds r0, r4, #0
	bl sub_082F4B78
.L082F8906:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F890C
	.thumb_func
sub_082F890C:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F893E
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r1, #0
	strb r1, [r0, #4]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	movs r0, #5
	strh r0, [r1, #6]
.L082F893E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082F894D

	.thumb
	.align 1, 0
	.global sub_082F894C
	.thumb_func
sub_082F894C:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r4, r0, #0
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, #0
	beq .L082F89E2
	adds r6, r4, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r7, [pc, #76]
	adds r1, r7, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F89F4
	adds r0, r7, #0
	adds r0, #46
	ldrb r5, [r0, #0]
	cmp r5, #1
	bne .L082F89F4
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r1, [r7, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	bge .L082F89BC
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r5, [r0, #0]
	add r0, sp, #8
	strb r5, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r3, #0
	bl sub_08306DD4
	strb r5, [r4, #14]
	b .L082F89E2
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F89BC:
	ldr r1, [pc, #44]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r5, [r0, #0]
	add r0, sp, #8
	strb r5, [r0, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r3, #1
	bl sub_08306DD4
	movs r0, #0
	strb r0, [r4, #14]
.L082F89E2:
	adds r0, r4, #0
	bl sub_082F4B78
	b .L082F89FA
	movs r0, r0
	str r0, [r2, #104]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F89F4:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
.L082F89FA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F8A04
	.thumb_func
sub_082F8A04:
	movs r2, #0
	ldr r1, [pc, #20]
	ldr r0, [pc, #20]
.L082F8A0A:
	str r1, [r0, #96]
	str r0, [r1, #16]
	adds r1, #24
	adds r0, #248
	adds r2, #1
	cmp r2, #8
	bne .L082F8A0A
	bx lr
	.2byte 0x0000
	.4byte 0x02004BC0
	.4byte 0x02004400

	.thumb
	.align 1, 0
	.global sub_082F8A24
	.thumb_func
sub_082F8A24:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	cmp r1, #27
	bls .L082F8A30
	b .L082F8DDC
.L082F8A30:
	lsls r0, r1, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	str r0, [r3, #104]
	lsrs r5, r7, #32
	ldr r1, [r4, #96]
	movs r0, #0
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #10
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r4, [pc, #420]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #1
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #11
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r6, [pc, #580]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #2
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #12
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r7, [pc, #548]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #3
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #13
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r5, [r4, r1]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #4
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #14
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r2, r2]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #5
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #15
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r1, [r7, r4]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #6
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #16
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsb r5, [r0, r3]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #7
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #17
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsb r5, [r4, r6]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #8
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #18
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrh r5, [r3, r0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #9
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #19
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrsh r5, [r1, r6]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #10
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #20
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r5, [r6, r0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #11
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #21
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r2, #44]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #12
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #22
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r1, #76]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #13
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #23
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r1, #92]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #14
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #24
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	str r1, [r2, #124]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #15
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #25
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r5, [r4, #48]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #16
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #26
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldr r1, [r4, #80]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #17
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #27
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r2, #0]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #18
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #28
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r1, [r6, #3]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #19
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #29
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r6, #14]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #20
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #30
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r3, #22]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #21
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #31
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strb r5, [r2, #29]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #22
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #32
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r5, [r5, #8]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #27
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #37
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	ldrb r1, [r4, #24]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #23
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #33
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r6, #10]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #24
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #8]
	ldr r1, [pc, #12]
	str r1, [sp, #0]
	movs r1, #34
	b .L082F8D94
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r1, [r2, #44]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #25
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #28]
	ldr r1, [pc, #32]
	str r1, [sp, #0]
	movs r1, #35
.L082F8D94:
	adds r2, r3, #0
	bl sub_082FB9A8
	ldr r0, [r4, #96]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_082FB9BC
	b .L082F8DDC
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
	strh r5, [r1, #28]
	lsrs r7, r5, #32
	ldr r1, [r4, #96]
	movs r0, #26
	adds r2, r4, #0
	bl sub_082FB978
	ldr r0, [r4, #96]
	ldr r3, [pc, #32]
	ldr r1, [pc, #36]
	str r1, [sp, #0]
	movs r1, #36
	adds r2, r3, #0
	bl sub_082FB9A8
	ldr r0, [r4, #96]
	movs r1, #0
	str r1, [sp, #0]
	movs r2, #1
	movs r3, #0
	bl sub_082FB9BC
.L082F8DDC:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0000FFFF
	.4byte 0x082F890D

	.thumb
	.align 1, 0
	.global sub_082F8DEC
	.thumb_func
sub_082F8DEC:
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8EB2
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	adds r0, r4, #0
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	strh r2, [r0, #10]
	ldr r1, [sp, #0]
	movs r0, #255
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	str r5, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F8E74
	ldr r0, [r4, #52]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #56]
	ldr r2, [pc, #28]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #16]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F8E9A
	movs r0, r0
	b .L082F8E70
	.2byte 0xffff @ .raw
.L082F8E70:
	.2byte 0xe410 @ b.n 0x82f8694
	lsrs r7, r1, #32
.L082F8E74:
	ldr r0, [r4, #52]
	ldr r2, [pc, #68]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [r4, #56]
	ldr r2, [pc, #60]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #56]
	str r0, [r1, #28]
	ldr r0, [sp, #0]
	adds r0, #40
	ldr r1, [pc, #52]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F8E9A:
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strh r2, [r0, #6]
	ldr r1, [sp, #0]
	movs r0, #6
	strh r0, [r1, #8]
	ldr r0, [sp, #0]
	strh r2, [r0, #12]
.L082F8EB2:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFF000
	.4byte 0xFFFFE000
	.4byte 0xFFFFFD00
	.4byte 0x080FE410
	.4byte 0x082F8ED1

	.thumb
	.align 1, 0
	.global sub_082F8ED0
	.thumb_func
sub_082F8ED0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #6
	negs r6, r6
	str r6, [sp, #0]
	movs r7, #6
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8F08
	movs r0, #1
	ldrb r1, [r5, #14]
	subs r0, r0, r1
	strb r0, [r5, #14]
	ldr r0, [r5, #28]
	negs r0, r0
	str r0, [r5, #28]
.L082F8F08:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_08000704
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r7, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	mov r8, r4
	cmp r0, #0
	beq .L082F8F36
	ldr r0, [r5, #32]
	negs r0, r0
	str r0, [r5, #32]
.L082F8F36:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	adds r1, #64
	str r1, [r5, #32]
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082F8FE0
	movs r7, #0
	ldr r4, [pc, #124]
	mov r9, r8
.L082F8F54:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F8FC6
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F8FC6
	movs r2, #1
	adds r0, r5, #0
	adds r0, #144
	ldr r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, r4
	bne .L082F8F86
	ldrh r1, [r5, #8]
	movs r3, #8
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble .L082F8F86
	subs r0, r1, #1
	strh r0, [r5, #8]
	movs r2, #0
.L082F8F86:
	cmp r2, #0
	beq .L082F8FC6
	mov r0, r9
	ldr r1, [pc, #68]
	bl sub_080003FC
	mov r0, r9
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #56]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #60
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r7, r1
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F8FC6:
	adds r4, #248
	adds r7, #1
	cmp r7, #3
	bls .L082F8F54
	b .L082F9078
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F8FE0:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F901C
	ldr r1, [pc, #32]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	b .L082F905E
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
.L082F901C:
	ldrh r0, [r5, #8]
	movs r1, #8
	ldrsh r6, [r5, r1]
	cmp r6, #0
	bne .L082F9074
	adds r4, r5, #0
	adds r4, #144
	ldr r1, [r4, #0]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9078
	ldr r1, [pc, #48]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	movs r1, #45
	str r1, [sp, #0]
	add r2, sp, #4
	movs r1, #1
	strb r1, [r2, #0]
	add r1, sp, #8
	strb r6, [r1, #0]
.L082F905E:
	movs r1, #5
	movs r2, #15
	movs r3, #2
	bl sub_08306DD4
	b .L082F90D8
	movs r0, r0
	str r0, [r2, #120]
	lsrs r7, r2, #32
	str r0, [sp, #980]
	lsrs r7, r5, #32
.L082F9074:
	subs r0, #1
	strh r0, [r5, #8]
.L082F9078:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #192
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F90AE
	ldr r1, [r5, #32]
	cmp r1, #0
	blt .L082F90AE
	movs r3, #6
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bne .L082F90C2
	movs r0, #6
	strh r0, [r5, #6]
	asrs r0, r1, #1
	negs r0, r0
	str r0, [r5, #32]
	ldr r1, [pc, #64]
	cmp r0, r1
	ble .L082F90AE
	str r1, [r5, #32]
.L082F90AE:
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq .L082F90D8
	subs r0, r1, #1
	strh r0, [r5, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L082F90D8
.L082F90C2:
	ldr r1, [pc, #40]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
.L082F90D8:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE00
	.4byte 0x08176790
	.4byte 0x082F90F5

	.thumb
	.align 1, 0
	.global sub_082F90F4
	.thumb_func
sub_082F90F4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	adds r5, r0, #0
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082F9110
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082F9110:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9124
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F9130
.L082F9124:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F9130:
	mov r8, r4
	movs r4, #1
	ldrh r1, [r5, #10]
	subs r0, r4, r1
	movs r7, #0
	strh r0, [r5, #10]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082F91F4
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	beq .L082F91A4
	movs r6, #0
	ldr r4, [pc, #72]
.L082F9152:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F9190
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9190
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F9190:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082F9152
	b .L082F91F4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F91A4:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F91CA
	ldr r0, [sp, #12]
	str r6, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082F91CA:
	adds r6, r5, #0
	adds r6, #144
	ldr r1, [r6, #0]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F91F4
	ldr r0, [r6, #0]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082F91F4:
	mov r0, r8
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9206
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9206:
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F9214
	.thumb_func
sub_082F9214:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F922A
	b .L082F9436
.L082F922A:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #72]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082F92FC
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F92A4
	ldr r0, [r1, #56]
	ldr r1, [pc, #44]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F92D4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F92E8
	movs r0, r0
	str r4, [sp, #276]
	lsrs r7, r5, #32
	.2byte 0xf100, 0xffff @ bl 0x83fa2a2
.L082F92A4:
	ldr r0, [r1, #56]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F92D4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	b .L082F92E8
	movs r0, r0
	.2byte 0xe300 @ b.n 0x82f98d4
	.2byte 0xffff @ .raw
.L082F92D4:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #20]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
.L082F92E8:
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	b .L082F93EA
	movs r0, r0
	.2byte 0xea00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F92FC:
	cmp r0, #1
	bne .L082F9350
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F933C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	b .L082F93EA
	movs r0, r0
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F933C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082F93A2
	movs r0, r0
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
.L082F9350:
	cmp r0, #3
	bne .L082F9378
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L082F93E4
	b .L082F9374
	.2byte 0xffff @ .raw
.L082F9374:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9378:
	cmp r0, #2
	bne .L082F93C8
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F93B0
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082F93A2:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082F93EA
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F93B0:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	b .L082F93E6
	movs r0, r0
	b .L082F93C8
	.2byte 0xffff @ .raw
.L082F93C8:
	cmp r0, #4
	bne .L082F93EA
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L082F93E4:
	str r0, [r1, #32]
.L082F93E6:
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082F93EA:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9408
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #4
	movs r3, #0
	bl Sprite_Init
	b .L082F9416
	movs r0, r0
	adds r4, #192
	lsrs r7, r1, #32
.L082F9408:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #5
	movs r3, #0
	bl Sprite_Init
.L082F9416:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9436
	movs r0, #1
	bl sub_083189D0
.L082F9436:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0

	.thumb
	.align 1, 0
	.global sub_082F9444
	.thumb_func
sub_082F9444:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #16]
.L082F9456:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #1
	negs r6, r6
	str r6, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F949A
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F949A
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F94A8
.L082F949A:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082F9660
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F94A8:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9574
	movs r6, #0
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	ldr r7, [pc, #60]
	movs r2, #80
	adds r2, r2, r7
	mov sl, r2
	adds r4, r7, #0
	mov r9, r6
.L082F94D6:
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r6, r0
	beq .L082F955A
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F955A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F955A
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F950C
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F9516
	movs r5, #12
	lsls r0, r0, #12
.L082F950C:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F9516:
	adds r0, r7, #0
	adds r0, #52
	add r0, r9
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #15
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #32]
	adds r1, r6, r1
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F955A:
	movs r3, #248
	add sl, r3
	adds r4, #248
	add r9, r3
	adds r6, #1
	cmp r6, #3
	bls .L082F94D6
	b .L082F95E4
	movs r0, r0
	str r6, [sp, #468]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F9574:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F95E4
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9596
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F95A0
.L082F9596:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F95A0:
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #88
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F95BC
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
.L082F95BC:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	b .L082F9660
	movs r0, r0
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F95E4:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F960C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	b .L082F9626
.L082F960C:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #240
.L082F9626:
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F963A
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9660
.L082F963A:
	ldr r0, [r5, #20]
	ldr r4, [pc, #48]
	cmp r0, r4
	bgt .L082F9648
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9648:
	ldr r0, [r5, #24]
	cmp r0, r4
	bgt .L082F9654
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9654:
	ldr r0, [sp, #16]
	adds r0, #1
	str r0, [sp, #16]
	cmp r0, #1
	bhi .L082F9660
	b .L082F9456
.L082F9660:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x000007FF

	.thumb
	.align 1, 0
	.global sub_082F9674
	.thumb_func
sub_082F9674:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9690
	adds r0, r4, #0
	bl sub_082F4B78
.L082F9690:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F9698
	.thumb_func
sub_082F9698:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F96AE
	b .L082F988A
.L082F96AE:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #36]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082F9750
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F9704
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082F970A
	ldr r0, [sp, #612]
	lsrs r7, r5, #32
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9704:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082F970A:
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9730
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	b .L082F9778
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L082F9730:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #12]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082F983E
	.2byte 0xea00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9750:
	cmp r0, #1
	bne .L082F97A4
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9790
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #192
	lsls r2, r2, #5
.L082F9778:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	b .L082F983E
	movs r0, r0
	beq .L082F978C
	.2byte 0xffff @ .raw
.L082F978C:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9790:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082F97F6
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L082F97A4:
	cmp r0, #3
	bne .L082F97CC
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L082F9838
	b .L082F97C8
	.2byte 0xffff @ .raw
.L082F97C8:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F97CC:
	cmp r0, #2
	bne .L082F981C
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9804
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082F97F6:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082F983E
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9804:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	b .L082F983A
	movs r0, r0
	b .L082F981C
	.2byte 0xffff @ .raw
.L082F981C:
	cmp r0, #4
	bne .L082F983E
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L082F9838:
	str r0, [r1, #32]
.L082F983A:
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082F983E:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F985C
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #4
	movs r3, #0
	bl Sprite_Init
	b .L082F986A
	movs r0, r0
	adds r4, #192
	lsrs r7, r1, #32
.L082F985C:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #5
	movs r3, #0
	bl Sprite_Init
.L082F986A:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F988A
	movs r0, #22
	bl sub_083189D0
.L082F988A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0

	.thumb
	.align 1, 0
	.global sub_082F9898
	.thumb_func
sub_082F9898:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #16]
.L082F98AA:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #1
	negs r6, r6
	str r6, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F98EE
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F98EE
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F98FC
.L082F98EE:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082F9AA6
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F98FC:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F99C8
	movs r6, #0
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	ldr r7, [pc, #60]
	movs r2, #80
	adds r2, r2, r7
	mov sl, r2
	adds r4, r7, #0
	mov r9, r6
.L082F992A:
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r6, r0
	beq .L082F99AE
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F99AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F99AE
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9960
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F996A
	movs r5, #12
	lsls r0, r0, #12
.L082F9960:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F996A:
	adds r0, r7, #0
	adds r0, #52
	add r0, r9
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #20
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #32]
	adds r1, r6, r1
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F99AE:
	movs r3, #248
	add sl, r3
	adds r4, #248
	add r9, r3
	adds r6, #1
	cmp r6, #3
	bls .L082F992A
	b .L082F9A38
	movs r0, r0
	ldr r2, [sp, #756]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F99C8:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F9A38
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F99EA
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F99F4
.L082F99EA:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F99F4:
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #88
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F9A10
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
.L082F9A10:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	b .L082F9AA6
	movs r0, r0
	ldr r2, [sp, #756]
	lsrs r7, r5, #32
.L082F9A38:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9A66
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	b .L082F9A72
.L082F9A66:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302058
.L082F9A72:
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9A80
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9AA6
.L082F9A80:
	ldr r0, [r5, #20]
	ldr r4, [pc, #52]
	cmp r0, r4
	bgt .L082F9A8E
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9A8E:
	ldr r0, [r5, #24]
	cmp r0, r4
	bgt .L082F9A9A
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9A9A:
	ldr r0, [sp, #16]
	adds r0, #1
	str r0, [sp, #16]
	cmp r0, #2
	beq .L082F9AA6
	b .L082F98AA
.L082F9AA6:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000007FF

	.thumb
	.align 1, 0
	.global sub_082F9ABC
	.thumb_func
sub_082F9ABC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	strb r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #40
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9AD8
	adds r0, r4, #0
	bl sub_082F4B78
.L082F9AD8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082F9AE0
	.thumb_func
sub_082F9AE0:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F9AF6
	b .L082F9DA0
.L082F9AF6:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #72]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082F9BE0
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F9B88
	ldr r0, [r1, #56]
	ldr r1, [pc, #44]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9B74
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #6
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	b .L082F9BCC
	movs r0, r0
	ldr r5, [sp, #708]
	lsrs r7, r5, #32
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082F9B74:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #4]
	b .L082F9BC4
	movs r0, r0
	bgt .L082F9B88
	.2byte 0xffff @ .raw
.L082F9B88:
	ldr r0, [r1, #56]
	ldr r1, [pc, #40]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9BB8
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #192
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	b .L082F9BCC
	movs r0, r0
	.2byte 0xe200 @ b.n 0x82f9fb8
	.2byte 0xffff @ .raw
.L082F9BB8:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #20]
.L082F9BC4:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
.L082F9BCC:
	str r0, [r1, #28]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #32]
	b .L082F9D24
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082F9BE0:
	cmp r0, #1
	bne .L082F9C24
	ldr r0, [r1, #56]
	ldr r1, [pc, #36]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	negs r0, r0
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9C10
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #224
	lsls r2, r2, #4
	b .L082F9CB8
	.2byte 0xce00 @ .raw ldmia r6!, {}
	.2byte 0xffff @ .raw
.L082F9C10:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #4]
	b .L082F9CD2
	movs r0, r0
	.2byte 0xf200, 0xffff @ bl 0x84fac22
.L082F9C24:
	cmp r0, #3
	bne .L082F9C70
	ldr r0, [r1, #56]
	ldr r1, [pc, #36]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	negs r0, r0
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9C58
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	b .L082F9C66
	movs r0, r0
	.2byte 0xc200 @ .raw stmia r2!, {}
	.2byte 0xffff @ .raw
	.2byte 0xf600, 0xffff @ bl 0x80fac56
.L082F9C58:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #4
.L082F9C66:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
	b .L082F9D24
.L082F9C70:
	cmp r0, #2
	bne .L082F9CE8
	ldr r0, [r1, #56]
	ldr r1, [pc, #32]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #7]
	cmp r0, #3
	beq .L082F9C90
	cmp r0, #5
	bne .L082F9C9C
.L082F9C90:
	movs r0, #128
	lsls r0, r0, #2
	b .L082F9CA0
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9C9C:
	movs r0, #128
	lsls r0, r0, #1
.L082F9CA0:
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9CC6
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
.L082F9CB8:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	b .L082F9D24
.L082F9CC6:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
.L082F9CD2:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082F9D24
	movs r0, r0
	b .L082F9CE4
	.2byte 0xffff @ .raw
.L082F9CE4:
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082F9CE8:
	cmp r0, #4
	bne .L082F9D24
	ldr r0, [r1, #56]
	str r0, [r2, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r1, #32]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9D14
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #3
	b .L082F9D20
.L082F9D14:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #48]
.L082F9D20:
	adds r0, r0, r2
	str r0, [r1, #20]
.L082F9D24:
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r1, [r0, #64]
	asrs r1, r1, #1
	ldr r0, [r2, #28]
	adds r0, r0, r1
	str r0, [r2, #28]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9D58
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082F9D66
	.2byte 0xfc00 @ .raw
	.2byte 0xffff @ .raw
	add r3, pc, #832
	lsrs r7, r1, #32
.L082F9D58:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #72]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082F9D66:
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9D9A
	ldr r2, [pc, #48]
	ldr r0, [sp, #0]
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082F9D9A
	movs r0, #9
	bl sub_083189D0
.L082F9D9A:
	ldr r1, [sp, #0]
	movs r0, #6
	strh r0, [r1, #8]
.L082F9DA0:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x080FA3D0
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_082F9DB0
	.thumb_func
sub_082F9DB0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9DD4
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9F3A
.L082F9DD4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	subs r1, #12
	str r1, [r5, #32]
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #11
	bne .L082F9DFC
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	beq .L082F9E14
.L082F9DFC:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9E0C
	ldr r0, [r5, #28]
	cmp r0, #0
	ble .L082F9E16
	subs r0, #4
	b .L082F9E14
.L082F9E0C:
	ldr r0, [r5, #28]
	cmp r0, #0
	bge .L082F9E16
	adds r0, #4
.L082F9E14:
	str r0, [r5, #28]
.L082F9E16:
	ldrh r0, [r5, #8]
	subs r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	cmp r0, #0
	ble .L082F9E24
	b .L082F9F3A
.L082F9E24:
	movs r0, #6
	strh r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #40
	adds r0, r6, #0
	bl sub_08000794
	mov r8, r6
	cmp r0, #10
	bls .L082F9E3A
	b .L082F9F3A
.L082F9E3A:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9ECE
	movs r7, #0
	movs r0, #144
	adds r0, r0, r5
	mov r9, r0
	adds r6, #108
	movs r2, #0
.L082F9E50:
	mov r1, r9
	ldr r0, [r1, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r7, r0
	beq .L082F9EC4
	ldr r0, [pc, #92]
	adds r4, r2, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F9EC4
	adds r0, r5, #0
	adds r1, r4, #0
	str r2, [sp, #4]
	bl sub_0800104C
	lsls r0, r0, #24
	ldr r2, [sp, #4]
	cmp r0, #0
	beq .L082F9EC4
	adds r1, r4, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L082F9EC4
	str r4, [r6, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r6, #0]
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F9F28
	mov r0, r8
	movs r1, #2
	bl sub_08000680
	b .L082F9F3A
	movs r5, #12
	lsls r0, r0, #12
	ldr r7, [sp, #292]
	lsrs r7, r5, #32
.L082F9EC4:
	adds r2, #248
	adds r7, #1
	cmp r7, #3
	bls .L082F9E50
	b .L082F9F3A
.L082F9ECE:
	adds r0, r5, #0
	mov r1, sp
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F9F3A
	ldr r0, [sp, #0]
	adds r1, r0, #0
	adds r1, #87
	ldrb r2, [r1, #0]
	cmp r2, #1
	bhi .L082F9F3A
	adds r4, r5, #0
	adds r4, #148
	str r0, [r4, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	strh r0, [r5, #6]
	ldr r0, [r4, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r6, #0
	bl sub_080006AC
	ldr r0, [r4, #0]
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F9F32
	adds r0, r6, #0
	b .L082F9F2A
	movs r0, r0
	ldr r7, [sp, #292]
	lsrs r7, r5, #32
.L082F9F28:
	mov r0, r8
.L082F9F2A:
	movs r1, #3
	bl sub_08000680
	b .L082F9F3A
.L082F9F32:
	adds r0, r6, #0
	movs r1, #2
	bl sub_08000680
.L082F9F3A:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082F9F48
	.thumb_func
sub_082F9F48:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #148
	ldr r0, [r6, #0]
	cmp r0, #0
	beq .L082F9F7A
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9F82
	ldr r0, [r6, #0]
	ldrb r1, [r0, #1]
	cmp r1, #1
	bne .L082F9F7A
	adds r1, r0, #0
	adds r1, #87
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
.L082F9F7A:
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082FA09C
.L082F9F82:
	ldr r0, [r6, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	ble .L082F9F9E
	adds r0, r1, #0
	subs r0, #128
	str r0, [r5, #24]
.L082F9F9E:
	ldr r0, [r6, #0]
	adds r1, r0, #0
	adds r1, #82
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r1, r1, #8
	ldr r0, [r0, #56]
	adds r0, r0, r1
	ldr r1, [r5, #24]
	cmp r1, r0
	bge .L082F9FBA
	adds r0, r1, #0
	adds r0, #128
	str r0, [r5, #24]
.L082F9FBA:
	ldr r2, [r6, #0]
	ldrb r0, [r2, #1]
	cmp r0, #1
	bne .L082FA08C
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	movs r3, #6
	ldrsh r1, [r5, r3]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	movs r3, #8
	ldrsh r2, [r5, r3]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r2, [r5, #20]
	adds r2, r2, r0
	str r2, [r5, #20]
	ldr r0, [r5, #24]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldr r1, [r6, #0]
	adds r0, r1, #0
	adds r0, #80
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r1, #52]
	adds r0, r1, r0
	cmp r2, r0
	ble .L082FA000
	adds r0, r2, #0
	subs r0, #128
	b .L082FA008
.L082FA000:
	cmp r2, r0
	bge .L082FA00A
	adds r0, r2, #0
	adds r0, #128
.L082FA008:
	str r0, [r5, #20]
.L082FA00A:
	adds r6, r5, #0
	adds r6, #148
	ldr r0, [r6, #0]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	movs r7, #0
	strh r0, [r5, #6]
	ldr r0, [r6, #0]
	ldr r0, [r0, #56]
	asrs r0, r0, #8
	strh r0, [r5, #8]
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082FA09C
	adds r0, r4, #0
	bl sub_08000794
	subs r0, #3
	cmp r0, #17
	bhi .L082FA09C
	movs r4, #2
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA074
	movs r4, #0
	ldr r0, [r6, #0]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #20]
	ldr r0, [r6, #0]
	ldrb r0, [r0, #0]
	adds r1, r0, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
	b .L082FA09C
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA074:
	ldr r0, [r6, #0]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
	b .L082FA09C
.L082FA08C:
	adds r1, r2, #0
	adds r1, #87
	movs r0, #0
	strb r0, [r1, #0]
	str r0, [r6, #0]
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA09C:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FA0A4
	.thumb_func
sub_082FA0A4:
	push {r4, r5, lr}
	sub sp, #16
	adds r5, r0, #0
	add r0, sp, #12
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	beq .L082FA0BA
	b .L082FA346
.L082FA0BA:
	movs r0, #35
	bl sub_083189D0
	ldr r0, [sp, #12]
	adds r0, #144
	str r5, [r0, #0]
	ldr r0, [sp, #12]
	movs r3, #0
	strb r4, [r0, #3]
	ldr r0, [sp, #12]
	strb r4, [r0, #4]
	ldr r1, [sp, #12]
	ldr r0, [r5, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #12]
	ldr r0, [r5, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #12]
	adds r0, #140
	ldr r1, [pc, #48]
	str r1, [r0, #0]
	ldr r1, [sp, #12]
	ldrb r0, [r5, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #12]
	strh r3, [r0, #10]
	ldr r0, [sp, #12]
	strh r3, [r0, #12]
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FA164
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FA124
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FA12A
	movs r0, r0
	add r3, pc, #500
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7efb122
.L082FA124:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082FA12A:
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA150
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #128
	lsls r2, r2, #6
	b .L082FA18C
	movs r0, r0
	.2byte 0xe400 @ b.n 0x82f9950
	.2byte 0xffff @ .raw
.L082FA150:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	adds r0, r0, r3
	b .L082FA24A
	b .L082FA164
	.2byte 0xffff @ .raw
.L082FA164:
	cmp r0, #1
	bne .L082FA1B8
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA1A4
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
.L082FA18C:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #12]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #28]
	b .L082FA284
	movs r0, r0
	beq .L082FA1A0
	.2byte 0xffff @ .raw
.L082FA1A0:
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1A4:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082FA22E
	movs r0, r0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1B8:
	cmp r0, #3
	bne .L082FA204
	ldrb r0, [r2, #14]
	cmp r0, #0
	bne .L082FA1D0
	ldr r0, [r1, #52]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	b .L082FA1D8
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FA1D0:
	ldr r0, [r1, #52]
	movs r3, #192
	lsls r3, r3, #3
	adds r0, r0, r3
.L082FA1D8:
	str r0, [r2, #20]
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #20]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #12]
	ldr r0, [pc, #16]
	str r0, [r1, #32]
	ldr r1, [sp, #12]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FA284
	movs r0, r0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA204:
	cmp r0, #2
	bne .L082FA25C
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #12]
	movs r2, #160
	lsls r2, r2, #3
	str r2, [r0, #32]
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA23C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082FA22E:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #12]
	str r2, [r0, #28]
	b .L082FA284
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA23C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
	adds r0, r0, r2
.L082FA24A:
	str r0, [r1, #20]
	ldr r1, [sp, #12]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082FA284
	b .L082FA258
	.2byte 0xffff @ .raw
.L082FA258:
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA25C:
	cmp r0, #4
	bne .L082FA284
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #12]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r1, #32]
	ldr r0, [sp, #12]
	str r3, [r0, #28]
.L082FA284:
	ldr r1, [sp, #12]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA2A0
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #8]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082FA2AE
	.2byte 0xe2d0 @ b.n 0x82fa840
	lsrs r7, r1, #32
.L082FA2A0:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #140]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082FA2AE:
	ldr r1, [sp, #12]
	movs r0, #6
	strh r0, [r1, #6]
	ldr r1, [sp, #12]
	movs r0, #180
	lsls r0, r0, #1
	strh r0, [r1, #8]
	ldr r2, [sp, #12]
	ldr r0, [r2, #20]
	ldr r1, [r2, #24]
	ldr r2, [r2, #28]
	movs r5, #1
	negs r5, r5
	str r5, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r5, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA2F4
	ldr r2, [sp, #12]
	ldr r0, [r2, #20]
	ldr r1, [r2, #24]
	ldr r2, [r2, #32]
	str r5, [sp, #0]
	str r4, [sp, #4]
	adds r3, r5, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA30E
.L082FA2F4:
	ldr r0, [sp, #12]
	adds r0, #140
	ldr r1, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [sp, #12]
	adds r0, #40
	ldr r1, [pc, #56]
	bl sub_080003FC
	ldr r0, [sp, #12]
	adds r0, #40
	bl sub_080006AC
.L082FA30E:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA340
	ldr r1, [sp, #12]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA346
	movs r0, #35
	bl sub_083189D0
	b .L082FA346
	.2byte 0xe2d0 @ b.n 0x82fa8d8
	lsrs r7, r1, #32
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA340:
	movs r0, #35
	bl sub_083189D0
.L082FA346:
	add sp, #16
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FA350
	.thumb_func
sub_082FA350:
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	adds r4, #40
	ldr r1, [pc, #24]
	adds r0, r4, #0
	bl sub_080003FC
	adds r0, r4, #0
	bl sub_080006AC
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FA771
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_082FA37C
	.thumb_func
sub_082FA37C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	movs r7, #0
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r4, [pc, #128]
	ldr r1, [r4, #32]
	cmp r0, r1
	bgt .L082FA39C
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA39C:
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r0, [r4, #24]
	adds r0, #240
	cmp r1, r0
	blt .L082FA3AE
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA3AE:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r4, #1
	negs r4, r4
	str r4, [sp, #0]
	movs r6, #1
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA3D4
	movs r7, #1
	ldr r0, [r5, #28]
	negs r0, r0
	str r0, [r5, #28]
.L082FA3D4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r4, [sp, #0]
	str r6, [sp, #4]
	adds r3, r4, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA440
	movs r7, #1
	ldr r0, [r5, #28]
	cmp r0, #0
	bne .L082FA436
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	str r4, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA418
	ldr r0, [pc, #4]
	b .L082FA434
	subs r0, #204
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA418:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [pc, #100]
	str r4, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA436
	movs r0, #160
	lsls r0, r0, #3
.L082FA434:
	str r0, [r5, #28]
.L082FA436:
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082FA43E
	negs r0, r0
.L082FA43E:
	str r0, [r5, #32]
.L082FA440:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA51E
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r1, #8
	bl sub_08000AF8
	cmp r0, #0
	beq .L082FA474
	cmp r0, #4
	beq .L082FA474
	movs r7, #1
.L082FA474:
	cmp r0, #2
	beq .L082FA4C0
	cmp r0, #2
	bhi .L082FA488
	cmp r0, #1
	beq .L082FA4A0
	b .L082FA51E
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA488:
	cmp r0, #3
	beq .L082FA4E6
	cmp r0, #4
	bne .L082FA51E
	ldr r0, [r5, #24]
	ldr r3, [pc, #8]
	adds r0, r0, r3
	str r0, [r5, #24]
	b .L082FA51E
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA4A0:
	ldr r0, [r5, #32]
	cmp r0, #0
	bne .L082FA4B4
	ldr r0, [r5, #24]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	str r0, [r5, #24]
	b .L082FA51E
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA4B4:
	ldr r0, [pc, #4]
	str r0, [r5, #32]
	b .L082FA51E
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA4C0:
	ldr r0, [r5, #28]
	ldr r1, [r5, #32]
	cmp r0, #0
	ble .L082FA4CC
	cmp r1, #0
	bgt .L082FA4F2
.L082FA4CC:
	cmp r0, #0
	bne .L082FA4E0
	cmp r1, #0
	ble .L082FA4E0
	str r0, [r5, #32]
	ldr r0, [pc, #4]
	str r0, [r5, #28]
	b .L082FA51E
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA4E0:
	cmp r0, #0
	ble .L082FA51E
	b .L082FA512
.L082FA4E6:
	ldr r0, [r5, #28]
	ldr r1, [r5, #32]
	cmp r0, #0
	bge .L082FA4FC
	cmp r1, #0
	ble .L082FA4FC
.L082FA4F2:
	negs r0, r0
	str r0, [r5, #28]
	negs r0, r1
	str r0, [r5, #32]
	b .L082FA51E
.L082FA4FC:
	cmp r0, #0
	bne .L082FA50E
	cmp r1, #0
	ble .L082FA50E
	str r0, [r5, #32]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r5, #28]
	b .L082FA51E
.L082FA50E:
	cmp r0, #0
	bge .L082FA51E
.L082FA512:
	ldr r1, [r5, #32]
	cmp r1, #0
	bne .L082FA51E
	ldr r0, [pc, #32]
	str r0, [r5, #32]
	str r1, [r5, #28]
.L082FA51E:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FA540
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FA54C
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA540:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FA54C:
	mov r8, r4
	mov r0, r8
	bl sub_08000704
	cmp r7, #0
	beq .L082FA5B8
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA57C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA582
	movs r0, #36
	bl sub_083189D0
	b .L082FA582
.L082FA57C:
	movs r0, #36
	bl sub_083189D0
.L082FA582:
	movs r0, #1
	ldrb r2, [r5, #14]
	subs r0, r0, r2
	strb r0, [r5, #14]
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082FA5B8
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [pc, #20]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	b .L082FA758
	movs r0, r0
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA5B8:
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FA67C
	movs r6, #0
	movs r3, #144
	adds r3, r3, r5
	mov r9, r3
	mov r7, r8
	ldr r4, [pc, #156]
.L082FA5D0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FA624
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA624
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #132]
	str r0, [r1, #0]
	adds r0, r7, #0
	ldr r1, [pc, #132]
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #30
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #96]
	adds r1, r6, r1
	mov r2, r9
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FA624:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082FA5D0
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	mov r3, r9
	ldr r2, [r3, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #250
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA710
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	ldr r1, [pc, #24]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	b .L082FA710
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA67C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FA6C0
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r1, [pc, #36]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #6
	b .L082FA700
	movs r0, r0
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA6C0:
	adds r6, r5, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA710
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	ldr r1, [pc, #44]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	movs r1, #45
	str r1, [sp, #0]
	add r2, sp, #4
	movs r1, #1
	strb r1, [r2, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #15
.L082FA700:
	movs r3, #2
	bl sub_08306DD4
	b .L082FA758
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA710:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA732
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA732
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA732:
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FA742
	subs r0, r1, #1
	strh r0, [r5, #8]
	b .L082FA758
.L082FA742:
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #32]
	str r1, [r0, #0]
	ldr r1, [pc, #32]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
.L082FA758:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FA771
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_082FA770
	.thumb_func
sub_082FA770:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FA78E
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082FA78E:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA7C6
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	mov r9, r4
	cmp r0, #0
	beq .L082FA7DE
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FA7DE
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
	b .L082FA7DE
.L082FA7C6:
	movs r1, #12
	ldrsh r0, [r5, r1]
	movs r1, #40
	adds r1, r1, r5
	mov r9, r1
	cmp r0, #0
	bne .L082FA7DE
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082FA7DE:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FA7EE
	mov r0, r9
	movs r1, #1
	bl sub_08000680
	b .L082FA7F6
.L082FA7EE:
	mov r0, r9
	movs r1, #0
	bl sub_08000680
.L082FA7F6:
	movs r7, #1
	ldrh r1, [r5, #10]
	subs r0, r7, r1
	movs r4, #0
	strh r0, [r5, #10]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082FA8CC
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	beq .L082FA878
	movs r6, #0
	adds r7, r5, #0
	adds r7, #144
	mov r8, r6
.L082FA81A:
	ldr r0, [pc, #84]
	mov r1, r8
	adds r4, r1, r0
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	beq .L082FA862
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FA862
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA862
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FA862:
	movs r0, #248
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls .L082FA81A
	b .L082FA8CC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA878:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FA89E
	ldr r0, [sp, #12]
	str r6, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
.L082FA89E:
	adds r6, r5, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA8CC
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #1
	movs r3, #2
	bl sub_08306DD4
.L082FA8CC:
	mov r0, r9
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA8DE
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA8DE:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FA8EC
	.thumb_func
sub_082FA8EC:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082FA902
	b .L082FAB10
.L082FA902:
	movs r2, #0
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	strh r2, [r0, #8]
	ldr r0, [sp, #0]
	strh r2, [r0, #10]
	ldr r3, [sp, #0]
	adds r0, r3, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FA9C0
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FA964
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FA96A
	add r3, sp, #116
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7efb962
.L082FA964:
	ldr r0, [r1, #56]
	ldr r2, [pc, #48]
	adds r0, r0, r2
.L082FA96A:
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA99C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #224
	lsls r0, r0, #2
	str r0, [r1, #28]
	movs r2, #1
	b .L082FAAC0
	.2byte 0xe400 @ b.n 0x82fa19c
	.2byte 0xffff @ .raw
.L082FA99C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #16]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #12]
	str r0, [r1, #28]
	movs r2, #0
	b .L082FAAC0
	movs r0, r0
	b .L082FA9BC
	.2byte 0xffff @ .raw
.L082FA9BC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FA9C0:
	cmp r0, #1
	bne .L082FAA1C
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAA00
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #224
	lsls r0, r0, #2
	str r0, [r1, #28]
	movs r2, #3
	b .L082FAAC0
	beq .L082FA9FC
	.2byte 0xffff @ .raw
.L082FA9FC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FAA00:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #12]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	movs r2, #2
	b .L082FAAC0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAA1C:
	cmp r0, #3
	bne .L082FAA6C
	ldrb r0, [r3, #14]
	cmp r0, #0
	bne .L082FAA38
	ldr r0, [r1, #52]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	str r0, [r3, #20]
	movs r2, #7
	b .L082FAA44
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FAA38:
	ldr r0, [r1, #52]
	movs r2, #192
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r3, #20]
	movs r2, #6
.L082FAA44:
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #16]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #12]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FAAC0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FAA6C:
	cmp r0, #2
	bne .L082FAAC0
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	movs r2, #224
	lsls r2, r2, #2
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAAA8
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	movs r2, #5
	b .L082FAAC0
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FAAA8:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #32]
	str r0, [r1, #28]
	movs r2, #4
.L082FAAC0:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAAE4
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #16]
	movs r3, #0
	bl Sprite_Init
	b .L082FAAF0
	movs r0, r0
	b .L082FAADC
	.2byte 0xffff @ .raw
.L082FAADC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
	adds r5, #0
	lsrs r0, r2, #32
.L082FAAE4:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #44]
	movs r3, #0
	bl Sprite_Init
.L082FAAF0:
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAB0A
	movs r0, #40
	bl sub_083189D0
.L082FAB0A:
	ldr r1, [sp, #0]
	movs r0, #240
	strh r0, [r1, #6]
.L082FAB10:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08103500

	.thumb
	.align 1, 0
	.global sub_082FAB1C
	.thumb_func
sub_082FAB1C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r4, #8
	negs r4, r4
	str r4, [sp, #0]
	movs r6, #8
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAB6E
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAB6E
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r4, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAB94
.L082FAB6E:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #20]
	adds r0, r4, #0
	bl sub_080003FC
	adds r0, r4, #0
	bl sub_080006AC
	b .L082FAD04
	movs r0, r0
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FAB94:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FAC8C
	movs r0, #0
	mov r9, r0
	adds r7, r5, #0
	adds r7, #40
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	movs r2, #140
	adds r2, r2, r5
	mov sl, r2
	adds r6, r7, #0
	str r0, [sp, #16]
.L082FABC8:
	ldr r0, [pc, #172]
	ldr r3, [sp, #16]
	adds r4, r3, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FAC2A
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	beq .L082FAC2A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAC2A
	ldr r0, [pc, #140]
	mov r2, sl
	str r0, [r2, #0]
	adds r0, r6, #0
	ldr r1, [pc, #136]
	bl sub_080003FC
	adds r0, r6, #0
	bl sub_080006AC
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #9
	movs r2, #128
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #100]
	add r1, r9
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FAC2A:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	mov r3, r8
	ldr r2, [r3, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #250
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAC64
	ldr r0, [pc, #52]
	mov r1, sl
	str r0, [r1, #0]
	adds r0, r6, #0
	ldr r1, [pc, #36]
	bl sub_080003FC
	adds r0, r6, #0
	bl sub_080006AC
.L082FAC64:
	ldr r2, [sp, #16]
	adds r2, #248
	str r2, [sp, #16]
	movs r3, #1
	add r9, r3
	mov r0, r9
	cmp r0, #3
	bls .L082FABC8
	b .L082FACD8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
	add r7, pc, #452
	lsrs r7, r5, #32
.L082FAC8C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r7, r5, #0
	adds r7, #40
	cmp r0, #1
	bne .L082FACD8
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r1, [pc, #40]
	adds r0, r7, #0
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #9
	movs r2, #20
	movs r3, #2
	bl sub_08306DD4
	b .L082FAD04
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FACD8:
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FACE8
	subs r0, r1, #1
	strh r0, [r5, #6]
	b .L082FACFE
.L082FACE8:
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #36]
	str r1, [r0, #0]
	ldr r1, [pc, #36]
	adds r0, r7, #0
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
.L082FACFE:
	adds r0, r7, #0
	bl sub_08000704
.L082FAD04:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x082FAD1D
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_082FAD1C
	.thumb_func
sub_082FAD1C:
	push {r4, r5, r6, r7, lr}
	sub sp, #16
	adds r5, r0, #0
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAD58
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAD6E
	movs r1, #10
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FAD6E
	movs r0, #1
	strh r0, [r5, #10]
	movs r0, #41
	bl sub_083189D0
	b .L082FAD6E
.L082FAD58:
	movs r1, #10
	ldrsh r0, [r5, r1]
	adds r4, r5, #0
	adds r4, #40
	cmp r0, #0
	bne .L082FAD6E
	movs r0, #1
	strh r0, [r5, #10]
	movs r0, #41
	bl sub_083189D0
.L082FAD6E:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FAD7E
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FAD86
.L082FAD7E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FAD86:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAD9A
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082FAE60
.L082FAD9A:
	movs r6, #1
	ldrh r1, [r5, #8]
	subs r0, r6, r1
	movs r7, #0
	strh r0, [r5, #8]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082FAE60
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FAE0C
	movs r6, #0
	ldr r4, [pc, #72]
.L082FADBA:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FADFA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FADFA
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FADFA:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082FADBA
	b .L082FAE60
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FAE0C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FAE32
	ldr r0, [sp, #12]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082FAE32:
	adds r4, r5, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAE60
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r6, [r1, #0]
	add r1, sp, #8
	strb r6, [r1, #0]
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L082FAE60:
	add sp, #16
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FAE68
	.thumb_func
sub_082FAE68:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082FAE7E
	b .L082FB076
.L082FAE7E:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r3, [r0, #4]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	strh r3, [r0, #10]
	ldr r1, [sp, #0]
	movs r0, #10
	strh r0, [r1, #8]
	ldr r1, [sp, #0]
	movs r0, #140
	lsls r0, r0, #1
	strh r0, [r1, #12]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FAF2C
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FAEEC
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FAEF2
	movs r0, r0
	sub sp, #84
	lsrs r7, r5, #32
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAEEC:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082FAEF2:
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAF18
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #6
	b .L082FAF54
	movs r0, r0
	udf #0
	.2byte 0xffff @ .raw
.L082FAF18:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	adds r0, r0, r3
	b .L082FB012
	bhi .L082FAF2C
	.2byte 0xffff @ .raw
.L082FAF2C:
	cmp r0, #1
	bne .L082FAF80
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAF6C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
.L082FAF54:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	b .L082FB04C
	movs r0, r0
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FAF6C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082FAFF6
	movs r0, r0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAF80:
	cmp r0, #3
	bne .L082FAFCC
	ldrb r0, [r2, #14]
	cmp r0, #0
	bne .L082FAF98
	ldr r0, [r1, #52]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	b .L082FAFA0
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FAF98:
	ldr r0, [r1, #52]
	movs r3, #192
	lsls r3, r3, #3
	adds r0, r0, r3
.L082FAFA0:
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #20]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FB04C
	movs r0, r0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FAFCC:
	cmp r0, #2
	bne .L082FB024
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #192
	lsls r2, r2, #1
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FB004
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082FAFF6:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082FB04C
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FB004:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
	adds r0, r0, r2
.L082FB012:
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082FB04C
	b .L082FB020
	.2byte 0xffff @ .raw
.L082FB020:
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FB024:
	cmp r0, #4
	bne .L082FB04C
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #32]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082FB04C:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FB068
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #8]
	movs r2, #1
	movs r3, #0
	bl Sprite_Init
	b .L082FB076
	ldr r0, [r0, #68]
	lsrs r0, r2, #32
.L082FB068:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #32]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
.L082FB076:
	movs r0, #34
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB088
	movs r0, #34
	bl sub_083189D0
.L082FB088:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08106C40

	.thumb
	.align 1, 0
	.global sub_082FB094
	.thumb_func
sub_082FB094:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FB0AE
	subs r0, r1, #1
	strh r0, [r5, #8]
	b .L082FB1F4
.L082FB0AE:
	ldrh r1, [r5, #12]
	movs r2, #12
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FB0F8
	subs r0, r1, #1
	strh r0, [r5, #12]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB0F8
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB108
.L082FB0F8:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082FB1F4
	movs r0, r0
	.2byte 0xb201 @ .raw sxth r1, r0
	lsrs r7, r5, #32
.L082FB108:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FB124
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FB130
.L082FB124:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FB130:
	adds r0, r4, #0
	bl sub_08000704
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FB1A8
	movs r6, #0
	adds r7, r5, #0
	adds r7, #144
	mov r8, r6
.L082FB14A:
	ldr r0, [r7, #0]
	ldr r1, [pc, #80]
	mov r2, r8
	adds r4, r2, r1
	ldr r0, [r0, #16]
	cmp r0, r4
	beq .L082FB194
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FB194
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB194
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #10
	movs r2, #10
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #24]
	adds r1, r6, r1
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FB194:
	movs r0, #248
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls .L082FB14A
	b .L082FB1D2
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FB1A8:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FB1D2
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #10
	movs r2, #5
	movs r3, #2
	bl sub_08306DD4
	b .L082FB1F4
.L082FB1D2:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB1F4
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB1F4
	adds r0, r5, #0
	bl sub_082F4B78
.L082FB1F4:
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FB200
	.thumb_func
sub_082FB200:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FB218
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082FB224
.L082FB218:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082FB224:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB236
	adds r0, r5, #0
	bl sub_082F4B78
.L082FB236:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FB23C
	.thumb_func
sub_082FB23C:
	ldr r1, [pc, #12]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB250
	.thumb_func
sub_082FB250:
	ldr r1, [pc, #12]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB264
	.thumb_func
sub_082FB264:
	ldr r1, [pc, #8]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #5]
	bx lr
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB274
	.thumb_func
sub_082FB274:
	ldr r1, [pc, #8]
	ldrb r0, [r0, #1]
	lsls r0, r0, #4
	adds r0, r0, r1
	ldrb r0, [r0, #6]
	bx lr
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB284
	.thumb_func
sub_082FB284:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #3
	ldr r1, [pc, #292]
	adds r6, r0, r1
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r0, r0, #24
	mov sl, r0
	cmp r0, #0
	bne .L082FB2AC
	b .L082FB3E8
.L082FB2AC:
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #272]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #260]
	ldr r0, [pc, #260]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r5, [pc, #220]
	ldr r0, [pc, #220]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r1, #0
	mov r9, r1
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #176]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #132]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, r9
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #88]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #44]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	b .L082FB516
	movs r5, #12
	lsls r0, r0, #12
	adds r4, #252
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	str r2, [sp, #84]
	lsrs r7, r5, #32
	lsls r7, r4, #15
	movs r0, r0
	str r6, [sp, #612]
	lsrs r7, r5, #32
	add r0, pc, #660
	lsrs r7, r5, #32
	ldr r2, [sp, #900]
	lsrs r7, r5, #32
	add r0, sp, #948
	lsrs r7, r5, #32
	add r6, sp, #420
	lsrs r7, r5, #32
.L082FB3E8:
	ldr r0, [pc, #320]
	ldrb r1, [r0, #0]
	cmp r1, #3
	bls .L082FB3F2
	b .L082FB554
.L082FB3F2:
	ldrb r0, [r0, #0]
	bl sub_08315020
	mov r9, r0
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #300]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #288]
	ldr r0, [pc, #292]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #18]
	ldr r5, [pc, #244]
	ldr r0, [pc, #248]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #20]
	ldr r0, [pc, #200]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r0, r9
	ldrh r2, [r0, #22]
	ldr r0, [pc, #156]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r1, sl
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #9
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r0, r9
	ldrh r2, [r0, #24]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	mov r1, r9
	ldrh r2, [r1, #26]
	ldr r0, [pc, #64]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
.L082FB516:
	movs r3, #20
	bl sub_082FB9A8
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	b .L082FB67A
	strb r4, [r3, #21]
	lsls r0, r0, #8
	adds r4, #252
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
	str r2, [sp, #84]
	lsrs r7, r5, #32
	lsls r7, r4, #15
	movs r0, r0
	str r6, [sp, #612]
	lsrs r7, r5, #32
	add r0, pc, #660
	lsrs r7, r5, #32
	ldr r2, [sp, #900]
	lsrs r7, r5, #32
	add r0, sp, #948
	lsrs r7, r5, #32
	add r6, sp, #420
	lsrs r7, r5, #32
.L082FB554:
	lsls r4, r5, #3
	adds r4, r4, r5
	lsls r4, r4, #4
	ldr r0, [pc, #304]
	mov r8, r0
	adds r7, r4, r0
	movs r0, #0
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r3, [pc, #292]
	ldr r0, [pc, #292]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	adds r2, r3, #0
	bl sub_082FB9A8
	movs r0, #10
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #3
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #24
	adds r7, r4, r0
	movs r0, #1
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r5, [pc, #252]
	ldr r0, [pc, #252]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #1
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r1, sl
	str r1, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #6
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #48
	adds r7, r4, r0
	movs r0, #2
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	movs r0, #30
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #2
	movs r2, #1
	movs r3, #10
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #72
	adds r7, r4, r0
	movs r0, #3
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #164]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #3
	movs r2, #0
	adds r3, r5, #0
	bl sub_082FB9A8
	mov r0, sl
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #0
	movs r2, #1
	movs r3, #9
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #96
	adds r7, r4, r0
	movs r0, #4
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #120]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	movs r5, #100
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
	mov r0, r8
	adds r0, #120
	adds r7, r4, r0
	movs r0, #5
	adds r1, r7, #0
	adds r2, r6, #0
	bl sub_082FB978
	ldr r0, [pc, #76]
	str r0, [sp, #0]
	adds r0, r7, #0
	movs r1, #5
	movs r2, #0
	movs r3, #20
	bl sub_082FB9A8
	str r5, [sp, #0]
	adds r0, r7, #0
	movs r1, #4
	movs r2, #1
	movs r3, #11
	bl sub_082FB9BC
.L082FB67A:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030034FC
	.4byte 0x0000FFFF
	.4byte 0x082F9215
	.4byte 0x000003E7
	.4byte 0x082F9699
	.4byte 0x082FA0A5
	.4byte 0x082F9AE1
	.4byte 0x082FA8ED
	.4byte 0x082FAE69

	.thumb
	.align 1, 0
	.global sub_082FB6B0
	.thumb_func
sub_082FB6B0:
	push {lr}
	movs r2, #100
	muls r0, r2
	ldr r2, [pc, #24]
	adds r0, r0, r2
	ldr r2, [pc, #24]
	lsls r1, r1, #4
	adds r1, r1, r2
	ldr r1, [r1, #0]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300373C
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB6D8
	.thumb_func
sub_082FB6D8:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r4, r6, #5
	subs r4, r4, r6
	lsls r4, r4, #3
	ldr r0, [pc, #68]
	adds r4, r4, r0
	adds r0, r4, #0
	adds r0, #93
	strb r5, [r0, #0]
	lsls r0, r6, #3
	adds r0, r0, r6
	lsls r0, r0, #4
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	ldr r2, [pc, #52]
	adds r1, r1, r2
	adds r0, r0, r1
	str r0, [r4, #96]
	bl sub_082FB99C
	ldr r1, [r4, #96]
	movs r0, #2
	strb r0, [r1, #0]
	ldr r1, [r4, #96]
	movs r0, #10
	strb r0, [r1, #14]
	movs r0, #100
	muls r0, r6
	ldr r1, [pc, #28]
	adds r0, r0, r1
	ldr r1, [pc, #28]
	lsls r5, r5, #4
	adds r5, r5, r1
	ldr r1, [r5, #0]
	bl sub_080003FC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x030034FC
	.4byte 0x0300373C
	.4byte 0x083D6708

	.thumb
	.align 1, 0
	.global sub_082FB73C
	.thumb_func
sub_082FB73C:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [pc, #88]
	adds r2, r4, #0
	adds r2, #93
	ldrb r3, [r4, #0]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #1
	ldrb r2, [r2, #0]
	adds r1, r2, r1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082FB802
	ldr r0, [r4, #96]
	bl sub_082FB264
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB770
	ldrb r0, [r4, #7]
	cmp r0, #3
	beq .L082FB802
	cmp r0, #5
	beq .L082FB802
.L082FB770:
	ldr r0, [r4, #96]
	bl sub_082FB9D0
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB7C8
	ldr r0, [r4, #96]
	ldrb r0, [r0, #1]
	cmp r0, #4
	bne .L082FB7B0
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FB7A0
	movs r0, #1
	negs r0, r0
	ldr r1, [r4, #64]
	movs r2, #192
	lsls r2, r2, #2
	ldr r3, [r4, #72]
	b .L082FB7AA
	adds r4, #228
	lsls r0, r0, #12
.L082FB7A0:
	ldr r1, [r4, #64]
	movs r2, #192
	lsls r2, r2, #2
	ldr r3, [r4, #72]
	movs r0, #1
.L082FB7AA:
	bl sub_083170B8
	str r0, [r4, #64]
.L082FB7B0:
	movs r0, #100
	ldrb r4, [r4, #0]
	muls r0, r4
	ldr r1, [pc, #12]
	adds r0, r0, r1
	bl sub_080006AC
	movs r0, #1
	b .L082FB804
	movs r0, r0
	adds r7, #60
	lsls r0, r0, #12
.L082FB7C8:
	ldr r0, [r4, #96]
	ldrh r0, [r0, #6]
	cmp r0, #0
	bne .L082FB802
	movs r0, #6
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB802
	ldr r0, [pc, #44]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L082FB802
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L082FB802
	movs r0, #6
	bl sub_083189D0
.L082FB802:
	movs r0, #0
.L082FB804:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_082FB810
	.thumb_func
sub_082FB810:
	push {lr}
	adds r3, r0, #0
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #4
	lsls r3, r1, #1
	adds r3, r3, r1
	lsls r3, r3, #3
	ldr r1, [pc, #12]
	adds r3, r3, r1
	adds r0, r0, r3
	adds r1, r2, #0
	bl sub_082FBA80
	pop {r0}
	bx r0
	.4byte 0x030034FC

	.thumb
	.align 1, 0
	.global sub_082FB834
	.thumb_func
sub_082FB834:
	lsls r2, r0, #3
	adds r2, r2, r0
	lsls r2, r2, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #8]
	adds r0, r0, r1
	adds r2, r2, r0
	ldrh r0, [r2, #6]
	bx lr
	.2byte 0x0000
	.4byte 0x030034FC

	.thumb
	.align 1, 0
	.global sub_082FB850
	.thumb_func
sub_082FB850:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	lsls r0, r0, #5
	mov r1, r8
	subs r0, r0, r1
	lsls r0, r0, #3
	ldr r1, [pc, #68]
	adds r6, r0, r1
	movs r0, #100
	mov r1, r8
	muls r1, r0
	ldr r0, [pc, #64]
	adds r5, r1, r0
	adds r7, r6, #0
	adds r7, #100
	adds r0, r7, #0
	bl sub_08000790
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_08000680
	ldr r0, [r6, #96]
	bl sub_082FBA70
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB8BC
	ldr r0, [pc, #32]
	adds r1, r6, #0
	adds r1, #93
	ldrb r1, [r1, #0]
	lsls r1, r1, #4
	adds r1, r1, r0
	ldrb r0, [r1, #4]
	cmp r0, #0
	bne .L082FB8B4
	adds r0, r5, #0
	bl sub_08000704
	b .L082FB8EA
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	adds r7, #60
	lsls r0, r0, #12
	str r0, [r1, #112]
	lsrs r5, r7, #32
.L082FB8B4:
	adds r0, r5, #0
	bl sub_080006C4
	b .L082FB8EA
.L082FB8BC:
	adds r0, r6, #0
	adds r0, #110
	ldrh r4, [r0, #0]
	adds r0, r5, #0
	bl sub_08000724
	cmp r4, r0
	bhi .L082FB8DC
	adds r0, r7, #0
	bl sub_08000794
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800065C
	b .L082FB8EA
.L082FB8DC:
	adds r0, r5, #0
	bl sub_08000724
	adds r1, r0, #0
	adds r0, r5, #0
	bl sub_0800065C
.L082FB8EA:
	ldrb r0, [r6, #1]
	cmp r0, #0
	beq .L082FB948
	ldrb r0, [r6, #3]
	cmp r0, #0
	beq .L082FB948
	adds r0, r6, #0
	adds r0, #100
	ldr r1, [r6, #52]
	asrs r1, r1, #8
	ldr r2, [r6, #56]
	asrs r2, r2, #8
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB948
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082FB948
	movs r0, #100
	mov r4, r8
	muls r4, r0
	ldr r0, [pc, #40]
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r6, #0
	adds r0, #102
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsh r2, [r0, r3]
	adds r0, #2
	ldrb r3, [r0, #0]
	adds r3, #1
	adds r0, r4, #0
	bl sub_08000684
	b .L082FB958
	adds r4, #228
	lsls r0, r0, #12
	adds r7, #60
	lsls r0, r0, #12
.L082FB948:
	movs r0, #100
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	ldr r1, [pc, #32]
	adds r0, r0, r1
	bl sub_0800060C
.L082FB958:
	movs r0, #100
	mov r2, r8
	muls r2, r0
	adds r0, r2, #0
	ldr r1, [pc, #16]
	adds r0, r0, r1
	bl Sprite_Draw
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300373C

	.thumb
	.align 1, 0
	.global sub_082FB978
	.thumb_func
sub_082FB978:
	str r2, [r1, #16]
	movs r2, #0
	strb r0, [r1, #1]
	strb r2, [r1, #0]
	strb r2, [r1, #2]
	movs r0, #0
	strh r2, [r1, #4]
	str r2, [r1, #20]
	strb r0, [r1, #8]
	strb r0, [r1, #11]
	strb r0, [r1, #9]
	strb r0, [r1, #10]
	strh r2, [r1, #6]
	strb r0, [r1, #13]
	strb r0, [r1, #12]
	strb r0, [r1, #14]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FB99C
	.thumb_func
sub_082FB99C:
	movs r1, #0
	strb r1, [r0, #0]
	strb r1, [r0, #13]
	strb r1, [r0, #12]
	strb r1, [r0, #14]
	bx lr

	.thumb
	.align 1, 0
	.global sub_082FB9A8
	.thumb_func
sub_082FB9A8:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #2]
	strh r2, [r0, #6]
	strh r3, [r0, #4]
	str r4, [r0, #20]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FB9BC
	.thumb_func
sub_082FB9BC:
	push {r4, lr}
	ldr r4, [sp, #8]
	strb r1, [r0, #8]
	strb r2, [r0, #10]
	strb r3, [r0, #9]
	strb r4, [r0, #11]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FB9D0
	.thumb_func
sub_082FB9D0:
	adds r1, r0, #0
	ldrb r2, [r1, #0]
	subs r0, r2, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bls .L082FB9E4
	ldrh r0, [r1, #6]
	cmp r0, #0
	bne .L082FB9E8
.L082FB9E4:
	movs r0, #0
	b .L082FB9FA
.L082FB9E8:
	cmp r2, #0
	bne .L082FB9F8
	ldrb r0, [r1, #8]
	strb r0, [r1, #12]
	ldrb r0, [r1, #10]
	strb r0, [r1, #13]
	movs r0, #1
	strb r0, [r1, #0]
.L082FB9F8:
	movs r0, #1
.L082FB9FA:
	bx lr

	.thumb
	.align 1, 0
	.global sub_082FB9FC
	.thumb_func
sub_082FB9FC:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #0]
	cmp r0, #2
	bne .L082FBA16
	ldrb r0, [r4, #14]
	adds r1, r0, #0
	cmp r1, #0
	beq .L082FBA14
	subs r0, #1
	strb r0, [r4, #14]
	b .L082FBA16
.L082FBA14:
	strb r1, [r4, #0]
.L082FBA16:
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L082FBA68
	ldrb r0, [r4, #12]
	cmp r0, #0
	bne .L082FBA64
	ldrb r0, [r4, #13]
	cmp r0, #0
	bne .L082FBA3C
	ldrb r1, [r4, #11]
	adds r0, r1, #0
	cmp r0, #0
	bne .L082FBA34
	strb r0, [r4, #0]
	b .L082FBA68
.L082FBA34:
	movs r0, #2
	strb r0, [r4, #0]
	strb r1, [r4, #14]
	b .L082FBA68
.L082FBA3C:
	subs r0, #1
	strb r0, [r4, #13]
	ldrb r0, [r4, #9]
	strb r0, [r4, #12]
	ldr r1, [r4, #20]
	adds r0, r4, #0
	bl sub_0831A7E8
	ldrh r2, [r4, #6]
	adds r1, r2, #0
	ldr r0, [pc, #12]
	cmp r1, r0
	beq .L082FBA68
	cmp r1, #0
	beq .L082FBA68
	subs r0, r2, #1
	strh r0, [r4, #6]
	b .L082FBA68
	.2byte 0xffff @ .raw
	movs r0, r0
.L082FBA64:
	subs r0, #1
	strb r0, [r4, #12]
.L082FBA68:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FBA70
	.thumb_func
sub_082FBA70:
	movs r1, #0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082FBA7A
	movs r1, #1
.L082FBA7A:
	adds r0, r1, #0
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FBA80
	.thumb_func
sub_082FBA80:
	ldrh r2, [r0, #6]
	adds r1, r2, r1
	strh r1, [r0, #6]
	ldrh r2, [r0, #4]
	lsls r1, r1, #16
	lsrs r1, r1, #16
	cmp r1, r2
	bls .L082FBA92
	strh r2, [r0, #6]
.L082FBA92:
	bx lr

	.thumb
	.align 1, 0
	.global sub_082FBA94
	.thumb_func
sub_082FBA94:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBAAC
.L082FBAA8:
	bl VBlankIntrWait
.L082FBAAC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FBAA8
	movs r0, #16
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FBAE8
	.thumb_func
sub_082FBAE8:
	push {lr}
	movs r0, #6
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FBB12
	bl sub_0831650C
	bl sub_0831653C
	movs r1, #156
	negs r1, r1
	movs r0, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
.L082FBB12:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FBB1D

	.thumb
	.align 1, 0
	.global sub_082FBB1C
	.thumb_func
sub_082FBB1C:
	push {lr}
	bl sub_0831650C
	bl sub_0831653C
	movs r0, #0
	movs r1, #156
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FBB38
	.thumb_func
sub_082FBB38:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBB50
.L082FBB4C:
	bl VBlankIntrWait
.L082FBB50:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FBB4C
	movs r0, #17
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FBB8C
	.thumb_func
sub_082FBB8C:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBBA4
.L082FBBA0:
	bl VBlankIntrWait
.L082FBBA4:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FBBA0
	movs r0, #18
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FBBE0
	.thumb_func
sub_082FBBE0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D6768
	.4byte 0x082FBC45

	.thumb
	.align 1, 0
	.global sub_082FBC44
	.thumb_func
sub_082FBC44:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #25
	bl sub_08316098
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FBC79

	.thumb
	.align 1, 0
	.global sub_082FBC78
	.thumb_func
sub_082FBC78:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FBCA1

	.thumb
	.align 1, 0
	.global sub_082FBCA0
	.thumb_func
sub_082FBCA0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D67A4
	.4byte 0x082FBD09
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_082FBD24
	.thumb_func
sub_082FBD24:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D67C0
	.4byte 0x082FBD89

	.thumb
	.align 1, 0
	.global sub_082FBD88
	.thumb_func
sub_082FBD88:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D67E4
	.4byte 0x082FBE0D
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_082FBE0C
	.thumb_func
sub_082FBE0C:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FBE1E
.L082FBE1A:
	bl VBlankIntrWait
.L082FBE1E:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FBE1A
	movs r0, #1
	bl sub_083100D4
	bl sub_08305E54
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FBE48
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne .L082FBE48
	movs r0, #1
	strb r0, [r1, #3]
.L082FBE48:
	movs r0, #19
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #32]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FBE80
	.thumb_func
sub_082FBE80:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FBEA5

	.thumb
	.align 1, 0
	.global sub_082FBEA4
	.thumb_func
sub_082FBEA4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6808

	.thumb
	.align 1, 0
	.global sub_082FBEF0
	.thumb_func
sub_082FBEF0:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #24]
	movs r1, #191
	lsls r1, r1, #1
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000004DF
	.4byte 0x082FBF29

	.thumb
	.align 1, 0
	.global sub_082FBF28
	.thumb_func
sub_082FBF28:
	.2byte 0xb500 @ pushcc {lr}
	.2byte 0xf01a, 0xfaef @ blcs 0x831650c
	.2byte 0xf01a, 0xfb0d @ blcs 0x831654c
	.2byte 0x2005 @ movs r0, #5
	.2byte 0x2101 @ movs r1, #1
	.2byte 0xf505, 0xff47 @ bl 0x8001dc8
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x2278 @ movs r2, #120
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf01a, 0xf9e1 @ bl 0x8316308
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xf01a, 0xfada @ bl 0x8316500
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x082FBF55

	.thumb
	.align 1, 0
	.global sub_082FBF54
	.thumb_func
sub_082FBF54:
	.2byte 0xb500 @ pushmi {lr}
	.2byte 0xf01a, 0xfad9 @ blpl 0x831650c
	.2byte 0xf01a, 0xfaf7 @ blmi 0x831654c
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0x223c @ movs r2, #60
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf01a, 0xf9cf @ bl 0x8316308
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0xFFFFFB21
	.4byte 0xFFFFFE82

	.thumb
	.align 1, 0
	.global sub_082FBF78
	.thumb_func
sub_082FBF78:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #1
	movs r3, #0
	bl sub_08316308
	movs r0, #66
	negs r0, r0
	movs r1, #94
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FBFAD

	.thumb
	.align 1, 0
	.global sub_082FBFAC
	.thumb_func
sub_082FBFAC:
	.2byte 0xb500 @ pushlt {lr}
	.2byte 0xf01a, 0xfaad @ bllt 0x831650c
	.2byte 0xf01a, 0xfacb @ blge 0x831654c
	.2byte 0x2003 @ movs r0, #3
	.2byte 0x2100 @ movs r1, #0
	.2byte 0xf505, 0xff05 @ bl 0x8001dc8
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x2100 @ movs r1, #0
	.2byte 0x223c @ movs r2, #60
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf01a, 0xf99f @ bl 0x8316308
	.2byte 0x4802 @ ldr r0, [pc, #8]
	.2byte 0xf01a, 0xfa98 @ bl 0x8316500
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.4byte 0x082FBFD9

	.thumb
	.align 1, 0
	.global sub_082FBFD8
	.thumb_func
sub_082FBFD8:
	.2byte 0xb500 @ pushle {lr}
	.2byte 0xf01a, 0xfa97 @ blgt 0x831650c
	.2byte 0xf01a, 0xfab5 @ blgt 0x831654c
	.2byte 0x215e @ movs r1, #94
	.2byte 0x4249 @ negs r1, r1
	.2byte 0x2042 @ movs r0, #66
	.2byte 0x223c @ movs r2, #60
	.2byte 0x2300 @ movs r3, #0
	.2byte 0xf01a, 0xf98c @ bl 0x8316308
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0

	.thumb
	.align 1, 0
	.global sub_082FBFF4
	.thumb_func
sub_082FBFF4:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FC00C
.L082FC008:
	bl VBlankIntrWait
.L082FC00C:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FC008
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FC02C
	movs r0, #23
	movs r1, #0
	bl sub_08311C50
	b .L082FC034
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FC02C:
	movs r0, #21
	movs r1, #0
	bl sub_08311C50
.L082FC034:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FC060
	.thumb_func
sub_082FC060:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FC085

	.thumb
	.align 1, 0
	.global sub_082FC084
	.thumb_func
sub_082FC084:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6834
	.4byte 0x082FC0DD

	.thumb
	.align 1, 0
	.global sub_082FC0DC
	.thumb_func
sub_082FC0DC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6870
	.4byte 0x082FC135

	.thumb
	.align 1, 0
	.global sub_082FC134
	.thumb_func
sub_082FC134:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #100
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #100
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D68A8

	.thumb
	.align 1, 0
	.global sub_082FC180
	.thumb_func
sub_082FC180:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FC198
.L082FC194:
	bl VBlankIntrWait
.L082FC198:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FC194
	movs r0, #22
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FC1D4
	.thumb_func
sub_082FC1D4:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FC1EC
.L082FC1E8:
	bl VBlankIntrWait
.L082FC1EC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FC1E8
	movs r0, #23
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FC228
	.thumb_func
sub_082FC228:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	movs r2, #1
	negs r2, r2
	movs r0, #150
	lsls r0, r0, #1
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	ldr r0, [pc, #8]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.4byte 0x082FC271

	.thumb
	.align 1, 0
	.global sub_082FC270
	.thumb_func
sub_082FC270:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #60
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	ldr r0, [pc, #8]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.4byte 0x082FC2A9

	.thumb
	.align 1, 0
	.global sub_082FC2A8
	.thumb_func
sub_082FC2A8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D68B8
	.4byte 0x082FC31D

	.thumb
	.align 1, 0
	.global sub_082FC31C
	.thumb_func
sub_082FC31C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D68C8
	.4byte 0x082FC391

	.thumb
	.align 1, 0
	.global sub_082FC390
	.thumb_func
sub_082FC390:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6900
	.4byte 0x082FC405

	.thumb
	.align 1, 0
	.global sub_082FC404
	.thumb_func
sub_082FC404:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6928
	.4byte 0x082FC479

	.thumb
	.align 1, 0
	.global sub_082FC478
	.thumb_func
sub_082FC478:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6960
	.4byte 0x082FC4ED

	.thumb
	.align 1, 0
	.global sub_082FC4EC
	.thumb_func
sub_082FC4EC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6988
	.4byte 0x082FC561

	.thumb
	.align 1, 0
	.global sub_082FC560
	.thumb_func
sub_082FC560:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D69C0
	.4byte 0x082FC5D5

	.thumb
	.align 1, 0
	.global sub_082FC5D4
	.thumb_func
sub_082FC5D4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #12
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D69E8
	.4byte 0x082FC649
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_082FC650
	.thumb_func
sub_082FC650:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r1, r0, #8
	movs r0, #185
	lsls r0, r0, #1
	cmp r1, r0
	ble .L082FC67C
	movs r0, #1
	b .L082FC682
	movs r5, #12
	lsls r0, r0, #12
.L082FC67C:
	cmp r1, #179
	bgt .L082FC698
	movs r0, #2
.L082FC682:
	movs r1, #0
	movs r2, #0
	movs r3, #35
	bl sub_08316098
	ldr r0, [pc, #4]
	bl sub_08316500
	b .L082FC69E
	stmia r6!, {r0, r4, r6}
	lsrs r7, r5, #32
.L082FC698:
	ldr r0, [pc, #8]
	bl sub_08316500
.L082FC69E:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FC6A9

	.thumb
	.align 1, 0
	.global sub_082FC6A8
	.thumb_func
sub_082FC6A8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r2, [pc, #96]
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	cmp r0, #243
	bgt .L082FC6D2
	adds r1, r2, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
.L082FC6D2:
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	cmp r0, #244
	ble .L082FC6E2
	adds r1, r2, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
.L082FC6E2:
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D69FC
	.4byte 0x082FC731

	.thumb
	.align 1, 0
	.global sub_082FC730
	.thumb_func
sub_082FC730:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D6A10
	.4byte 0x082FC791

	.thumb
	.align 1, 0
	.global sub_082FC790
	.thumb_func
sub_082FC790:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D6A24
	.4byte 0x082FC7F1

	.thumb
	.align 1, 0
	.global sub_082FC7F0
	.thumb_func
sub_082FC7F0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D6A3C
	.4byte 0x082FC851

	.thumb
	.align 1, 0
	.global sub_082FC850
	.thumb_func
sub_082FC850:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6A70
	.4byte 0x082FC8B5

	.thumb
	.align 1, 0
	.global sub_082FC8B4
	.thumb_func
sub_082FC8B4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #4
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6A80
	.4byte 0x082FC919

	.thumb
	.align 1, 0
	.global sub_082FC918
	.thumb_func
sub_082FC918:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L082FC92A
.L082FC926:
	bl VBlankIntrWait
.L082FC92A:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FC926
	movs r0, #1
	bl sub_083100D4
	ldr r0, [pc, #52]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FC964
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne .L082FC964
	movs r0, #1
	strb r0, [r1, #3]
	bl sub_083190E0
	movs r0, #1
	negs r0, r0
	bl sub_08319148
	bl sub_08315278
	bl sub_083190F0
.L082FC964:
	bl sub_0830693C
	bl sub_08302170
	pop {r0}
	bx r0
	.4byte 0x0200755C

	.thumb
	.align 1, 0
	.global sub_082FC974
	.thumb_func
sub_082FC974:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #100
	str r0, [sp, #4]
	movs r4, #120
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #100
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6ACC
	.4byte 0x082FC9ED

	.thumb
	.align 1, 0
	.global sub_082FC9EC
	.thumb_func
sub_082FC9EC:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6AF0
	.4byte 0x082FCA65

	.thumb
	.align 1, 0
	.global sub_082FCA64
	.thumb_func
sub_082FCA64:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6B3C
	.4byte 0x082FCADD

	.thumb
	.align 1, 0
	.global sub_082FCADC
	.thumb_func
sub_082FCADC:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #110
	movs r1, #0
	movs r2, #90
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x082FCB29

	.thumb
	.align 1, 0
	.global sub_082FCB28
	.thumb_func
sub_082FCB28:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6B6C
	.4byte 0x082FCBAD

	.thumb
	.align 1, 0
	.global sub_082FCBAC
	.thumb_func
sub_082FCBAC:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #110
	negs r0, r0
	movs r1, #0
	movs r2, #90
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FCC09

	.thumb
	.align 1, 0
	.global sub_082FCC08
	.thumb_func
sub_082FCC08:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6BA8
	.4byte 0x082FCC89

	.thumb
	.align 1, 0
	.global sub_082FCC88
	.thumb_func
sub_082FCC88:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #225
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r0, #0
	movs r1, #0
	movs r2, #120
	movs r3, #0
	bl sub_08316308
	movs r0, #190
	negs r0, r0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FCCF1

	.thumb
	.align 1, 0
	.global sub_082FCCF0
	.thumb_func
sub_082FCCF0:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6BE0
	.4byte 0x082FCD75

	.thumb
	.align 1, 0
	.global sub_082FCD74
	.thumb_func
sub_082FCD74:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6C0C
	.4byte 0x082FCDF9

	.thumb
	.align 1, 0
	.global sub_082FCDF8
	.thumb_func
sub_082FCDF8:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6C38
	.4byte 0x082FCE79

	.thumb
	.align 1, 0
	.global sub_082FCE78
	.thumb_func
sub_082FCE78:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #100
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #100
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6C6C
	.4byte 0x082FCEFD

	.thumb
	.align 1, 0
	.global sub_082FCEFC
	.thumb_func
sub_082FCEFC:
	push {r4, lr}
	sub sp, #4
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #9
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #1
	negs r0, r0
	bl sub_083164DC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FCF30
	.thumb_func
sub_082FCF30:
	push {r4, lr}
	sub sp, #4
	bl sub_0831654C
	bl sub_0831650C
	ldr r0, [pc, #72]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #10
	str r0, [sp, #0]
	movs r0, #3
	movs r1, #12
	movs r2, #0
	movs r3, #0
	bl sub_083160FC
	movs r2, #1
	negs r2, r2
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #7
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x082FCF91

	.thumb
	.align 1, 0
	.global sub_082FCF90
	.thumb_func
sub_082FCF90:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6C8C
	.4byte 0x082FD015

	.thumb
	.align 1, 0
	.global sub_082FD014
	.thumb_func
sub_082FD014:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6CA8
	.4byte 0x082FD099

	.thumb
	.align 1, 0
	.global sub_082FD098
	.thumb_func
sub_082FD098:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #3
	movs r1, #8
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6CE4

	.thumb
	.align 1, 0
	.global sub_082FD110
	.thumb_func
sub_082FD110:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #104]
	movs r4, #0
	str r4, [r0, #64]
	movs r2, #1
	negs r2, r2
	str r4, [sp, #0]
	movs r0, #0
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #7
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D6CF4
	.4byte 0x082FD195

	.thumb
	.align 1, 0
	.global sub_082FD194
	.thumb_func
sub_082FD194:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r0, #0
	str r0, [sp, #0]
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #120
	negs r0, r0
	movs r1, #40
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r1, #40
	negs r1, r1
	movs r0, #100
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.4byte 0x082FD1E9

	.thumb
	.align 1, 0
	.global sub_082FD1E8
	.thumb_func
sub_082FD1E8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D6D24
	.4byte 0x082FD259

	.thumb
	.align 1, 0
	.global sub_082FD258
	.thumb_func
sub_082FD258:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	str r4, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6D60

	.thumb
	.align 1, 0
	.global sub_082FD2C0
	.thumb_func
sub_082FD2C0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #60]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D6DA0

	.thumb
	.align 1, 0
	.global sub_082FD314
	.thumb_func
sub_082FD314:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FD32C
.L082FD328:
	bl VBlankIntrWait
.L082FD32C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FD328
	movs r0, #1
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FD368
	.thumb_func
sub_082FD368:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	ldr r4, [pc, #84]
	movs r5, #0
	str r5, [r4, #64]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	adds r4, #48
	movs r0, #1
	strb r0, [r4, #0]
	str r5, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D6DD8
	.4byte 0x082FD3D9

	.thumb
	.align 1, 0
	.global sub_082FD3D8
	.thumb_func
sub_082FD3D8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #64]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D6E04
	.4byte 0x082FD441

	.thumb
	.align 1, 0
	.global sub_082FD440
	.thumb_func
sub_082FD440:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #60]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D6E34

	.thumb
	.align 1, 0
	.global sub_082FD4A0
	.thumb_func
sub_082FD4A0:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r0, #208
	lsls r0, r0, #2
	movs r1, #70
	movs r2, #120
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FD4D9

	.thumb
	.align 1, 0
	.global sub_082FD4D8
	.thumb_func
sub_082FD4D8:
	push {r4, r5, r6, lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	ldr r6, [pc, #120]
	movs r1, #150
	lsls r1, r1, #9
	adds r0, r6, #0
	movs r2, #0
	bl sub_083081B0
	ldr r0, [pc, #108]
	movs r1, #170
	lsls r1, r1, #9
	movs r2, #20
	bl sub_083081B0
	ldr r0, [pc, #100]
	movs r4, #160
	lsls r4, r4, #9
	adds r1, r4, #0
	movs r2, #40
	bl sub_083081B0
	ldr r5, [pc, #92]
	movs r1, #140
	lsls r1, r1, #9
	adds r0, r5, #0
	movs r2, #60
	bl sub_083081B0
	ldr r0, [pc, #80]
	movs r1, #155
	lsls r1, r1, #9
	movs r2, #80
	bl sub_083081B0
	ldr r0, [pc, #72]
	ldr r1, [pc, #76]
	movs r2, #100
	bl sub_083081B0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #120
	bl sub_083081B0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #140
	bl sub_083081B0
	movs r0, #0
	movs r1, #0
	movs r2, #120
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #40]
	bl sub_08316500
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x001C4400
	.4byte 0x001C8400
	.4byte 0x001C9800
	.4byte 0x001C7A00
	.4byte 0x001C8900
	.4byte 0x001C7F00
	.4byte 0x00012700
	.4byte 0x082FD581

	.thumb
	.align 1, 0
	.global sub_082FD580
	.thumb_func
sub_082FD580:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #1
	movs r1, #1
	bl sub_08001DC8
	movs r0, #0
	movs r1, #0
	movs r2, #180
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	movs r1, #70
	negs r1, r1
	movs r2, #120
	movs r3, #0
	bl sub_08316308
	pop {r0}
	bx r0
	.4byte 0xFFFFFCC0

	.thumb
	.align 1, 0
	.global sub_082FD5B8
	.thumb_func
sub_082FD5B8:
	push {lr}
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FD61E
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FD5DE
.L082FD5DA:
	bl VBlankIntrWait
.L082FD5DE:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FD5DA
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082FD5FC
	movs r0, #2
	movs r1, #0
	bl sub_08311C50
	b .L082FD604
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FD5FC:
	movs r0, #3
	movs r1, #0
	bl sub_08311C50
.L082FD604:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
.L082FD61E:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FD630
	.thumb_func
sub_082FD630:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r4, #120
	str r4, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6E7C
	.4byte 0x082FD6B1

	.thumb
	.align 1, 0
	.global sub_082FD6B0
	.thumb_func
sub_082FD6B0:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6EB0
	.4byte 0x082FD731

	.thumb
	.align 1, 0
	.global sub_082FD730
	.thumb_func
sub_082FD730:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x082FD77D

	.thumb
	.align 1, 0
	.global sub_082FD77C
	.thumb_func
sub_082FD77C:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6EE4
	.4byte 0x082FD801

	.thumb
	.align 1, 0
	.global sub_082FD800
	.thumb_func
sub_082FD800:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #40
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r4, #60
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #1
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082FD849

	.thumb
	.align 1, 0
	.global sub_082FD848
	.thumb_func
sub_082FD848:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #200
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6F1C
	.4byte 0x082FD8CD

	.thumb
	.align 1, 0
	.global sub_082FD8CC
	.thumb_func
sub_082FD8CC:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6F5C
	.4byte 0x082FD951

	.thumb
	.align 1, 0
	.global sub_082FD950
	.thumb_func
sub_082FD950:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D6F78
	.4byte 0x082FD9D5

	.thumb
	.align 1, 0
	.global sub_082FD9D4
	.thumb_func
sub_082FD9D4:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #44
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #45
	movs r1, #7
	adds r2, r5, #0
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D6FA8

	.thumb
	.align 1, 0
	.global sub_082FDA4C
	.thumb_func
sub_082FDA4C:
	push {r4, lr}
	sub sp, #4
	movs r4, #1
	negs r4, r4
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #21
	movs r1, #9
	adds r2, r4, #0
	movs r3, #0
	bl sub_083160FC
	adds r0, r4, #0
	bl sub_083164DC
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FDA74
	.thumb_func
sub_082FDA74:
	push {r4, lr}
	sub sp, #12
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	bne .L082FDAD2
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	ldr r0, [pc, #72]
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #180
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
.L082FDAD2:
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D6FE4

	.thumb
	.align 1, 0
	.global sub_082FDAE4
	.thumb_func
sub_082FDAE4:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #164]
	movs r4, #0
	strh r4, [r0, #0]
	ldr r0, [pc, #164]
	strh r4, [r0, #0]
	ldr r0, [pc, #164]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	str r4, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #11
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	ldr r0, [pc, #24]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03000D1C
	.4byte 0x03000D14
	.4byte 0x0300250C
	.4byte 0x082FDBA9

	.thumb
	.align 1, 0
	.global sub_082FDBA8
	.thumb_func
sub_082FDBA8:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #5
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D701C
	.4byte 0x082FDC71

	.thumb
	.align 1, 0
	.global sub_082FDC70
	.thumb_func
sub_082FDC70:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D7048
	.4byte 0x082FDD39

	.thumb
	.align 1, 0
	.global sub_082FDD38
	.thumb_func
sub_082FDD38:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #100
	movs r1, #20
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r4, #60
	str r4, [sp, #0]
	movs r0, #24
	movs r1, #7
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #25
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #26
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #27
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #28
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #58
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #59
	movs r1, #1
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FDDC9

	.thumb
	.align 1, 0
	.global sub_082FDDC8
	.thumb_func
sub_082FDDC8:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D7064
	.4byte 0x082FDE91

	.thumb
	.align 1, 0
	.global sub_082FDE90
	.thumb_func
sub_082FDE90:
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #1
	negs r4, r4
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #24
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #25
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #26
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #27
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #28
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #58
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	str r5, [sp, #0]
	movs r0, #59
	movs r1, #7
	adds r2, r4, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #28
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF18
	ldr r0, [sp, #4]
	adds r0, #226
	strb r5, [r0, #0]
.L082FDF18:
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FDF2D

	.thumb
	.align 1, 0
	.global sub_082FDF2C
	.thumb_func
sub_082FDF2C:
	push {r4, r5, r6, lr}
	sub sp, #12
	movs r6, #0
	movs r4, #24
	add r5, sp, #8
	b .L082FDF3A
.L082FDF38:
	adds r4, #1
.L082FDF3A:
	cmp r4, #28
	bhi .L082FDF4E
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF38
	movs r6, #1
.L082FDF4E:
	movs r4, #58
.L082FDF50:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FDF88
	ldr r1, [sp, #8]
	adds r0, r1, #0
	adds r0, #230
	ldrb r2, [r0, #0]
	cmp r2, #1
	bne .L082FDF84
	adds r1, #226
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082FDF84
	movs r0, #0
	strb r0, [r1, #0]
	str r2, [sp, #0]
	adds r0, r4, #0
	movs r1, #7
	movs r2, #0
	movs r3, #1
	bl sub_083160FC
.L082FDF84:
	movs r6, #1
	b .L082FDF8E
.L082FDF88:
	adds r4, #1
	cmp r4, #59
	bls .L082FDF50
.L082FDF8E:
	ldr r0, [pc, #44]
	bl sub_08301E4C
	ldr r0, [pc, #40]
	bl sub_08301E40
	movs r0, #1
	negs r0, r0
	bl sub_083164DC
	cmp r6, #0
	bne .L082FDFB4
	bl sub_08301E84
	bl sub_083164F4
	ldr r0, [pc, #20]
	bl sub_08316500
.L082FDFB4:
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x000012F0
	.4byte 0x00001396
	.4byte 0x082FDFC9

	.thumb
	.align 1, 0
	.global sub_082FDFC8
	.thumb_func
sub_082FDFC8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D707C

	.thumb
	.align 1, 0
	.global sub_082FE014
	.thumb_func
sub_082FE014:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FE02C
.L082FE028:
	bl VBlankIntrWait
.L082FE02C:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FE028
	movs r0, #3
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FE068
	.thumb_func
sub_082FE068:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	movs r2, #1
	negs r2, r2
	movs r0, #0
	str r0, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #70
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE0A1

	.thumb
	.align 1, 0
	.global sub_082FE0A0
	.thumb_func
sub_082FE0A0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #6
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D70B4
	.4byte 0x082FE115

	.thumb
	.align 1, 0
	.global sub_082FE114
	.thumb_func
sub_082FE114:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #200
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D70CC
	.4byte 0x082FE189

	.thumb
	.align 1, 0
	.global sub_082FE188
	.thumb_func
sub_082FE188:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #6
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D70FC
	.4byte 0x082FE1FD

	.thumb
	.align 1, 0
	.global sub_082FE1FC
	.thumb_func
sub_082FE1FC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7130
	.4byte 0x082FE271

	.thumb
	.align 1, 0
	.global sub_082FE270
	.thumb_func
sub_082FE270:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7170
	.4byte 0x082FE2E5

	.thumb
	.align 1, 0
	.global sub_082FE2E4
	.thumb_func
sub_082FE2E4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D71AC
	.4byte 0x082FE359

	.thumb
	.align 1, 0
	.global sub_082FE358
	.thumb_func
sub_082FE358:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r2, #1
	negs r2, r2
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #2
	movs r1, #7
	movs r3, #0
	bl sub_083160FC
	movs r0, #6
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D71F4

	.thumb
	.align 1, 0
	.global sub_082FE3C0
	.thumb_func
sub_082FE3C0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7208
	.4byte 0x082FE421

	.thumb
	.align 1, 0
	.global sub_082FE420
	.thumb_func
sub_082FE420:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7210
	.4byte 0x082FE481

	.thumb
	.align 1, 0
	.global sub_082FE480
	.thumb_func
sub_082FE480:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7228
	.4byte 0x082FE4E1

	.thumb
	.align 1, 0
	.global sub_082FE4E0
	.thumb_func
sub_082FE4E0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D725C
	.4byte 0x082FE541

	.thumb
	.align 1, 0
	.global sub_082FE540
	.thumb_func
sub_082FE540:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D728C
	.4byte 0x082FE5A1

	.thumb
	.align 1, 0
	.global sub_082FE5A0
	.thumb_func
sub_082FE5A0:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L082FE5B2
.L082FE5AE:
	bl VBlankIntrWait
.L082FE5B2:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FE5AE
	movs r0, #1
	bl sub_083100D4
	bl sub_083043E4
	ldr r0, [pc, #60]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FE5DC
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L082FE5DC
	movs r0, #1
	strb r0, [r1, #0]
.L082FE5DC:
	movs r0, #4
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #32]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	strh r1, [r0, #0]
	ldr r0, [pc, #32]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FE614
	.thumb_func
sub_082FE614:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #96]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #60]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #41
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D72B4
	.4byte 0x082FE691

	.thumb
	.align 1, 0
	.global sub_082FE690
	.thumb_func
sub_082FE690:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #39
	movs r3, #0
	bl sub_083160FC
	movs r0, #150
	lsls r0, r0, #1
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE6CD

	.thumb
	.align 1, 0
	.global sub_082FE6CC
	.thumb_func
sub_082FE6CC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #39
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #15
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D72C8
	.4byte 0x082FE741

	.thumb
	.align 1, 0
	.global sub_082FE740
	.thumb_func
sub_082FE740:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #60
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #27
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #120
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #41
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #1
	movs r1, #25
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x082FE799

	.thumb
	.align 1, 0
	.global sub_082FE798
	.thumb_func
sub_082FE798:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #120
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #31
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #25
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #37
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.4byte 0x082FE7E1

	.thumb
	.align 1, 0
	.global sub_082FE7E0
	.thumb_func
sub_082FE7E0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r2, #1
	negs r2, r2
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #39
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #15
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #52]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D72FC
	.4byte 0x082FE861

	.thumb
	.align 1, 0
	.global sub_082FE860
	.thumb_func
sub_082FE860:
	push {lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #60
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #27
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #1
	str r0, [sp, #0]
	movs r1, #41
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	movs r0, #1
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FE89E
	ldr r1, [sp, #4]
	movs r0, #180
	strh r0, [r1, #32]
.L082FE89E:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #8
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE8BD

	.thumb
	.align 1, 0
	.global sub_082FE8BC
	.thumb_func
sub_082FE8BC:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #240
	negs r0, r0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FE8D8
	.thumb_func
sub_082FE8D8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	ldr r1, [pc, #80]
	movs r0, #0
	str r0, [r1, #64]
	str r0, [r1, #68]
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #90
	str r0, [sp, #4]
	movs r4, #1
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D7330
	.4byte 0x082FE945

	.thumb
	.align 1, 0
	.global sub_082FE944
	.thumb_func
sub_082FE944:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #200
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7358
	.4byte 0x082FE9A9

	.thumb
	.align 1, 0
	.global sub_082FE9A8
	.thumb_func
sub_082FE9A8:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #174
	lsls r0, r0, #1
	movs r1, #15
	negs r1, r1
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #39
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #31
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FEA25

	.thumb
	.align 1, 0
	.global sub_082FEA24
	.thumb_func
sub_082FEA24:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #39
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #31
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #1
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7398
	.4byte 0x082FEAD5

	.thumb
	.align 1, 0
	.global sub_082FEAD4
	.thumb_func
sub_082FEAD4:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #39
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #31
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #1
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D73A8
	.4byte 0x082FEB85

	.thumb
	.align 1, 0
	.global sub_082FEB84
	.thumb_func
sub_082FEB84:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #39
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #31
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #1
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D73E4
	.4byte 0x082FEC35

	.thumb
	.align 1, 0
	.global sub_082FEC34
	.thumb_func
sub_082FEC34:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #27
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #120
	str r0, [sp, #0]
	movs r0, #19
	movs r1, #31
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	movs r0, #30
	str r0, [sp, #0]
	movs r0, #19
	movs r1, #37
	movs r2, #0
	movs r3, #2
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x082FECBD

	.thumb
	.align 1, 0
	.global sub_082FECBC
	.thumb_func
sub_082FECBC:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #27
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #16
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #1
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D73F8
	.4byte 0x082FED6D

	.thumb
	.align 1, 0
	.global sub_082FED6C
	.thumb_func
sub_082FED6C:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #22
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #0
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #1
	movs r3, #120
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D740C
	.4byte 0x082FEE1D

	.thumb
	.align 1, 0
	.global sub_082FEE1C
	.thumb_func
sub_082FEE1C:
	push {r4, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #60
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #22
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #22
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #21
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #21
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #21
	movs r2, #0
	movs r3, #3
	bl sub_083160FC
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FEE91

	.thumb
	.align 1, 0
	.global sub_082FEE90
	.thumb_func
sub_082FEE90:
	push {r4, r5, lr}
	sub sp, #8
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #136]
	movs r1, #15
	movs r2, #140
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #18
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #19
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #20
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #21
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #22
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r4, #18
.L082FEEF6:
	adds r0, r4, #0
	add r1, sp, #4
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FEF1A
	ldr r0, [sp, #4]
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	ldr r1, [sp, #4]
	movs r0, #128
	strh r0, [r1, #36]
	ldr r1, [sp, #4]
	movs r0, #180
	lsls r0, r0, #2
	strh r0, [r1, #32]
.L082FEF1A:
	adds r4, #1
	cmp r4, #22
	bls .L082FEEF6
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0xFFFFFECC

	.thumb
	.align 1, 0
	.global sub_082FEF2C
	.thumb_func
sub_082FEF2C:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FEF44
.L082FEF40:
	bl VBlankIntrWait
.L082FEF44:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FEF40
	movs r0, #11
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FEF80
	.thumb_func
sub_082FEF80:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #235
	lsls r0, r0, #1
	movs r1, #200
	negs r1, r1
	movs r2, #10
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FEFA9

	.thumb
	.align 1, 0
	.global sub_082FEFA8
	.thumb_func
sub_082FEFA8:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #15
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #120
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #180
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #40
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D742C
	.4byte 0x082FF02D

	.thumb
	.align 1, 0
	.global sub_082FF02C
	.thumb_func
sub_082FF02C:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #15
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #180
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #7
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #40
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D7460
	.4byte 0x082FF0B1

	.thumb
	.align 1, 0
	.global sub_082FF0B0
	.thumb_func
sub_082FF0B0:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #60
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #21
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #28
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D749C
	.4byte 0x082FF135

	.thumb
	.align 1, 0
	.global sub_082FF134
	.thumb_func
sub_082FF134:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #180
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #21
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D74B0
	.4byte 0x082FF1B9

	.thumb
	.align 1, 0
	.global sub_082FF1B8
	.thumb_func
sub_082FF1B8:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #120
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #21
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D74E4
	.4byte 0x082FF23D

	.thumb
	.align 1, 0
	.global sub_082FF23C
	.thumb_func
sub_082FF23C:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #17
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #14
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #15
	movs r3, #120
	bl sub_08316178
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #21
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #8
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083D7504
	.4byte 0x082FF2C1

	.thumb
	.align 1, 0
	.global sub_082FF2C0
	.thumb_func
sub_082FF2C0:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	ldr r0, [pc, #52]
	movs r1, #180
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r5, #1
	negs r5, r5
	movs r4, #1
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	str r4, [sp, #0]
	movs r0, #7
	movs r1, #41
	adds r2, r5, #0
	movs r3, #1
	bl sub_083160FC
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE3E

	.thumb
	.align 1, 0
	.global sub_082FF308
	.thumb_func
sub_082FF308:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r2, #1
	negs r2, r2
	movs r0, #0
	str r0, [sp, #0]
	movs r0, #74
	movs r1, #43
	movs r3, #0
	bl sub_083160FC
	ldr r0, [pc, #24]
	movs r1, #90
	movs r2, #45
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE0C
	.4byte 0x082FF34D

	.thumb
	.align 1, 0
	.global sub_082FF34C
	.thumb_func
sub_082FF34C:
	push {lr}
	sub sp, #4
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r2, #1
	negs r2, r2
	movs r0, #0
	str r0, [sp, #0]
	movs r0, #74
	movs r1, #43
	movs r3, #0
	bl sub_083160FC
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FF38D

	.thumb
	.align 1, 0
	.global sub_082FF38C
	.thumb_func
sub_082FF38C:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	movs r0, #250
	lsls r0, r0, #1
	movs r1, #90
	negs r1, r1
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FF3C5

	.thumb
	.align 1, 0
	.global sub_082FF3C4
	.thumb_func
sub_082FF3C4:
	push {lr}
	bl sub_0831653C
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082FF3D0
	.thumb_func
sub_082FF3D0:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FF3E8
.L082FF3E4:
	bl VBlankIntrWait
.L082FF3E8:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FF3E4
	movs r0, #12
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FF424
	.thumb_func
sub_082FF424:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831653C
	bl sub_0831654C
	ldr r0, [pc, #80]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083D752C
	.4byte 0x082FF495

	.thumb
	.align 1, 0
	.global sub_082FF494
	.thumb_func
sub_082FF494:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831653C
	bl sub_0831654C
	ldr r0, [pc, #80]
	movs r4, #0
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	str r4, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #44]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x083D7540
	.4byte 0x082FF505

	.thumb
	.align 1, 0
	.global sub_082FF504
	.thumb_func
sub_082FF504:
	push {r4, lr}
	sub sp, #12
	bl sub_0831653C
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D758C
	.4byte 0x082FF569

	.thumb
	.align 1, 0
	.global sub_082FF568
	.thumb_func
sub_082FF568:
	push {r4, lr}
	sub sp, #12
	bl sub_0831653C
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #1
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #32]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D75B8

	.thumb
	.align 1, 0
	.global sub_082FF5C4
	.thumb_func
sub_082FF5C4:
	push {r4, lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FF5DC
.L082FF5D8:
	bl VBlankIntrWait
.L082FF5DC:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L082FF5D8
	movs r0, #13
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	strh r4, [r0, #0]
	ldr r0, [pc, #28]
	str r4, [r0, #64]
	str r4, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FF618
	.thumb_func
sub_082FF618:
	push {r4, lr}
	sub sp, #16
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #1
	add r1, sp, #12
	bl sub_082EA468
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FF658
	ldr r1, [sp, #12]
	adds r0, r1, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FF64E
	adds r0, r1, #0
	adds r0, #100
	movs r1, #5
	bl sub_08000680
	b .L082FF658
.L082FF64E:
	adds r0, r1, #0
	adds r0, #100
	movs r1, #4
	bl sub_08000680
.L082FF658:
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #60
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #60
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #16
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D75F0
	.4byte 0x082FF6AD

	.thumb
	.align 1, 0
	.global sub_082FF6AC
	.thumb_func
sub_082FF6AC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D760C
	.4byte 0x082FF711

	.thumb
	.align 1, 0
	.global sub_082FF710
	.thumb_func
sub_082FF710:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #120
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7640
	.4byte 0x082FF779

	.thumb
	.align 1, 0
	.global sub_082FF778
	.thumb_func
sub_082FF778:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #220
	movs r1, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FF7A1

	.thumb
	.align 1, 0
	.global sub_082FF7A0
	.thumb_func
sub_082FF7A0:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r1, #180
	negs r1, r1
	movs r0, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FF7CD

	.thumb
	.align 1, 0
	.global sub_082FF7CC
	.thumb_func
sub_082FF7CC:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #180
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FF7F5

	.thumb
	.align 1, 0
	.global sub_082FF7F4
	.thumb_func
sub_082FF7F4:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #200
	negs r0, r0
	movs r1, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FF821

	.thumb
	.align 1, 0
	.global sub_082FF820
	.thumb_func
sub_082FF820:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #240
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7668
	.4byte 0x082FF889

	.thumb
	.align 1, 0
	.global sub_082FF888
	.thumb_func
sub_082FF888:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D76BC
	.4byte 0x082FF8ED

	.thumb
	.align 1, 0
	.global sub_082FF8EC
	.thumb_func
sub_082FF8EC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #160
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #160
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D76F0
	.4byte 0x082FF951
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_082FF964
	.thumb_func
sub_082FF964:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7720
	.4byte 0x082FF9C9

	.thumb
	.align 1, 0
	.global sub_082FF9C8
	.thumb_func
sub_082FF9C8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #50
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #50
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7758
	.4byte 0x082FFA2D

	.thumb
	.align 1, 0
	.global sub_082FFA2C
	.thumb_func
sub_082FFA2C:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831652C
	movs r0, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_08316308
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #50
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #50
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7768
	.4byte 0x082FFAC1
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_082FFAC0
	.thumb_func
sub_082FFAC0:
	push {lr}
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FFAD2
.L082FFACE:
	bl VBlankIntrWait
.L082FFAD2:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FFACE
	movs r0, #1
	bl sub_083100D4
	bl sub_08305110
	ldr r0, [pc, #64]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bhi .L082FFAFC
	bl sub_083152BC
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L082FFAFC
	movs r0, #1
	strb r0, [r1, #2]
.L082FFAFC:
	movs r0, #14
	movs r1, #0
	bl sub_08311C50
	ldr r0, [pc, #36]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #36]
	strh r1, [r0, #0]
	ldr r0, [pc, #36]
	str r1, [r0, #64]
	str r1, [r0, #68]
	adds r0, #90
	movs r1, #255
	strh r1, [r0, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.4byte 0x0200755C
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FFB38
	.thumb_func
sub_082FFB38:
	push {lr}
	movs r0, #49
	bl sub_083189D0
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	b .L082FFB50
.L082FFB4C:
	bl VBlankIntrWait
.L082FFB50:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L082FFB4C
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082FFB70
	movs r0, #7
	movs r1, #0
	bl sub_08311C50
	b .L082FFB78
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082FFB70:
	movs r0, #6
	movs r1, #0
	bl sub_08311C50
.L082FFB78:
	ldr r0, [pc, #28]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	strh r1, [r0, #0]
	ldr r0, [pc, #28]
	str r1, [r0, #64]
	str r1, [r0, #68]
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl Fade_Start
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D14
	.4byte 0x03000D1C
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082FFBA4
	.thumb_func
sub_082FFBA4:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	ldr r0, [pc, #20]
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #12]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0xFFFFFB26
	.4byte 0x082FFBD1

	.thumb
	.align 1, 0
	.global sub_082FFBD0
	.thumb_func
sub_082FFBD0:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	movs r0, #5
	movs r1, #0
	bl sub_08001DC8
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FFC01

	.thumb
	.align 1, 0
	.global sub_082FFC00
	.thumb_func
sub_082FFC00:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #0
	movs r1, #0
	movs r2, #60
	movs r3, #0
	bl sub_08316308
	ldr r0, [pc, #16]
	movs r1, #0
	movs r2, #30
	movs r3, #0
	bl sub_08316308
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000004DA

	.thumb
	.align 1, 0
	.global sub_082FFC30
	.thumb_func
sub_082FFC30:
	push {lr}
	bl sub_0831650C
	bl sub_0831654C
	bl sub_0831653C
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #50
	bl sub_08316098
	ldr r0, [pc, #8]
	bl sub_08316500
	pop {r0}
	bx r0
	.4byte 0x082FFC59

	.thumb
	.align 1, 0
	.global sub_082FFC58
	.thumb_func
sub_082FFC58:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #3
	str r0, [sp, #0]
	movs r0, #90
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #90
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7774
	.4byte 0x082FFCB1

	.thumb
	.align 1, 0
	.global sub_082FFCB0
	.thumb_func
sub_082FFCB0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #3
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7798
	.4byte 0x082FFD61

	.thumb
	.align 1, 0
	.global sub_082FFD08
	.thumb_func
sub_082FFD08:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #13
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D77D0
	.4byte 0x082FFD61

	.thumb
	.align 1, 0
	.global sub_082FFD60
	.thumb_func
sub_082FFD60:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #3
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7808
	.4byte 0x082FFDB9

	.thumb
	.align 1, 0
	.global sub_082FFDB8
	.thumb_func
sub_082FFDB8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #3
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7848
	.4byte 0x082FFE11

	.thumb
	.align 1, 0
	.global sub_082FFE10
	.thumb_func
sub_082FFE10:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r0, #14
	str r0, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7878
	.4byte 0x082FFE69

	.thumb
	.align 1, 0
	.global sub_082FFE68
	.thumb_func
sub_082FFE68:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D78A4
	.4byte 0x082FFEBD

	.thumb
	.align 1, 0
	.global sub_082FFEBC
	.thumb_func
sub_082FFEBC:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D78DC
	.4byte 0x082FFF11

	.thumb
	.align 1, 0
	.global sub_082FFF10
	.thumb_func
sub_082FFF10:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D78EC
	.4byte 0x082FFF65

	.thumb
	.align 1, 0
	.global sub_082FFF64
	.thumb_func
sub_082FFF64:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #40]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	ldr r0, [pc, #16]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x083D7928
	.4byte 0x082FFFB9

	.thumb
	.align 1, 0
	.global sub_082FFFB8
	.thumb_func
sub_082FFFB8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831654C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #180
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #180
	bl sub_08316178
	movs r0, #8
	bl sub_083164C8
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D7940

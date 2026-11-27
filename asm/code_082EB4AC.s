	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EB4AC
	.thumb_func
sub_082EB4AC:
	adds r2, r0, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EB4C8
	movs r3, #0
	ldr r0, [pc, #8]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	ble .L082EB4D6
	b .L082EB4D4
	movs r5, #12
	lsls r0, r0, #12
.L082EB4C8:
	movs r3, #0
	ldr r0, [pc, #16]
	ldr r1, [r0, #52]
	ldr r0, [r2, #52]
	cmp r1, r0
	bge .L082EB4D6
.L082EB4D4:
	movs r3, #1
.L082EB4D6:
	adds r0, r3, #0
	bx lr
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB4E0
	.thumb_func
sub_082EB4E0:
	.2byte 0xb510 @ push {r4, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x1c0a @ adds r2, r1, #0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x71e2 @ strb r2, [r4, #7]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3150 @ adds r1, #80
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x3102 @ adds r1, #2
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x2a08 @ cmp r2, #8
	.2byte 0xd872 @ bhi.n 0x82eb5e0
	.2byte 0x0090 @ lsls r0, r2, #2
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x4687 @ mov pc, r0
	.2byte 0xffee @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x63d4 @ str r4, [r2, #60]
	.2byte 0x083d @ lsrs r5, r7, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff2c @ bl 0x82eb370
	.2byte 0x211f @ movs r1, #31
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x301e @ adds r0, #30
	.2byte 0x83a0 @ strh r0, [r4, #28]
	.2byte 0xe05e @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xb865 @ @ <UNDEFINED> instruction: 0xb865
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff1e @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3002 @ adds r0, #2
	.2byte 0xe050 @ b.n 0x82eb5de
	.2byte 0xb745 @ @ <UNDEFINED> instruction: 0xb745
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4803 @ ldr r0, [pc, #12]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xff12 @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x8420 @ strh r0, [r4, #32]
	.2byte 0xe045 @ b.n 0x82eb5e0
	.2byte 0xba21 @ .raw rev r1, r4
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30c8 @ adds r0, #200
	.2byte 0x4902 @ ldr r1, [pc, #8]
	.2byte 0x6001 @ str r1, [r0, #0]
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8160 @ strh r0, [r4, #10]
	.2byte 0xe03c @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbc69 @ pop {r0, r3, r5, r6}
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe034 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbead @ .raw bkpt 0x00ad
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4801 @ ldr r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe02c @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbf19 @ ittee ne
	.2byte 0x082e @ lsrne r6, r5, #32
	.2byte 0x1c21 @ addne r1, r4, #0
	.2byte 0x31c8 @ addeq r1, #200
	.2byte 0x4801 @ ldreq r0, [pc, #4]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xe024 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbbd5 @ .raw cbnz r5, 0x82eb610
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x4804 @ ldr r0, [pc, #16]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0xf7ff, 0xfee4 @ bl 0x82eb370
	.2byte 0x2101 @ movs r1, #1
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8420 @ strh r0, [r4, #32]
	.2byte 0xe016 @ b.n 0x82eb5e0
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xbad9 @ .raw revsh r1, r3
	.2byte 0x082e @ lsrs r6, r5, #32
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x31c8 @ adds r1, #200
	.2byte 0x480a @ ldr r0, [pc, #40]
	.2byte 0x6008 @ str r0, [r1, #0]
	.2byte 0x3998 @ subs r1, #152
	.2byte 0x2001 @ movs r0, #1
	.2byte 0x780a @ ldrb r2, [r1, #0]
	.2byte 0x1a80 @ subs r0, r0, r2
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0xf7ff, 0xfed1 @ bl 0x82eb370
	.2byte 0x2103 @ movs r1, #3
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8460 @ strh r0, [r4, #34]
	.2byte 0x7a21 @ ldrb r1, [r4, #8]
	.2byte 0x2904 @ cmp r1, #4
	.2byte 0xd101 @ bne.n 0x82eb5e0
	.2byte 0x3001 @ adds r0, #1
	.2byte 0x8460 @ strh r0, [r4, #34]
	.2byte 0xbc10 @ pop {r4}
	.2byte 0xbc01 @ pop {r0}
	.2byte 0x4700 @ bx r0
	.2byte 0x0000
	.4byte 0x082EB949

	.thumb
	.align 1, 0
	.global sub_082EB5EC
	.thumb_func
sub_082EB5EC:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #7
	beq .L082EB612
	cmp r0, #8
	bne .L082EB628
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EB60A
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB60A:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EB626
.L082EB612:
	ldrb r0, [r4, #7]
	cmp r0, #0
	beq .L082EB620
	adds r0, r4, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB620:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
.L082EB626:
	strb r0, [r1, #0]
.L082EB628:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EB630
	.thumb_func
sub_082EB630:
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #6
	bl sub_082F8A24
	movs r4, #0
	movs r1, #1
	strb r1, [r5, #5]
	movs r0, #2
	strb r0, [r5, #6]
	adds r0, r5, #0
	adds r0, #46
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, r5, #0
	bl sub_08306E28
	adds r0, r5, #0
	adds r0, #80
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	str r4, [r5, #68]
	movs r0, #100
	str r0, [r5, #64]
	movs r1, #250
	lsls r1, r1, #1
	str r1, [r5, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r5, #76]
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EB6A4
	cmp r0, #1
	bgt .L082EB690
	cmp r0, #0
	beq .L082EB69A
	b .L082EB6C2
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EB690:
	cmp r0, #2
	beq .L082EB6B0
	cmp r0, #3
	beq .L082EB6BC
	b .L082EB6C2
.L082EB69A:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #150
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6A4:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #150
	lsls r0, r0, #1
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6B0:
	adds r1, r5, #0
	adds r1, #90
	movs r0, #200
	lsls r0, r0, #1
	strh r0, [r1, #0]
	b .L082EB6C2
.L082EB6BC:
	adds r0, r5, #0
	adds r0, #90
	strh r1, [r0, #0]
.L082EB6C2:
	adds r0, r5, #0
	adds r0, #87
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	movs r2, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r1, [r0, #0]
	adds r1, r5, #0
	adds r1, #84
	ldr r0, [pc, #32]
	strh r0, [r1, #0]
	ldr r0, [pc, #32]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EB708
	adds r0, r5, #0
	adds r0, #48
	strb r2, [r0, #0]
	adds r0, #52
	ldr r1, [pc, #20]
	movs r2, #11
	movs r3, #0
	bl sub_080002E0
	b .L082EB71E
	movs r0, r0
	lsrs r0, r7, #14
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #208
	lsrs r3, r2, #32
.L082EB708:
	adds r1, r5, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #100
	ldr r1, [pc, #36]
	movs r2, #12
	movs r3, #0
	bl sub_080002E0
.L082EB71E:
	movs r0, #0
	strb r0, [r5, #8]
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
	adds r1, r5, #0
	adds r1, #220
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	bl sub_082EB340
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081339D0

	.thumb
	.align 1, 0
	.global sub_082EB740
	.thumb_func
sub_082EB740:
	push {r0, r2, r3, r5, r6, r7, lr}
	lsrs r6, r5, #32
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #1
	beq .L082EB75A
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EB75A:
	ldr r0, [pc, #20]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EB774
	adds r0, r5, #0
	adds r0, #48
	movs r1, #1
	strb r1, [r0, #0]
	subs r1, #129
	b .L082EB77E
	movs r5, #12
	lsls r0, r0, #12
.L082EB774:
	adds r0, r5, #0
	adds r0, #48
	movs r1, #0
	strb r1, [r0, #0]
	movs r1, #128
.L082EB77E:
	str r1, [r5, #64]
	adds r3, r0, #0
	ldr r0, [pc, #64]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	ldr r2, [r5, #52]
	asrs r1, r2, #8
	subs r0, r0, r1
	cmp r0, #0
	bge .L082EB794
	negs r0, r0
.L082EB794:
	cmp r0, #80
	ble .L082EB810
	movs r0, #128
	lsls r0, r0, #1
	subs r0, r0, r1
	cmp r0, #0
	bge .L082EB7A4
	negs r0, r0
.L082EB7A4:
	cmp r0, #16
	ble .L082EB810
	ldr r0, [r5, #64]
	adds r0, r2, r0
	str r0, [r5, #52]
	ldrb r3, [r3, #0]
	cmp r3, #1
	bne .L082EB7C8
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
	b .L082EB7D4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L082EB7C8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
.L082EB7D4:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB818
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EB7F0
	subs r0, r1, #1
	strh r0, [r5, #34]
	b .L082EB818
.L082EB7F0:
	bl sub_082EB370
	movs r1, #15
	ands r0, r1
	cmp r0, #10
	bhi .L082EB806
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
	b .L082EB818
.L082EB806:
	adds r0, r5, #0
	movs r1, #2
	bl sub_082EB4E0
	b .L082EB818
.L082EB810:
	adds r0, r5, #0
	movs r1, #0
	bl sub_082EB4E0
.L082EB818:
	ldr r0, [pc, #68]
	ldr r1, [r0, #52]
	asrs r1, r1, #8
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EB82A
	negs r1, r1
.L082EB82A:
	cmp r1, #220
	ble .L082EB836
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EB836:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB85A
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB85A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EB85A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB864
	.thumb_func
sub_082EB864:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #8]
	cmp r0, #0
	beq .L082EB87A
	ldrb r0, [r4, #7]
	strb r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006AC
.L082EB87A:
	adds r0, r4, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	adds r5, r4, #0
	adds r5, #100
	adds r6, r4, #0
	adds r6, #48
	cmp r0, #1
	bhi .L082EB8AC
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082EB89E
	adds r0, r5, #0
	movs r1, #11
	bl sub_08000680
	b .L082EB8A6
.L082EB89E:
	adds r0, r5, #0
	movs r1, #12
	bl sub_08000680
.L082EB8A6:
	adds r0, r5, #0
	bl sub_08000704
.L082EB8AC:
	ldrb r6, [r6, #0]
	cmp r6, #1
	bne .L082EB8B8
	adds r0, r5, #0
	movs r1, #11
	b .L082EB8BC
.L082EB8B8:
	adds r0, r5, #0
	movs r1, #12
.L082EB8BC:
	bl sub_08000680
	adds r1, r4, #0
	adds r1, #80
	movs r0, #20
	strh r0, [r1, #0]
	adds r0, r5, #0
	bl sub_080006AC
	ldrh r1, [r4, #28]
	movs r2, #28
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bgt .L082EB8F8
	bl sub_082EB370
	movs r1, #15
	ands r0, r1
	cmp r0, #10
	bls .L082EB8EE
	adds r0, r4, #0
	movs r1, #3
	bl sub_082EB4E0
	b .L082EB8FC
.L082EB8EE:
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EB4E0
	b .L082EB8FC
.L082EB8F8:
	subs r0, r1, #1
	strh r0, [r4, #28]
.L082EB8FC:
	ldr r0, [pc, #68]
	ldr r1, [r0, #52]
	asrs r1, r1, #8
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EB90E
	negs r1, r1
.L082EB90E:
	cmp r1, #220
	ble .L082EB91A
	adds r0, r4, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EB91A:
	adds r0, r4, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB93E
	adds r0, r4, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB93E
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EB93E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_082EB948
	.thumb_func
sub_082EB948:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #8
	beq .L082EB95E
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EB95E:
	adds r0, r5, #0
	adds r0, #48
	ldrb r1, [r0, #0]
	adds r6, r0, #0
	cmp r1, #0
	bne .L082EB982
	movs r0, #128
	str r0, [r5, #64]
	ldr r0, [r5, #52]
	adds r0, #128
	str r0, [r5, #52]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #14
	bl sub_08000680
	b .L082EB99A
.L082EB982:
	movs r0, #128
	negs r0, r0
	str r0, [r5, #64]
	ldr r1, [r5, #52]
	adds r1, r1, r0
	str r1, [r5, #52]
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #13
	bl sub_08000680
.L082EB99A:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EB9BE
	ldrh r1, [r5, #34]
	movs r2, #34
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EB9B6
	subs r0, r1, #1
	strh r0, [r5, #34]
	b .L082EB9BE
.L082EB9B6:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EB9BE:
	adds r0, r5, #0
	bl sub_082EB4AC
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB9D4
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EB9D4:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #1
	bne .L082EBA18
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EB9FA
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
	b .L082EBA18
.L082EB9FA:
	ldr r0, [pc, #12]
	ldr r1, [r0, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EBA0C
	strb r4, [r6, #0]
	b .L082EBA10
	movs r5, #12
	lsls r0, r0, #12
.L082EBA0C:
	movs r0, #0
	strb r0, [r6, #0]
.L082EBA10:
	adds r0, r5, #0
	movs r1, #3
	bl sub_082EB4E0
.L082EBA18:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBA20
	.thumb_func
sub_082EBA20:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #2
	beq .L082EBA36
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EBA36:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBA4E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EBA5A
.L082EBA4E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EBA5A:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBA90
	movs r0, #23
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBA78
	movs r0, #23
	bl sub_083189D0
.L082EBA78:
	ldrh r1, [r5, #32]
	movs r2, #32
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBA88
	subs r0, r1, #1
	strh r0, [r5, #32]
	b .L082EBA90
.L082EBA88:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EBA90:
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EBAA0
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EBAA0:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #5
	bne .L082EBAAE
	bl sub_08316FF8
.L082EBAAE:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBAD2
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBAD2
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBAD2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBAD8
	.thumb_func
sub_082EBAD8:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #5
	beq .L082EBAF4
	movs r0, #5
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	ldr r1, [pc, #40]
	movs r0, #10
	strb r0, [r1, #0]
.L082EBAF4:
	ldr r1, [pc, #32]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082EBB30
	subs r0, #1
	strb r0, [r1, #0]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBB1C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #12
	bl sub_08000680
	b .L082EBB28
	movs r5, #8
	lsls r0, r0, #12
.L082EBB1C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #11
	bl sub_08000680
.L082EBB28:
	adds r0, r4, #0
	bl sub_080006AC
	b .L082EBBCC
.L082EBB30:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBB48
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082EBB54
.L082EBB48:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082EBB54:
	adds r0, r4, #0
	bl sub_08000704
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBB8A
	movs r0, #23
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBB72
	movs r0, #23
	bl sub_083189D0
.L082EBB72:
	ldrh r1, [r5, #32]
	movs r2, #32
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBB82
	subs r0, r1, #1
	strh r0, [r5, #32]
	b .L082EBB8A
.L082EBB82:
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EB4E0
.L082EBB8A:
	adds r0, r4, #0
	bl sub_08000798
	cmp r0, #0
	bne .L082EBB9A
	ldr r0, [r5, #96]
	bl sub_082FB9D0
.L082EBB9A:
	adds r0, r4, #0
	bl sub_08000794
	cmp r0, #5
	bne .L082EBBA8
	bl sub_08316FF8
.L082EBBA8:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBBCC
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBBCC
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBBCC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBBD4
	.thumb_func
sub_082EBBD4:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #4
	beq .L082EBBF4
	ldrb r0, [r5, #7]
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	movs r0, #40
	strh r0, [r5, #30]
	movs r0, #39
	bl sub_083189D0
.L082EBBF4:
	ldrh r1, [r5, #30]
	movs r2, #30
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082EBC06
	subs r0, r1, #1
	strh r0, [r5, #30]
	bl sub_08316FF8
.L082EBC06:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBC1E
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #7
	bl sub_08000680
	b .L082EBC2A
.L082EBC1E:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
.L082EBC2A:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBC3E
	adds r0, r5, #0
	movs r1, #8
	bl sub_082EB4E0
.L082EBC3E:
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBC62
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBC62
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBC62:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBC68
	.thumb_func
sub_082EBC68:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #3
	beq .L082EBCC2
	movs r0, #3
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
	adds r2, r5, #0
	adds r2, #48
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L082EBC9C
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #8]
	cmp r0, r1
	ble .L082EBCA8
	movs r0, #1
	b .L082EBCA6
	lsls r7, r0, #7
	movs r0, r0
.L082EBC9C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	cmp r0, #88
	bgt .L082EBCA8
	movs r0, #0
.L082EBCA6:
	strb r0, [r2, #0]
.L082EBCA8:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EBCBC
	ldr r0, [pc, #4]
	b .L082EBCC0
	movs r0, r0
	.2byte 0xfe70 @ .raw
	.2byte 0xffff @ .raw
.L082EBCBC:
	movs r0, #200
	lsls r0, r0, #1
.L082EBCC0:
	str r0, [r5, #64]
.L082EBCC2:
	adds r0, r5, #0
	adds r0, #48
	ldrb r2, [r0, #0]
	adds r6, r0, #0
	cmp r2, #0
	bne .L082EBCE8
	ldr r1, [r5, #64]
	ldr r0, [pc, #16]
	cmp r1, r0
	bgt .L082EBCDC
	adds r0, r1, #0
	adds r0, #10
	str r0, [r5, #64]
.L082EBCDC:
	adds r0, r5, #0
	adds r0, #80
	strh r2, [r0, #0]
	b .L082EBCFE
	lsls r3, r0, #14
	movs r0, r0
.L082EBCE8:
	ldr r1, [r5, #64]
	ldr r0, [pc, #40]
	cmp r1, r0
	ble .L082EBCF6
	adds r0, r1, #0
	subs r0, #10
	str r0, [r5, #64]
.L082EBCF6:
	adds r1, r5, #0
	adds r1, #80
	ldr r0, [pc, #28]
	strh r0, [r1, #0]
.L082EBCFE:
	ldrb r0, [r6, #0]
	cmp r0, #1
	bne .L082EBD1C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
	b .L082EBD28
	movs r0, r0
	.2byte 0xfc7c @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff9c @ .raw
	movs r0, r0
.L082EBD1C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
.L082EBD28:
	adds r7, r4, #0
	ldr r4, [pc, #60]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBD92
	ldrb r2, [r6, #0]
	cmp r2, #1
	bne .L082EBD6C
	ldr r1, [r4, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	bge .L082EBD92
	movs r1, #0
	movs r0, #0
	strh r2, [r5, #10]
	str r0, [sp, #0]
	add r0, sp, #4
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl sub_08306DD4
	b .L082EBD92
	movs r5, #12
	lsls r0, r0, #12
.L082EBD6C:
	ldr r1, [r4, #52]
	ldr r0, [r5, #52]
	cmp r1, r0
	ble .L082EBD92
	movs r2, #0
	movs r1, #0
	movs r0, #1
	strh r0, [r5, #10]
	str r1, [sp, #0]
	add r0, sp, #4
	strb r2, [r0, #0]
	add r0, sp, #8
	strb r2, [r0, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #1
	bl sub_08306DD4
.L082EBD92:
	ldrh r0, [r5, #10]
	cmp r0, #1
	bne .L082EBE0C
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EBDCE
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #90
	str r4, [sp, #4]
	subs r4, #106
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBE60
	ldr r0, [r5, #52]
	movs r1, #228
	lsls r1, r1, #9
	cmp r0, r1
	ble .L082EBDFC
	str r1, [r5, #56]
	b .L082EBDFC
.L082EBDCE:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #90
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
	beq .L082EBE60
	ldr r1, [r5, #52]
	ldr r0, [pc, #20]
	cmp r1, r0
	bgt .L082EBDFC
	adds r0, #1
	str r0, [r5, #56]
.L082EBDFC:
	adds r0, r5, #0
	movs r1, #5
	bl sub_082EB4E0
	b .L082EBE68
	movs r0, r0
	adds r7, #255
	movs r0, r0
.L082EBE0C:
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L082EBE36
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #8
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #24
	str r4, [sp, #4]
	subs r4, #40
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBE56
	b .L082EBE60
.L082EBE36:
	ldr r0, [r5, #52]
	ldr r1, [r5, #56]
	ldr r2, [r5, #64]
	movs r3, #16
	negs r3, r3
	movs r4, #32
	negs r4, r4
	str r4, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r3, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EBE60
.L082EBE56:
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EB4E0
	b .L082EBE68
.L082EBE60:
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
.L082EBE68:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	cmp r0, #33
	bgt .L082EBE78
	adds r0, r5, #0
	movs r1, #4
	bl sub_082EB4E0
.L082EBE78:
	adds r0, r7, #0
	bl sub_08000704
	adds r0, r5, #0
	bl sub_082EB3A8
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBEA2
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBEA2
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
.L082EBEA2:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EBEAC
	.thumb_func
sub_082EBEAC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #8]
	cmp r0, #6
	beq .L082EBEC2
	movs r0, #6
	strb r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #100
	bl sub_080006AC
.L082EBEC2:
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBEDA
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #9
	bl sub_08000680
	b .L082EBEE6
.L082EBEDA:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #8
	bl sub_08000680
.L082EBEE6:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBF12
	adds r0, r5, #0
	bl sub_082EB478
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082EBF0A
	adds r0, r5, #0
	movs r1, #7
	bl sub_082EB4E0
	b .L082EBF12
.L082EBF0A:
	adds r0, r5, #0
	movs r1, #1
	bl sub_082EB4E0
.L082EBF12:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082EBF18
	.thumb_func
sub_082EBF18:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrb r0, [r6, #8]
	cmp r0, #7
	beq .L082EBF4A
	adds r4, r6, #0
	adds r4, #100
	ldr r1, [pc, #60]
	adds r0, r4, #0
	bl sub_0800075C
	movs r5, #0
	movs r0, #7
	strb r0, [r6, #8]
	adds r0, r4, #0
	bl sub_080006AC
	adds r0, r6, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	movs r0, #12
	bl sub_083189D0
.L082EBF4A:
	adds r0, r6, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EBF68
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
	b .L082EBF74
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082EBF68:
	adds r4, r6, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L082EBF74:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EBF8C
	adds r0, r6, #0
	bl sub_082EA2C0
	ldr r0, [pc, #12]
	bl sub_0831638C
.L082EBF8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FE3C1

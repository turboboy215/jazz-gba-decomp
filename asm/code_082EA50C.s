	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EA50C
	.thumb_func
sub_082EA50C:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082EA5E4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EA52C
	ldr r0, [pc, #120]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082EA540
.L082EA52C:
	cmp r3, #0
	beq .L082EA532
	b .L082EA6A8
.L082EA532:
	ldr r0, [pc, #104]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EA540
	b .L082EA6A8
.L082EA540:
	ldr r3, [r5, #56]
	ldr r1, [pc, #92]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082EA54E
	b .L082EA6A8
.L082EA54E:
	movs r7, #216
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	blt .L082EA55A
	b .L082EA6A8
.L082EA55A:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082EA5A4
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA56C
	b .L082EA69C
.L082EA56C:
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA572:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082EA58E
	b .L082EA6A8
.L082EA58E:
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA572
	b .L082EA69C
	movs r5, #12
	lsls r0, r0, #12
	str r4, [sp, #0]
	.2byte 0xffff @ .raw
.L082EA5A4:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA5B4:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EA5B4
	b .L082EA69C
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082EA5E4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082EA5FC
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082EA60C
.L082EA5FC:
	cmp r3, #0
	bne .L082EA6A8
	ldr r0, [pc, #92]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082EA6A8
.L082EA60C:
	ldr r3, [r5, #56]
	ldr r1, [pc, #84]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082EA6A8
	movs r7, #216
	lsls r7, r7, #7
	adds r0, r3, r7
	cmp r1, r0
	bge .L082EA6A8
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082EA668
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA638:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #128
	lsls r2, r2, #4
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	adds r4, #8
	ldr r0, [pc, #8]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082EA638
	b .L082EA69C
	movs r5, #12
	lsls r0, r0, #12
	str r4, [sp, #0]
	.2byte 0xffff @ .raw
.L082EA668:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082EA69C
	movs r7, #1
	negs r7, r7
	movs r6, #1
.L082EA678:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	ldr r2, [pc, #28]
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082EA6A8
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082EA678
.L082EA69C:
	movs r0, #1
	b .L082EA6AA
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
	movs r5, #12
	lsls r0, r0, #12
.L082EA6A8:
	movs r0, #0
.L082EA6AA:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EA6B4
	.thumb_func
sub_082EA6B4:
	.2byte 0xb530 @ push {r4, r5, lr}
	.2byte 0x1c04 @ adds r4, r0, #0
	.2byte 0x3056 @ adds r0, #86
	.2byte 0x7801 @ ldrb r1, [r0, #0]
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x1600 @ asrs r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdd16 @ ble.n 0x82ea6f4
	.2byte 0x2007 @ movs r0, #7
	.2byte 0x4008 @ ands r0, r1
	.2byte 0x2805 @ cmp r0, #5
	.2byte 0xdd05 @ ble.n 0x82ea6da
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x210e @ movs r1, #14
	.2byte 0xf516, 0xf842 @ bl 0x800075c
	.2byte 0xe004 @ b.n 0x82ea6e4
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x4904 @ ldr r1, [pc, #16]
	.2byte 0xf516, 0xf83c @ bl 0x800075c
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3156 @ adds r1, #86
	.2byte 0x7808 @ ldrb r0, [r1, #0]
	.2byte 0x3801 @ subs r0, #1
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0xe006 @ b.n 0x82ea6fe
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x3064 @ adds r0, #100
	.2byte 0x4925 @ ldr r1, [pc, #148]
	.2byte 0xf516, 0xf82f @ bl 0x800075c
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30e6 @ adds r0, #230
	.2byte 0x7800 @ ldrb r0, [r0, #0]
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd172 @ bne.n 0x82ea7ee
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x30e8 @ adds r0, #232
	.2byte 0x6800 @ ldr r0, [r0, #0]
	.2byte 0x2805 @ cmp r0, #5
	.2byte 0xd001 @ beq.n 0x82ea716
	.2byte 0x2809 @ cmp r0, #9
	.2byte 0xd14a @ bne.n 0x82ea7ac
	.2byte 0x481f @ ldr r0, [pc, #124]
	.2byte 0x8941 @ ldrh r1, [r0, #10]
	.2byte 0x2902 @ cmp r1, #2
	.2byte 0xd146 @ bne.n 0x82ea7ac
	.2byte 0x79c0 @ ldrb r0, [r0, #7]
	.2byte 0x2804 @ cmp r0, #4
	.2byte 0xd143 @ bne.n 0x82ea7ac
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0x2105 @ movs r1, #5
	.2byte 0xf000, 0xf870 @ bl 0x82ea80c
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x2200 @ movs r2, #0
	.2byte 0xf01d, 0xfd3d @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x22a0 @ movs r2, #160
	.2byte 0x0112 @ lsls r2, r2, #4
	.2byte 0x1880 @ adds r0, r0, r2
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4b15 @ ldr r3, [pc, #84]
	.2byte 0x18c9 @ adds r1, r1, r3
	.2byte 0x220f @ movs r2, #15
	.2byte 0xf01d, 0xfd33 @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x4d13 @ ldr r5, [pc, #76]
	.2byte 0x1940 @ adds r0, r0, r5
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4a13 @ ldr r2, [pc, #76]
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x221e @ movs r2, #30
	.2byte 0xf01d, 0xfd2a @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x23a0 @ movs r3, #160
	.2byte 0x015b @ lsls r3, r3, #5
	.2byte 0x18c0 @ adds r0, r0, r3
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4d0f @ ldr r5, [pc, #60]
	.2byte 0x1949 @ adds r1, r1, r5
	.2byte 0x222d @ movs r2, #45
	.2byte 0xf01d, 0xfd20 @ bl 0x83081b0
	.2byte 0x6b60 @ ldr r0, [r4, #52]
	.2byte 0x21a0 @ movs r1, #160
	.2byte 0x00c9 @ lsls r1, r1, #3
	.2byte 0x1840 @ adds r0, r0, r1
	.2byte 0x6ba1 @ ldr r1, [r4, #56]
	.2byte 0x4a0b @ ldr r2, [pc, #44]
	.2byte 0x1889 @ adds r1, r1, r2
	.2byte 0x223c @ movs r2, #60
	.2byte 0xf01d, 0xfd16 @ bl 0x83081b0
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x32ec @ adds r2, #236
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x315a @ adds r1, #90
	.2byte 0xe019 @ b.n 0x82ea7c2
	.2byte 0x0000 @ movs r0, r0
	.2byte 0xffff @ .raw
	.2byte 0x0000 @ movs r0, r0
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0xec00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf100, 0xffff @ bl 0x83eb79e
	.2byte 0xc900 @ .raw ldmia r1!, {}
	.2byte 0xffff @ .raw
	.2byte 0xe700 @ b.n 0x82ea5a8
	.2byte 0xffff @ .raw
	.2byte 0xd300 @ bcc.n 0x82ea7ac
	.2byte 0xffff @ .raw
	.2byte 0x1c22 @ adds r2, r4, #0
	.2byte 0x32ec @ adds r2, #236
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x315a @ adds r1, #90
	.2byte 0x79e3 @ ldrb r3, [r4, #7]
	.2byte 0x2b05 @ cmp r3, #5
	.2byte 0xd103 @ bne.n 0x82ea7c2
	.2byte 0x880d @ ldrh r5, [r1, #0]
	.2byte 0x8813 @ ldrh r3, [r2, #0]
	.2byte 0x1ae8 @ subs r0, r5, r3
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x880d @ ldrh r5, [r1, #0]
	.2byte 0x8812 @ ldrh r2, [r2, #0]
	.2byte 0x1aa8 @ subs r0, r5, r2
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x0400 @ lsls r0, r0, #16
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xdc01 @ bgt.n 0x82ea7d4
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x8008 @ strh r0, [r1, #0]
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x3156 @ adds r1, #86
	.2byte 0x2000 @ movs r0, #0
	.2byte 0x5608 @ ldrsb r0, [r1, r0]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd101 @ bne.n 0x82ea7e4
	.2byte 0x2007 @ movs r0, #7
	.2byte 0x7008 @ strb r0, [r1, #0]
	.2byte 0x1c20 @ adds r0, r4, #0
	.2byte 0xf01c, 0xfb1f @ bl 0x8306e28
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe000 @ b.n 0x82ea7f0
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc30 @ pop {r4, r5}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1
	.2byte 0x0000

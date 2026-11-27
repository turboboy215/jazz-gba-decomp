	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08301E84
	.thumb_func
sub_08301E84:
	push {r4, lr}
	ldr r4, [pc, #76]
	ldr r3, [r4, #8]
	ldr r0, [r4, #32]
	cmp r3, r0
	ble .L08301E96
	ldr r0, [r4, #24]
	cmp r3, r0
	blt .L08301EB2
.L08301E96:
	ldr r2, [pc, #64]
	ldr r1, [pc, #64]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	subs r0, #120
	subs r0, r3, r0
	str r0, [r2, #0]
	ldr r2, [pc, #56]
	ldr r1, [r1, #56]
	asrs r1, r1, #8
	subs r1, #128
	ldr r0, [r4, #12]
	subs r0, r0, r1
	str r0, [r2, #0]
.L08301EB2:
	ldr r1, [pc, #32]
	ldr r0, [pc, #44]
	ldr r2, [r0, #8]
	ldr r0, [r2, #0]
	lsls r0, r0, #3
	subs r0, #240
	str r0, [r1, #24]
	ldr r0, [r2, #4]
	lsls r0, r0, #3
	subs r0, #208
	str r0, [r1, #28]
	movs r0, #0
	str r0, [r1, #32]
	str r0, [r1, #36]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030038CC
	.4byte 0x030058F8
	.4byte 0x0300250C
	.4byte 0x030058FC
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08301EE8
	.thumb_func
sub_08301EE8:
	ldr r3, [pc, #36]
	lsls r0, r0, #2
	adds r1, r3, #0
	adds r1, #124
	adds r1, r0, r1
	movs r2, #0
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #140
	adds r1, r0, r1
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #92
	adds r1, r0, r1
	str r2, [r1, #0]
	adds r1, r3, #0
	adds r1, #108
	adds r0, r0, r1
	str r2, [r0, #0]
	bx lr
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301F14
	.thumb_func
sub_08301F14:
	push {r4, lr}
	ldr r4, [pc, #24]
	lsls r0, r0, #2
	adds r3, r4, #0
	adds r3, #156
	adds r3, r0, r3
	str r1, [r3, #0]
	adds r4, #172
	adds r0, r0, r4
	str r2, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08301F34
	.thumb_func
sub_08301F34:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r0, [pc, #272]
	mov ip, r0
	lsls r4, r6, #2
	mov r5, ip
	adds r5, #124
	adds r0, r4, r5
	movs r1, #0
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #140
	adds r0, r4, r0
	str r1, [r0, #0]
	movs r2, #92
	add r2, ip
	mov r8, r2
	adds r3, r4, r2
	mov r7, ip
	ldr r1, [r7, #8]
	ldr r0, [r7, #16]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r0, ip
	adds r0, #156
	adds r0, r4, r0
	ldr r0, [r0, #0]
	muls r1, r0
	asrs r1, r1, #8
	ldr r0, [r3, #0]
	adds r0, r0, r1
	str r0, [r3, #0]
	mov r2, ip
	adds r2, #108
	adds r2, r4, r2
	ldr r1, [r7, #12]
	ldr r0, [r7, #20]
	subs r1, r1, r0
	lsls r1, r1, #8
	mov r0, ip
	adds r0, #172
	adds r0, r4, r0
	ldr r0, [r0, #0]
	muls r1, r0
	asrs r1, r1, #8
	ldr r0, [r2, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	ldr r0, [r3, #0]
	cmp r0, #255
	ble .L08301FB6
	mov r3, r8
	ldr r2, [pc, #176]
.L08301FA2:
	adds r1, r4, r5
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r4, r3
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L08301FA2
.L08301FB6:
	ldr r5, [pc, #152]
	lsls r2, r6, #2
	adds r1, r5, #0
	adds r1, #92
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #144]
	adds r4, r2, #0
	cmp r0, r3
	bgt .L08301FE8
	adds r7, r5, #0
	adds r7, #124
	adds r6, r1, #0
	movs r5, #128
	lsls r5, r5, #1
.L08301FD4:
	adds r1, r2, r7
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r3
	ble .L08301FD4
.L08301FE8:
	ldr r3, [pc, #100]
	adds r2, r4, #0
	adds r1, r3, #0
	adds r1, #108
	adds r0, r4, r1
	ldr r0, [r0, #0]
	cmp r0, #255
	ble .L08302014
	adds r6, r3, #0
	adds r6, #140
	adds r5, r1, #0
	ldr r3, [pc, #84]
.L08302000:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r3
	str r0, [r1, #0]
	cmp r0, #255
	bgt .L08302000
.L08302014:
	ldr r5, [pc, #56]
	adds r2, r4, #0
	adds r1, r5, #0
	adds r1, #108
	adds r0, r2, r1
	ldr r0, [r0, #0]
	ldr r3, [pc, #48]
	cmp r0, r3
	bgt .L08302044
	adds r6, r5, #0
	adds r6, #140
	adds r5, r1, #0
	movs r4, #128
	lsls r4, r4, #1
.L08302030:
	adds r1, r2, r6
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	adds r1, r2, r5
	ldr r0, [r1, #0]
	adds r0, r0, r4
	str r0, [r1, #0]
	cmp r0, r3
	ble .L08302030
.L08302044:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_08302058
	.thumb_func
sub_08302058:
	ldr r3, [pc, #24]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r1, r1, r2
	movs r2, #0
	cmp r0, #239
	bhi .L0830206E
	cmp r1, #159
	bhi .L0830206E
	movs r2, #1
.L0830206E:
	adds r0, r2, #0
	bx lr
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08302078
	.thumb_func
sub_08302078:
	ldr r3, [pc, #40]
	ldr r2, [r3, #8]
	subs r0, r0, r2
	ldr r2, [r3, #12]
	subs r2, r1, r2
	movs r3, #0
	adds r0, #160
	movs r1, #140
	lsls r1, r1, #2
	cmp r0, r1
	bhi .L083020A0
	movs r0, #160
	negs r0, r0
	cmp r2, r0
	blt .L083020A0
	movs r0, #160
	lsls r0, r0, #1
	cmp r2, r0
	bgt .L083020A0
	movs r3, #1
.L083020A0:
	adds r0, r3, #0
	bx lr
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_083020A8
	.thumb_func
sub_083020A8:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	str r1, [sp, #0]
	str r2, [sp, #4]
	adds r0, r1, #0
	adds r1, r2, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083020CC
.L083020C8:
	movs r0, #1
	b .L0830215A
.L083020CC:
	mov r0, r9
	bl sub_08000644
	ldrh r0, [r0, #2]
	mov sl, r0
	movs r0, #0
	mov r8, r0
	cmp r8, sl
	beq .L08302158
.L083020DE:
	mov r0, r9
	mov r1, r8
	bl sub_0800062C
	adds r4, r0, #0
	ldr r0, [pc, #128]
	ldrh r1, [r4, #4]
	ands r0, r1
	ldr r2, [pc, #124]
	cmp r0, r2
	beq .L08302150
	mov r0, r9
	mov r1, r8
	bl sub_08000614
	movs r2, #0
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #0]
	subs r5, r2, r1
	ldrh r2, [r0, #0]
	lsls r1, r2, #3
	adds r7, r5, r1
	movs r2, #2
	ldrsh r1, [r4, r2]
	ldr r2, [sp, #4]
	subs r4, r2, r1
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r6, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r7, #0
	adds r1, r4, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
	adds r0, r7, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083020C8
.L08302150:
	movs r0, #1
	add r8, r0
	cmp r8, sl
	bne .L083020DE
.L08302158:
	movs r0, #0
.L0830215A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00003FFF

	.thumb
	.align 1, 0
	.global sub_08302170
	.thumb_func
sub_08302170:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r6, #0
	mov r8, r6
	movs r5, #0
	movs r7, #0
	ldr r4, [pc, #136]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #124]
	str r0, [r4, #48]
	ldr r0, [pc, #124]
	str r0, [r4, #44]
	movs r0, #4
	strh r0, [r4, #16]
	ldr r0, [pc, #120]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	ldr r1, [pc, #108]
	movs r0, #0
	bl sub_08001FC8
	bl sub_08004D70
	bl sub_08001A6C
	bl sub_0800436C
	ldr r1, [pc, #92]
	ldr r2, [pc, #96]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #84]
	adds r0, r4, #0
	movs r1, #31
	bl sub_08004848
	ldr r0, [r4, #8]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
	movs r0, #15
	bl sub_08004880
	movs r0, #0
	movs r1, #0
	movs r2, #31
	movs r3, #31
	bl sub_080049D4
	strh r5, [r4, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L0830222C
	mov r8, ip
	lsls r0, r0, #12
	.2byte 0xede0 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	movs r0, #72
	lsrs r5, r7, #32
.L08302228:
	bl VBlankIntrWait
.L0830222C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08302228
	cmp r5, #158
	bhi .L083022BE
	ldr r1, [pc, #68]
	lsls r0, r5, #2
	subs r0, #4
	adds r4, r0, r1
.L08302240:
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #5
	bls .L0830225A
	movs r7, #0
	adds r6, #1
	movs r0, #1
	add r8, r0
	movs r0, #255
	ands r6, r0
	ldr r0, [pc, #44]
	strh r6, [r0, #0]
.L0830225A:
	mov r2, r8
	cmp r2, #7
	bls .L08302278
	movs r0, #0
	mov r8, r0
	adds r4, #4
	adds r5, #1
	adds r1, r5, #0
	adds r1, #20
	movs r0, #31
	ands r1, r0
	ldr r2, [r4, #0]
	movs r0, #0
	bl sub_08004914
.L08302278:
	cmp r5, #158
	bls .L08302240
	b .L083022BE
	movs r0, r0
	ldrh r0, [r0, #52]
	lsrs r5, r7, #32
	movs r2, r2
	lsls r0, r0, #16
.L08302288:
	bl VBlankIntrWait
	adds r7, #1
	cmp r7, #5
	bls .L083022A2
	movs r7, #0
	adds r6, #1
	movs r2, #1
	add r8, r2
	movs r0, #255
	ands r6, r0
	ldr r0, [pc, #52]
	strh r6, [r0, #0]
.L083022A2:
	mov r0, r8
	cmp r0, #7
	bls .L083022BE
	movs r2, #0
	mov r8, r2
	adds r5, #1
	adds r1, r5, #0
	adds r1, #20
	movs r0, #31
	ands r1, r0
	movs r0, #0
	ldr r2, [pc, #28]
	bl sub_08004914
.L083022BE:
	cmp r5, #179
	bls .L08302288
	movs r0, #255
	bl SoftResetRom
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000012
	.4byte 0x083D83C0

	.thumb
	.align 1, 0
	.global sub_083022DC
	.thumb_func
sub_083022DC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #16
	str r0, [sp, #8]
	mov r8, r1
	mov r9, r2
	mov sl, r3
	movs r0, #3
	str r0, [sp, #12]
	cmp r1, #0
	bne .L08302304
	ldr r0, [pc, #4]
	str r1, [r0, #0]
	b .L08302342
	movs r0, r0
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302304:
	mov r1, r9
	cmp r1, #0
	bne .L08302314
	ldr r1, [pc, #4]
	movs r0, #1
	b .L08302340
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302314:
	mov r2, sl
	cmp r2, #0
	bne .L08302324
	ldr r1, [pc, #4]
	movs r0, #2
	b .L08302340
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302324:
	ldr r0, [sp, #48]
	cmp r0, #0
	bne .L0830233C
	ldr r0, [pc, #8]
	ldr r1, [sp, #12]
	str r1, [r0, #0]
	b .L08302342
	movs r0, r0
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302338:
	movs r0, #0
	b .L083025E2
.L0830233C:
	ldr r1, [pc, #228]
	movs r0, #4
.L08302340:
	str r0, [r1, #0]
.L08302342:
	ldr r4, [pc, #224]
	ldr r3, [r4, #0]
	movs r0, #19
	subs r6, r0, r3
	ldr r1, [pc, #220]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r1, #18
	subs r1, r1, r3
	adds r3, #1
	movs r0, #15
	str r0, [sp, #0]
	ldr r0, [pc, #204]
	str r0, [sp, #4]
	movs r0, #1
	movs r2, #27
	bl sub_0830FDE0
	ldr r2, [pc, #196]
	str r6, [r2, #0]
	ldr r1, [pc, #196]
	movs r0, #2
	str r0, [r1, #0]
	ldr r0, [r4, #0]
	adds r0, r6, r0
	adds r0, #1
	cmp r6, r0
	bcc .L08302380
	b .L083025E0
.L08302380:
	bl VBlankIntrWait
	ldr r0, [sp, #8]
	cmp r0, #0
	beq .L0830238E
	bl _call_via_r0
.L0830238E:
	ldr r1, [sp, #12]
	subs r1, #1
	str r1, [sp, #12]
	cmp r1, #0
	ble .L0830239A
	b .L083025CE
.L0830239A:
	movs r2, #3
	str r2, [sp, #12]
	mov r0, r8
	cmp r0, #0
	beq .L083023AE
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L083023AE:
	mov r1, r9
	cmp r1, #0
	beq .L083023BE
	movs r0, #2
	adds r1, r6, #1
	mov r2, r9
	bl sub_08004914
.L083023BE:
	mov r2, sl
	cmp r2, #0
	beq .L083023CC
	movs r0, #2
	adds r1, r6, #2
	bl sub_08004914
.L083023CC:
	ldr r0, [sp, #48]
	cmp r0, #0
	beq .L083023DC
	movs r0, #2
	adds r1, r6, #3
	ldr r2, [sp, #48]
	bl sub_08004914
.L083023DC:
	ldr r1, [pc, #80]
	ldr r5, [r1, #0]
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	subs r0, #1
	cmp r5, r0
	bhi .L08302472
.L083023EC:
	ldr r0, [r1, #0]
	cmp r5, r0
	bne .L08302438
	ldr r0, [pc, #64]
	ldr r4, [r0, #0]
	adds r7, r5, #1
	cmp r4, #26
	bhi .L08302462
.L083023FC:
	movs r0, #4
	ldr r1, [pc, #44]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	cmp r4, #26
	bls .L083023FC
	b .L08302462
	ldr r0, [r1, r4]
	lsls r0, r0, #12
	movs r0, r1
	lsls r0, r0, #16
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L08302438:
	movs r4, #2
	adds r7, r5, #1
.L0830243C:
	movs r0, #4
	ldr r1, [pc, #80]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0830F78C
	adds r4, #1
	cmp r4, #26
	bls .L0830243C
.L08302462:
	adds r5, r7, #0
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	subs r0, #1
	ldr r1, [pc, #40]
	cmp r5, r0
	bls .L083023EC
.L08302472:
	ldr r3, [pc, #36]
	ldr r1, [r3, #0]
	cmp r1, r6
	bne .L083024A0
	ldr r1, [pc, #32]
	ldr r0, [r1, #0]
	add r0, r8
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r2, #2
	str r2, [r1, #0]
	adds r0, r6, #1
	b .L083024FC
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	ldr r0, [r1, r4]
	lsls r0, r0, #12
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024A0:
	adds r0, r6, #1
	cmp r1, r0
	bne .L083024C0
	ldr r2, [pc, #20]
	ldr r0, [r2, #0]
	add r0, r9
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r0, #2
	str r0, [r2, #0]
	adds r0, r1, #1
	b .L083024FC
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024C0:
	adds r0, r6, #2
	cmp r1, r0
	bne .L083024E0
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	add r0, sl
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r2, #2
	str r2, [r1, #0]
	adds r0, r6, #3
	b .L083024FC
	ldr r4, [r0, r4]
	lsls r0, r0, #12
.L083024E0:
	adds r0, r6, #3
	cmp r1, r0
	bne .L083024FE
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	ldr r2, [sp, #48]
	adds r0, r0, r2
	subs r0, #2
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083024FE
	movs r0, #2
	str r0, [r1, #0]
	adds r0, r6, #4
.L083024FC:
	str r0, [r3, #0]
.L083024FE:
	ldr r1, [pc, #92]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #26
	bls .L08302516
	movs r2, #2
	str r2, [r1, #0]
	ldr r1, [pc, #80]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
.L08302516:
	ldr r2, [pc, #72]
	ldr r0, [r2, #0]
	subs r0, r0, r6
	ldr r1, [pc, #68]
	ldr r1, [r1, #0]
	cmp r0, r1
	bcc .L08302568
	mov r0, r8
	cmp r0, #0
	beq .L08302534
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L08302534:
	mov r1, r9
	cmp r1, #0
	beq .L08302544
	movs r0, #2
	adds r1, r6, #1
	mov r2, r9
	bl sub_08004914
.L08302544:
	mov r2, sl
	cmp r2, #0
	beq .L08302552
	movs r0, #2
	adds r1, r6, #2
	bl sub_08004914
.L08302552:
	ldr r0, [sp, #48]
	cmp r0, #0
	beq .L083025E0
	b .L083025B0
	movs r0, r0
	ldr r4, [r0, r4]
	lsls r0, r0, #12
	ldr r0, [r0, r4]
	lsls r0, r0, #12
	ldr r0, [r1, r4]
	lsls r0, r0, #12
.L08302568:
	ldr r4, [pc, #80]
	ldr r0, [pc, #84]
	adds r1, r4, #0
	bl sub_08002094
	ldrh r4, [r4, #0]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq .L083025C4
	mov r1, r8
	cmp r1, #0
	beq .L0830258C
	movs r0, #2
	adds r1, r6, #0
	mov r2, r8
	bl sub_08004914
.L0830258C:
	mov r2, r9
	cmp r2, #0
	beq .L0830259A
	movs r0, #2
	adds r1, r6, #1
	bl sub_08004914
.L0830259A:
	mov r0, sl
	cmp r0, #0
	beq .L083025AA
	movs r0, #2
	adds r1, r6, #2
	mov r2, sl
	bl sub_08004914
.L083025AA:
	ldr r1, [sp, #48]
	cmp r1, #0
	beq .L083025E0
.L083025B0:
	movs r0, #2
	adds r1, r6, #3
	ldr r2, [sp, #48]
	bl sub_08004914
	b .L083025E0
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L083025C4:
	movs r0, #8
	ands r0, r4
	cmp r0, #0
	beq .L083025CE
	b .L08302338
.L083025CE:
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	adds r0, r6, r0
	adds r0, #1
	ldr r2, [pc, #32]
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L083025E0
	b .L08302380
.L083025E0:
	movs r0, #1
.L083025E2:
	add sp, #16
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03005908
	.4byte 0x03005900

	.thumb
	.align 1, 0
	.global sub_083025FC
	.thumb_func
sub_083025FC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #1
	mov r8, r0
	movs r7, #0
	movs r4, #5
	movs r6, #0
.L08302610:
	ldr r0, [pc, #44]
	ldr r1, [pc, #48]
	bl sub_08002094
	bl VBlankIntrWait
	cmp r5, #0
	beq .L08302624
	bl sub_0831A7F8
.L08302624:
	adds r0, r7, #0
	movs r1, #10
	bl __umodsi3
	cmp r0, #0
	bne .L08302672
	cmp r6, #0
	bne .L08302648
	adds r4, #1
	cmp r4, #7
	bls .L08302652
	movs r4, #6
	movs r6, #1
	b .L08302652
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08302648:
	subs r4, #1
	cmp r4, #4
	bhi .L08302652
	movs r4, #6
	movs r6, #0
.L08302652:
	adds r0, r4, #0
	ldr r1, [pc, #48]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #18
	bl sub_0830F78C
.L08302672:
	adds r7, #1
	ldr r0, [pc, #20]
	ldrh r1, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08302690
	movs r0, #0
	mov r8, r0
	b .L08302698
	movs r0, r0
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08302690:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq .L08302610
.L08302698:
	movs r0, #1
	bl sub_08310110
	mov r0, r8
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

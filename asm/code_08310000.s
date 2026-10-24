	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083100D4
	.thumb_func
sub_083100D4:
	push {r4, lr}
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldr r4, [pc, #44]
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08310100
	adds r0, r1, #0
	bl sub_08310110
	movs r0, #0
	strb r0, [r4, #0]
	ldr r4, [pc, #28]
	adds r0, r4, #0
	bl sub_0800060C
	adds r0, r4, #0
	bl Sprite_Draw
	adds r0, r4, #0
	bl sub_080005D4
.L08310100:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030059C8
	.4byte 0x03003C2C

	.thumb
	.align 1, 0
	.global sub_08310110
	.thumb_func
sub_08310110:
	push {r4, lr}
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldr r4, [pc, #40]
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L0831013A
	cmp r1, #0
	beq .L08310136
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	ldr r1, [pc, #32]
	ldr r1, [r1, #0]
	ldr r2, [pc, #32]
	ldr r2, [r2, #0]
	ldr r3, [pc, #32]
	ldr r3, [r3, #0]
	bl sub_080049D4
.L08310136:
	movs r0, #0
	strb r0, [r4, #0]
.L0831013A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030059C9
	.4byte 0x03003EE8
	.4byte 0x03003EEC
	.4byte 0x03003EF0
	.4byte 0x03003EF4

	.thumb
	.align 1, 0
	.global sub_08310154
	.thumb_func
sub_08310154:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #148
	movs r0, #0
	mov r9, r0
	subs r0, #1
	bl sub_08319148
	movs r0, #57
	bl sub_083189D0
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #11
	bhi .L0831021C
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	ldmia r4, {r3, r4, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r1!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r1!, {r4, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2, {r2}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2!, {r3, r4}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2, {r2, r3, r5}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2!, {r6}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2, {r2, r4, r6}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2!, {r3, r5, r6}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2, {r2, r3, r4, r5, r6}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2!, {r4, r7}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #4]
	b .L08310210
	movs r0, r0
	ldmia r2, {r2, r5, r7}
	lsrs r5, r7, #32
	add r1, sp, #84
	ldr r0, [pc, #32]
.L08310210:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L0831021C:
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #11
	bhi .L083102D0
	lsls r0, r0, #2
	ldr r1, [pc, #16]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldmia r2!, {r3, r4, r5, r7}
	lsrs r5, r7, #32
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	ldmia r5!, {r3}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r2, {r2, r3, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r2!, {r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r2, {r2, r4, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3, {r3}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3, {r2, r3, r4}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3!, {r4, r5}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3!, {r2, r6}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3, {r3, r4, r6}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3, {r2, r3, r5, r6}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3!, {r7}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #4]
	b .L083102C4
	movs r0, r0
	ldmia r3!, {r2, r4, r7}
	lsrs r5, r7, #32
	add r1, sp, #116
	ldr r0, [pc, #32]
.L083102C4:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L083102D0:
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi .L08310354
	lsls r0, r0, #2
	ldr r1, [pc, #16]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldmia r3, {r3, r5, r7}
	lsrs r5, r7, #32
	strb r7, [r4, #21]
	lsls r0, r0, #8
	ldmia r5, {r3, r4, r5}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r3, {r2, r3, r4, r5, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r3!, {r4, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r3!, {r2, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r3, {r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r4!, {r2, r3}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r4!, {r5}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310348
	movs r0, r0
	ldmia r4, {r2, r4, r5}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #32]
.L08310348:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L08310354:
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08310384
	cmp r0, #1
	bgt .L08310370
	cmp r0, #0
	beq .L0831037A
	b .L083103AC
	movs r0, r0
	ldmia r4!, {r3, r6}
	lsrs r5, r7, #32
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L08310370:
	cmp r0, #2
	beq .L08310390
	cmp r0, #3
	beq .L0831039C
	b .L083103AC
.L0831037A:
	add r1, sp, #52
	ldr r0, [pc, #0]
	b .L083103A0
	ldmia r4, {r2, r3, r4, r6}
	lsrs r5, r7, #32
.L08310384:
	add r1, sp, #52
	ldr r0, [pc, #4]
	b .L083103A0
	movs r0, r0
	ldmia r4, {r4, r5, r6}
	lsrs r5, r7, #32
.L08310390:
	add r1, sp, #52
	ldr r0, [pc, #4]
	b .L083103A0
	movs r0, r0
	ldmia r4!, {r2, r7}
	lsrs r5, r7, #32
.L0831039C:
	add r1, sp, #52
	ldr r0, [pc, #564]
.L083103A0:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L083103AC:
	movs r0, #14
	str r0, [sp, #0]
	ldr r0, [pc, #548]
	str r0, [sp, #4]
	movs r0, #2
	movs r1, #4
	movs r2, #25
	movs r3, #12
	bl sub_0830FDE0
	ldr r0, [pc, #536]
	bl sub_08000604
	ldr r4, [pc, #536]
	ldr r0, [pc, #536]
	ldrh r1, [r4, #0]
	ands r0, r1
	strh r0, [r4, #0]
	bl sub_083190E0
	movs r0, #15
	ldrh r4, [r4, #0]
	ands r0, r4
	cmp r0, #0
	beq .L083103E0
	b .L08310A0C
.L083103E0:
	bl VBlankIntrWait
	ldr r2, [pc, #512]
	movs r0, #12
	movs r1, #5
	bl sub_08004914
	ldr r2, [pc, #508]
	movs r0, #3
	movs r1, #7
	bl sub_08004914
	ldr r2, [pc, #500]
	ldr r0, [pc, #504]
	ldrh r3, [r0, #0]
	movs r0, #3
	movs r1, #8
	bl sub_08004968
	ldr r4, [pc, #496]
	ldrb r0, [r4, #0]
	subs r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bhi .L08310434
	movs r0, #6
	str r0, [sp, #0]
	ldr r0, [pc, #480]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #137
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #18
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L08310434:
	ldrb r0, [r4, #1]
	subs r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bhi .L08310460
	movs r0, #8
	str r0, [sp, #0]
	ldr r0, [pc, #436]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #137
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #20
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L08310460:
	ldrb r0, [r4, #2]
	subs r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bhi .L0831048C
	movs r0, #10
	str r0, [sp, #0]
	ldr r0, [pc, #392]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #137
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #22
	movs r1, #6
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L0831048C:
	ldr r0, [pc, #368]
	ldr r4, [pc, #372]
	adds r1, r4, #0
	bl sub_08002094
	ldr r2, [pc, #328]
	mov r8, r2
	ldrh r0, [r4, #0]
	strh r0, [r2, #0]
	bl sub_0830F5C8
	movs r0, #7
	movs r1, #12
	add r2, sp, #20
	bl sub_08004914
	add r6, sp, #52
	movs r0, #7
	movs r1, #13
	adds r2, r6, #0
	bl sub_08004914
	add r5, sp, #84
	movs r0, #7
	movs r1, #14
	adds r2, r5, #0
	bl sub_08004914
	add r4, sp, #116
	movs r0, #7
	movs r1, #15
	adds r2, r4, #0
	bl sub_08004914
	movs r0, #64
	mov r3, r8
	ldrh r3, [r3, #0]
	ands r0, r3
	adds r7, r5, #0
	mov r8, r4
	cmp r0, #0
	beq .L083104F2
	movs r0, #5
	bl sub_083189D0
	mov r4, r9
	cmp r4, #0
	beq .L083104F2
	movs r0, #1
	negs r0, r0
	add r9, r0
.L083104F2:
	ldr r1, [pc, #236]
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0831050E
	movs r0, #5
	bl sub_083189D0
	mov r1, r9
	cmp r1, #2
	bhi .L0831050E
	movs r2, #1
	add r9, r2
.L0831050E:
	mov r3, r9
	cmp r3, #0
	beq .L08310516
	b .L0831069C
.L08310516:
	ldr r1, [pc, #200]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310534
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #220]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08310534
	subs r0, #1
	strb r0, [r1, #0]
.L08310534:
	ldr r1, [pc, #168]
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310552
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #192]
	ldrb r0, [r1, #0]
	cmp r0, #6
	bhi .L08310552
	adds r0, #1
	strb r0, [r1, #0]
.L08310552:
	ldr r1, [pc, #140]
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083105C2
	ldr r0, [pc, #168]
	ldrb r0, [r0, #0]
	bl sub_08001E60
	ldr r0, [pc, #164]
	movs r1, #0
	bl sub_080012E4
	movs r5, #160
	lsls r5, r5, #19
	adds r1, r5, #0
	movs r2, #0
	movs r3, #224
	bl Palette_CopyFaded
	ldr r1, [pc, #144]
	ldr r0, [pc, #148]
	ldr r2, [r0, #0]
	movs r0, #76
	muls r0, r2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r4, [pc, #136]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r4, #0
	movs r2, #0
	bl Palette_CopyFaded
	ldr r0, [pc, #128]
	adds r1, r5, #0
	movs r2, #224
	movs r3, #16
	bl Palette_CopyFaded
	ldr r0, [pc, #120]
	adds r1, r5, #0
	movs r2, #240
	movs r3, #16
	bl Palette_CopyFaded
	ldr r0, [pc, #112]
	movs r1, #224
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
.L083105C2:
	ldr r0, [pc, #68]
	ldrb r0, [r0, #0]
	cmp r0, #7
	bhi .L08310690
	lsls r0, r0, #2
	ldr r1, [pc, #88]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	ldmia r4, {r3, r4, r7}
	lsrs r5, r7, #32
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	subs r4, #244
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	.2byte 0xfff7 @ .raw
	movs r0, r0
	ldmia r4!, {r2, r3, r5, r7}
	lsrs r5, r7, #32
	ldmia r4, {r2, r4, r5, r7}
	lsrs r5, r7, #32
	ldmia r4!, {r2, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [r6, r3]
	lsls r0, r0, #12
	cmp r0, #240
	lsls r0, r0, #12
	b .L08310620
	lsrs r5, r7, #32
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	strb r7, [r4, #21]
	lsls r0, r0, #8
	subs r1, #140
	lsls r0, r0, #12
	subs r1, #204
	lsrs r5, r7, #32
	subs r7, #12
	lsls r0, r0, #12
	lsls r0, r0, #8
	lsls r0, r0, #20
	stmia r7!, {r3, r4, r5}
	lsrs r5, r7, #32
.L08310620:
	stmia r7!, {r3, r4, r6}
	lsrs r5, r7, #32
	str r4, [r0, r5]
	lsrs r5, r7, #32
	ldmia r5!, {r3, r4, r6}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r3, {r2, r3, r4, r5, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r3!, {r4, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r3!, {r2, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r3, {r3, r4, r5, r6, r7}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r4!, {r2, r3}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r4!, {r5}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #4]
	b .L08310684
	movs r0, r0
	ldmia r4, {r2, r4, r5}
	lsrs r5, r7, #32
	add r1, sp, #20
	ldr r0, [pc, #132]
.L08310684:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L08310690:
	ldr r0, [pc, #120]
	movs r1, #40
	movs r2, #96
	movs r3, #30
	bl sub_08000684
.L0831069C:
	mov r4, r9
	cmp r4, #1
	beq .L083106A4
	b .L083107C4
.L083106A4:
	ldr r0, [pc, #104]
	bl sub_0800060C
	ldr r1, [pc, #104]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083106C8
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #88]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L083106C8
	subs r0, #1
	strb r0, [r1, #0]
.L083106C8:
	ldr r1, [pc, #72]
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083106E6
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #60]
	ldrb r0, [r1, #0]
	cmp r0, #2
	bhi .L083106E6
	adds r0, #1
	strb r0, [r1, #0]
.L083106E6:
	ldr r1, [pc, #44]
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310766
	bl sub_08002058
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L08310734
	cmp r0, #2
	bgt .L0831071C
	cmp r0, #1
	beq .L08310722
	b .L08310766
	ldmia r4!, {r3, r6}
	lsrs r5, r7, #32
	subs r4, #244
	lsls r0, r0, #12
	subs r4, #144
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0831071C:
	cmp r0, #3
	beq .L08310746
	b .L08310766
.L08310722:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	b .L08310766
.L08310734:
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
	b .L08310766
.L08310746:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
.L08310766:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08310790
	cmp r0, #1
	bgt .L0831077C
	cmp r0, #0
	beq .L08310786
	b .L083107B8
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0831077C:
	cmp r0, #2
	beq .L0831079C
	cmp r0, #3
	beq .L083107A8
	b .L083107B8
.L08310786:
	adds r1, r6, #0
	ldr r0, [pc, #0]
	b .L083107AC
	ldmia r4, {r2, r3, r4, r6}
	lsrs r5, r7, #32
.L08310790:
	adds r1, r6, #0
	ldr r0, [pc, #4]
	b .L083107AC
	movs r0, r0
	ldmia r4, {r4, r5, r6}
	lsrs r5, r7, #32
.L0831079C:
	adds r1, r6, #0
	ldr r0, [pc, #4]
	b .L083107AC
	movs r0, r0
	ldmia r4!, {r2, r7}
	lsrs r5, r7, #32
.L083107A8:
	adds r1, r6, #0
	ldr r0, [pc, #124]
.L083107AC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L083107B8:
	ldr r0, [pc, #112]
	movs r1, #40
	movs r2, #104
	movs r3, #30
	bl sub_08000684
.L083107C4:
	mov r0, r9
	cmp r0, #2
	beq .L083107CC
	b .L083108DC
.L083107CC:
	ldr r1, [pc, #96]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083107EA
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #84]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L083107EA
	subs r0, #1
	str r0, [r1, #0]
.L083107EA:
	ldr r1, [pc, #68]
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310808
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #52]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L08310808
	adds r0, #1
	str r0, [r1, #0]
.L08310808:
	ldr r1, [pc, #36]
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083108D0
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #11
	bhi .L083108D0
	lsls r0, r0, #2
	ldr r1, [pc, #24]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldmia r4, {r3, r4, r7}
	lsrs r5, r7, #32
	subs r4, #244
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	ldmia r5, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r1!, {r2, r3, r4, r6, r7}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r1!, {r4, r5, r6, r7}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2, {r2}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2!, {r3, r4}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2, {r2, r3, r5}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2!, {r6}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2, {r2, r4, r6}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2!, {r3, r5, r6}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2, {r2, r3, r4, r5, r6}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2!, {r4, r7}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #4]
	b .L083108C4
	movs r0, r0
	ldmia r2, {r2, r5, r7}
	lsrs r5, r7, #32
	adds r1, r7, #0
	ldr r0, [pc, #124]
.L083108C4:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L083108D0:
	ldr r0, [pc, #112]
	movs r1, #40
	movs r2, #112
	movs r3, #30
	bl sub_08000684
.L083108DC:
	mov r0, r9
	cmp r0, #3
	beq .L083108E4
	b .L083109F4
.L083108E4:
	ldr r1, [pc, #96]
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310902
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #84]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08310902
	subs r0, #1
	str r0, [r1, #0]
.L08310902:
	ldr r1, [pc, #68]
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08310920
	movs r0, #4
	bl sub_083189D0
	ldr r1, [pc, #52]
	ldr r0, [r1, #0]
	cmp r0, #10
	bhi .L08310920
	adds r0, #1
	str r0, [r1, #0]
.L08310920:
	ldr r1, [pc, #36]
	movs r0, #48
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083109E8
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #11
	bhi .L083109E8
	lsls r0, r0, #2
	ldr r1, [pc, #24]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldmia r2!, {r3, r4, r5, r7}
	lsrs r5, r7, #32
	subs r4, #244
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	ldmia r5, {r3, r5, r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r2, {r2, r3, r6, r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r2!, {r5, r6, r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r2, {r2, r4, r5, r6, r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3, {r3}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3, {r2, r3, r4}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3!, {r4, r5}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3!, {r2, r6}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3, {r3, r4, r6}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3, {r2, r3, r5, r6}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3!, {r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #4]
	b .L083109DC
	movs r0, r0
	ldmia r3!, {r2, r4, r7}
	lsrs r5, r7, #32
	mov r1, r8
	ldr r0, [pc, #148]
.L083109DC:
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldr r2, [r0, #0]
	str r2, [r1, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
.L083109E8:
	ldr r0, [pc, #136]
	movs r1, #40
	movs r2, #120
	movs r3, #30
	bl sub_08000684
.L083109F4:
	ldr r0, [pc, #124]
	bl Sprite_Draw
	bl sub_080043B4
	ldr r1, [pc, #120]
	movs r0, #15
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08310A0C
	b .L083103E0
.L08310A0C:
	bl sub_083190F0
	ldr r1, [pc, #104]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	ldrh r0, [r0, #0]
	bl sub_080020C8
	ldr r2, [pc, #88]
	strh r0, [r2, #0]
	movs r1, #2
	ands r1, r0
	cmp r1, #0
	beq .L08310A30
	ldr r1, [pc, #88]
	movs r0, #5
	strh r0, [r1, #0]
.L08310A30:
	movs r0, #1
	ldrh r2, [r2, #0]
	ands r0, r2
	cmp r0, #0
	beq .L08310A40
	ldr r1, [pc, #76]
	movs r0, #10
	strh r0, [r1, #0]
.L08310A40:
	movs r0, #8
	movs r1, #10
	movs r2, #14
	movs r3, #4
	bl sub_080049D4
	movs r0, #1
	bl sub_08310110
	ldr r4, [pc, #32]
	adds r0, r4, #0
	bl sub_0800060C
	adds r0, r4, #0
	bl Sprite_Draw
	movs r0, #1
	add sp, #148
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x083DCBA8
	.4byte 0x03003CF4
	.4byte 0x03000D1C
	.4byte 0x030059DC
	.4byte 0x03000D12
	.4byte 0x030059FA
	.4byte 0x030059F8

	.thumb
	.align 1, 0
	.global sub_08310A8C
	.thumb_func
sub_08310A8C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #24
	mov sl, r1
	str r2, [sp, #20]
	mov r8, r3
	lsls r0, r0, #24
	lsrs r0, r0, #24
	mov r9, r0
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08310AB8
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	mov r9, r0
.L08310AB8:
	ldr r2, [pc, #84]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08310AD6
	ldr r0, [pc, #80]
	movs r1, #0
	str r1, [r0, #0]
	ldr r0, [pc, #80]
	str r1, [r0, #0]
	ldr r0, [pc, #80]
	str r1, [r0, #0]
	ldr r0, [pc, #80]
	str r1, [r0, #0]
	ldr r0, [pc, #80]
	str r1, [r0, #0]
.L08310AD6:
	ldr r0, [pc, #80]
	ldr r1, [sp, #20]
	str r1, [r0, #0]
	mov r0, sl
	cmp r0, #255
	bls .L08310AE6
	movs r1, #255
	mov sl, r1
.L08310AE6:
	mov r0, sl
	lsrs r0, r0, #2
	mov sl, r0
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08310B80
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L08310B30
	str r0, [sp, #0]
	ldr r0, [pc, #40]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #12]
	movs r0, #15
	b .L08310B4A
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	subs r6, #252
	lsls r0, r0, #12
	subs r7, #0
	lsls r0, r0, #12
	subs r7, #4
	lsls r0, r0, #12
	subs r6, #248
	lsls r0, r0, #12
	subs r7, #8
	lsls r0, r0, #12
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	ldmia r5, {r4, r5, r6, r7}
	lsrs r5, r7, #32
.L08310B30:
	bl sub_0830A000
	cmp r0, #1
	bne .L08310B60
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [pc, #28]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #12]
	movs r0, #14
.L08310B4A:
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_0830F7CC
	b .L08310B80
	movs r0, r0
	.2byte 0xe830 @ .raw
	lsrs r5, r7, #32
.L08310B60:
	movs r0, #0
	str r0, [sp, #0]
	ldr r0, [pc, #72]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #8
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #0
	movs r2, #4
	movs r3, #4
	bl sub_0830F7CC
.L08310B80:
	ldr r0, [pc, #48]
	ldr r1, [r0, #0]
	cmp r9, r1
	bne .L08310B90
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08310C56
.L08310B90:
	cmp r1, #9
	bls .L08310BA2
	mov r1, r9
	cmp r1, #9
	bhi .L08310BA2
	movs r0, #5
	movs r1, #2
	bl sub_08004994
.L08310BA2:
	mov r2, r9
	cmp r2, #0
	bne .L08310BC0
	ldr r1, [pc, #16]
	movs r0, #0
	b .L08310BD0
	movs r0, r0
	ldmia r7, {r4, r5, r6, r7}
	lsrs r5, r7, #32
	subs r6, #248
	lsls r0, r0, #12
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	.2byte 0xd1f0 @ bne.n 0x8310ba0
	lsrs r5, r7, #32
.L08310BC0:
	mov r0, r9
	subs r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #8
	bhi .L08310BF4
	ldr r1, [pc, #32]
	mov r0, r9
.L08310BD0:
	movs r2, #24
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r1, #4
	movs r2, #2
	bl sub_0830F78C
	b .L08310C56
	movs r0, r0
	.2byte 0xd1f0 @ bne.n 0x8310bd4
	lsrs r5, r7, #32
.L08310BF4:
	mov r0, r9
	subs r0, #10
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #89
	bhi .L08310C56
	mov r0, r9
	movs r1, #10
	bl Div
	ldr r5, [pc, #100]
	adds r1, r5, #0
	movs r2, #24
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
.L08310C1C:
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #4
	movs r2, #2
	bl sub_0830F78C
	mov r0, r9
	movs r1, #10
	bl Div
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r9
	subs r0, r1, r0
	adds r1, r5, #0
	movs r2, #24
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #5
	movs r2, #2
	bl sub_0830F78C
.L08310C56:
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp sl, r0
	bne .L08310C66
	ldr r0, [pc, #24]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08310D48
.L08310C66:
	mov r2, sl
	cmp r2, #0
	beq .L08310D3C
	movs r4, #0
	b .L08310C9E
	.2byte 0xd1f0 @ bne.n 0x8310c54
	lsrs r5, r7, #32
	subs r6, #252
	lsls r0, r0, #12
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L08310C7C:
	movs r0, #0
	ldr r1, [pc, #92]
	movs r2, #49
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #4
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_0830F78C
	adds r4, #1
.L08310C9E:
	mov r0, sl
	movs r1, #7
	bl Div
	cmp r4, r0
	bcc .L08310C7C
	mov r0, sl
	movs r1, #7
	bl __umodsi3
	adds r1, r0, #0
	cmp r1, #0
	beq .L08310CE0
	movs r0, #8
	subs r0, r0, r1
	ldr r1, [pc, #28]
	movs r2, #49
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #4
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_0830F78C
	b .L08310D08
	bpl .L08310D00
	lsrs r5, r7, #32
.L08310CE0:
	ldr r1, [pc, #60]
	movs r0, #1
	movs r2, #49
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r4, #3
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	movs r2, #1
	bl sub_0830F78C
.L08310D00:
	adds r0, r4, #4
	movs r1, #1
	bl sub_08004994
.L08310D08:
	adds r4, #5
	cmp r4, #14
	bhi .L08310D48
.L08310D0E:
	adds r0, r4, #0
	movs r1, #1
	bl sub_08004994
	adds r4, #1
	cmp r4, #14
	bls .L08310D0E
	b .L08310D48
	movs r0, r0
	bpl .L08310D44
	lsrs r5, r7, #32
.L08310D24:
	ldr r4, [pc, #16]
	str r5, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
	b .L08310DD4
	ldr r4, [r1, r7]
	lsls r0, r0, #12
.L08310D3C:
	movs r0, #4
	movs r1, #1
	movs r2, #8
	movs r3, #0
.L08310D44:
	bl sub_080049D4
.L08310D48:
	bl sub_0800347C
	ldr r1, [pc, #524]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	movs r1, #128
	lsls r1, r1, #1
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L08310DD4
	ldr r0, [pc, #508]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08310DD4
	ldr r5, [pc, #504]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L08310DD4
	movs r7, #0
	ldr r0, [pc, #484]
	ldr r1, [r0, #0]
	adds r0, r1, #1
	cmp r0, #5
	bgt .L08310DBE
	lsls r0, r1, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bhi .L08310DBE
	adds r6, r5, #0
.L08310D96:
	adds r5, r4, #1
	cmp r5, #5
	bgt .L08310DBE
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, #1
	adds r1, r4, r1
	adds r1, r1, r6
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08310D24
	lsls r0, r5, #24
	lsrs r4, r0, #24
	cmp r4, #5
	bls .L08310D96
.L08310DBE:
	cmp r7, #0
	bne .L08310DD4
	ldr r4, [pc, #420]
	str r7, [r4, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldr r1, [r4, #0]
	bl sub_082FB6D8
.L08310DD4:
	bl sub_0800347C
	ldr r6, [pc, #384]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r6
	movs r1, #4
	ldrh r0, [r0, #0]
	ands r1, r0
	cmp r1, #0
	beq .L08310E1E
	ldr r5, [pc, #372]
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08310E26
	ldr r4, [pc, #368]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r0, [r1, #0]
	cmp r0, #1
	bne .L08310E1E
	strb r0, [r5, #0]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r6
	ldr r1, [pc, #340]
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
.L08310E1E:
	ldr r0, [pc, #320]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08310E2A
.L08310E26:
	bl sub_0830F904
.L08310E2A:
	ldr r4, [pc, #324]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	ldrh r7, [r0, #0]
	ldr r0, [pc, #312]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08310EBC
	ldr r0, [pc, #284]
	ldrb r5, [r0, #0]
	cmp r5, #0
	bne .L08310EBC
	ldr r4, [pc, #280]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L08310EBC
	cmp r7, #0
	beq .L08310E9E
	str r5, [sp, #0]
	ldr r0, [pc, #272]
	str r0, [sp, #4]
	movs r4, #31
	str r4, [sp, #8]
	movs r0, #215
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #17
	movs r2, #5
	movs r3, #3
	bl sub_0830F7CC
	str r5, [sp, #0]
	ldr r0, [pc, #244]
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #161
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #18
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L08310E9E:
	str r5, [sp, #0]
	ldr r0, [pc, #220]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #197
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #24
	movs r1, #0
	movs r2, #6
	movs r3, #3
	bl sub_0830F7CC
.L08310EBC:
	ldr r0, [pc, #196]
	ldr r5, [r0, #0]
	cmp r7, r5
	bne .L08310ECE
	ldr r0, [pc, #172]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08310ECE
	b .L08310FE8
.L08310ECE:
	cmp r7, #0
	bne .L08310ED4
	b .L08310FE8
.L08310ED4:
	cmp r5, #0
	bne .L08310F12
	str r5, [sp, #0]
	ldr r0, [pc, #156]
	str r0, [sp, #4]
	movs r4, #31
	str r4, [sp, #8]
	movs r0, #215
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #17
	movs r2, #5
	movs r3, #3
	bl sub_0830F7CC
	str r5, [sp, #0]
	ldr r0, [pc, #128]
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #161
	str r0, [sp, #12]
	movs r0, #15
	str r0, [sp, #16]
	movs r0, #0
	movs r1, #18
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L08310F12:
	lsls r0, r7, #24
	cmp r0, #0
	blt .L08310F8C
	cmp r7, #9
	bhi .L08310F8C
	ldr r5, [pc, #104]
	adds r0, r7, #0
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #2
	movs r2, #19
	bl sub_0830F78C
	movs r0, #12
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #3
	movs r2, #19
	bl sub_0830F78C
	b .L08310FE8
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	.2byte 0xfffb @ .raw
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	b .L08310C1C
	lsrs r5, r7, #32
	.2byte 0xe310 @ b.n 0x83115a0
	lsrs r5, r7, #32
	.2byte 0xe410 @ b.n 0x83107a4
	lsrs r5, r7, #32
	subs r7, #8
	lsls r0, r0, #12
	bcc .L0831106C
	lsrs r5, r7, #32
.L08310F8C:
	adds r0, r7, #0
	subs r0, #10
	cmp r0, #89
	bhi .L08310FE8
	adds r0, r7, #0
	movs r1, #10
	bl Div
	ldr r5, [pc, #260]
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #2
	movs r2, #19
	bl sub_0830F78C
	adds r0, r7, #0
	movs r1, #10
	bl Div
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r7, r0
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #3
	movs r2, #19
	bl sub_0830F78C
.L08310FE8:
	ldr r0, [pc, #188]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08310FF2
	b .L08311202
.L08310FF2:
	ldr r4, [pc, #184]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	beq .L0831100C
	b .L08311202
.L0831100C:
	ldr r0, [pc, #160]
	ldr r0, [r0, #0]
	ldr r1, [sp, #20]
	cmp r1, r0
	bne .L0831101E
	ldr r0, [pc, #156]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08311042
.L0831101E:
	ldr r0, [pc, #152]
	ldr r0, [r0, #0]
	lsls r0, r0, #1
	str r0, [sp, #0]
	ldr r0, [pc, #148]
	str r0, [sp, #4]
	movs r0, #31
	str r0, [sp, #8]
	movs r0, #57
	str r0, [sp, #12]
	movs r0, #14
	str r0, [sp, #16]
	movs r0, #25
	movs r1, #0
	movs r2, #2
	movs r3, #2
	bl sub_0830F7CC
.L08311042:
	ldr r0, [pc, #124]
	ldr r0, [r0, #0]
	cmp r8, r0
	bne .L08311054
	ldr r0, [pc, #104]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08311054
	b .L08311202
.L08311054:
	mov r2, r8
	lsls r0, r2, #24
	cmp r0, #0
	blt .L083110C4
	cmp r2, #9
	bhi .L083110C4
	ldr r5, [pc, #64]
	movs r0, #12
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
.L0831106C:
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #0
	bl sub_0830F78C
	movs r0, #12
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #28
	movs r2, #0
	bl sub_0830F78C
	mov r0, r8
	b .L08311184
	movs r0, r0
	bcc .L08311188
	lsrs r5, r7, #32
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	adds r4, #228
	lsls r0, r0, #12
	subs r7, #0
	lsls r0, r0, #12
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	ldr r4, [r1, r7]
	lsls r0, r0, #12
	bvs .L083110E0
	lsrs r5, r7, #32
	subs r7, #4
	lsls r0, r0, #12
.L083110C4:
	mov r0, r8
	subs r0, #10
	cmp r0, #89
	bhi .L083110FC
	ldr r5, [pc, #40]
	movs r0, #12
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
.L083110E0:
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #0
	bl sub_0830F78C
	mov r0, r8
	movs r1, #10
	bl Div
	b .L08311156
	bcc .L083111DC
	lsrs r5, r7, #32
.L083110FC:
	mov r1, r8
	subs r1, #100
	ldr r0, [pc, #156]
	cmp r1, r0
	bhi .L083111A8
	mov r0, r8
	movs r1, #100
	bl Div
	ldr r5, [pc, #148]
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #0
	bl sub_0830F78C
	mov r0, r8
	movs r1, #100
	bl Div
	movs r1, #100
	muls r0, r1
	mov r2, r8
	subs r6, r2, r0
	adds r0, r6, #0
	movs r1, #10
	bl Div
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #10
	bl Div
	adds r6, r0, #0
.L08311156:
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #28
	movs r2, #0
	bl sub_0830F78C
	mov r0, r8
	movs r1, #10
	bl Div
	adds r1, r0, #0
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	mov r1, r8
	subs r0, r1, r0
.L08311184:
	adds r1, r5, #0
	movs r2, #36
.L08311188:
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #29
	movs r2, #0
	bl sub_0830F78C
	b .L08311202
	lsls r3, r0, #14
	movs r0, r0
	.2byte 0xd370 @ bcc.n 0x8311288
	lsrs r5, r7, #32
.L083111A8:
	ldr r5, [pc, #144]
	movs r0, #12
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	movs r4, #224
	lsls r4, r4, #8
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #27
	movs r2, #0
	bl sub_0830F78C
	movs r0, #10
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
.L083111DC:
	movs r0, #31
	movs r1, #28
	movs r2, #0
	bl sub_0830F78C
	movs r0, #11
	adds r1, r5, #0
	movs r2, #36
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	str r4, [sp, #0]
	movs r0, #31
	movs r1, #29
	movs r2, #0
	bl sub_0830F78C
.L08311202:
	ldr r0, [pc, #60]
	mov r2, sl
	str r2, [r0, #0]
	ldr r0, [pc, #56]
	ldr r1, [sp, #20]
	str r1, [r0, #0]
	ldr r0, [pc, #56]
	mov r2, r8
	str r2, [r0, #0]
	ldr r0, [pc, #52]
	mov r1, r9
	str r1, [r0, #0]
	ldr r0, [pc, #52]
	str r7, [r0, #0]
	ldr r1, [pc, #52]
	movs r0, #0
	strb r0, [r1, #0]
	ldr r1, [pc, #48]
	movs r0, #1
	strb r0, [r1, #0]
	add sp, #24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x083DD370
	.4byte 0x03003EFC
	.4byte 0x03003F00
	.4byte 0x03003F04
	.4byte 0x03003EF8
	.4byte 0x03003F08
	.4byte 0x030059DC
	.4byte 0x030059DD

	.thumb
	.align 1, 0
	.global sub_0831125C
	.thumb_func
sub_0831125C:
	push {r4, r5, lr}
	movs r5, #0
	b .L0831128C
.L08311262:
	movs r0, #100
	adds r1, r5, #0
	muls r1, r0
	ldr r0, [pc, #48]
	adds r4, r1, r0
	adds r0, r4, #0
	ldr r1, [pc, #48]
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	cmp r5, #0
	beq .L08311284
	adds r1, r5, #2
	adds r0, r4, #0
	bl sub_0800075C
.L08311284:
	adds r0, r4, #0
	bl sub_0800060C
	adds r5, #1
.L0831128C:
	bl sub_0800314C
	cmp r5, r0
	bcc .L08311262
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03003D58
	.4byte 0x081F2B20

	.thumb
	.align 1, 0
	.global sub_083112A4
	.thumb_func
sub_083112A4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	ldr r1, [pc, #56]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L083112B8
	b .L083113EC
.L083112B8:
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #44]
	ldr r2, [r0, #8]
	ldr r0, [r2, #0]
	lsrs r1, r0, #6
	lsrs r0, r0, #5
	adds r1, r1, r0
	cmp r1, #24
	bhi .L08311334
	ldr r0, [r2, #4]
	lsrs r1, r0, #6
	lsrs r0, r0, #5
	adds r1, r1, r0
	cmp r1, #9
	bhi .L08311334
	ldr r1, [pc, #20]
	movs r0, #6
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	movs r0, #5
	str r0, [r1, #0]
	b .L0831133E
	movs r0, r0
	ldr r6, [r3, r7]
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	ldr r0, [r5, r7]
	lsls r0, r0, #12
	ldr r4, [r5, r7]
	lsls r0, r0, #12
.L083112F8:
	ldr r0, [pc, #4]
	str r1, [r0, #0]
	b .L08311392
	movs r0, r0
	ldr r4, [r4, r7]
	lsls r0, r0, #12
.L08311304:
	ldr r2, [pc, #36]
	movs r0, #4
	movs r1, #8
	bl sub_08004914
	ldr r3, [pc, #32]
	ldr r0, [r5, #8]
	ldr r2, [r0, #4]
	mov r0, r9
	ldr r1, [r0, #0]
	adds r0, r2, #0
	lsrs r0, r1
	ldr r1, [r4, #0]
	lsrs r2, r1
	adds r0, r0, r2
	subs r0, r6, r0
	lsrs r0, r0, #1
	str r0, [r3, #0]
	b .L08311392
	movs r0, r0
	ldmia r5!, {r3, r4, r6, r7}
	lsrs r5, r7, #32
	ldr r4, [r4, r7]
	lsls r0, r0, #12
.L08311334:
	ldr r0, [pc, #156]
	movs r1, #7
	str r1, [r0, #0]
	ldr r0, [pc, #156]
	str r1, [r0, #0]
.L0831133E:
	ldr r1, [pc, #156]
	mov r9, r1
	ldr r5, [pc, #156]
	ldr r0, [r5, #8]
	mov r8, r0
	ldr r4, [pc, #136]
	ldr r0, [r0, #0]
	ldr r6, [r4, #0]
	adds r1, r0, #0
	lsrs r1, r6
	ldr r2, [pc, #132]
	ldr r3, [r2, #0]
	lsrs r0, r3
	adds r1, r1, r0
	movs r0, #30
	subs r0, r0, r1
	lsrs r0, r0, #1
	mov r1, r9
	str r0, [r1, #0]
	movs r7, #0
	mov r9, r4
	mov r0, r8
	ldr r1, [r0, #4]
	adds r0, r1, #0
	lsrs r0, r6
	adds r4, r2, #0
	lsrs r1, r3
	adds r0, r0, r1
	lsrs r1, r0, #1
	movs r6, #20
	subs r0, r6, r0
	lsrs r0, r0, #1
	adds r2, r0, r1
.L08311380:
	adds r1, r0, r7
	cmp r1, #5
	bhi .L083112F8
	cmp r2, #26
	bhi .L08311304
	adds r2, #2
	adds r7, #1
	cmp r7, #19
	bls .L08311380
.L08311392:
	ldr r0, [pc, #76]
	ldr r5, [r0, #8]
	ldr r0, [pc, #60]
	ldr r2, [r5, #0]
	ldr r4, [r0, #0]
	adds r1, r2, #0
	lsrs r1, r4
	ldr r0, [pc, #52]
	ldr r3, [r0, #0]
	lsrs r2, r3
	adds r2, r1, r2
	ldr r1, [r5, #4]
	adds r0, r1, #0
	lsrs r0, r4
	lsrs r1, r3
	adds r0, r0, r1
	movs r3, #2
	cmp r0, #1
	bls .L083113BA
	adds r3, r0, #0
.L083113BA:
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	adds r2, #1
	adds r3, #1
	movs r4, #14
	str r4, [sp, #0]
	ldr r4, [pc, #28]
	str r4, [sp, #4]
	bl sub_0830FDE0
	b .L083114A0
	ldr r0, [r5, r7]
	lsls r0, r0, #12
	ldr r4, [r5, r7]
	lsls r0, r0, #12
	ldr r0, [r4, r7]
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	ldr r4, [r4, r7]
	lsls r0, r0, #12
	ldmia r0!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
.L083113EC:
	movs r1, #0
	mov r8, r1
	ldr r5, [pc, #4]
	movs r7, #0
	b .L08311498
	movs r0, r0
	subs r5, #88
	lsls r0, r0, #12
.L083113FC:
	ldr r6, [pc, #112]
	adds r0, r7, r6
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08311484
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r8, r0
	bne .L08311418
	adds r0, r5, #0
	bl sub_08000704
.L08311418:
	adds r0, r5, #0
	bl sub_08000604
	adds r0, r6, #0
	adds r0, #52
	adds r0, r7, r0
	ldr r2, [r0, #0]
	asrs r2, r2, #8
	ldr r0, [pc, #72]
	ldr r4, [r0, #0]
	adds r1, r2, #0
	asrs r1, r4
	ldr r0, [pc, #68]
	ldr r3, [r0, #0]
	asrs r2, r3
	adds r1, r1, r2
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, #4
	adds r0, r6, #0
	adds r0, #56
	adds r0, r7, r0
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	adds r2, r0, #0
	asrs r2, r4
	asrs r0, r3
	adds r2, r2, r0
	ldr r0, [pc, #40]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, #8
	adds r0, r5, #0
	movs r3, #30
	bl sub_08000684
	adds r0, r5, #0
	bl Sprite_Draw
	b .L08311490
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r5, r7]
	lsls r0, r0, #12
	ldr r4, [r5, r7]
	lsls r0, r0, #12
	ldr r0, [r4, r7]
	lsls r0, r0, #12
	ldr r4, [r4, r7]
	lsls r0, r0, #12
.L08311484:
	adds r0, r5, #0
	bl sub_0800060C
	adds r0, r5, #0
	bl Sprite_Draw
.L08311490:
	adds r5, #100
	adds r7, #248
	movs r0, #1
	add r8, r0
.L08311498:
	bl sub_0800314C
	cmp r8, r0
	bcc .L083113FC
.L083114A0:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083114B0
	.thumb_func
sub_083114B0:
	push {r4, r5, r6, r7, lr}
	ldr r1, [pc, #36]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L083114FA
	movs r0, #0
	strb r0, [r1, #0]
	movs r0, #8
	movs r1, #10
	movs r2, #13
	movs r3, #4
	bl sub_080049D4
	movs r0, #1
	bl sub_08310110
	movs r6, #0
	movs r5, #0
	ldr r7, [pc, #4]
	b .L083114F2
	ldr r6, [r3, r7]
	lsls r0, r0, #12
	subs r5, #88
	lsls r0, r0, #12
.L083114E0:
	adds r4, r5, r7
	adds r0, r4, #0
	bl sub_0800060C
	adds r0, r4, #0
	bl Sprite_Draw
	adds r5, #100
	adds r6, #1
.L083114F2:
	bl sub_0800314C
	cmp r6, r0
	bcc .L083114E0
.L083114FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08311500
	.thumb_func
sub_08311500:
	push {r1, r2, r3}
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r6, r0, #0
	ldr r7, [sp, #32]
	add r0, sp, #4
	movs r1, #0
	movs r2, #6
	bl memset
	add r2, sp, #36
	ldr r1, [pc, #76]
	add r0, sp, #4
	bl vsprintf
	movs r5, #0
	add r4, sp, #4
.L08311522:
	ldrb r0, [r4, #0]
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08311550
	ldrb r0, [r4, #0]
	subs r0, #48
	ldr r1, [pc, #52]
	movs r2, #24
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	adds r1, r6, r5
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	adds r2, r7, #0
	bl sub_0830F78C
.L08311550:
	adds r4, #1
	adds r5, #1
	cmp r5, #4
	bls .L08311522
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r3}
	add sp, #12
	bx r3
	.2byte 0x0000
	.4byte 0x083DCDEC
	.4byte 0x083DD1F0

	.thumb
	.align 1, 0
	.global sub_0831156C
	.thumb_func
sub_0831156C:
	push {r4, r5, r6, lr}
	sub sp, #100
	adds r5, r0, #0
	cmp r5, #0
	bne .L08311578
	b .L0831184E
.L08311578:
	ldr r6, [pc, #120]
	ldrb r0, [r6, #0]
	cmp r0, #3
	bls .L08311582
	b .L0831184E
.L08311582:
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #108]
	movs r0, #0
	strh r0, [r1, #0]
	subs r1, #72
	ldr r2, [pc, #104]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #92]
	adds r0, r4, #0
	movs r1, #31
	bl sub_08004848
	ldr r0, [r4, #8]
	movs r4, #160
	lsls r4, r4, #19
	adds r1, r4, #0
	movs r2, #240
	movs r3, #16
	bl Palette_CopyFaded
	movs r0, #15
	bl sub_08004880
	movs r1, #213
	lsls r1, r1, #7
	adds r0, r1, #0
	strh r0, [r4, #0]
	ldr r0, [pc, #56]
	ldr r1, [pc, #56]
	movs r2, #0
	movs r3, #176
	bl Palette_CopyFaded
	bl Obj_InitAll
	bl VBlankIntrWait
	ldrb r6, [r6, #0]
	cmp r6, #3
	bhi .L08311678
	cmp r5, #9
	beq .L0831162C
	cmp r5, #9
	bhi .L0831160C
	cmp r5, #4
	beq .L08311616
	b .L08311678
	movs r0, r0
	strb r4, [r3, #21]
	lsls r0, r0, #8
	lsls r0, r2, #1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	movs r0, #72
	lsrs r5, r7, #32
	strb r0, [r3, #15]
	lsls r0, r0, #8
	lsls r0, r0, #8
	lsls r0, r0, #20
.L0831160C:
	cmp r5, #14
	beq .L08311644
	cmp r5, #19
	beq .L08311664
	b .L08311678
.L08311616:
	ldr r2, [pc, #12]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #4]
	b .L08311650
	.2byte 0xea30 @ .raw
	lsrs r5, r7, #32
	.2byte 0xea50 @ .raw
	lsrs r5, r7, #32
.L0831162C:
	ldr r2, [pc, #12]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311650
	movs r0, r0
	.2byte 0xea30 @ .raw
	lsrs r5, r7, #32
	.2byte 0xea70 @ .raw
	lsrs r5, r7, #32
.L08311644:
	ldr r2, [pc, #20]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #16]
.L08311650:
	movs r0, #1
	movs r1, #4
	bl sub_08004914
	b .L08311678
	movs r0, r0
	.2byte 0xea30 @ .raw
	lsrs r5, r7, #32
	.2byte 0xea90 @ .raw
	lsrs r5, r7, #32
.L08311664:
	ldr r2, [pc, #84]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #80]
	movs r0, #1
	movs r1, #4
	bl sub_08004914
.L08311678:
	ldr r1, [pc, #72]
	mov r0, sp
	movs r2, #0
	movs r3, #0
	bl Sprite_Init
	mov r0, sp
	movs r1, #11
	movs r2, #104
	movs r3, #128
	bl sub_08000684
	mov r0, sp
	bl sub_08000604
	mov r0, sp
	bl Sprite_Draw
	movs r4, #1
.L0831169E:
	bl VBlankIntrWait
	ldr r0, [pc, #36]
	ldr r1, [pc, #36]
	bl sub_08002094
	ldr r0, [pc, #36]
	ldr r0, [r0, #0]
	cmp r0, #16
	beq .L08311714
	cmp r0, #16
	bhi .L083116D4
	cmp r0, #10
	beq .L083116DA
	b .L0831178C
	.2byte 0xea30 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeab0 @ .raw
	lsrs r5, r7, #32
	movs r3, #80
	lsrs r3, r1, #32
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	subs r7, #12
	lsls r0, r0, #12
.L083116D4:
	cmp r0, #20
	beq .L08311750
	b .L0831178C
.L083116DA:
	movs r0, #3
	movs r1, #9
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #3
	movs r1, #10
	ldr r2, [pc, #28]
	bl sub_08004914
	movs r0, #3
	movs r1, #12
	ldr r2, [pc, #24]
	bl sub_08004914
	movs r0, #3
	movs r1, #13
	ldr r2, [pc, #16]
	bl sub_08004914
	b .L083117B4
	.2byte 0xead0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeaec @ .raw
	lsrs r5, r7, #32
	.2byte 0xeb08 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeb24 @ .raw
	lsrs r5, r7, #32
.L08311714:
	movs r0, #3
	movs r1, #9
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #3
	movs r1, #10
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #3
	movs r1, #12
	ldr r2, [pc, #24]
	bl sub_08004914
	movs r0, #3
	movs r1, #13
	ldr r2, [pc, #20]
	bl sub_08004914
	b .L083117B4
	movs r0, r0
	.2byte 0xeb40 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeb5c @ .raw
	lsrs r5, r7, #32
	.2byte 0xeb78 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeb94 @ .raw
	lsrs r5, r7, #32
.L08311750:
	movs r0, #3
	movs r1, #9
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #3
	movs r1, #10
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #3
	movs r1, #12
	ldr r2, [pc, #24]
	bl sub_08004914
	movs r0, #3
	movs r1, #13
	ldr r2, [pc, #20]
	bl sub_08004914
	b .L083117B4
	movs r0, r0
	.2byte 0xebb0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xebcc @ .raw
	lsrs r5, r7, #32
	.2byte 0xebe8 @ .raw
	lsrs r5, r7, #32
	.2byte 0xec04 @ .raw
	lsrs r5, r7, #32
.L0831178C:
	movs r0, #3
	movs r1, #9
	ldr r2, [pc, #56]
	bl sub_08004914
	movs r0, #3
	movs r1, #10
	ldr r2, [pc, #52]
	bl sub_08004914
	movs r0, #3
	movs r1, #12
	ldr r2, [pc, #44]
	bl sub_08004914
	movs r0, #3
	movs r1, #13
	ldr r2, [pc, #40]
	bl sub_08004914
.L083117B4:
	cmp r4, #0
	beq .L083117DC
	cmp r4, #1
	bne .L083117E8
	mov r0, sp
	movs r1, #11
	movs r2, #104
	movs r3, #128
	bl sub_08000684
	b .L083117E8
	movs r0, r0
	.2byte 0xec20 @ .raw
	lsrs r5, r7, #32
	.2byte 0xec3c @ .raw
	lsrs r5, r7, #32
	.2byte 0xec58 @ .raw
	lsrs r5, r7, #32
	.2byte 0xec74 @ .raw
	lsrs r5, r7, #32
.L083117DC:
	mov r0, sp
	movs r1, #11
	movs r2, #112
	movs r3, #128
	bl sub_08000684
.L083117E8:
	ldr r1, [pc, #16]
	movs r0, #192
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08311802
	cmp r4, #1
	bne .L08311800
	movs r4, #0
	b .L08311802
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08311800:
	movs r4, #1
.L08311802:
	mov r0, sp
	bl Sprite_Draw
	bl sub_080043B4
	ldr r0, [pc, #72]
	ldrh r1, [r0, #0]
	movs r0, #11
	ands r0, r1
	cmp r0, #0
	bne .L0831181A
	b .L0831169E
.L0831181A:
	cmp r4, #0
	beq .L0831184E
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne .L0831184E
	bl sub_08316824
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	adds r1, r5, #0
	bl sub_0831506C
	bl sub_083151B4
	ldr r2, [pc, #36]
	movs r0, #7
	movs r1, #15
	bl sub_08004914
	movs r4, #0
.L08311844:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #59
	bls .L08311844
.L0831184E:
	add sp, #100
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D12
	.4byte 0x0200755C
	.4byte 0x083DEC90

	.thumb
	.align 1, 0
	.global sub_08311864
	.thumb_func
sub_08311864:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r5, #0
.L0831186A:
	movs r4, #0
	adds r6, r5, #1
.L0831186E:
	adds r0, r5, #0
	adds r1, r4, #0
	ldr r2, [pc, #40]
	bl sub_08004914
	adds r4, #1
	cmp r4, #19
	bls .L0831186E
	adds r5, r6, #0
	cmp r5, #29
	bls .L0831186A
	ldr r1, [pc, #24]
	movs r0, #254
	strh r0, [r1, #0]
	cmp r7, #23
	bls .L08311890
	b .L08311C0A
.L08311890:
	lsls r0, r7, #2
	ldr r1, [pc, #16]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xeca0 @ .raw
	lsrs r5, r7, #32
	lsls r0, r2, #1
	lsls r0, r0, #16
	.2byte 0xf0a4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeca4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xecc4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xece4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeca4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed04 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed24 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeca4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed64 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeca4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeda4 @ .raw
	lsrs r5, r7, #32
	ldr r4, [pc, #24]
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08004914
	movs r0, #0
	movs r1, #4
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	movs r0, r0
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xedc4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xede4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xecc4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee04 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xede4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed04 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee24 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xede4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee64 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xede4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee84 @ .raw
	lsrs r5, r7, #32
	ldr r4, [pc, #24]
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08004914
	movs r0, #0
	movs r1, #4
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	movs r0, r0
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xedc4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeea4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xecc4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeec4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeea4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed04 @ .raw
	lsrs r5, r7, #32
	.2byte 0xeee4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeea4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xef04 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xeea4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xef24 @ .raw
	lsrs r5, r7, #32
	ldr r4, [pc, #24]
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08004914
	movs r0, #0
	movs r1, #4
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	movs r0, r0
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xedc4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xef44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xecc4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xef64 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xef44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed04 @ .raw
	lsrs r5, r7, #32
	.2byte 0xef84 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xef44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xee44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xefa4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xef44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xefc4 @ .raw
	lsrs r5, r7, #32
	ldr r4, [pc, #24]
	movs r0, #0
	movs r1, #2
	adds r2, r4, #0
	bl sub_08004914
	movs r0, #0
	movs r1, #4
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	movs r0, r0
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xedc4 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xefe4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xecc4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf004 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #16]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L08311BD6
	.2byte 0xefe4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed04 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf024 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #24]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #16]
.L08311BD6:
	movs r0, #0
	movs r1, #11
	bl sub_08004914
	b .L08311C0A
	.2byte 0xefe4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed44 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf044 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #32]
	movs r0, #0
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #4
	bl sub_08004914
	ldr r2, [pc, #20]
	movs r0, #0
	movs r1, #11
	bl sub_08004914
.L08311C0A:
	movs r4, #0
	ldr r5, [pc, #12]
	b .L08311C22
	.2byte 0xf064 @ .raw
	lsrs r5, r7, #32
	.2byte 0xed84 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf084 @ .raw
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08311C20:
	adds r4, #1
.L08311C22:
	cmp r4, #239
	bhi .L08311C3C
	bl VBlankIntrWait
	ldr r0, [pc, #28]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08311C20
.L08311C3C:
	ldr r1, [pc, #12]
	movs r0, #255
	strh r0, [r1, #0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03000D10
	.4byte 0x04000050

	.thumb
	.align 1, 0
	.global sub_08311C50
	.thumb_func
sub_08311C50:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r7, r0, #0
	lsls r1, r1, #24
	lsrs r1, r1, #24
	mov r8, r1
	bl sub_08316824
	mov r0, r8
	cmp r0, #0
	bne .L08311C70
	adds r0, r7, #0
	bl sub_0831156C
.L08311C70:
	ldr r1, [pc, #52]
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r7, #0
	bl sub_08311864
	ldr r0, [pc, #44]
	str r7, [r0, #0]
	bl sub_08001F34
	bl Obj_InitAll
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #28]
	movs r0, #76
	muls r0, r7
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L08311CB4
	ldr r0, [r1, #0]
	bl sub_08301BC4
	b .L08311CBA
	movs r0, r0
	ldr r2, [r6, r3]
	lsls r0, r0, #12
	subs r7, #12
	lsls r0, r0, #12
	subs r1, #204
	lsrs r5, r7, #32
.L08311CB4:
	ldr r0, [r1, #0]
	bl sub_08301B9C
.L08311CBA:
	ldr r5, [pc, #84]
	ldr r0, [pc, #84]
	ldr r1, [r0, #0]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	bl sub_083168BC
	ldr r0, [pc, #72]
	lsls r4, r7, #2
	adds r0, r4, r0
	ldr r1, [r0, #0]
	movs r0, #1
	bl sub_08316900
	ldr r0, [pc, #64]
	adds r0, r4, r0
	ldr r1, [r0, #0]
	movs r0, #3
	bl sub_08316900
	ldr r0, [pc, #56]
	adds r0, r4, r0
	ldr r1, [r0, #0]
	movs r0, #4
	bl sub_08316900
	ldr r0, [pc, #48]
	adds r4, r4, r0
	ldr r1, [r4, #0]
	movs r0, #6
	bl sub_08316900
	mov r1, r8
	cmp r1, #0
	beq .L08311D28
	movs r0, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_082F1E14
	b .L08311DE0
	subs r1, #140
	lsls r0, r0, #12
	ldr r4, [r6, r3]
	lsls r0, r0, #12
	adds r5, #32
	lsrs r5, r7, #32
	tst r4, r3
	lsrs r5, r7, #32
	str r4, [r4, r5]
	lsrs r5, r7, #32
	adds r6, #180
	lsrs r5, r7, #32
.L08311D28:
	ldr r4, [pc, #340]
	mov r2, r8
	strb r2, [r4, #0]
	adds r0, r5, #0
	bl sub_08316E68
	ldrh r0, [r0, #0]
	lsls r0, r0, #8
	str r0, [r4, #52]
	adds r0, r5, #0
	bl sub_08316E68
	ldrh r0, [r0, #2]
	lsls r0, r0, #8
	str r0, [r4, #56]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #40
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #80
	movs r1, #0
	mov r3, r8
	strh r3, [r0, #0]
	adds r2, r4, #0
	adds r2, #82
	ldr r0, [pc, #292]
	strh r0, [r2, #0]
	mov r0, r8
	str r0, [r4, #64]
	str r0, [r4, #68]
	movs r0, #192
	lsls r0, r0, #2
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r0, r4, #0
	adds r0, #48
	strb r1, [r0, #0]
	strb r1, [r4, #8]
	subs r2, #36
	movs r0, #1
	strb r0, [r2, #0]
	adds r2, #1
	strb r0, [r2, #0]
	strb r0, [r4, #1]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #87
	strb r1, [r0, #0]
	adds r1, r4, #0
	adds r1, #90
	movs r0, #255
	strh r0, [r1, #0]
	movs r1, #0
	movs r2, #0
	adds r0, r4, #0
	adds r0, #10
.L08311D9E:
	strh r2, [r0, #0]
	strh r2, [r0, #16]
	adds r0, #2
	adds r1, #1
	cmp r1, #7
	bls .L08311D9E
	movs r1, #0
	movs r2, #0
	strh r2, [r4, #40]
	adds r0, r4, #0
	adds r0, #204
	str r2, [r0, #0]
	ldr r0, [pc, #208]
	strb r1, [r0, #0]
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #200]
	movs r2, #93
	movs r3, #0
	bl Sprite_Init
	adds r0, r4, #0
	adds r0, #93
	ldrb r1, [r0, #0]
	movs r0, #0
	bl sub_082FB6B0
	adds r0, r4, #0
	movs r1, #1
	bl sub_082F1CC0
.L08311DE0:
	ldr r0, [pc, #172]
	movs r1, #0
	mov r9, r1
	str r1, [r0, #0]
	ldr r0, [pc, #168]
	str r1, [r0, #0]
	ldr r6, [pc, #168]
	movs r0, #76
	adds r4, r7, #0
	muls r4, r0
	adds r0, r6, #0
	adds r0, #8
	adds r0, r4, r0
	ldr r0, [r0, #0]
	ldr r1, [pc, #156]
	movs r3, #128
	lsls r3, r3, #1
	movs r2, #0
	bl Palette_CopyFaded
	ldr r5, [pc, #116]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	adds r2, r7, #0
	bl sub_08301BD8
	bl sub_083142F8
	bl sub_082F8A04
	bl sub_082EA27C
	bl sub_08309C98
	bl sub_082F4A84
	bl sub_08313018
	adds r4, r4, r6
	ldrb r0, [r4, #20]
	bl sub_08001DBC
	ldr r0, [pc, #100]
	movs r1, #31
	bl sub_08004848
	bl sub_0830F840
	ldr r0, [pc, #92]
	movs r4, #1
	str r4, [r0, #0]
	ldr r0, [pc, #92]
	mov r2, r9
	strh r2, [r0, #0]
	bl sub_083152C4
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #80]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #76]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [pc, #68]
	bl sub_08316E18
	mov r3, r8
	cmp r3, #0
	beq .L08311EBC
	ldr r0, [pc, #60]
	mov r1, r9
	str r1, [r0, #0]
	b .L08311EC0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xfff0 @ .raw
	movs r0, r0
	cmp r0, #240
	lsls r0, r0, #12
	lsrs r0, r0, #14
	lsrs r4, r1, #32
	cmp r0, #244
	lsls r0, r0, #12
	cmp r0, #248
	lsls r0, r0, #12
	subs r1, #204
	lsrs r5, r7, #32
	lsls r0, r0, #8
	lsls r0, r0, #20
	movs r0, #56
	lsrs r5, r7, #32
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	ldr r4, [r6, r7]
	lsls r0, r0, #12
.L08311EBC:
	ldr r0, [pc, #148]
	str r4, [r0, #0]
.L08311EC0:
	ldr r0, [pc, #148]
	ldr r1, [pc, #152]
	movs r2, #8
	bl CpuFastSet
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r4, [pc, #132]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r2, [pc, #120]
	movs r0, #76
	adds r1, r7, #0
	muls r1, r0
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	ldr r0, [r0, #0]
	strh r0, [r4, #8]
	adds r2, #12
	adds r1, r1, r2
	ldr r0, [r1, #0]
	str r0, [r4, #48]
	ldr r0, [pc, #96]
	str r0, [r4, #44]
	movs r0, #4
	strh r0, [r4, #16]
	ldr r0, [pc, #92]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r1, [pc, #52]
	movs r0, #0
	bl sub_08001FC8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030059F4
	.4byte 0x083D5144
	.4byte 0x050003C0
	.4byte 0x030046E0
	.4byte 0x083D39CC
	.4byte 0x083D1C5C
	.4byte 0x0300471C
	.4byte 0x030059B8
	.4byte 0x030059B4
	.4byte 0x0300087D

	.thumb
	.align 1, 0
	.global sub_08311F7C
	.thumb_func
sub_08311F7C:
	push {r4, r5, r6, lr}
	ldr r5, [pc, #60]
	ldr r6, [pc, #60]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08002094
	bl sub_0800347C
	adds r4, r0, #0
	ldrh r0, [r5, #0]
	bl sub_080020C8
	ldr r1, [pc, #44]
	lsls r4, r4, #24
	lsrs r4, r4, #23
	adds r4, r4, r1
	strh r0, [r4, #0]
	bl sub_0800347C
	adds r4, r0, #0
	ldrh r0, [r6, #0]
	bl sub_080020C8
	ldr r1, [pc, #24]
	lsls r4, r4, #24
	lsrs r4, r4, #23
	adds r4, r4, r1
	strh r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03000D10
	.4byte 0x03000D12
	.4byte 0x03000D14
	.4byte 0x03000D1C

	.thumb
	.align 1, 0
	.global sub_08311FCC
	.thumb_func
sub_08311FCC:
	push {r4, r5, lr}
	ldr r5, [pc, #168]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L08312004
	bl sub_0800347C
	ldr r1, [pc, #160]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #156]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_0800347C
	ldr r1, [pc, #144]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L08312004:
	ldr r5, [pc, #128]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L0831203A
	bl sub_0800347C
	ldr r1, [pc, #104]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #112]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_0800347C
	ldr r1, [pc, #92]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L0831203A:
	ldr r5, [pc, #84]
	ldrh r0, [r5, #0]
	cmp r0, #0
	beq .L08312070
	bl sub_0800347C
	ldr r1, [pc, #52]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldr r4, [pc, #68]
	adds r1, r4, #0
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	bl sub_0800347C
	ldr r1, [pc, #36]
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	ands r4, r1
	strh r4, [r0, #0]
	ldrh r0, [r5, #0]
	subs r0, #1
	strh r0, [r5, #0]
.L08312070:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030059F8
	.4byte 0x03000D14
	.4byte 0x0000FFFE
	.4byte 0x03000D1C
	.4byte 0x030059FC
	.4byte 0x0000FFF7
	.4byte 0x030059FA
	.4byte 0x0000FFFD

	.thumb
	.align 1, 0
	.global sub_08312098
	.thumb_func
sub_08312098:
	push {r4, r5, lr}
	ldr r0, [pc, #196]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L083120AA
	ldr r0, [pc, #192]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08312158
.L083120AA:
	ldr r1, [pc, #180]
	ldr r0, [r1, #0]
	cmp r0, #0
	ble .L083120BE
	subs r0, #2
	str r0, [r1, #0]
	cmp r0, #0
	bge .L083120D0
	movs r0, #0
	str r0, [r1, #0]
.L083120BE:
	ldr r0, [r1, #0]
	cmp r0, #0
	bge .L083120D0
	adds r0, #2
	str r0, [r1, #0]
	cmp r0, #0
	ble .L083120D0
	movs r0, #0
	str r0, [r1, #0]
.L083120D0:
	ldr r1, [pc, #144]
	ldr r0, [r1, #0]
	cmp r0, #0
	ble .L083120E8
	subs r0, #2
	str r0, [r1, #0]
	ldr r1, [pc, #128]
	ldr r0, [r1, #0]
	cmp r0, #0
	bge .L083120E8
	movs r0, #0
	str r0, [r1, #0]
.L083120E8:
	ldr r1, [pc, #120]
	ldr r0, [r1, #0]
	cmp r0, #0
	bge .L083120FC
	adds r0, #2
	str r0, [r1, #0]
	cmp r0, #0
	ble .L083120FC
	movs r0, #0
	str r0, [r1, #0]
.L083120FC:
	bl VBlankIntrWait
	bl sub_080043B4
	ldr r2, [pc, #96]
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	ldr r4, [pc, #84]
	ldr r1, [r4, #0]
	adds r0, r0, r1
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	ldr r5, [pc, #76]
	ldr r2, [r5, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [pc, #76]
	movs r1, #0
	strh r1, [r0, #0]
	ldr r0, [pc, #72]
	strh r1, [r0, #0]
	movs r0, #0
	bl sub_082F234C
	bl sub_082EA2DC
	bl sub_08309CD4
	movs r0, #0
	bl sub_082F27E8
	bl sub_08314A3C
	bl sub_082EA3A4
	bl sub_08309D20
	bl sub_082F4BEC
	ldr r0, [r4, #0]
	cmp r0, #0
	bne .L083120AA
	ldr r0, [r5, #0]
	cmp r0, #0
	bne .L083120AA
.L08312158:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058F8
	.4byte 0x030058FC
	.4byte 0x0300250C
	.4byte 0x03000D1C
	.4byte 0x03000D14

	.thumb
	.align 1, 0
	.global sub_08312174
	.thumb_func
sub_08312174:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r4, [pc, #56]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #23
	adds r0, r0, r4
	ldrh r5, [r0, #0]
	ldr r0, [pc, #48]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08312192
	ldr r0, [pc, #44]
	ands r5, r0
.L08312192:
	movs r0, #64
	ands r0, r5
	cmp r0, #0
	beq .L083121CC
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	cmp r0, #15
	bls .L083121C8
	ldr r2, [pc, #32]
	ldr r1, [r2, #0]
	movs r0, #32
	negs r0, r0
	cmp r1, r0
	ble .L083121E6
	subs r0, r1, #1
	str r0, [r2, #0]
	b .L083121E6
	lsrs r4, r2, #20
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	.2byte 0xffcf @ .raw
	movs r0, r0
	ldrh r0, [r0, r0]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L083121C8:
	adds r0, #1
	b .L083121E4
.L083121CC:
	ldr r2, [pc, #104]
	ldr r1, [r2, #0]
	cmp r1, #0
	bge .L083121E0
	movs r0, #128
	ands r0, r5
	cmp r0, #0
	bne .L083121E0
	adds r0, r1, #1
	str r0, [r2, #0]
.L083121E0:
	ldr r1, [pc, #88]
	movs r0, #0
.L083121E4:
	str r0, [r1, #0]
.L083121E6:
	movs r0, #128
	ands r0, r5
	cmp r0, #0
	beq .L0831224C
	movs r1, #1
	adds r0, r5, #0
	eors r0, r1
	ands r0, r1
	cmp r0, #0
	beq .L08312212
	ldr r4, [pc, #68]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #7
	beq .L08312222
.L08312212:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq .L0831224C
	movs r0, #48
	ands r0, r5
	cmp r0, #0
	beq .L0831224C
.L08312222:
	ldr r1, [pc, #32]
	ldr r0, [r1, #0]
	cmp r0, #15
	bls .L08312248
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #63
	bgt .L083122AC
	adds r0, #1
	b .L083122AA
	movs r0, r0
	ldr r4, [r7, r3]
	lsls r0, r0, #12
	ldrh r0, [r0, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r0, r0]
	lsls r0, r0, #12
.L08312248:
	adds r0, #1
	b .L083122AA
.L0831224C:
	ldr r6, [pc, #116]
	ldr r0, [r6, #0]
	cmp r0, #0
	ble .L083122A6
	movs r0, #64
	ands r0, r5
	cmp r0, #0
	bne .L083122A6
	ldr r4, [pc, #104]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #3
	beq .L083122A6
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #5
	beq .L083122A6
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #8
	beq .L083122A6
	ldr r0, [r6, #0]
	subs r0, #1
	str r0, [r6, #0]
.L083122A6:
	ldr r1, [pc, #36]
	movs r0, #0
.L083122AA:
	str r0, [r1, #0]
.L083122AC:
	movs r0, #16
	ands r0, r5
	cmp r0, #0
	beq .L083122D4
	ldr r1, [pc, #24]
	ldr r0, [r1, #0]
	cmp r0, #69
	bgt .L083122EE
	adds r0, #1
	str r0, [r1, #0]
	b .L083122EE
	movs r0, r0
	ldr r4, [r7, r3]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r0, r0]
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
.L083122D4:
	ldr r2, [pc, #44]
	ldr r1, [r2, #0]
	movs r0, #30
	negs r0, r0
	cmp r1, r0
	ble .L083122EE
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L083122EE
	subs r0, r1, #3
	str r0, [r2, #0]
.L083122EE:
	movs r0, #32
	ands r5, r0
	cmp r5, #0
	beq .L08312308
	ldr r2, [pc, #12]
	ldr r1, [r2, #0]
	subs r0, #102
	cmp r1, r0
	ble .L0831231E
	subs r0, r1, #1
	b .L0831231C
	ldr r0, [r7, r3]
	lsls r0, r0, #12
.L08312308:
	ldr r2, [pc, #128]
	ldr r1, [r2, #0]
	cmp r1, #29
	bgt .L0831231E
	adds r0, r7, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0831231E
	adds r0, r1, #3
.L0831231C:
	str r0, [r2, #0]
.L0831231E:
	ldr r4, [pc, #112]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #3
	beq .L08312362
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #5
	beq .L08312362
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r4
	ldrb r1, [r1, #7]
	cmp r1, #8
	bne .L0831236E
.L08312362:
	ldr r1, [pc, #48]
	ldr r0, [r1, #0]
	cmp r0, #31
	bgt .L0831236E
	adds r0, #2
	str r0, [r1, #0]
.L0831236E:
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #24]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #20]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x030058F8
	.4byte 0x0300250C
	.4byte 0x030058FC

	.thumb
	.align 1, 0
	.global sub_08312398
	.thumb_func
sub_08312398:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #376
	movs r1, #1
	bl sub_08311C50
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	ldr r4, [pc, #104]
	adds r5, r4, #0
	adds r5, #90
	movs r1, #0
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L083123DA
	add r0, sp, #188
	mov r1, sp
	movs r2, #188
	bl memcpy
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
.L083123DA:
	ldr r0, [pc, #72]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L083123E4
	b .L08312676
.L083123E4:
	mov r8, r4
	mov sl, r5
.L083123E8:
	bl VBlankIntrWait
	bl sub_080043B4
	add r0, sp, #176
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0831243C
	add r0, sp, #172
	ldrb r1, [r0, #0]
	adds r4, r0, #0
	cmp r1, #0
	beq .L08312430
	mov r2, r8
	ldr r0, [r2, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #28]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r2, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #24]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	b .L0831247E
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r6, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L08312430:
	ldr r0, [pc, #4]
	bl sub_08312174
	b .L0831247E
	movs r5, #12
	lsls r0, r0, #12
.L0831243C:
	add r0, sp, #364
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08312452
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	bl sub_08312098
	b .L0831247C
.L08312452:
	ldr r2, [pc, #176]
	add r0, sp, #180
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r2, #0]
	ldr r3, [pc, #168]
	add r0, sp, #184
	ldr r2, [r3, #0]
	ldr r0, [r0, #0]
	adds r2, r2, r0
	str r2, [r3, #0]
	mov r3, r8
	ldr r0, [r3, #52]
	asrs r0, r0, #8
	adds r0, r0, r1
	ldr r1, [r3, #56]
	asrs r1, r1, #8
	adds r1, r1, r2
	bl sub_08301D98
.L0831247C:
	add r4, sp, #172
.L0831247E:
	bl sub_0831305C
	mov r1, sl
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	ble .L083124A4
	add r0, sp, #188
	mov r1, sp
	movs r2, #188
	bl memcpy
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
.L083124A4:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L083124B6
	ldr r0, [pc, #96]
	ldr r0, [r0, #0]
	cmp r0, #40
	bls .L083124B6
	bl sub_08311F7C
.L083124B6:
	bl sub_08311FCC
	mov r0, sp
	adds r0, #175
	ldrb r1, [r0, #0]
	mov r9, r0
	cmp r1, #0
	bne .L083124F2
	ldr r0, [pc, #72]
	add r0, sp
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L083124D6
	ldr r1, [pc, #64]
	movs r0, #1
	strb r0, [r1, #0]
.L083124D6:
	mov r0, r8
	adds r0, #92
	ldrb r0, [r0, #0]
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	mov r2, r8
	adds r2, #93
	ldrb r2, [r2, #0]
	mov r5, r8
	ldr r3, [r5, #96]
	ldrh r3, [r3, #6]
	bl sub_08310A8C
.L083124F2:
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08312518
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	b .L0831251E
	movs r0, r0
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	lsls r3, r5, #5
	movs r0, r0
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L08312518:
	movs r0, #0
	bl sub_082F234C
.L0831251E:
	mov r0, r8
	adds r0, #92
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0831252E
	ldr r1, [pc, #24]
	movs r0, #2
	str r0, [r1, #0]
.L0831252E:
	ldr r0, [pc, #24]
	bl sub_08316E18
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #1
	bne .L0831254C
	movs r0, #0
	str r0, [r1, #0]
	b .L0831266C
	movs r0, r0
	ldr r4, [r6, r7]
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
.L0831254C:
	bl sub_083149CC
	bl sub_082EA424
	bl sub_08309DA0
	ldr r0, [sp, #0]
	mov r7, sp
	adds r7, #173
	cmp r0, #0
	beq .L08312592
	movs r6, #0
	b .L0831258C
.L08312566:
	lsls r2, r6, #3
	add r0, sp, #16
	adds r5, r0, r2
	ldr r1, [r5, #0]
	cmp r1, #44
	beq .L0831258A
	add r0, sp, #12
	adds r4, r0, r2
	ldr r0, [r4, #0]
	bl sub_082EA43C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831258A
	ldr r0, [r4, #0]
	ldr r1, [r5, #0]
	bl sub_08309DB8
.L0831258A:
	adds r6, #1
.L0831258C:
	ldr r0, [sp, #8]
	cmp r6, r0
	bcc .L08312566
.L08312592:
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L083125B0
	mov r0, sp
	adds r0, #174
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083125A6
	bl sub_082EA2DC
.L083125A6:
	ldrb r0, [r7, #0]
	cmp r0, #0
	bne .L083125B0
	bl sub_08309CD4
.L083125B0:
	ldr r4, [pc, #12]
	ldr r0, [r4, #0]
	cmp r0, #1
	bne .L083125C4
	movs r0, #0
	str r0, [r4, #0]
	b .L0831266C
	movs r0, r0
	ldr r4, [r6, r7]
	lsls r0, r0, #12
.L083125C4:
	bl sub_082F4BBC
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0831260C
	ldr r1, [pc, #28]
	ldrb r2, [r1, #7]
	cmp r2, #1
	bne .L08312626
	adds r0, r1, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083125F4
	adds r0, r1, #0
	adds r0, #100
	movs r1, #93
	bl sub_08000680
	b .L083125FE
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083125F4:
	adds r0, r1, #0
	adds r0, #100
	movs r1, #92
	bl sub_08000680
.L083125FE:
	ldr r0, [pc, #8]
	bl sub_080006AC
	b .L08312626
	movs r0, r0
	movs r5, #112
	lsls r0, r0, #12
.L0831260C:
	ldr r1, [pc, #148]
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08312626
	bl sub_08310154
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312626
	movs r0, #3
	str r0, [r4, #0]
.L08312626:
	movs r0, #0
	bl sub_082F27E8
	bl sub_08314A3C
	bl sub_082EA3A4
	bl sub_08309D20
	bl sub_082F4BEC
	bl sub_08316F50
	ldr r1, [pc, #100]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #92]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
.L0831266C:
	ldr r0, [pc, #68]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08312676
	b .L083123E8
.L08312676:
	bl sub_08319214
	bl sub_08001F34
	ldr r0, [pc, #56]
	ldr r1, [r0, #56]
	asrs r1, r1, #8
	ldr r0, [pc, #52]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	movs r3, #128
	lsls r3, r3, #1
	adds r0, r0, r3
	cmp r1, r0
	bhi .L083126CC
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L083126C4
	movs r0, r0
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	ldr r4, [r6, r7]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
.L083126C0:
	bl VBlankIntrWait
.L083126C4:
	bl sub_08316F50
	cmp r0, #0
	bne .L083126C0
.L083126CC:
	ldr r0, [pc, #28]
	adds r0, #92
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083126DA
	bl sub_08304374
.L083126DA:
	add sp, #376
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_083126F0
	.thumb_func
sub_083126F0:
	push {lr}
	ldr r1, [pc, #36]
	ldr r2, [pc, #36]
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_08001F34
	ldr r1, [pc, #32]
	ldr r2, [pc, #32]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #28]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000204
	.4byte 0x00004014
	.4byte 0x04000200
	.4byte 0x00002001
	.4byte 0x04000004
	.4byte 0x04000208

	.thumb
	.align 1, 0
	.global sub_08312730
	.thumb_func
sub_08312730:
	push {r4, lr}
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #216]
	movs r2, #248
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #128
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #200]
	adds r0, r4, #0
	movs r1, #31
	bl sub_08004848
	ldr r0, [r4, #8]
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #240
	movs r3, #16
	bl Palette_CopyFaded
	movs r0, #15
	bl sub_08004880
	ldr r2, [pc, #172]
	movs r0, #1
	movs r1, #1
	bl sub_08004914
	ldr r2, [pc, #168]
	movs r0, #1
	movs r1, #2
	bl sub_08004914
	ldr r2, [pc, #160]
	movs r0, #1
	movs r1, #3
	bl sub_08004914
	ldr r2, [pc, #156]
	movs r0, #1
	movs r1, #5
	bl sub_08004914
	ldr r4, [pc, #148]
	movs r0, #1
	movs r1, #6
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #140]
	movs r0, #1
	movs r1, #8
	bl sub_08004914
	movs r0, #1
	movs r1, #9
	adds r2, r4, #0
	bl sub_08004914
	ldr r2, [pc, #124]
	movs r0, #1
	movs r1, #11
	bl sub_08004914
	ldr r2, [pc, #120]
	movs r0, #1
	movs r1, #12
	bl sub_08004914
	ldr r2, [pc, #112]
	movs r0, #1
	movs r1, #13
	bl sub_08004914
	ldr r2, [pc, #108]
	movs r0, #1
	movs r1, #14
	bl sub_08004914
	ldr r2, [pc, #100]
	movs r0, #1
	movs r1, #15
	bl sub_08004914
	ldr r2, [pc, #96]
	movs r0, #1
	movs r1, #16
	bl sub_08004914
	ldr r2, [pc, #88]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	movs r4, #0
.L083127FC:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #179
	bls .L083127FC
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L08312854
	movs r0, r0
	movs r0, r1
	lsls r0, r0, #16
	movs r0, #72
	lsrs r5, r7, #32
	.2byte 0xf104 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf124 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf140 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf160 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf180 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf198 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1b4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf1f0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf210 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf228 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf244 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf260 @ .raw
	lsrs r5, r7, #32
.L08312850:
	bl VBlankIntrWait
.L08312854:
	bl sub_08316F50
	cmp r0, #0
	bne .L08312850
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08312864
	.thumb_func
sub_08312864:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #12
	mov r5, sp
	adds r5, #2
	movs r1, #0
	strh r1, [r5, #0]
	mov r0, sp
	strh r1, [r0, #0]
	mov r8, r1
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #128]
	ldr r1, [pc, #128]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #116]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	ldr r1, [pc, #100]
	ldr r0, [sp, #4]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r6, #128
	lsls r6, r6, #1
	orrs r0, r6
	ldr r1, [pc, #88]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #84]
	ands r0, r1
	str r0, [sp, #4]
	add r2, sp, #4
	adds r0, r4, #0
	movs r1, #0
	bl ResBank_SetSlot
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r1, [pc, #60]
	movs r2, #252
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #128
	lsls r0, r0, #19
	strh r6, [r0, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	adds r7, r5, #0
	add r6, sp, #8
	b .L08312940
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	adds r2, #48
	lsrs r4, r0, #32
	add r0, pc, #576
	lsrs r1, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
.L08312924:
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08312940
	movs r0, #1
	mov r8, r0
.L08312940:
	bl sub_08316F50
	cmp r0, #0
	bne .L08312924
	movs r4, #0
	b .L0831294E
.L0831294C:
	adds r4, #1
.L0831294E:
	cmp r4, #179
	bhi .L08312970
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312970
	mov r2, r8
	cmp r2, #0
	beq .L0831294C
.L08312970:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L08312980
.L0831297C:
	bl VBlankIntrWait
.L08312980:
	bl sub_08316F50
	cmp r0, #0
	bne .L0831297C
	movs r0, #0
	mov r8, r0
	bl sub_08004D70
	bl sub_08001A6C
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	adds r0, r4, #0
	bl sub_08001280
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #48]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r4, #0
	movs r1, #0
	bl sub_080012C0
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L083129FC
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldr r0, [pc, #640]
	lsrs r4, r0, #32
	.2byte 0xf2e0 @ .raw
	lsrs r1, r4, #32
.L083129E0:
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083129FC
	movs r2, #1
	mov r8, r2
.L083129FC:
	bl sub_08316F50
	cmp r0, #0
	bne .L083129E0
	movs r4, #0
	b .L08312A0A
.L08312A08:
	adds r4, #1
.L08312A0A:
	cmp r4, #179
	bhi .L08312A2C
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312A2C
	mov r0, r8
	cmp r0, #0
	beq .L08312A08
.L08312A2C:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L08312A3C
.L08312A38:
	bl VBlankIntrWait
.L08312A3C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08312A38
	movs r2, #0
	mov r8, r2
	bl sub_08004D70
	bl sub_08001A6C
	ldr r5, [pc, #248]
	ldr r1, [pc, #252]
	adds r0, r5, #0
	bl sub_08001280
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080012F4
	ldr r2, [pc, #236]
	adds r0, r5, #0
	movs r1, #0
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #1
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #220]
	adds r0, r5, #0
	movs r1, #1
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #204]
	adds r0, r5, #0
	movs r1, #2
	bl sub_08001314
	adds r0, r5, #0
	movs r1, #0
	bl sub_080012C0
	ldr r1, [pc, #192]
	ldr r0, [sp, #8]
	ands r0, r1
	movs r4, #1
	orrs r0, r4
	ldr r1, [pc, #184]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #180]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #172]
	ands r0, r1
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	adds r2, r6, #0
	bl ResBank_SetSlot
	add r0, sp, #8
	strb r4, [r0, #0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	strb r4, [r6, #3]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r6, #0
	bl ResBank_SetSlot
	strb r4, [r6, #0]
	strb r4, [r6, #1]
	strb r4, [r6, #2]
	movs r0, #2
	strb r0, [r6, #3]
	adds r0, r5, #0
	movs r1, #2
	adds r2, r6, #0
	bl ResBank_SetSlot
	movs r3, #160
	negs r3, r3
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	adds r0, r5, #0
	movs r1, #2
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	ldr r1, [pc, #84]
	movs r2, #252
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	subs r2, #255
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	subs r2, #255
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #12
	movs r2, #224
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L08312B78
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	subs r5, #32
	lsrs r4, r0, #32
	ldr r0, [r0, r7]
	lsrs r2, r4, #32
	ldrh r0, [r2, #46]
	lsrs r2, r4, #32
	str r2, [sp, #384]
	lsrs r2, r4, #32
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	.2byte 0xffff @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xff00 @ .raw
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	movs r0, r1
	lsls r0, r0, #16
.L08312B74:
	bl VBlankIntrWait
.L08312B78:
	bl sub_08316F50
	cmp r0, #0
	bne .L08312B74
	movs r4, #0
	ldr r5, [pc, #40]
.L08312B84:
	bl VBlankIntrWait
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #4
	bl Bg_UpdateScroll
	adds r0, r5, #0
	movs r1, #1
	movs r2, #0
	movs r3, #4
	negs r3, r3
	bl Bg_UpdateScroll
	adds r4, #1
	cmp r4, #39
	bls .L08312B84
	movs r4, #0
	b .L08312BB2
	subs r1, #140
	lsls r0, r0, #12
.L08312BB0:
	adds r4, #1
.L08312BB2:
	cmp r4, #239
	bhi .L08312BD4
	bl VBlankIntrWait
	mov r0, sp
	adds r1, r7, #0
	bl sub_08002094
	mov r1, sp
	movs r0, #11
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08312BD4
	mov r0, r8
	cmp r0, #0
	beq .L08312BB0
.L08312BD4:
	movs r0, #1
	movs r1, #192
	movs r2, #20
	bl sub_08316F10
	b .L08312BE4
.L08312BE0:
	bl VBlankIntrWait
.L08312BE4:
	bl sub_08316F50
	cmp r0, #0
	bne .L08312BE0
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

@ AgbMain: [sure] crt0 jumps here; calls __main, inits, then endless main loop
	.thumb
	.align 1, 0
	.global sub_08312BF8
	.thumb_func
sub_08312BF8:
	.global AgbMain
	.thumb_set AgbMain, sub_08312BF8
	push {r4, lr}
	bl __main
	bl sub_083126F0
	bl sub_08315158
	ldr r1, [pc, #120]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r4, [pc, #116]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	strh r0, [r4, #8]
	ldr r0, [pc, #104]
	str r0, [r4, #48]
	ldr r0, [pc, #104]
	str r0, [r4, #44]
	ldr r0, [pc, #104]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #88]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #64]
	movs r0, #0
	bl sub_08001FC8
	bl sub_08312730
	bl sub_08312864
	bl sub_0830A638
	bl sub_0830A06C
	bl sub_0830A3B4
	bl sub_0830AAA8
.L08312C7C:
	b .L08312C7C
	.2byte 0x0000
	.4byte 0x03003F10
	.4byte 0x030046E0
	.4byte 0x00005221
	.4byte 0x0835F2E4
	.4byte 0x083D1C5C
	.4byte 0x0300471C
	.4byte 0x030059B4
	.4byte 0x030059B8
	.4byte 0x0300087D

	.thumb
	.align 1, 0
	.global sub_08312CA4
	.thumb_func
sub_08312CA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #104]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	adds r7, r0, #0
	ldrh r0, [r5, #10]
	lsls r4, r0, #3
	ldrh r1, [r7, #0]
	lsls r0, r1, #3
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r5, #12]
	lsls r6, r0, #3
	ldrh r1, [r7, #2]
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	mov r0, r9
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312D20
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312D76
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L08312D20:
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrh r7, [r7, #4]
	cmp r0, r7
	bcc .L08312D3E
	mov r0, r8
	strh r0, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
.L08312D3E:
	ldrh r4, [r5, #6]
	ldr r6, [pc, #64]
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldr r0, [r0, #0]
	cmp r4, r0
	bcc .L08312D62
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r5, #6]
	mov r1, r8
	strh r1, [r5, #8]
.L08312D62:
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r0, [r5, #10]
	str r0, [sp, #0]
	ldrh r0, [r5, #12]
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0831AE38
.L08312D76:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312D88
	.thumb_func
sub_08312D88:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #104]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	adds r7, r0, #0
	ldrh r0, [r5, #10]
	lsls r4, r0, #3
	ldrh r1, [r7, #0]
	lsls r0, r1, #3
	adds r0, r0, r4
	mov r9, r0
	ldrh r0, [r5, #12]
	lsls r6, r0, #3
	ldrh r1, [r7, #2]
	lsls r0, r1, #3
	adds r0, r0, r6
	mov r8, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	mov r0, r9
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312E04
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312E4C
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
.L08312E04:
	ldrh r0, [r5, #8]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrh r7, [r7, #4]
	cmp r0, r7
	bcc .L08312E22
	mov r0, r8
	strh r0, [r5, #8]
	ldrh r0, [r5, #6]
	adds r0, #1
	strh r0, [r5, #6]
.L08312E22:
	ldrh r4, [r5, #6]
	ldr r6, [pc, #52]
	ldrh r1, [r5, #4]
	adds r0, r6, #0
	bl sub_08001B40
	ldr r0, [r0, #0]
	cmp r4, r0
	bcc .L08312E38
	mov r1, r8
	strh r1, [r5, #6]
.L08312E38:
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r0, [r5, #10]
	str r0, [sp, #0]
	ldrh r0, [r5, #12]
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_0831AE38
.L08312E4C:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312E60
	.thumb_func
sub_08312E60:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [pc, #100]
	ldrh r1, [r5, #4]
	ldrh r2, [r5, #6]
	bl sub_08001B50
	ldrh r1, [r5, #10]
	lsls r4, r1, #3
	ldrh r2, [r0, #0]
	lsls r1, r2, #3
	adds r1, r1, r4
	mov r8, r1
	ldrh r1, [r5, #12]
	lsls r6, r1, #3
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r7, r6, r0
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	mov r0, r8
	adds r1, r6, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	mov r0, r8
	adds r1, r7, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08312ED4
	ldrh r0, [r5, #20]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08313054
	b .L08312EE8
	subs r1, #140
	lsls r0, r0, #12
.L08312ED4:
	ldr r0, [pc, #28]
	ldrb r1, [r5, #2]
	ldrh r2, [r5, #4]
	ldrh r3, [r5, #6]
	ldrh r4, [r5, #10]
	str r4, [sp, #0]
	ldrh r4, [r5, #12]
	str r4, [sp, #4]
	bl sub_0831AE38
.L08312EE8:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x0300398C
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312D89
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312CA5

	.thumb
	.align 1, 0
	.global sub_08312F18
	.thumb_func
sub_08312F18:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #8]
	strh r0, [r4, #6]
	ldr r0, [pc, #40]
	str r0, [r4, #16]
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312F44
	ldr r0, [pc, #24]
	ldrh r1, [r4, #4]
	bl sub_08001B40
	ldrh r0, [r0, #0]
	subs r0, #1
	strh r0, [r4, #6]
.L08312F44:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08312F55
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08312F54
	.thumb_func
sub_08312F54:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312F70
	adds r0, r4, #0
	bl sub_08312CA4
	b .L08312F7A
.L08312F70:
	movs r0, #0
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
.L08312F7A:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x81012100
	.4byte 0x490180C1
	.4byte 0x47706101
	.4byte 0x08312F91

	.thumb
	.align 1, 0
	.global sub_08312F90
	.thumb_func
sub_08312F90:
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #1]
	cmp r1, r0
	bne .L08312FA8
	movs r0, #1
	b .L08312FAA
.L08312FA8:
	movs r0, #0
.L08312FAA:
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x81012100
	.4byte 0x61014901
	.4byte 0x00004770
	.4byte 0x08312FC9

	.thumb
	.align 1, 0
	.global sub_08312FC8
	.thumb_func
sub_08312FC8:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #1
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	beq .L08312FDC
	movs r0, #1
.L08312FDC:
	strh r0, [r4, #6]
	adds r0, r4, #0
	bl sub_08312E60
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x80C12100
	.4byte 0x61014901
	.4byte 0x00004770
	.4byte 0x08312FFD

	.thumb
	.align 1, 0
	.global sub_08312FFC
	.thumb_func
sub_08312FFC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313012
	adds r0, r4, #0
	bl sub_08312E60
.L08313012:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08313018
	.thumb_func
sub_08313018:
	movs r1, #0
	movs r2, #0
	ldr r0, [pc, #12]
.L0831301E:
	strb r2, [r0, #0]
	adds r0, #24
	adds r1, #1
	cmp r1, #10
	bne .L0831301E
	bx lr
	.2byte 0x0000
	.4byte 0x03003F14

	.thumb
	.align 1, 0
	.global sub_08313030
	.thumb_func
sub_08313030:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [pc, #12]
.L08313036:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08313048
	str r1, [r3, #0]
	movs r0, #1
	b .L08313052
	movs r0, r0
	subs r7, #20
	lsls r0, r0, #12
.L08313048:
	adds r1, #24
	adds r2, #1
	cmp r2, #10
	bls .L08313036
	movs r0, #0
.L08313052:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08313054
	.thumb_func
sub_08313054:
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0831305C
	.thumb_func
sub_0831305C:
	push {r4, r5, lr}
	movs r5, #0
	movs r4, #0
.L08313062:
	ldr r0, [pc, #32]
	adds r2, r4, r0
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08313074
	ldr r1, [r2, #16]
	adds r0, r2, #0
	bl sub_0831A7E8
.L08313074:
	adds r4, #24
	adds r5, #1
	cmp r5, #10
	bne .L08313062
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03003F14

	.thumb
	.align 1, 0
	.global sub_08313088
	.thumb_func
sub_08313088:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r5, r1, #0
	bl Obj_InitAll
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083130AE
	ldr r1, [pc, #40]
	movs r0, #76
	muls r0, r7
	adds r0, r0, r1
	ldrb r0, [r0, #21]
	bl sub_08001DBC
.L083130AE:
	bl sub_08004D70
	bl sub_08001A6C
	ldr r1, [pc, #20]
	movs r0, #76
	muls r0, r7
	adds r1, r0, r1
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq .L083130D0
	ldr r0, [r1, #0]
	bl sub_08301BC4
	b .L083130D6
	subs r1, #204
	lsrs r5, r7, #32
.L083130D0:
	ldr r0, [r1, #0]
	bl sub_08301B9C
.L083130D6:
	ldr r0, [pc, #36]
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	bl sub_08001280
	movs r4, #0
	lsls r6, r7, #2
	cmp r4, r5
	bcs .L08313110
.L083130E8:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #1
	bl sub_082F1E14
	adds r4, #1
	cmp r4, r5
	bcc .L083130E8
	b .L08313110
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldr r4, [r6, r3]
	lsls r0, r0, #12
.L08313104:
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #0
	bl sub_082F1E14
	adds r4, #1
.L08313110:
	cmp r4, #3
	bls .L08313104
	ldr r0, [pc, #288]
	ldr r4, [pc, #292]
	movs r3, #128
	lsls r3, r3, #1
	adds r1, r4, #0
	movs r2, #0
	bl Palette_CopyFaded
	ldr r1, [pc, #280]
	ldr r0, [r1, #52]
	asrs r0, r0, #8
	ldr r1, [r1, #56]
	asrs r1, r1, #8
	adds r2, r7, #0
	bl sub_08301BD8
	bl sub_082F4A84
	bl sub_083142F8
	bl sub_0831125C
	bl sub_08313018
	bl sub_08309C98
	ldr r5, [pc, #248]
	adds r0, r5, #0
	bl sub_083168BC
	ldr r0, [pc, #244]
	adds r0, r6, r0
	ldr r1, [r0, #0]
	movs r0, #3
	bl sub_08316900
	ldr r0, [pc, #236]
	adds r0, r6, r0
	ldr r1, [r0, #0]
	movs r0, #7
	bl sub_08316900
	adds r0, r5, #0
	bl sub_08316E18
	ldr r0, [pc, #224]
	movs r1, #31
	bl sub_08004848
	bl sub_0830F840
	movs r0, #14
	bl sub_08004880
	ldr r0, [pc, #208]
	movs r1, #224
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r1, r4, #0
	movs r2, #8
	bl CpuFastSet
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #180]
	movs r0, #0
	strb r0, [r1, #0]
	movs r4, #0
	movs r1, #0
	movs r6, #1
	negs r6, r6
	mov r8, r6
	ldr r0, [pc, #168]
	ldr r2, [pc, #172]
	mov ip, r2
	ldr r5, [pc, #172]
	ldr r3, [pc, #172]
	ldr r2, [pc, #176]
.L083131BC:
	mov r6, ip
	adds r6, #4
	mov ip, r6
	subs r6, #4
	stmia r6!, {r1}
	strb r1, [r2, #0]
	adds r2, #1
	strb r1, [r3, #0]
	adds r3, #1
	strb r1, [r5, #0]
	adds r5, #1
	mov r6, r8
	str r6, [r0, #0]
	str r6, [r0, #4]
	adds r0, #8
	adds r4, #1
	cmp r4, #3
	bls .L083131BC
	ldr r0, [pc, #140]
	movs r4, #0
	strb r4, [r0, #0]
	ldr r0, [pc, #140]
	strb r4, [r0, #0]
	ldr r1, [pc, #140]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r1, [pc, #136]
	movs r0, #30
	strb r0, [r1, #0]
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	ldr r0, [pc, #124]
	strb r4, [r0, #0]
	bl sub_0830A000
	cmp r0, #1
	bne .L08313232
	movs r3, #0
	movs r4, #0
	ldr r1, [pc, #112]
	ldr r2, [pc, #72]
.L08313214:
	ldrb r0, [r1, #5]
	cmp r0, #20
	bne .L08313226
	ldr r0, [r1, #52]
	str r0, [r2, #0]
	ldr r0, [r1, #56]
	str r0, [r2, #4]
	adds r2, #8
	adds r3, #1
.L08313226:
	cmp r3, #3
	bhi .L08313232
	adds r1, #248
	adds r4, #1
	cmp r4, #15
	bls .L08313214
.L08313232:
	movs r4, #0
	ldr r5, [pc, #36]
	b .L0831329C
	ldr r7, [pc, #272]
	lsrs r5, r7, #32
	lsls r0, r0, #8
	lsls r0, r0, #20
	movs r5, #12
	lsls r0, r0, #12
	subs r1, #140
	lsls r0, r0, #12
	tst r4, r3
	lsrs r5, r7, #32
	adds r6, #180
	lsrs r5, r7, #32
	movs r0, #72
	lsrs r5, r7, #32
	str r4, [r0, r5]
	lsrs r5, r7, #32
	ldrh r0, [r6, r0]
	lsls r0, r0, #12
	eors r4, r3
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
	ldrh r0, [r7, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08313288:
	ldr r2, [r5, #0]
	asrs r2, r2, #8
	ldr r3, [r5, #4]
	asrs r3, r3, #8
	adds r0, r4, #0
	adds r1, r7, #0
	bl sub_082F2074
	adds r5, #8
	adds r4, #1
.L0831329C:
	bl sub_0800314C
	cmp r4, r0
	bcc .L08313288
	ldr r0, [pc, #96]
	bl sub_08002BA0
	movs r0, #1
	bl sub_083100D4
	bl sub_08004A1C
	bl sub_0800347C
	ldr r1, [pc, #80]
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	movs r5, #0
	str r5, [r0, #0]
	ldr r4, [pc, #80]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #68]
	strh r0, [r4, #8]
	ldr r0, [pc, #68]
	str r0, [r4, #44]
	ldr r0, [pc, #68]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083142ED
	.4byte 0x03005A3A
	.4byte 0x030059F0
	.4byte 0x030046E0
	.4byte 0x00002377
	.4byte 0x083D1C5C
	.4byte 0x0300471C
	.4byte 0x030059B8

	.thumb
	.align 1, 0
	.global sub_08313328
	.thumb_func
sub_08313328:
	push {r4, r5, lr}
	movs r5, #0
.L0831332C:
	ldr r4, [pc, #60]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r5, r1
	adds r1, r1, r4
	ldrb r1, [r1, #0]
	cmp r1, #1
	bne .L083133F4
	ldr r0, [pc, #40]
	adds r0, r5, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083133F4
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	subs r0, r5, #1
	cmp r0, #4
	bhi .L083133F4
	lsls r0, r0, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r4, #228
	lsls r0, r0, #12
	eors r4, r2
	lsls r0, r0, #12
	.2byte 0xf308 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf290 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2a8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #12]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #8]
	b .L083133CC
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2c0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #20]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #16]
.L083133CC:
	movs r0, #5
	movs r1, #19
	bl sub_08004914
	b .L083133F4
	movs r0, r0
	.2byte 0xf278 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf2d8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #56]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #52]
	movs r0, #5
	movs r1, #19
	bl sub_08004914
.L083133F4:
	bl sub_0800347C
	ldr r2, [pc, #40]
	adds r2, r5, r2
	ldr r3, [pc, #40]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	adds r1, r5, r1
	adds r1, r1, r3
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	adds r5, #1
	cmp r5, #5
	bls .L0831332C
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DF278
	.4byte 0x083DF2F0
	.4byte 0x03004054
	.4byte 0x030034E4

	.thumb
	.align 1, 0
	.global sub_0831342C
	.thumb_func
sub_0831342C:
	push {r4, r5, r6, lr}
	ldr r6, [pc, #220]
	ldr r1, [pc, #220]
	ldr r4, [pc, #224]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r6, #0]
	ldr r5, [pc, #216]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	adds r1, r0, #0
	adds r1, #90
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	bge .L0831345A
	movs r0, #0
	strh r0, [r1, #0]
.L0831345A:
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r3, r0, r5
	adds r0, r3, #0
	adds r0, #90
	ldrh r0, [r0, #0]
	lsls r2, r0, #24
	ldr r0, [pc, #172]
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	lsls r1, r1, #22
	orrs r1, r2
	adds r0, r3, #0
	adds r0, #93
	ldrb r0, [r0, #0]
	lsls r0, r0, #17
	orrs r0, r1
	adds r1, r3, #0
	adds r1, #48
	lsrs r0, r0, #16
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r6, #2]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #52
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r6, #4]
	ldrb r2, [r4, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	strh r0, [r6, #6]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #64
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r6, #8]
	ldrb r2, [r4, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0, #0]
	strh r0, [r6, #10]
	ldrb r0, [r4, #0]
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r5
	ldr r2, [pc, #64]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
	movs r2, #31
	ands r0, r2
	lsls r0, r0, #8
	ldrb r1, [r1, #7]
	orrs r0, r1
	strh r0, [r6, #12]
	ldrb r1, [r4, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #96
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldrh r0, [r0, #6]
	strh r0, [r6, #14]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03004044
	.4byte 0x03000D14
	.4byte 0x03005A3A
	.4byte 0x0300250C
	.4byte 0x03005A20
	.4byte 0x03005A0C

	.thumb
	.align 1, 0
	.global sub_08313524
	.thumb_func
sub_08313524:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #10
	bhi .L08313538
	b .L0831373A
.L08313538:
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	adds r7, r1, #0
	ldr r0, [pc, #20]
	mov r9, r0
	movs r2, #2
	add r2, r9
	mov r8, r2
	ldr r6, [pc, #16]
	mov sl, r6
	b .L08313660
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	movs r5, #108
	lsls r0, r0, #12
.L08313560:
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	cmp r0, r5
	beq .L0831365A
	ldr r3, [pc, #96]
	lsls r2, r5, #1
	adds r3, r2, r3
	lsls r4, r5, #4
	mov r0, r9
	adds r1, r4, r0
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldrh r0, [r1, #0]
	ldrh r6, [r2, #0]
	eors r0, r6
	ldrh r6, [r1, #0]
	ands r0, r6
	movs r6, #0
	strh r0, [r3, #0]
	ldrh r0, [r1, #0]
	strh r0, [r2, #0]
	ldr r3, [pc, #72]
	lsls r0, r5, #5
	subs r0, r0, r5
	lsls r0, r0, #3
	adds r0, r0, r3
	add r4, r8
	ldrh r2, [r4, #0]
	lsrs r1, r2, #8
	adds r0, #90
	strh r1, [r0, #0]
	ldr r0, [pc, #56]
	adds r0, r5, r0
	ldrb r4, [r4, #0]
	lsrs r1, r4, #6
	strb r1, [r0, #0]
	ldr r2, [r7, #0]
	lsls r1, r2, #4
	add r1, r8
	movs r4, #1
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083135DC
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #48
	strb r4, [r0, #0]
	b .L083135E8
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	lsrs r4, r3, #20
	lsls r0, r0, #12
	lsrs r4, r2, #20
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
.L083135DC:
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #48
	strb r6, [r0, #0]
.L083135E8:
	ldr r3, [r7, #0]
	lsls r0, r3, #4
	add r0, r8
	movs r1, #63
	ldrh r0, [r0, #0]
	ands r1, r0
	ldr r2, [pc, #136]
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, #93
	lsrs r1, r1, #1
	ldrb r0, [r0, #0]
	cmp r1, r0
	beq .L08313612
	cmp r1, #5
	bhi .L08313612
	adds r0, r3, #0
	bl sub_082FB6D8
.L08313612:
	ldr r2, [pc, #112]
	ldr r5, [pc, #112]
	ldr r1, [r5, #0]
	lsls r0, r1, #2
	adds r3, r0, r2
	ldr r6, [pc, #108]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #12
	adds r2, r1, r0
	ldrh r0, [r2, #0]
	lsrs r1, r0, #8
	movs r4, #31
	ands r1, r4
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L08313642
	ldr r1, [pc, #88]
	movs r0, #0
	strb r0, [r1, #0]
	ldrh r2, [r2, #0]
	lsrs r0, r2, #8
	ands r0, r4
	str r0, [r3, #0]
.L08313642:
	ldr r1, [r5, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldr r2, [r0, #0]
	lsls r1, r1, #4
	adds r0, r6, #0
	adds r0, #14
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r2, #6]
.L0831365A:
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L08313660:
	bl sub_0800314C
	ldr r5, [r7, #0]
	cmp r5, r0
	bcs .L0831366C
	b .L08313560
.L0831366C:
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne .L0831373A
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	adds r6, r0, #0
	b .L08313730
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldr r0, [r6, r7]
	lsls r0, r0, #12
.L08313698:
	ldr r0, [pc, #172]
	ldrb r0, [r0, #0]
	cmp r2, r0
	beq .L0831372A
	ldr r5, [pc, #168]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #52
	adds r3, r0, r1
	ldr r4, [pc, #160]
	lsls r0, r2, #4
	adds r1, r4, #4
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	lsls r1, r0, #8
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L083136C2
	str r1, [r3, #0]
.L083136C2:
	ldr r2, [r6, #0]
	lsls r0, r2, #5
	subs r0, r0, r2
	lsls r0, r0, #3
	adds r1, r5, #0
	adds r1, #56
	adds r3, r0, r1
	lsls r2, r2, #4
	adds r0, r4, #6
	adds r2, r2, r0
	ldrh r2, [r2, #0]
	lsls r1, r2, #8
	ldr r0, [r3, #0]
	cmp r0, r1
	beq .L083136E2
	str r1, [r3, #0]
.L083136E2:
	ldr r3, [r6, #0]
	lsls r2, r3, #5
	subs r2, r2, r3
	lsls r2, r2, #3
	adds r1, r5, #0
	adds r1, #64
	adds r1, r2, r1
	lsls r3, r3, #4
	adds r0, r4, #0
	adds r0, #8
	adds r0, r3, r0
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [r1, #0]
	adds r1, r5, #0
	adds r1, #68
	adds r1, r2, r1
	adds r0, r4, #0
	adds r0, #10
	adds r0, r3, r0
	movs r7, #0
	ldrsh r0, [r0, r7]
	str r0, [r1, #0]
	adds r2, r2, r5
	adds r0, r4, #0
	adds r0, #12
	adds r3, r3, r0
	movs r1, #15
	ldrh r3, [r3, #0]
	ands r1, r3
	ldrb r0, [r2, #7]
	cmp r0, r1
	beq .L0831372A
	adds r0, r2, #0
	bl sub_082F1CC0
.L0831372A:
	ldr r0, [r6, #0]
	adds r0, #1
	str r0, [r6, #0]
.L08313730:
	bl sub_0800314C
	ldr r2, [r6, #0]
	cmp r2, r0
	bcc .L08313698
.L0831373A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x03005A3A
	.4byte 0x0300250C
	.4byte 0x03004004

	.thumb
	.align 1, 0
	.global sub_08313754
	.thumb_func
sub_08313754:
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	ldr r0, [pc, #116]
	ldr r5, [pc, #116]
	ldrb r2, [r5, #0]
	lsls r1, r2, #5
	subs r1, r1, r2
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r1, #90
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	ble .L08313774
	b .L08313872
.L08313774:
	ldr r6, [pc, #96]
	adds r0, r2, r6
	ldrb r4, [r0, #0]
	cmp r4, #0
	bne .L08313872
	bl sub_08004A1C
	bl sub_083114B0
	ldr r1, [pc, #84]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08313790
	strb r4, [r1, #0]
.L08313790:
	ldrb r4, [r5, #0]
	adds r1, r4, r6
	movs r0, #1
	strb r0, [r1, #0]
	ldr r4, [pc, #68]
	ldrb r0, [r5, #0]
	adds r2, r0, r4
	ldr r1, [pc, #68]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	strb r0, [r2, #0]
	ldr r0, [pc, #64]
	ldrb r1, [r5, #0]
	adds r0, r1, r0
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	bl sub_0830A000
	cmp r0, #1
	beq .L08313800
	ldrb r0, [r5, #0]
	adds r1, r0, r4
	ldrb r2, [r1, #0]
	cmp r0, r2
	beq .L083137F0
	ldr r0, [pc, #36]
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #1
	b .L083137FE
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
.L083137F0:
	ldr r1, [pc, #88]
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08313800
	subs r0, #1
.L083137FE:
	str r0, [r1, #0]
.L08313800:
	ldr r4, [pc, #76]
	ldr r2, [pc, #80]
	ldr r3, [pc, #80]
	ldrb r1, [r3, #0]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #52
	adds r0, r0, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r4, #0]
	ldr r1, [pc, #64]
	ldrb r4, [r3, #0]
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r0, r0, #3
	adds r2, #56
	adds r0, r0, r2
	ldr r0, [r0, #0]
	asrs r0, r0, #8
	str r0, [r1, #0]
	ldr r1, [pc, #48]
	ldrb r0, [r3, #0]
	adds r1, r0, r1
	ldrb r2, [r1, #0]
	cmp r2, r0
	beq .L08313868
	ldr r2, [pc, #40]
	ldrb r3, [r1, #0]
	adds r3, #1
	movs r0, #6
	movs r1, #14
	bl sub_08004968
	b .L08313872
	movs r0, r0
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r0, [r5, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	ldrh r4, [r5, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf31c @ .raw
	lsrs r5, r7, #32
.L08313868:
	ldr r2, [pc, #132]
	movs r0, #4
	movs r1, #14
	bl sub_08004914
.L08313872:
	ldr r2, [pc, #128]
	ldr r1, [pc, #128]
	ldrb r3, [r1, #0]
	lsls r0, r3, #5
	subs r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08313888
	b .L08313A5E
.L08313888:
	ldr r2, [pc, #112]
	movs r0, #4
	movs r1, #15
	bl sub_08004914
	bl sub_0830A000
	cmp r0, #1
	bne .L08313918
	ldr r2, [pc, #100]
	ldr r5, [pc, #100]
	ldr r3, [r5, #0]
	ldr r4, [pc, #100]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	bl sub_08004968
	ldr r2, [pc, #92]
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L083138D6
	ldr r2, [pc, #72]
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	bl sub_08004968
.L083138D6:
	bl sub_0800314C
	cmp r0, #3
	bls .L0831396C
	ldr r2, [pc, #52]
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	bl sub_08004968
	b .L0831396C
	.2byte 0xf334 @ .raw
	lsrs r5, r7, #32
	movs r5, #12
	lsls r0, r0, #12
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	.2byte 0xf348 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf360 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf380 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf3a0 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf3c0 @ .raw
	lsrs r5, r7, #32
.L08313918:
	ldr r2, [pc, #332]
	ldr r5, [pc, #336]
	ldr r3, [r5, #0]
	ldr r4, [pc, #336]
	ldrb r0, [r4, #0]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #7
	bl sub_08004968
	ldr r2, [pc, #324]
	ldr r3, [r5, #4]
	ldrb r0, [r4, #1]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #8
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L08313954
	ldr r2, [pc, #304]
	ldr r3, [r5, #8]
	ldrb r0, [r4, #2]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #9
	bl sub_08004968
.L08313954:
	bl sub_0800314C
	cmp r0, #3
	bls .L0831396C
	ldr r2, [pc, #284]
	ldr r3, [r5, #12]
	ldrb r0, [r4, #3]
	str r0, [sp, #0]
	movs r0, #1
	movs r1, #10
	bl sub_08004968
.L0831396C:
	ldr r2, [pc, #272]
	ldr r0, [pc, #276]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #32
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0831398C
	ldr r1, [pc, #260]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L0831398C
	subs r0, #5
	str r0, [r1, #0]
.L0831398C:
	ldr r2, [pc, #240]
	ldr r0, [pc, #244]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #16
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083139B6
	ldr r2, [pc, #228]
	ldr r0, [pc, #232]
	ldr r0, [r0, #8]
	ldr r0, [r0, #0]
	lsls r0, r0, #3
	subs r0, #120
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L083139B6
	adds r0, r1, #5
	str r0, [r2, #0]
.L083139B6:
	ldr r2, [pc, #200]
	ldr r0, [pc, #200]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #64
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083139D6
	ldr r1, [pc, #196]
	ldr r0, [r1, #0]
	cmp r0, #4
	bls .L083139D6
	subs r0, #5
	str r0, [r1, #0]
.L083139D6:
	ldr r2, [pc, #168]
	ldr r0, [pc, #168]
	ldrb r0, [r0, #0]
	lsls r1, r0, #1
	adds r1, r1, r2
	movs r0, #128
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08313A00
	ldr r2, [pc, #164]
	ldr r0, [pc, #156]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #32
	ldr r1, [r2, #0]
	cmp r1, r0
	bcs .L08313A00
	adds r0, r1, #5
	str r0, [r2, #0]
.L08313A00:
	ldr r0, [pc, #144]
	ldr r5, [pc, #128]
	ldrb r4, [r5, #0]
	lsls r1, r4, #1
	adds r1, r1, r0
	movs r0, #1
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08313A5E
	ldr r1, [pc, #128]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl sub_08004A1C
	ldr r1, [pc, #116]
	movs r0, #1
	strb r0, [r1, #0]
	ldrb r0, [r5, #0]
	ldr r3, [pc, #112]
	lsls r4, r0, #3
	adds r1, r4, r3
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r3, #4
	adds r4, r4, r3
	ldr r3, [r4, #0]
	asrs r3, r3, #8
	adds r1, r7, #0
	bl sub_082F2074
	movs r0, #0
	movs r1, #192
	movs r2, #15
	bl sub_08316F10
	ldr r1, [pc, #84]
	movs r0, #20
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	ldrb r5, [r5, #0]
	adds r0, r5, r0
	movs r1, #0
	strb r1, [r0, #0]
.L08313A5E:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF3E0
	.4byte 0x03005A0C
	.4byte 0x03005A24
	.4byte 0x083DF400
	.4byte 0x083DF420
	.4byte 0x083DF440
	.4byte 0x03000D14
	.4byte 0x03005A3A
	.4byte 0x03005A28
	.4byte 0x0300398C
	.4byte 0x03005A2C
	.4byte 0x03000D1C
	.4byte 0x04000050
	.4byte 0x030059DC
	.4byte 0x0300405C
	.4byte 0x03005A38
	.4byte 0x03005A1C

	.thumb
	.align 1, 0
	.global sub_08313AAC
	.thumb_func
sub_08313AAC:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r1, [pc, #4]
	movs r0, #0
	b .L08313D54
	movs r0, r0
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08313AC0:
	ldr r7, [pc, #156]
	ldrb r0, [r7, #0]
	cmp r1, r0
	bne .L08313ACA
	b .L08313D4E
.L08313ACA:
	ldr r6, [pc, #152]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #90
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble .L08313AE0
	b .L08313CE8
.L08313AE0:
	ldr r0, [pc, #132]
	adds r2, r1, r0
	ldrb r1, [r2, #0]
	cmp r1, #0
	beq .L08313AEC
	b .L08313D4E
.L08313AEC:
	movs r0, #1
	strb r0, [r2, #0]
	ldr r0, [pc, #120]
	strb r1, [r0, #0]
	ldr r5, [pc, #120]
	ldr r1, [r4, #0]
	adds r0, r1, r5
	ldrb r0, [r0, #0]
	cmp r1, r0
	bne .L08313B02
	b .L08313C84
.L08313B02:
	bl sub_0830A000
	cmp r0, #1
	beq .L08313B1C
	ldr r2, [pc, #104]
	ldr r0, [r4, #0]
	adds r0, r0, r5
	ldrb r0, [r0, #0]
	lsls r1, r0, #2
	adds r1, r1, r2
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
.L08313B1C:
	ldr r0, [pc, #88]
	ldr r1, [r4, #0]
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	ldr r0, [r4, #0]
	adds r2, r0, r5
	ldrb r1, [r2, #0]
	ldrb r7, [r7, #0]
	cmp r1, r7
	bne .L08313B42
	b .L08313C70
.L08313B42:
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r6
	adds r0, #93
	ldrb r0, [r0, #0]
	cmp r0, #5
	bls .L08313B54
	b .L08313D4E
.L08313B54:
	lsls r0, r0, #2
	ldr r1, [pc, #36]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	.2byte 0xf5b0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r1, [pc, #28]
	ldr r4, [pc, #28]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	b .L08313C50
	movs r0, r0
	.2byte 0xf460 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf478 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r1, [pc, #28]
	ldr r4, [pc, #28]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	b .L08313C50
	movs r0, r0
	.2byte 0xf490 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf4a8 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #0]
	b .L08313C3A
	.2byte 0xf4c0 @ .raw
	lsrs r5, r7, #32
	ldr r2, [pc, #24]
	ldr r4, [pc, #28]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	ldr r1, [pc, #20]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	b .L08313C52
	.2byte 0xf4f0 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf508 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r2, [pc, #24]
	ldr r4, [pc, #28]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #16]
	ldr r1, [pc, #20]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	b .L08313C52
	.2byte 0xf520 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf538 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldr r2, [pc, #36]
.L08313C3A:
	ldr r1, [pc, #40]
	ldr r4, [pc, #40]
	ldr r0, [r4, #0]
	adds r0, r0, r1
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #28]
.L08313C50:
	ldr r3, [r4, #0]
.L08313C52:
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	b .L08313D4E
	movs r0, r0
	.2byte 0xf550 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	.2byte 0xf4d8 @ .raw
	lsrs r5, r7, #32
.L08313C70:
	ldr r2, [pc, #12]
	adds r3, r0, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	b .L08313D4E
	movs r0, r0
	.2byte 0xf568 @ .raw
	lsrs r5, r7, #32
.L08313C84:
	movs r0, #5
	movs r1, #18
	movs r2, #19
	movs r3, #2
	bl sub_080049D4
	ldr r2, [pc, #64]
	ldr r3, [r4, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #56]
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	bl sub_0830A000
	cmp r0, #1
	beq .L08313CC6
	ldr r0, [pc, #40]
	ldr r1, [r4, #0]
	adds r1, r1, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08313CC6
	subs r0, #1
	str r0, [r1, #0]
.L08313CC6:
	ldr r1, [pc, #24]
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	adds r0, r0, r1
	ldrb r1, [r0, #0]
	adds r1, #1
	b .L08313D4C
	.2byte 0xf580 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf598 @ .raw
	lsrs r5, r7, #32
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r4, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08313CE8:
	ldr r0, [pc, #44]
	adds r0, r1, r0
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08313D4E
	bl sub_0830A000
	cmp r0, #1
	bne .L08313D20
	ldr r0, [r4, #0]
	ldr r3, [pc, #28]
	lsls r4, r0, #3
	adds r1, r4, r3
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r3, #4
	adds r4, r4, r3
	ldr r3, [r4, #0]
	asrs r3, r3, #8
	mov r1, r8
	bl sub_082F2074
	b .L08313D42
	movs r0, r0
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	eors r4, r3
	lsls r0, r0, #12
.L08313D20:
	ldr r0, [r4, #0]
	lsls r3, r0, #5
	subs r3, r3, r0
	lsls r3, r3, #3
	adds r1, r6, #0
	adds r1, #52
	adds r1, r3, r1
	ldr r2, [r1, #0]
	asrs r2, r2, #8
	adds r1, r6, #0
	adds r1, #56
	adds r3, r3, r1
	ldr r3, [r3, #0]
	asrs r3, r3, #8
	mov r1, r8
	bl sub_082F2074
.L08313D42:
	ldr r1, [pc, #44]
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	adds r0, r0, r1
	movs r1, #0
.L08313D4C:
	strb r1, [r0, #0]
.L08313D4E:
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	adds r0, #1
.L08313D54:
	str r0, [r1, #0]
	ldr r4, [pc, #28]
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcs .L08313D64
	b .L08313AC0
.L08313D64:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005A1C
	.4byte 0x03005A34

	.thumb
	.align 1, 0
	.global sub_08313D78
	.thumb_func
sub_08313D78:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	mov sl, r1
	movs r0, #0
	mov r8, r0
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313D9C
	ldr r0, [pc, #0]
	b .L08313D9E
	.2byte 0xf6aa @ .raw
	lsrs r5, r7, #32
.L08313D9C:
	ldr r0, [pc, #64]
.L08313D9E:
	adds r0, r6, r0
	ldrb r6, [r0, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #130
	lsls r3, r3, #5
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	bl sub_0800314C
	adds r1, r0, #0
	adds r0, r6, #0
	bl sub_08313088
	mov r4, r8
	cmp r4, #0
	beq .L08313DC6
	b .L083142D2
.L08313DC6:
	ldr r7, [pc, #28]
	mov r9, r7
.L08313DCA:
	bl sub_08316F50
	bl sub_0800347C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08313DE8
	bl VBlankIntrWait
	b .L08313DF0
	movs r0, r0
	.2byte 0xf6b5 @ .raw
	lsrs r5, r7, #32
	ldrh r2, [r7, r0]
	lsls r0, r0, #12
.L08313DE8:
	movs r0, #1
	movs r1, #7
	bl IntrWait
.L08313DF0:
	bl sub_080043B4
	ldr r0, [pc, #36]
	mov r2, r9
	ldrb r2, [r2, #0]
	lsls r1, r2, #5
	mov r3, r9
	ldrb r3, [r3, #0]
	subs r1, r1, r3
	lsls r1, r1, #3
	adds r1, r1, r0
	adds r0, r1, #0
	adds r0, #90
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble .L08313E20
	adds r0, r1, #0
	bl sub_08312174
	b .L08313E2C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08313E20:
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	ldr r1, [pc, #44]
	ldr r1, [r1, #0]
	bl sub_08301D98
.L08313E2C:
	bl sub_08311F7C
	bl sub_0831342C
	ldr r0, [pc, #32]
	ldr r1, [pc, #36]
	bl Link_Exchange
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	cmp r0, #120
	bls .L08313EE0
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L08313E68
	ldrh r0, [r5, r0]
	lsls r0, r0, #12
	ldrh r4, [r5, r0]
	lsls r0, r0, #12
	eors r4, r0
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
	ldr r0, [r4, r2]
	lsls r0, r0, #12
.L08313E64:
	bl VBlankIntrWait
.L08313E68:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08313E64
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r3, [pc, #76]
	adds r0, r3, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r4, #138
	lsls r4, r4, #5
	adds r0, r4, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r7, #213
	lsls r7, r7, #7
	adds r0, r7, #0
	strh r0, [r1, #0]
	bl Obj_InitAll
	bl VBlankIntrWait
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_08004914
.L08313EC6:
	b .L08313EC6
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	.2byte 0xf5c8 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5f0 @ .raw
	lsrs r5, r7, #32
.L08313EE0:
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	cmp r1, #0
	beq .L08313FA0
	ldr r1, [pc, #28]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #59
	bls .L08313F7A
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L08313F10
	ldrh r0, [r1, r0]
	lsls r0, r0, #12
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
.L08313F0C:
	bl VBlankIntrWait
.L08313F10:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08313F0C
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #96]
	strh r4, [r0, #0]
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r3, #138
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r4, #213
	lsls r4, r4, #7
	adds r0, r4, #0
	strh r0, [r1, #0]
	bl Obj_InitAll
	bl VBlankIntrWait
	movs r0, #9
	movs r1, #6
	ldr r2, [pc, #56]
	bl sub_08004914
	movs r0, #1
	movs r1, #13
	ldr r2, [pc, #52]
	bl sub_08004914
	movs r0, #7
	movs r1, #14
	ldr r2, [pc, #44]
	bl sub_08004914
	movs r4, #0
.L08313F70:
	bl VBlankIntrWait
	adds r4, #1
	cmp r4, #119
	bls .L08313F70
.L08313F7A:
	ldr r1, [pc, #32]
	movs r0, #0
	str r0, [r1, #0]
	b .L08313FA8
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	.2byte 0xf5c8 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5d4 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf5f0 @ .raw
	lsrs r5, r7, #32
	ldrh r0, [r1, r0]
	lsls r0, r0, #12
.L08313FA0:
	ldr r0, [pc, #84]
	strb r1, [r0, #0]
	bl sub_08313524
.L08313FA8:
	bl sub_08311FCC
	adds r0, r6, #0
	bl sub_08313AAC
	ldr r3, [pc, #72]
	mov r7, r9
	ldrb r4, [r7, #0]
	lsls r0, r4, #5
	subs r0, r0, r4
	lsls r5, r0, #3
	adds r2, r5, r3
	movs r0, #90
	adds r0, r0, r2
	mov ip, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08313FEC
	ldr r1, [pc, #48]
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	mov r7, ip
	movs r4, #0
	ldrsh r1, [r7, r4]
	adds r2, #93
	ldrb r2, [r2, #0]
	adds r3, #96
	adds r3, r5, r3
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	bl sub_08310A8C
.L08313FEC:
	ldr r1, [pc, #20]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08314034
	movs r0, r0
	ldrh r2, [r6, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08314008:
	ldr r3, [pc, #20]
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r2, r0, #3
	adds r0, r2, r3
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq .L08314024
	adds r0, r1, #0
	bl sub_082F234C
	b .L0831402E
	movs r5, #12
	lsls r0, r0, #12
.L08314024:
	adds r0, r3, #0
	adds r0, #100
	adds r0, r2, r0
	bl sub_08000704
.L0831402E:
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08314034:
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcc .L08314008
	bl sub_08309CD4
	bl sub_082F4BBC
	ldr r0, [pc, #36]
	bl sub_08316E18
	bl sub_083149CC
	bl sub_0831305C
	bl sub_082F4BEC
	bl sub_08314A3C
	bl sub_08309D20
	ldr r1, [pc, #12]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	b .L08314080
	movs r0, r0
	subs r1, #140
	lsls r0, r0, #12
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
.L08314074:
	adds r0, r1, #0
	bl sub_082F27E8
	ldr r0, [r4, #0]
	adds r0, #1
	str r0, [r4, #0]
.L08314080:
	bl sub_0800314C
	ldr r1, [r4, #0]
	cmp r1, r0
	bcc .L08314074
	adds r0, r6, #0
	bl sub_08313754
	ldr r1, [pc, #8]
	movs r0, #0
	str r0, [r1, #0]
	adds r4, r1, #0
	ldr r5, [pc, #4]
	b .L08314116
	ldrh r4, [r6, r0]
	lsls r0, r0, #12
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
.L083140A4:
	lsls r0, r2, #2
	adds r1, r0, r5
	ldr r0, [r1, #0]
	cmp r0, sl
	bcc .L08314112
	movs r4, #0
	adds r5, r1, #0
	b .L083140BA
.L083140B4:
	movs r0, #1
	mov r8, r0
	adds r4, #1
.L083140BA:
	cmp r4, #14
	bhi .L083140E0
	bl VBlankIntrWait
	bl sub_0831342C
	ldr r0, [pc, #52]
	ldr r1, [pc, #52]
	bl Link_Exchange
	cmp r4, #6
	bhi .L083140D6
	bl sub_08313524
.L083140D6:
	ldr r0, [r5, #0]
	cmp r0, sl
	bcs .L083140B4
	movs r1, #0
	mov r8, r1
.L083140E0:
	mov r2, r8
	cmp r2, #0
	beq .L08314120
	bl sub_083114B0
	bl sub_08004A1C
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08314108
	movs r0, r0
	eors r4, r0
	lsls r0, r0, #12
	ands r4, r0
	lsls r0, r0, #12
.L08314104:
	bl VBlankIntrWait
.L08314108:
	bl sub_08316F50
	cmp r0, #0
	bne .L08314104
	b .L08314120
.L08314112:
	adds r0, r2, #1
	str r0, [r4, #0]
.L08314116:
	bl sub_0800314C
	ldr r2, [r4, #0]
	cmp r2, r0
	bcc .L083140A4
.L08314120:
	ldr r0, [pc, #40]
	mov r3, r9
	ldrb r2, [r3, #0]
	lsls r1, r2, #1
	adds r1, r1, r0
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08314166
	ldr r0, [pc, #24]
	adds r0, r2, r0
	ldrb r5, [r0, #0]
	cmp r5, #0
	bne .L08314166
	ldr r4, [pc, #20]
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L08314158
	movs r0, #1
	strb r0, [r4, #0]
	b .L08314166
	lsrs r4, r3, #20
	lsls r0, r0, #12
	ldrh r4, [r3, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
.L08314158:
	movs r0, #6
	movs r1, #2
	movs r2, #17
	movs r3, #4
	bl sub_080049D4
	strb r5, [r4, #0]
.L08314166:
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L0831417A
	ldr r0, [pc, #128]
	ldrb r1, [r0, #0]
	cmp r1, #0
	bne .L0831417A
	ldr r0, [pc, #124]
	strb r1, [r0, #0]
.L0831417A:
	ldr r0, [pc, #124]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L08314278
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314198
	ldr r0, [pc, #108]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08314198
	bl sub_083112A4
.L08314198:
	ldr r0, [pc, #88]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08314280
	bl sub_0830A000
	cmp r0, #1
	bne .L08314214
	ldr r4, [pc, #84]
	ldr r3, [r4, #0]
	movs r0, #6
	movs r1, #2
	ldr r2, [pc, #80]
	bl sub_08004968
	ldr r3, [r4, #4]
	movs r0, #6
	movs r1, #3
	ldr r2, [pc, #72]
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L083141D6
	ldr r3, [r4, #8]
	movs r0, #6
	movs r1, #4
	ldr r2, [pc, #56]
	bl sub_08004968
.L083141D6:
	bl sub_0800314C
	cmp r0, #3
	bls .L08314256
	ldr r3, [r4, #12]
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #40]
	bl sub_08004968
	b .L08314256
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldrh r1, [r7, r0]
	lsls r0, r0, #12
	strb r1, [r5, #21]
	lsls r0, r0, #8
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	.2byte 0xf600 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf614 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf628 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf63c @ .raw
	lsrs r5, r7, #32
.L08314214:
	ldr r4, [pc, #72]
	ldr r3, [r4, #0]
	movs r0, #6
	movs r1, #2
	ldr r2, [pc, #68]
	bl sub_08004968
	ldr r3, [r4, #4]
	movs r0, #6
	movs r1, #3
	ldr r2, [pc, #60]
	bl sub_08004968
	bl sub_0800314C
	cmp r0, #2
	bls .L08314242
	ldr r3, [r4, #8]
	movs r0, #6
	movs r1, #4
	ldr r2, [pc, #44]
	bl sub_08004968
.L08314242:
	bl sub_0800314C
	cmp r0, #3
	bls .L08314256
	ldr r3, [r4, #12]
	movs r0, #6
	movs r1, #5
	ldr r2, [pc, #28]
	bl sub_08004968
.L08314256:
	ldr r1, [pc, #28]
	movs r0, #1
	strb r0, [r1, #0]
	b .L08314280
	movs r0, r0
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	.2byte 0xf650 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf664 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf678 @ .raw
	lsrs r5, r7, #32
	.2byte 0xf68c @ .raw
	lsrs r5, r7, #32
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
.L08314278:
	ldr r0, [pc, #28]
	strb r1, [r0, #0]
	bl sub_083114B0
.L08314280:
	ldr r0, [pc, #24]
	ldrb r4, [r0, #0]
	cmp r4, #0
	beq .L083142A4
	movs r0, #15
	movs r1, #1
	bl sub_08004994
	ldr r1, [pc, #12]
	movs r0, #1
	strb r0, [r1, #0]
	b .L083142BE
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	ldr r2, [r1, r7]
	lsls r0, r0, #12
	ldrh r3, [r6, r0]
	lsls r0, r0, #12
.L083142A4:
	bl sub_0800347C
	adds r3, r0, #0
	lsls r3, r3, #24
	lsrs r3, r3, #24
	adds r3, #1
	movs r0, #15
	movs r1, #1
	ldr r2, [pc, #40]
	bl sub_08004968
	ldr r0, [pc, #40]
	strb r4, [r0, #0]
.L083142BE:
	bl sub_08313328
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	mov r4, r8
	cmp r4, #0
	bne .L083142D2
	b .L08313DCA
.L083142D2:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083DF6A0
	.4byte 0x03005A33
	.4byte 0x030059F0
	.4byte 0x20014901
	.4byte 0x47706008
	.4byte 0x03005A08

	.thumb
	.align 1, 0
	.global sub_083142F8
	.thumb_func
sub_083142F8:
	movs r1, #0
	ldr r0, [pc, #16]
	movs r2, #0
	adds r0, #2
.L08314300:
	strb r2, [r0, #0]
	adds r0, #140
	adds r1, #1
	cmp r1, #8
	bne .L08314300
	bx lr
	.4byte 0x0300407C

	.thumb
	.align 1, 0
	.global sub_08314310
	.thumb_func
sub_08314310:
	adds r2, r0, #0
	ldr r1, [pc, #20]
	movs r0, #140
	lsls r0, r0, #3
	adds r3, r1, r0
.L0831431A:
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne .L0831432C
	str r1, [r2, #0]
	movs r0, #1
	b .L08314334
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L0831432C:
	adds r1, #140
	cmp r1, r3
	bne .L0831431A
	movs r0, #0
.L08314334:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314338
	.thumb_func
sub_08314338:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0
	ldr r0, [sp, #44]
	add r2, sp, #48
	add r4, sp, #52
	ldr r1, [sp, #56]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov sl, r3
	lsls r0, r0, #16
	lsrs r6, r0, #16
	ldrb r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r4, [r4, #0]
	str r4, [sp, #4]
	lsls r1, r1, #16
	lsrs r4, r1, #16
	mov r0, sp
	bl sub_08314310
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314440
	ldr r0, [sp, #0]
	movs r3, #0
	movs r2, #1
	strb r2, [r0, #2]
	ldr r0, [sp, #0]
	strb r5, [r0, #0]
	ldr r1, [sp, #0]
	mov r7, r8
	lsls r0, r7, #8
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	mov r7, r9
	lsls r0, r7, #8
	str r0, [r1, #24]
	ldr r0, [sp, #0]
	adds r0, #36
	movs r1, #39
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r4, [r0, #1]
	ldr r0, [sp, #0]
	mov r1, sl
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	strh r0, [r1, #16]
	ldr r0, [sp, #0]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #5]
	ldr r0, [sp, #0]
	strh r3, [r0, #12]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq .L08314420
	cmp r5, #10
	bhi .L08314404
	lsls r0, r5, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf6bc @ .raw
	lsrs r5, r7, #32
	ldr r1, [sp, #0]
	movs r0, #250
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #125
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #100
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #75
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #200
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #50
	str r0, [r1, #8]
	b .L08314408
.L08314404:
	ldr r0, [sp, #0]
	str r3, [r0, #8]
.L08314408:
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl Sprite_Init
	b .L08314436
	movs r0, r0
	lsls r0, r4, #3
	lsrs r4, r3, #32
.L08314420:
	ldr r0, [sp, #0]
	ldr r1, [sp, #8]
	str r1, [r0, #8]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl Sprite_Init
.L08314436:
	movs r0, #1
	b .L08314442
	movs r0, r0
	movs r1, #48
	lsrs r7, r3, #32
.L08314440:
	movs r0, #0
.L08314442:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314454
	.thumb_func
sub_08314454:
	push {lr}
	movs r1, #0
	strb r1, [r0, #2]
	adds r0, #40
	bl sub_080005D4
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08314464
	.thumb_func
sub_08314464:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r0, #10
	bls .L08314470
	b .L08314886
.L08314470:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xf6e8 @ .raw
	lsrs r5, r7, #32
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144B6
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083144B0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	ldrb r0, [r4, #0]
	movs r1, #5
	bl sub_082FB6D8
.L083144B0:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L083144B6:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083144E2
	b .L08314886
.L083144E2:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144F6
	b .L08314886
.L083144F6:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083144FE
	b .L083147E4
.L083144FE:
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	b .L08314868
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	ldr r6, [pc, #612]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	ldr r0, [pc, #32]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314530
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #16]
	bl sub_0831638C
.L08314530:
	ldr r1, [pc, #12]
	movs r0, #1
	strb r0, [r1, #0]
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldmia r7!, {r0, r4, r5}
	lsrs r7, r5, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #92
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	movs r0, #7
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831458C
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314586
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #3
	bl sub_082FB6D8
.L08314586:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L0831458C:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #3
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083145B8
	b .L08314886
.L083145B8:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083145CC
	b .L08314886
.L083145CC:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083145D4
	b .L083147E4
.L083145D4:
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r3, [pc, #724]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
.L083145EC:
	movs r0, #255
	strh r0, [r1, #0]
.L083145F0:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	beq .L08314600
	b .L08314886
.L08314600:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314614
	b .L08314886
.L08314614:
	b .L083147E4
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314632
	ldr r6, [pc, #128]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L08314632
	ldr r0, [pc, #124]
	bl sub_0831638C
	movs r0, #1
	strb r0, [r6, #0]
.L08314632:
	ldr r1, [pc, #120]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r6, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r1, [r4, #0]
	lsls r0, r1, #1
	adds r1, r0, r6
	ldrh r2, [r1, #0]
	cmp r2, #99
	bls .L08314656
	movs r0, #99
	strh r0, [r1, #0]
.L08314656:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L08314666
	b .L08314886
.L08314666:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831467A
	b .L08314886
.L0831467A:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L08314682
	b .L083147E4
.L08314682:
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r4, [r4, #0]
	lsls r0, r4, #1
	adds r1, r0, r6
	ldrh r0, [r1, #0]
	cmp r0, #99
	bhi .L0831469C
	b .L0831486C
.L0831469C:
	movs r0, #99
	strh r0, [r1, #0]
	b .L0831486C
	movs r0, r0
	cmp r0, #236
	lsls r0, r0, #12
	ldr r7, [pc, #340]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
	ldrh r0, [r1, #0]
	adds r0, #128
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #255
	ble .L083145F0
	b .L083145EC
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083146FE
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083146F8
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #2
	bl sub_082FB6D8
.L083146F8:
	ldr r1, [pc, #88]
	movs r0, #1
	strb r0, [r1, #0]
.L083146FE:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L0831472A
	b .L08314886
.L0831472A:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831473E
	b .L08314886
.L0831473E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r4, [pc, #804]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831478E
	ldr r0, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314788
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #96]
	bl sub_0831638C
	movs r0, #0
	movs r1, #4
	bl sub_082FB6D8
.L08314788:
	ldr r1, [pc, #84]
	movs r0, #1
	strb r0, [r1, #0]
.L0831478E:
	ldr r1, [pc, #72]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #6
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #4
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r5, [pc, #532]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L083147E4:
	movs r0, #31
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314822
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831481C
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	movs r0, #0
	movs r1, #1
	bl sub_082FB6D8
.L0831481C:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L08314822:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r2, #75
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L08314880
	ldrb r0, [r4, #0]
	movs r1, #1
	movs r2, #50
.L08314868:
	bl sub_082FB810
.L0831486C:
	movs r0, #17
	bl sub_083189D0
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldr r2, [pc, #996]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L08314880:
	movs r0, #31
	bl sub_083189D0
.L08314886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0831488C
	.thumb_func
sub_0831488C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne .L08314898
	b .L0831498A
.L08314898:
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq .L08314900
	ldrb r0, [r5, #0]
	subs r0, #1
	cmp r0, #9
	bhi .L08314900
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf714 @ .raw
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	adds r0, #126
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #78
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	ldrh r0, [r0, #0]
	b .L083148F8
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
	movs r0, #50
	str r0, [r5, #8]
	b .L08314900
	ldr r0, [pc, #4]
	ldrh r0, [r0, #54]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #102
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #80]
	ldrh r0, [r0, #30]
.L083148F8:
	cmp r0, #0
	beq .L08314900
	movs r0, #10
	strh r0, [r5, #12]
.L08314900:
	ldrh r1, [r5, #12]
	movs r2, #12
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L08314984
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314950
	movs r7, #0
	movs r6, #0
.L08314918:
	ldr r0, [pc, #48]
	adds r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0831493E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0831493E
	ldrb r0, [r5, #0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
.L0831493E:
	adds r6, #248
	adds r7, #1
	cmp r7, #3
	bls .L08314918
	b .L083149BC
	adds r4, #252
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
.L08314950:
	ldr r6, [pc, #40]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #28]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
	b .L083149B4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08314984:
	subs r0, r1, #1
	strh r0, [r5, #12]
	b .L083149BC
.L0831498A:
	ldr r6, [pc, #56]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #44]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	adds r0, r5, #0
	bl sub_08314454
.L083149B4:
	ldrh r2, [r4, #0]
	ldrh r5, [r5, #8]
	subs r0, r2, r5
	strh r0, [r4, #0]
.L083149BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x030058F0

	.thumb
	.align 1, 0
	.global sub_083149CC
	.thumb_func
sub_083149CC:
	push {r4, r5, lr}
	movs r5, #0
.L083149D0:
	movs r0, #140
	adds r1, r5, #0
	muls r1, r0
	ldr r0, [pc, #56]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq .L08314A2E
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314A28
	adds r0, r4, #0
	adds r0, #40
	ldr r1, [r4, #20]
	asrs r1, r1, #8
	ldr r2, [r4, #24]
	asrs r2, r2, #8
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314A06
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq .L08314A14
.L08314A06:
	adds r0, r4, #0
	bl sub_0831488C
	b .L08314A2E
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L08314A14:
	ldrb r0, [r4, #3]
	cmp r0, #0
	beq .L08314A20
	ldrb r0, [r4, #1]
	bl sub_08316920
.L08314A20:
	adds r0, r4, #0
	bl sub_08314454
	b .L08314A2E
.L08314A28:
	adds r0, r4, #0
	bl sub_0831488C
.L08314A2E:
	adds r5, #1
	cmp r5, #8
	bne .L083149D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314A3C
	.thumb_func
sub_08314A3C:
	push {r4, r5, r6, lr}
	movs r6, #0
.L08314A40:
	movs r0, #140
	adds r1, r6, #0
	muls r1, r0
	ldr r0, [pc, #92]
	adds r5, r1, r0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08314AB8
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
	beq .L08314AAC
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq .L08314A76
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bgt .L08314AAC
.L08314A76:
	adds r0, r4, #0
	bl sub_08000604
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r3, [pc, #32]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #36
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	b .L08314AB2
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
	subs r0, #204
	lsls r0, r0, #12
.L08314AAC:
	adds r0, r4, #0
	bl sub_0800060C
.L08314AB2:
	adds r0, r4, #0
	bl Sprite_Draw
.L08314AB8:
	adds r6, #1
	cmp r6, #8
	bne .L08314A40
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08314AC4
	.thumb_func
sub_08314AC4:
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [pc, #24]
	movs r0, #245
	lsls r0, r0, #2
	adds r4, r2, r0
.L08314AD0:
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq .L08314AE8
	ldrb r0, [r2, #1]
	cmp r0, r3
	bne .L08314AE8
	str r2, [r1, #0]
	movs r0, #1
	b .L08314AF0
	movs r0, r0
	eors r4, r7
	lsls r0, r0, #12
.L08314AE8:
	adds r2, #140
	cmp r2, r4
	bls .L08314AD0
	movs r0, #0
.L08314AF0:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08314AF8
	.thumb_func
sub_08314AF8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
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
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF73C
	.4byte 0x08314B65

	.thumb
	.align 1, 0
	.global sub_08314B64
	.thumb_func
sub_08314B64:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	ldr r2, [pc, #36]
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
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF770

	.thumb
	.align 1, 0
	.global sub_08314BB4
	.thumb_func
sub_08314BB4:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
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
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF794
	.4byte 0x08314C21

	.thumb
	.align 1, 0
	.global sub_08314C20
	.thumb_func
sub_08314C20:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	.4byte 0x083DF7B0
	.4byte 0x08314C79

	.thumb
	.align 1, 0
	.global sub_08314C78
	.thumb_func
sub_08314C78:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	ldr r2, [pc, #36]
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
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF7E8

	.thumb
	.align 1, 0
	.global sub_08314CC8
	.thumb_func
sub_08314CC8:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
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
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF800
	.4byte 0x08314D35

	.thumb
	.align 1, 0
	.global sub_08314D34
	.thumb_func
sub_08314D34:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	ldr r2, [pc, #36]
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
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF848

	.thumb
	.align 1, 0
	.global sub_08314D84
	.thumb_func
sub_08314D84:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
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
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF86C
	.4byte 0x08314DF1

	.thumb
	.align 1, 0
	.global sub_08314DF0
	.thumb_func
sub_08314DF0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	.4byte 0x083DF894
	.4byte 0x08314E49

	.thumb
	.align 1, 0
	.global sub_08314E48
	.thumb_func
sub_08314E48:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	ldr r2, [pc, #36]
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
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF8C8

	.thumb
	.align 1, 0
	.global sub_08314E98
	.thumb_func
sub_08314E98:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
	movs r2, #0
	movs r3, #0
	bl sub_08316098
	str r4, [sp, #0]
	movs r0, #120
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
	movs r3, #120
	bl sub_08316178
	movs r0, #3
	movs r1, #1
	bl sub_083164A4
	movs r0, #8
	bl sub_083164C8
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF8E8
	.4byte 0x08314F05

	.thumb
	.align 1, 0
	.global sub_08314F04
	.thumb_func
sub_08314F04:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
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
	ldr r2, [pc, #36]
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
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DF910

	.thumb
	.align 1, 0
	.global sub_08314F54
	.thumb_func
sub_08314F54:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	ldr r0, [pc, #76]
	movs r4, #0
	str r4, [r0, #64]
	movs r0, #8
	movs r1, #10
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
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #44]
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
	ldr r0, [pc, #20]
	bl sub_08316500
	add sp, #12
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0300250C
	.4byte 0x083DF930
	.4byte 0x08314FC1

	.thumb
	.align 1, 0
	.global sub_08314FC0
	.thumb_func
sub_08314FC0:
	push {r4, lr}
	sub sp, #12
	bl sub_0831654C
	bl sub_0831650C
	bl sub_0831653C
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #220
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #5
	bl sub_0831628C
	ldr r2, [pc, #36]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #220
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
	.4byte 0x083DF974

	.thumb
	.align 1, 0
	.global sub_08315010
	.thumb_func
sub_08315010:
	movs r1, #0
	cmp r1, r0
	bcs .L0831501C
.L08315016:
	adds r1, #1
	cmp r1, r0
	bcc .L08315016
.L0831501C:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08315020
	.thumb_func
sub_08315020:
	lsls r0, r0, #5
	ldr r1, [pc, #4]
	adds r0, r0, r1
	bx lr
	.4byte 0x030044E4

	.thumb
	.align 1, 0
	.global sub_0831502C
	.thumb_func
sub_0831502C:
	lsls r0, r0, #5
	ldr r1, [pc, #56]
	adds r0, r0, r1
	movs r3, #0
	strb r3, [r0, #0]
	movs r1, #10
	strb r1, [r0, #1]
	strb r1, [r0, #2]
	strb r3, [r0, #3]
	movs r1, #1
	strb r1, [r0, #4]
	movs r1, #0
	strh r3, [r0, #6]
	movs r2, #3
	strb r2, [r0, #15]
	strb r1, [r0, #16]
	strb r1, [r0, #8]
	strb r1, [r0, #9]
	strb r1, [r0, #10]
	strb r1, [r0, #11]
	strb r1, [r0, #12]
	strb r1, [r0, #13]
	strb r1, [r0, #14]
	strb r1, [r0, #17]
	strh r3, [r0, #18]
	strh r3, [r0, #20]
	strh r3, [r0, #22]
	strh r3, [r0, #24]
	strh r3, [r0, #26]
	bx lr
	.4byte 0x030044E4

	.thumb
	.align 1, 0
	.global sub_0831506C
	.thumb_func
sub_0831506C:
	push {r4, lr}
	lsls r0, r0, #5
	ldr r2, [pc, #136]
	adds r4, r0, r2
	ldr r0, [pc, #136]
	ldrb r0, [r0, #0]
	strb r0, [r4, #0]
	ldr r0, [pc, #136]
	ldr r0, [r0, #0]
	strb r0, [r4, #2]
	ldr r0, [pc, #132]
	ldr r0, [r0, #0]
	strb r0, [r4, #1]
	ldr r0, [pc, #132]
	ldrb r0, [r0, #0]
	strb r0, [r4, #4]
	ldr r0, [pc, #128]
	ldrb r0, [r0, #0]
	strb r0, [r4, #3]
	ldr r0, [pc, #128]
	ldrh r0, [r0, #0]
	strh r0, [r4, #6]
	ldr r0, [pc, #124]
	adds r0, #92
	ldrb r0, [r0, #0]
	strb r0, [r4, #15]
	strb r1, [r4, #16]
	movs r3, #0
	adds r1, r4, #0
	adds r1, #8
	ldr r2, [pc, #112]
.L083150AA:
	ldrb r0, [r2, #0]
	adds r2, #1
	strb r0, [r1, #0]
	adds r1, #1
	adds r3, #1
	cmp r3, #5
	bls .L083150AA
	ldr r0, [pc, #100]
	ldrb r0, [r0, #0]
	strb r0, [r4, #14]
	ldr r0, [pc, #100]
	ldrh r0, [r0, #0]
	strb r0, [r4, #17]
	movs r0, #0
	movs r1, #1
	bl sub_082FB834
	strh r0, [r4, #18]
	movs r0, #0
	movs r1, #2
	bl sub_082FB834
	strh r0, [r4, #20]
	movs r0, #0
	movs r1, #3
	bl sub_082FB834
	strh r0, [r4, #22]
	movs r0, #0
	movs r1, #4
	bl sub_082FB834
	strh r0, [r4, #24]
	movs r0, #0
	movs r1, #5
	bl sub_082FB834
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030044E4
	.4byte 0x02007567
	.4byte 0x030059B4
	.4byte 0x030059B8
	.4byte 0x02007566
	.4byte 0x02007561
	.4byte 0x030058F0
	.4byte 0x0300250C
	.4byte 0x030034E4
	.4byte 0x030028EC
	.4byte 0x030034DC

	.thumb
	.align 1, 0
	.global sub_08315128
	.thumb_func
sub_08315128:
	push {r4, lr}
	movs r4, #0
	ldr r3, [pc, #16]
	ldr r2, [pc, #20]
.L08315130:
	ldrb r1, [r2, #0]
	adds r2, #1
	ldrb r0, [r3, #0]
	adds r3, #1
	cmp r1, r0
	beq .L08315148
	movs r0, #0
	b .L08315150
	add ip, fp
	lsls r0, r0, #12
	.2byte 0xf9bc @ .raw
	lsrs r5, r7, #32
.L08315148:
	adds r4, #1
	cmp r4, #7
	bls .L08315130
	movs r0, #1
.L08315150:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08315158
	.thumb_func
sub_08315158:
	push {r4, lr}
	bl sub_083151F0
	bl sub_08315128
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083151A0
	movs r1, #0
	ldr r3, [pc, #60]
	movs r2, #0
	ldr r0, [pc, #60]
.L08315170:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls .L08315170
	movs r3, #0
	ldr r2, [pc, #44]
	ldr r1, [pc, #48]
.L08315180:
	ldrb r0, [r1, #0]
	adds r1, #1
	strb r0, [r2, #0]
	adds r2, #1
	adds r3, #1
	cmp r3, #7
	bls .L08315180
	movs r4, #0
.L08315190:
	adds r0, r4, #0
	bl sub_0831502C
	adds r4, #1
	cmp r4, #3
	bls .L08315190
	bl sub_083151B4
.L083151A0:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000001FF
	.4byte 0x030044DC
	.4byte 0x083DF9BC

	.thumb
	.align 1, 0
	.global sub_083151B4
	.thumb_func
sub_083151B4:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #40]
	movs r0, #3
	bl sub_083171C4
	movs r4, #0
	ldr r5, [pc, #36]
.L083151C8:
	lsls r0, r4, #16
	lsrs r0, r0, #16
	adds r1, r5, #0
	bl sub_083173DC
	movs r0, #250
	lsls r0, r0, #2
	bl sub_08315010
	adds r5, #8
	adds r4, #1
	cmp r4, #63
	bls .L083151C8
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005874
	.4byte 0x030044DC

	.thumb
	.align 1, 0
	.global sub_083151F0
	.thumb_func
sub_083151F0:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #40]
	movs r0, #3
	bl sub_083171C4
	movs r4, #0
	ldr r5, [pc, #36]
.L08315204:
	lsls r0, r4, #16
	lsrs r0, r0, #16
	adds r1, r5, #0
	bl sub_08317324
	movs r0, #250
	lsls r0, r0, #2
	bl sub_08315010
	adds r5, #8
	adds r4, #1
	cmp r4, #63
	bls .L08315204
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005874
	.4byte 0x030044DC

	.thumb
	.align 1, 0
	.global sub_0831522C
	.thumb_func
sub_0831522C:
	push {r4, lr}
	movs r1, #0
	ldr r3, [pc, #56]
	movs r2, #0
	ldr r0, [pc, #56]
.L08315236:
	strb r2, [r0, #0]
	adds r0, #1
	adds r1, #1
	cmp r1, r3
	bls .L08315236
	movs r3, #0
	ldr r2, [pc, #44]
	ldr r1, [pc, #44]
.L08315246:
	ldrb r0, [r1, #0]
	adds r1, #1
	strb r0, [r2, #0]
	adds r2, #1
	adds r3, #1
	cmp r3, #7
	bls .L08315246
	movs r4, #0
.L08315256:
	adds r0, r4, #0
	bl sub_0831502C
	adds r4, #1
	cmp r4, #3
	bls .L08315256
	bl sub_083151B4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x000001FF
	.4byte 0x030044DC
	.4byte 0x083DF9BC

	.thumb
	.align 1, 0
	.global sub_08315278
	.thumb_func
sub_08315278:
	push {r4, r5, lr}
	movs r0, #4
	bl sub_0831715C
	ldr r1, [pc, #48]
	movs r0, #3
	bl sub_083171C4
	ldr r4, [pc, #44]
	movs r0, #62
	adds r1, r4, #0
	bl sub_083173DC
	movs r5, #250
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_08315010
	adds r4, #8
	movs r0, #63
	adds r1, r4, #0
	bl sub_083173DC
	adds r0, r5, #0
	bl sub_08315010
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005874
	.4byte 0x030046CC

	.thumb
	.align 1, 0
	.global sub_083152BC
	.thumb_func
sub_083152BC:
	ldr r0, [pc, #0]
	bx lr
	.4byte 0x030046CC

	.thumb
	.align 1, 0
	.global sub_083152C4
	.thumb_func
sub_083152C4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, [pc, #416]
	adds r0, r2, #0
	adds r0, #172
	movs r1, #0
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	adds r0, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	strb r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	strh r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	ldr r0, [pc, #392]
	str r1, [r0, #0]
	movs r6, #0
	ldr r4, [pc, #392]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315312:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L08315312
	movs r6, #0
	ldr r4, [pc, #352]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L0831533E:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L0831533E
	movs r5, #0
	ldr r2, [pc, #312]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L08315366:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L08315366
	movs r6, #0
	ldr r2, [pc, #244]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L083153AE:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L083153AE
	movs r6, #0
	ldr r7, [pc, #192]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083153EE:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L08315408:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L0831541A:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L0831541A
	adds r1, r3, #0
	cmp r1, #3
	bls .L08315408
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083153EE
	movs r1, #0
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	ldr r0, [pc, #96]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x0200796C
	.4byte 0x02007970
	.4byte 0x02007974
	.4byte 0x02007976
	.4byte 0x02007968
	.4byte 0x03005A3C
	.4byte 0x03005A40
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_083154C0
	.thumb_func
sub_083154C0:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	ldr r4, [pc, #356]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L083154D8:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #9
	bls .L083154D8
	movs r6, #0
	ldr r4, [pc, #316]
	movs r3, #0
	adds r1, r4, #0
	movs r5, #0
	adds r2, r1, #0
	adds r2, #8
.L08315504:
	strb r3, [r1, #0]
	str r3, [r2, #0]
	str r3, [r2, #4]
	str r3, [r2, #8]
	adds r0, r4, #0
	adds r0, #20
	adds r0, r5, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r2, #28
	adds r5, #28
	adds r6, #1
	cmp r6, #19
	bls .L08315504
	movs r5, #0
	ldr r2, [pc, #276]
	movs r4, #0
	adds r3, r2, #0
	adds r6, r3, #4
.L0831552C:
	lsls r1, r5, #5
	strb r4, [r3, #0]
	str r4, [r6, #0]
	adds r6, #32
	adds r0, r2, #0
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r1, r0
	str r4, [r0, #0]
	adds r0, r2, #0
	adds r0, #24
	adds r1, r1, r0
	movs r0, #18
	str r0, [r1, #0]
	str r4, [r3, #28]
	adds r3, #32
	adds r5, #1
	cmp r5, #9
	bls .L0831552C
	movs r6, #0
	ldr r2, [pc, #212]
	movs r3, #0
	adds r1, r2, #0
	movs r4, #0
	adds r5, r1, #4
.L08315574:
	strb r3, [r1, #0]
	str r3, [r5, #0]
	str r3, [r5, #4]
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #16
	adds r0, r4, r0
	str r3, [r0, #0]
	adds r0, r2, #0
	adds r0, #20
	adds r0, r4, r0
	str r3, [r0, #0]
	str r3, [r1, #24]
	adds r1, #28
	adds r5, #28
	adds r4, #28
	adds r6, #1
	cmp r6, #4
	bls .L08315574
	movs r6, #0
	ldr r7, [pc, #160]
	movs r0, #116
	mov r8, r0
	movs r4, #0
	movs r0, #112
	adds r0, r0, r7
	mov sl, r0
	movs r0, #116
	mov r9, r0
.L083155B4:
	mov r0, r8
	muls r0, r6
	adds r0, r0, r7
	strb r4, [r0, #0]
	strh r4, [r0, #2]
	strh r4, [r0, #4]
	adds r0, #106
	strb r4, [r0, #0]
	movs r1, #0
	adds r0, r6, #1
	mov ip, r0
	mov r5, r9
	muls r5, r6
.L083155CE:
	movs r2, #0
	lsls r0, r1, #1
	adds r3, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	adds r0, r0, r5
	adds r0, r0, r7
.L083155E0:
	strb r4, [r0, #0]
	adds r0, #1
	adds r2, #1
	cmp r2, #24
	bls .L083155E0
	adds r1, r3, #0
	cmp r1, #3
	bls .L083155CE
	mov r1, r8
	muls r1, r6
	adds r0, r7, #0
	adds r0, #108
	adds r0, r1, r0
	str r4, [r0, #0]
	add r1, sl
	str r4, [r1, #0]
	mov r6, ip
	cmp r6, #14
	bls .L083155B4
	movs r1, #0
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [pc, #60]
	str r1, [r0, #0]
	movs r0, #1
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02007A3C
	.4byte 0x02007B54
	.4byte 0x02008450
	.4byte 0x02008590
	.4byte 0x02007D84
	.4byte 0x0200861C
	.4byte 0x02008624
	.4byte 0x02008628
	.4byte 0x02008620
	.4byte 0x0200862C
	.4byte 0x02007A34
	.4byte 0x02007A38

	.thumb
	.align 1, 0
	.global sub_08315664
	.thumb_func
sub_08315664:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #116
	ldr r0, [pc, #120]
	ldr r1, [pc, #124]
	bl sub_08002094
	movs r0, #0
	str r0, [sp, #68]
	str r0, [sp, #72]
	str r0, [sp, #76]
	str r0, [sp, #80]
	str r0, [sp, #84]
	str r0, [sp, #64]
	ldr r0, [pc, #108]
	movs r1, #0
	adds r0, #12
.L0831568C:
	str r1, [r0, #0]
	str r1, [r0, #4]
	adds r0, #8
	ldr r2, [sp, #64]
	adds r2, #1
	str r2, [sp, #64]
	cmp r2, #19
	bls .L0831568C
	ldr r0, [pc, #84]
	movs r2, #0
	str r2, [r0, #8]
	str r2, [r0, #0]
	str r2, [r0, #4]
	adds r1, r0, #0
	adds r1, #180
	str r2, [r1, #0]
	adds r0, #184
	str r2, [r0, #0]
	str r2, [sp, #64]
	ldr r3, [pc, #68]
	ldr r0, [r3, #0]
	cmp r2, r0
	bcs .L0831571E
	ldr r4, [pc, #64]
	adds r6, r3, #0
	adds r2, r4, #0
	movs r5, #0
.L083156C2:
	ldrb r0, [r2, #0]
	cmp r0, #1
	bne .L08315704
	movs r1, #1
	str r1, [sp, #68]
	adds r0, r4, #0
	adds r0, #12
	adds r1, r5, r0
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L08315700
	strb r0, [r2, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08315704
	add r0, sp, #68
	ldrb r0, [r0, #0]
	strb r0, [r2, #28]
	b .L08315704
	mov ip, fp
	lsls r0, r0, #12
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	strh r4, [r3, #48]
	lsls r0, r0, #8
	ldrb r4, [r7, #8]
	lsls r0, r0, #8
.L08315700:
	subs r0, #1
	str r0, [r1, #0]
.L08315704:
	ldr r1, [sp, #68]
	cmp r1, #0
	bne .L0831571E
	adds r2, #28
	adds r5, #28
	ldr r3, [sp, #64]
	adds r3, #1
	str r3, [sp, #64]
	adds r3, r6, #0
	ldr r0, [r3, #0]
	ldr r1, [sp, #64]
	cmp r1, r0
	bcc .L083156C2
.L0831571E:
	movs r7, #0
	ldr r1, [pc, #116]
	ldr r0, [r1, #0]
	ldr r2, [sp, #64]
	lsls r2, r2, #3
	str r2, [sp, #92]
	cmp r7, r0
	bcs .L083157CA
	ldr r5, [pc, #108]
	mov r9, r1
.L08315732:
	lsls r0, r7, #3
	subs r0, r0, r7
	lsls r4, r0, #2
	adds r3, r4, r5
	mov r8, r3
	ldrb r0, [r3, #0]
	mov ip, r0
	adds r6, r7, #1
	cmp r0, #1
	bne .L083157C0
	adds r0, r5, #0
	adds r0, #24
	adds r0, r4, r0
	ldr r0, [r0, #0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq .L0831575A
	movs r1, #1
	str r1, [sp, #72]
.L0831575A:
	adds r0, r5, #0
	adds r0, #12
	adds r3, r4, r0
	ldr r1, [r3, #0]
	cmp r1, #0
	bne .L083157BC
	adds r0, #8
	adds r2, r4, r0
	ldr r0, [r2, #0]
	cmp r0, #0
	beq .L083157A0
	adds r0, r5, #0
	adds r0, #16
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	subs r0, #1
	str r0, [r2, #0]
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r3, ip
	strb r3, [r0, #0]
	b .L083157C0
	strh r0, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r2, #13]
	lsls r0, r0, #8
.L083157A0:
	mov r4, r8
	strb r1, [r4, #0]
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, #1
	cmp r7, r0
	bcs .L083157C0
	lsls r0, r6, #3
	subs r0, r0, r6
	lsls r0, r0, #2
	adds r0, r0, r5
	mov r2, ip
	strb r2, [r0, #0]
	b .L083157C0
.L083157BC:
	subs r0, r1, #1
	str r0, [r3, #0]
.L083157C0:
	adds r7, r6, #0
	mov r3, r9
	ldr r0, [r3, #0]
	cmp r7, r0
	bcc .L08315732
.L083157CA:
	movs r4, #0
	mov r9, r4
	ldr r3, [pc, #80]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcs .L0831589A
	ldr r6, [pc, #76]
	ldr r5, [pc, #76]
	mov ip, r5
	adds r5, r6, #0
	movs r7, #0
	movs r0, #255
	mov sl, r0
.L083157E4:
	ldrb r1, [r5, #0]
	cmp r1, #1
	bne .L08315884
	movs r2, #1
	str r2, [sp, #84]
	mov r8, ip
	mov r0, r8
	adds r0, #176
	strb r2, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	bne .L08315880
	adds r0, r6, #4
	adds r4, r7, r0
	ldr r0, [r4, #0]
	cmp r0, #0
	bne .L0831582C
	strb r1, [r5, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r9, r0
	bcs .L08315884
	add r0, sp, #84
	ldrb r0, [r0, #0]
	strb r0, [r5, #28]
	b .L08315884
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #44]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L0831582C:
	adds r0, r6, #0
	adds r0, #16
	adds r2, r7, r0
	subs r0, #8
	adds r0, r7, r0
	ldr r1, [r2, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r2, #0]
	adds r0, r6, #0
	adds r0, #20
	adds r3, r7, r0
	ldr r0, [r3, #0]
	ldr r1, [r5, #12]
	adds r0, r0, r1
	str r0, [r3, #0]
	ldr r0, [r2, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315862
	mov r0, r8
	adds r0, #180
	str r1, [r0, #0]
	ldr r0, [r2, #0]
	mov r1, sl
	ands r0, r1
	str r0, [r2, #0]
.L08315862:
	ldr r0, [r3, #0]
	asrs r1, r0, #8
	cmp r1, #0
	beq .L08315878
	mov r0, ip
	adds r0, #184
	str r1, [r0, #0]
	ldr r0, [r3, #0]
	mov r2, sl
	ands r0, r2
	str r0, [r3, #0]
.L08315878:
	ldr r0, [r4, #0]
	subs r0, #1
	str r0, [r4, #0]
	b .L08315884
.L08315880:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315884:
	ldr r3, [sp, #84]
	cmp r3, #0
	bne .L0831589A
	adds r5, #28
	adds r7, #28
	movs r4, #1
	add r9, r4
	ldr r3, [pc, #108]
	ldr r0, [r3, #0]
	cmp r9, r0
	bcc .L083157E4
.L0831589A:
	movs r5, #0
	str r5, [sp, #88]
	ldr r3, [pc, #100]
	ldr r0, [r3, #0]
	cmp r5, r0
	bcc .L083158A8
	b .L08315A32
.L083158A8:
	ldr r0, [pc, #92]
	mov r9, r0
	str r5, [sp, #100]
	mov r1, r9
	adds r1, #106
	str r1, [sp, #104]
	mov sl, r9
.L083158B6:
	mov r2, sl
	ldrb r2, [r2, #0]
	cmp r2, #1
	beq .L083158C0
	b .L08315A0C
.L083158C0:
	movs r4, #1
	str r4, [sp, #76]
	mov r0, r9
	adds r0, #112
	ldr r5, [sp, #100]
	adds r1, r5, r0
	ldr r2, [r1, #0]
	cmp r2, #0
	beq .L083158D4
	b .L08315A08
.L083158D4:
	subs r0, #4
	adds r0, r5, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315914
	mov r0, sl
	strb r2, [r0, #0]
	ldr r1, [pc, #40]
	str r2, [r1, #0]
	ldr r4, [pc, #40]
	str r2, [r4, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	ldr r5, [sp, #88]
	cmp r5, r0
	bcc .L083158F6
	b .L08315A0C
.L083158F6:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	ldr r1, [sp, #104]
	strb r0, [r1, #10]
	b .L08315A0C
	strh r4, [r5, #48]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
.L08315914:
	ldr r3, [pc, #32]
	ldr r1, [r3, #0]
	cmp r1, #24
	bls .L08315940
	ldr r1, [sp, #104]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L0831594C
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	adds r0, #1
	ldr r4, [sp, #104]
	ldrb r4, [r4, #0]
	cmp r0, r4
	bcs .L0831594C
	str r2, [r3, #0]
	str r0, [r1, #0]
	b .L0831594C
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315940:
	ldr r5, [sp, #76]
	ands r0, r5
	cmp r0, #0
	beq .L0831594C
	adds r0, r1, #1
	str r0, [r3, #0]
.L0831594C:
	ldr r1, [pc, #120]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315974
	movs r0, #25
	ldr r1, [pc, #112]
	str r0, [r1, #0]
	ldr r2, [sp, #104]
	ldrb r0, [r2, #0]
	subs r0, #1
	ldr r3, [pc, #104]
	str r0, [r3, #0]
	mov r0, r9
	adds r0, #108
	ldr r4, [sp, #100]
	adds r0, r4, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315974:
	movs r6, #0
	ldr r3, [pc, #88]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcs .L083159F6
	ldr r2, [pc, #80]
	movs r0, #116
	ldr r5, [sp, #88]
	adds r1, r5, #0
	muls r1, r0
	adds r0, r2, #6
	adds r5, r1, r0
	mov r8, r6
	adds r7, r5, #0
	adds r4, r1, r2
.L08315994:
	ldrb r0, [r5, #0]
	adds r5, #25
	cmp r0, #0
	beq .L083159E6
	ldr r0, [r3, #0]
	cmp r6, r0
	bne .L083159D8
	add r0, sp, #4
	movs r1, #0
	movs r2, #25
	bl memset
	mov r0, r8
	adds r1, r7, r0
	ldr r3, [pc, #24]
	ldr r2, [r3, #0]
	add r0, sp, #4
	bl strncpy
	ldrh r0, [r4, #2]
	ldrh r2, [r4, #4]
	adds r1, r2, r6
	add r2, sp, #4
	bl sub_08004914
	b .L083159E6
	mov lr, fp
	lsls r0, r0, #12
	ldrb r0, [r7, #8]
	lsls r0, r0, #8
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083159D8:
	ldrh r0, [r4, #2]
	ldrh r3, [r4, #4]
	adds r1, r3, r6
	mov r3, r8
	adds r2, r7, r3
	bl sub_08004914
.L083159E6:
	movs r0, #25
	add r8, r0
	adds r6, #1
	ldr r3, [pc, #20]
	ldr r0, [r3, #0]
	adds r0, #1
	cmp r6, r0
	bcc .L08315994
.L083159F6:
	mov r1, r9
	adds r1, #108
	ldr r2, [sp, #100]
	adds r1, r2, r1
	ldr r0, [r1, #0]
	subs r0, #1
	b .L08315A0A
	ldrb r4, [r6, #8]
	lsls r0, r0, #8
.L08315A08:
	subs r0, r2, #1
.L08315A0A:
	str r0, [r1, #0]
.L08315A0C:
	ldr r3, [sp, #76]
	cmp r3, #0
	bne .L08315A32
	ldr r4, [sp, #100]
	adds r4, #116
	str r4, [sp, #100]
	ldr r5, [sp, #104]
	adds r5, #116
	str r5, [sp, #104]
	movs r0, #116
	add sl, r0
	ldr r1, [sp, #88]
	adds r1, #1
	str r1, [sp, #88]
	ldr r3, [pc, #128]
	ldr r0, [r3, #0]
	cmp r1, r0
	bcs .L08315A32
	b .L083158B6
.L08315A32:
	movs r2, #0
	mov r8, r2
	ldr r3, [pc, #120]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcc .L08315A40
	b .L08315BBA
.L08315A40:
	ldr r5, [pc, #112]
	movs r4, #1
	str r4, [sp, #96]
	movs r0, #32
	mov sl, r0
	movs r7, #0
	adds r6, r5, #0
	movs r1, #16
	adds r1, r1, r6
	mov r9, r1
.L08315A54:
	ldrb r2, [r6, #0]
	cmp r2, #1
	beq .L08315A5C
	b .L08315B98
.L08315A5C:
	movs r4, #1
	str r4, [sp, #80]
	adds r0, r5, #0
	adds r0, #28
	adds r2, r7, r0
	ldr r1, [r2, #0]
	cmp r1, #0
	beq .L08315A6E
	b .L08315B94
.L08315A6E:
	subs r0, #8
	adds r0, r7, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315B3C
	strb r1, [r6, #0]
	ldr r0, [r3, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315A94
	ldr r0, [r6, #44]
	ldr r4, [sp, #96]
	cmp r0, #0
	bne .L08315AC0
	mov r0, sl
	add r0, r9
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08315AC0
.L08315A94:
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315B1C
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B1C
	movs r0, #1
	bl sub_083100D4
	b .L08315B1C
	strh r4, [r4, #48]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r2, #34]
	lsls r0, r0, #8
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
.L08315AC0:
	lsls r2, r4, #5
	ldr r1, [pc, #32]
	adds r0, r2, r1
	ldr r1, [r6, #12]
	ldr r0, [r0, #0]
	cmp r1, r0
	bhi .L08315ADC
	mov r3, r9
	adds r0, r7, r3
	adds r1, r2, r3
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bls .L08315AE8
.L08315ADC:
	movs r0, #1
	bl sub_083100D4
	b .L08315AEE
	strh r4, [r3, #34]
	lsls r0, r0, #8
.L08315AE8:
	movs r0, #0
	bl sub_083100D4
.L08315AEE:
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	ldr r3, [pc, #48]
	adds r2, r4, r3
	ldr r2, [r2, #0]
	str r2, [sp, #112]
	adds r2, r4, #0
	add r2, r9
	ldr r3, [r2, #0]
	mov ip, r3
	ldr r2, [pc, #36]
	adds r4, r4, r2
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	ldr r2, [sp, #112]
	bl sub_0830FFD4
.L08315B1C:
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	subs r0, #1
	cmp r8, r0
	bcs .L08315B82
	mov r3, sl
	adds r1, r3, r5
	movs r0, #1
	strb r0, [r1, #0]
	b .L08315B82
	strh r4, [r3, #34]
	lsls r0, r0, #8
	strh r0, [r5, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L08315B3C:
	ldr r4, [r6, #12]
	adds r2, r5, #0
	adds r2, #16
	cmp r4, #0
	bne .L08315B50
	mov r1, r9
	adds r0, r7, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L08315B6C
.L08315B50:
	adds r0, r5, #4
	adds r0, r7, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r7, r1
	ldr r1, [r1, #0]
	adds r2, r7, r2
	ldr r3, [r2, #0]
	ldr r2, [r6, #24]
	str r2, [sp, #0]
	adds r2, r4, #0
	bl sub_0830FFD4
.L08315B6C:
	ldr r1, [pc, #32]
	movs r0, #3
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315B82
	adds r0, r5, #0
	adds r0, #20
	adds r0, r7, r0
	movs r1, #1
	str r1, [r0, #0]
.L08315B82:
	adds r1, r5, #0
	adds r1, #20
	adds r1, r7, r1
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	b .L08315B98
	mov lr, fp
	lsls r0, r0, #12
.L08315B94:
	subs r0, r1, #1
	str r0, [r2, #0]
.L08315B98:
	ldr r2, [sp, #80]
	cmp r2, #0
	bne .L08315BBA
	ldr r3, [sp, #96]
	adds r3, #1
	str r3, [sp, #96]
	movs r4, #32
	add sl, r4
	adds r7, #32
	adds r6, #32
	movs r0, #1
	add r8, r0
	ldr r3, [pc, #248]
	ldr r0, [r3, #0]
	cmp r8, r0
	bcs .L08315BBA
	b .L08315A54
.L08315BBA:
	ldr r3, [pc, #244]
	ldrh r1, [r3, #0]
	cmp r1, #0
	beq .L08315C1A
	ldr r4, [pc, #240]
	ldrh r2, [r4, #0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq .L08315C1A
	movs r5, #0
	str r5, [sp, #68]
	str r5, [sp, #72]
	str r5, [sp, #76]
	str r5, [sp, #80]
	str r5, [sp, #84]
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315BEE
	ldr r1, [pc, #204]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BEE:
	movs r0, #2
	ldrh r1, [r3, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315BFE
	ldr r1, [pc, #192]
	movs r0, #20
	strh r0, [r1, #0]
.L08315BFE:
	movs r0, #1
	ldrh r2, [r3, #0]
	ands r0, r2
	cmp r0, #0
	beq .L08315C0E
	ldr r1, [pc, #180]
	movs r0, #20
	strh r0, [r1, #0]
.L08315C0E:
	movs r1, #0
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r3, #0]
	ldr r0, [pc, #172]
	strb r1, [r0, #0]
.L08315C1A:
	ldr r5, [sp, #68]
	cmp r5, #0
	beq .L08315C22
	b .L08316008
.L08315C22:
	ldr r0, [sp, #76]
	cmp r0, #0
	beq .L08315C2A
	b .L08316008
.L08315C2A:
	ldr r1, [sp, #72]
	cmp r1, #0
	beq .L08315C32
	b .L08316008
.L08315C32:
	ldr r2, [sp, #80]
	cmp r2, #0
	beq .L08315C3A
	b .L08316008
.L08315C3A:
	ldr r3, [sp, #84]
	cmp r3, #0
	beq .L08315C42
	b .L08316008
.L08315C42:
	ldr r3, [pc, #128]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L08315C4C
	b .L08315E1C
.L08315C4C:
	ldr r1, [pc, #120]
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08315D00
	subs r0, #1
	str r0, [r1, #0]
	add r6, sp, #32
	ldr r0, [pc, #80]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r5, [pc, #104]
	adds r1, r6, #0
	adds r0, r0, r5
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r4}
	stmia r1!, {r2, r4}
	ldr r0, [pc, #92]
	ldr r4, [r0, #0]
	ldr r1, [pc, #92]
	movs r0, #1
	str r0, [r1, #0]
	bl sub_083154C0
	bl sub_0831A7F4
	adds r5, #32
	ldrb r0, [r5, #0]
	cmp r0, #0
	beq .L08315CF8
	ldr r1, [r5, #12]
	cmp r1, #0
	beq .L08315CF8
	ldr r5, [r5, #16]
	cmp r5, #0
	beq .L08315CF8
	ldr r0, [r6, #12]
	cmp r0, r1
	bhi .L08315CA4
	ldr r0, [r6, #16]
	cmp r0, r5
	bls .L08315CD8
.L08315CA4:
	movs r0, #1
	bl sub_083100D4
	b .L08315CDE
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	mov lr, fp
	lsls r0, r0, #12
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r4, [r5, #5]
	lsls r0, r0, #8
	ldrb r0, [r5, #5]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315CD8:
	movs r0, #0
	bl sub_083100D4
.L08315CDE:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L0831600E
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315CF8:
	movs r0, #1
	bl sub_083100D4
	b .L0831600E
.L08315D00:
	ldr r5, [pc, #144]
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08315DDC
	ldr r0, [pc, #140]
	ldr r0, [r0, #0]
	lsls r0, r0, #5
	ldr r6, [pc, #140]
	add r1, sp, #4
	adds r0, r0, r6
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r2, r3, r4}
	stmia r1!, {r2, r3, r4}
	ldmia r0!, {r3, r4}
	stmia r1!, {r3, r4}
	bl sub_083154C0
	ldr r4, [pc, #120]
	adds r0, r4, #0
	adds r0, #172
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	ldr r0, [pc, #88]
	ldr r1, [r5, #0]
	str r1, [r0, #0]
	ldr r2, [sp, #80]
	str r2, [r5, #0]
	bl sub_0831A7E8
	ldr r0, [pc, #80]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08315D68
	adds r0, r4, #0
	adds r0, #176
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
.L08315D68:
	adds r1, r6, #0
	adds r1, #32
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08315DCC
	ldr r2, [r1, #12]
	cmp r2, #0
	beq .L08315DCC
	ldr r1, [r1, #16]
	cmp r1, #0
	beq .L08315DCC
	ldr r0, [sp, #16]
	cmp r0, r2
	bhi .L08315D8A
	ldr r0, [sp, #20]
	cmp r0, r1
	bls .L08315DAC
.L08315D8A:
	movs r0, #1
	bl sub_083100D4
	b .L08315DB2
	movs r0, r0
	ldrh r0, [r0, r1]
	lsls r0, r0, #12
	strh r0, [r5, #48]
	lsls r0, r0, #8
	strh r0, [r6, #32]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	strh r0, [r2, #44]
	lsls r0, r0, #8
.L08315DAC:
	movs r0, #0
	bl sub_083100D4
.L08315DB2:
	ldr r4, [pc, #20]
	ldr r0, [r4, #4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #12]
	ldr r3, [r4, #16]
	ldr r4, [r4, #24]
	str r4, [sp, #0]
	bl sub_0830FFD4
	b .L08315DD2
	movs r0, r0
	strh r0, [r2, #34]
	lsls r0, r0, #8
.L08315DCC:
	movs r0, #1
	bl sub_083100D4
.L08315DD2:
	ldr r1, [pc, #4]
	movs r0, #2
	b .L0831600C
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315DDC:
	ldr r4, [pc, #56]
	adds r0, r4, #0
	adds r0, #172
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	adds r0, #1
	add r1, sp, #80
	ldrb r1, [r1, #0]
	strb r1, [r0, #0]
	adds r0, #1
	add r2, sp, #80
	ldrb r2, [r2, #0]
	strb r2, [r0, #0]
	adds r0, #1
	add r3, sp, #80
	ldrb r3, [r3, #0]
	strb r3, [r0, #0]
	adds r0, #1
	add r5, sp, #80
	ldrb r5, [r5, #0]
	strb r5, [r0, #0]
	movs r0, #1
	bl sub_083100D4
	bl sub_083154C0
	ldr r0, [sp, #80]
	str r0, [r4, #0]
	b .L0831600E
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E1C:
	ldr r0, [pc, #88]
	ldr r2, [pc, #92]
	ldrh r1, [r2, #0]
	ldrh r0, [r0, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E98
	add r4, sp, #80
	ldrb r4, [r4, #0]
	strb r4, [r3, #0]
	ldr r0, [pc, #76]
	ldr r5, [sp, #80]
	str r5, [r0, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08315E44
	ldr r1, [pc, #68]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E44:
	movs r0, #2
	ldrh r1, [r2, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08315E54
	ldr r1, [pc, #56]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E54:
	movs r0, #1
	ldrh r3, [r2, #0]
	ands r0, r3
	cmp r0, #0
	beq .L08315E64
	ldr r1, [pc, #44]
	movs r0, #20
	strh r0, [r1, #0]
.L08315E64:
	add r4, sp, #80
	ldrh r4, [r4, #0]
	strh r4, [r2, #0]
	ldr r0, [pc, #36]
	add r5, sp, #80
	ldrh r5, [r5, #0]
	strh r5, [r0, #0]
	ldr r1, [pc, #32]
	movs r0, #4
	b .L0831600C
	mov lr, fp
	lsls r0, r0, #12
	ldrb r4, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	ldr r4, [r7, r7]
	lsls r0, r0, #12
	ldr r2, [r7, r7]
	lsls r0, r0, #12
	ldr r0, [r7, r7]
	lsls r0, r0, #12
	ldrb r6, [r6, #5]
	lsls r0, r0, #8
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
.L08315E98:
	ldr r1, [pc, #44]
	movs r0, #3
	str r0, [r1, #0]
	ldr r0, [pc, #44]
	ldr r0, [r0, #0]
	movs r1, #10
	bl __umodsi3
	cmp r0, #0
	bne .L08315F38
	ldr r2, [pc, #32]
	ldr r0, [r2, #0]
	cmp r0, #0
	bne .L08315ED8
	ldr r1, [pc, #28]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #7
	bls .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	movs r0, #1
	b .L08315EEA
	ldrb r0, [r7, #5]
	lsls r0, r0, #8
	ldr r0, [r6, r7]
	lsls r0, r0, #12
	ldrh r0, [r1, r1]
	lsls r0, r0, #12
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
.L08315ED8:
	ldr r1, [pc, #272]
	ldr r0, [r1, #0]
	subs r0, #1
	str r0, [r1, #0]
	cmp r0, #4
	bhi .L08315EEC
	movs r0, #6
	str r0, [r1, #0]
	ldr r0, [sp, #80]
.L08315EEA:
	str r0, [r2, #0]
.L08315EEC:
	ldr r0, [pc, #252]
	ldr r0, [r0, #0]
	ldr r1, [pc, #252]
	movs r2, #0
	bl Glyph_Alloc
	adds r3, r0, #0
	lsls r3, r3, #16
	lsrs r3, r3, #16
	ldr r2, [pc, #244]
	ldr r0, [pc, #244]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r1, r2, #4
	adds r1, r4, r1
	adds r0, r2, #0
	adds r0, #12
	adds r0, r4, r0
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	subs r1, #1
	adds r0, r2, #0
	adds r0, #8
	adds r0, r4, r0
	adds r2, #16
	adds r4, r4, r2
	ldr r2, [r0, #0]
	ldr r0, [r4, #0]
	adds r2, r2, r0
	subs r2, #1
	movs r0, #224
	lsls r0, r0, #8
	str r0, [sp, #0]
	movs r0, #31
	bl sub_0830F78C
.L08315F38:
	ldr r6, [pc, #192]
	ldr r0, [r6, #0]
	cmp r0, #0
	beq .L0831600E
	ldr r5, [pc, #176]
	ldr r0, [pc, #180]
	ldr r4, [r0, #0]
	subs r4, #1
	lsls r4, r4, #5
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	adds r1, r5, #0
	adds r1, #8
	adds r1, r4, r1
	ldr r1, [r1, #0]
	adds r2, r5, #0
	adds r2, #12
	adds r2, r4, r2
	ldr r2, [r2, #0]
	adds r3, r5, #0
	adds r3, #16
	adds r3, r4, r3
	ldr r3, [r3, #0]
	adds r5, #24
	adds r4, r4, r5
	ldr r4, [r4, #0]
	str r4, [sp, #0]
	bl sub_0830FFD4
	ldr r4, [r6, #0]
	cmp r4, #0
	beq .L0831600E
.L08315F7A:
	movs r5, #0
	ldr r2, [pc, #128]
	ldr r0, [r2, #0]
	subs r0, r0, r4
	movs r1, #116
	muls r0, r1
	ldr r1, [pc, #124]
	adds r0, r0, r1
	adds r0, #106
	subs r3, r4, #1
	mov sl, r3
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcs .L08315FE4
	adds r7, r1, #0
	mov r9, r2
	movs r0, #116
	mov r8, r0
	adds r3, r7, #6
	movs r6, #0
.L08315FA2:
	mov r1, r9
	ldr r0, [r1, #0]
	subs r0, r0, r4
	mov r2, r8
	muls r2, r0
	adds r0, r6, r2
	adds r0, r0, r3
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08315FCA
	adds r1, r2, r7
	ldrh r0, [r1, #2]
	ldrh r1, [r1, #4]
	adds r1, r1, r5
	adds r2, r2, r3
	adds r2, r2, r6
	str r3, [sp, #108]
	bl sub_08004914
	ldr r3, [sp, #108]
.L08315FCA:
	adds r6, #25
	adds r5, #1
	mov r2, r9
	ldr r0, [r2, #0]
	subs r0, r0, r4
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r7
	adds r0, #106
	ldrb r0, [r0, #0]
	cmp r5, r0
	bcc .L08315FA2
.L08315FE4:
	mov r4, sl
	cmp r4, #0
	bne .L08315F7A
	b .L0831600E
	ldrh r4, [r0, r1]
	lsls r0, r0, #12
	stmia r7!, {r3, r4, r5, r6}
	lsrs r5, r7, #32
	strh r0, [r2, #34]
	lsls r0, r0, #8
	strh r0, [r5, #48]
	lsls r0, r0, #8
	ldrb r0, [r6, #5]
	lsls r0, r0, #8
	strh r4, [r4, #48]
	lsls r0, r0, #8
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L08316008:
	ldr r1, [pc, #124]
	movs r0, #5
.L0831600C:
	str r0, [r1, #0]
.L0831600E:
	ldr r2, [pc, #120]
	ldr r1, [pc, #120]
	ldr r4, [sp, #92]
	ldr r5, [sp, #64]
	subs r0, r4, r5
	lsls r0, r0, #2
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #4]
	movs r0, #0
	str r0, [sp, #64]
	ldr r1, [pc, #104]
	ldr r0, [r1, #0]
	ldr r3, [sp, #64]
	cmp r3, r0
	bcs .L08316074
	ldr r5, [pc, #96]
	adds r7, r2, #0
	adds r7, #16
	adds r6, r1, #0
	adds r3, r5, #0
	movs r4, #0
.L0831603C:
	ldrb r0, [r3, #0]
	cmp r0, #1
	bne .L08316064
	ldr r1, [r2, #8]
	adds r0, r1, #1
	str r0, [r2, #8]
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #12
	adds r1, r1, r0
	adds r0, r5, #4
	adds r0, r4, r0
	ldr r0, [r0, #0]
	str r0, [r1, #0]
	ldr r0, [r2, #8]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldr r1, [r3, #8]
	str r1, [r0, #0]
.L08316064:
	adds r3, #28
	adds r4, #28
	ldr r1, [sp, #64]
	adds r1, #1
	str r1, [sp, #64]
	ldr r0, [r6, #0]
	cmp r1, r0
	bcc .L0831603C
.L08316074:
	ldr r0, [pc, #16]
	add sp, #116
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007978
	.4byte 0x02007A3C
	.4byte 0x02008620
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316098
	.thumb_func
sub_08316098:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	ldr r0, [pc, #8]
	ldr r1, [r0, #0]
	cmp r1, #9
	bls .L083160B0
	movs r0, #0
	b .L083160F2
	strh r4, [r3, #48]
	lsls r0, r0, #8
.L083160B0:
	adds r2, r1, #1
	str r2, [r0, #0]
	ldr r0, [pc, #64]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r3, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r6, [r0, #0]
	cmp r2, #1
	bne .L083160F0
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L083160F0:
	movs r0, #1
.L083160F2:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.4byte 0x02007A3C

	.thumb
	.align 1, 0
	.global sub_083160FC
	.thumb_func
sub_083160FC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r7, [sp, #20]
	ldr r5, [pc, #8]
	ldr r1, [r5, #0]
	cmp r1, #19
	bls .L08316114
	movs r0, #0
	b .L0831616C
	strh r0, [r4, #48]
	lsls r0, r0, #8
.L08316114:
	adds r0, r1, #1
	str r0, [r5, #0]
	ldr r0, [pc, #88]
	mov ip, r0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #2
	mov r0, ip
	adds r0, #4
	adds r0, r1, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r1, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r1, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r1, r0
	str r2, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r1, r0
	str r3, [r0, #0]
	movs r2, #1
	ands r3, r2
	cmp r3, #0
	beq .L08316160
	mov r3, ip
	adds r0, r1, r3
	strb r2, [r0, #0]
.L08316160:
	ldr r0, [r5, #0]
	cmp r0, #1
	bne .L0831616A
	mov r1, ip
	strb r0, [r1, #0]
.L0831616A:
	movs r0, #1
.L0831616C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02007B54

	.thumb
	.align 1, 0
	.global sub_08316178
	.thumb_func
sub_08316178:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	mov ip, r2
	adds r7, r3, #0
	ldr r4, [pc, #8]
	ldr r1, [r4, #0]
	cmp r1, #14
	bls .L08316198
	movs r0, #0
	b .L08316278
	strh r4, [r4, #48]
	lsls r0, r0, #8
.L08316198:
	adds r0, r1, #1
	str r0, [r4, #0]
	ldr r3, [pc, #64]
	movs r0, #116
	mov r8, r0
	mov r0, r8
	muls r0, r1
	adds r1, r0, #0
	adds r2, r1, r3
	strh r5, [r2, #2]
	strh r6, [r2, #4]
	adds r0, r3, #0
	adds r0, #108
	adds r0, r1, r0
	str r7, [r0, #0]
	adds r0, r3, #0
	adds r0, #112
	adds r1, r1, r0
	ldr r0, [sp, #28]
	str r0, [r1, #0]
	movs r5, #0
	adds r2, #106
	movs r0, #1
	strb r0, [r2, #0]
	mov r1, ip
	cmp r1, #0
	bne .L083161E4
	ldr r0, [r4, #0]
	subs r0, #1
	mov r1, r8
	muls r1, r0
	adds r0, r1, #0
	adds r0, r0, r3
	movs r1, #0
	strb r1, [r0, #6]
	b .L0831626A
	ldrb r4, [r0, #22]
	lsls r0, r0, #8
.L083161E4:
	adds r0, r3, #6
	mov r8, r0
	mov r9, r3
	mov r7, r9
	adds r6, r4, #0
	mov r3, ip
.L083161F0:
	ldrb r1, [r3, #0]
	cmp r1, #10
	bne .L08316232
	ldr r0, [r6, #0]
	subs r0, #1
	movs r4, #116
	adds r2, r0, #0
	muls r2, r4
	adds r0, r2, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	cmp r1, #3
	bhi .L08316230
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	movs r1, #0
	strb r1, [r0, #0]
	ldr r0, [r6, #0]
	subs r0, #1
	muls r0, r4
	adds r0, r0, r7
	adds r0, #106
	ldrb r1, [r0, #0]
	adds r1, #1
	strb r1, [r0, #0]
	movs r5, #0
.L08316230:
	adds r3, #1
.L08316232:
	ldr r0, [r6, #0]
	subs r0, #1
	movs r1, #116
	adds r2, r0, #0
	muls r2, r1
	mov r1, r9
	adds r0, r2, r1
	adds r0, #106
	ldrb r1, [r0, #0]
	subs r1, #1
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r1
	adds r0, r5, r0
	adds r0, r0, r2
	add r0, r8
	ldrb r1, [r3, #0]
	strb r1, [r0, #0]
	ldrb r0, [r3, #0]
	cmp r0, #0
	beq .L0831626A
	adds r5, #1
	adds r3, #1
	mov r0, ip
	adds r0, #99
	cmp r3, r0
	bls .L083161F0
.L0831626A:
	ldr r0, [pc, #24]
	ldr r1, [r0, #0]
	cmp r1, #1
	bne .L08316276
	ldr r0, [pc, #20]
	strb r1, [r0, #0]
.L08316276:
	movs r0, #1
.L08316278:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008624
	.4byte 0x02007D84

	.thumb
	.align 1, 0
	.global sub_0831628C
	.thumb_func
sub_0831628C:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	ldr r1, [pc, #12]
	ldr r0, [r1, #0]
	cmp r0, #9
	bls .L083162A8
	movs r0, #0
	b .L083162FC
	movs r0, r0
	strh r0, [r5, #48]
	lsls r0, r0, #8
.L083162A8:
	adds r3, r0, #1
	str r3, [r1, #0]
	ldr r1, [pc, #84]
	mov ip, r1
	lsls r2, r0, #5
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	str r4, [r0, #0]
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	str r5, [r0, #0]
	mov r0, ip
	adds r0, #12
	adds r0, r2, r0
	str r6, [r0, #0]
	mov r0, ip
	adds r0, #16
	adds r0, r2, r0
	str r7, [r0, #0]
	mov r0, ip
	adds r0, #24
	adds r0, r2, r0
	ldr r1, [sp, #20]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #20
	adds r0, r2, r0
	ldr r1, [sp, #24]
	str r1, [r0, #0]
	mov r0, ip
	adds r0, #28
	adds r0, r2, r0
	ldr r1, [sp, #28]
	str r1, [r0, #0]
	cmp r3, #1
	bne .L083162FA
	mov r1, ip
	adds r0, r2, r1
	strb r3, [r0, #0]
.L083162FA:
	movs r0, #1
.L083162FC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02008450

	.thumb
	.align 1, 0
	.global sub_08316308
	.thumb_func
sub_08316308:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r0
	mov r9, r1
	adds r7, r2, #0
	mov sl, r3
	ldr r0, [pc, #12]
	ldr r1, [r0, #0]
	cmp r1, #4
	bls .L0831632C
	movs r0, #0
	b .L0831637A
	movs r0, r0
	strh r4, [r5, #48]
	lsls r0, r0, #8
.L0831632C:
	adds r2, r1, #1
	mov r8, r2
	str r2, [r0, #0]
	ldr r6, [pc, #84]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r5, r0, #2
	adds r4, r6, #0
	adds r4, #8
	adds r4, r5, r4
	mov r1, ip
	lsls r0, r1, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r4, r6, #0
	adds r4, #12
	adds r4, r5, r4
	mov r2, r9
	lsls r0, r2, #8
	adds r1, r7, #0
	bl __divsi3
	str r0, [r4, #0]
	adds r0, r6, #4
	adds r0, r5, r0
	str r7, [r0, #0]
	adds r0, r6, #0
	adds r0, #24
	adds r0, r5, r0
	mov r1, sl
	str r1, [r0, #0]
	mov r2, r8
	cmp r2, #1
	bne .L08316378
	adds r0, r5, r6
	strb r2, [r0, #0]
.L08316378:
	movs r0, #1
.L0831637A:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x02008590

	.thumb
	.align 1, 0
	.global sub_0831638C
	.thumb_func
sub_0831638C:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #8]
	str r4, [r0, #0]
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x03005A3C

	.thumb
	.align 1, 0
	.global sub_083163A8
	.thumb_func
sub_083163A8:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #188
	adds r4, r0, #0
	bl sub_083152C4
	bl sub_0831A7F4
	ldr r0, [pc, #104]
	str r4, [r0, #0]
	ldr r1, [pc, #104]
	ldr r0, [r1, #52]
	asrs r5, r0, #8
	ldr r0, [r1, #56]
	asrs r4, r0, #8
	add r6, sp, #172
	add r0, sp, #176
	mov r9, r0
	movs r0, #173
	add r0, sp
	mov r8, r0
	adds r7, r1, #0
.L083163D8:
	bl VBlankIntrWait
	bl sub_08315664
	adds r1, r0, #0
	mov r0, sp
	movs r2, #188
	bl memcpy
	bl sub_080043B4
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L083163F8
	bl sub_08311F7C
.L083163F8:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08316444
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316438
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [pc, #36]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	ldr r2, [pc, #28]
	ldr r2, [r2, #0]
	adds r1, r1, r2
	bl sub_08301D98
	ldr r0, [r7, #52]
	asrs r5, r0, #8
	ldr r0, [r7, #56]
	asrs r4, r0, #8
	b .L08316458
	ldrh r4, [r7, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r7, r3]
	lsls r0, r0, #12
	ldr r4, [r7, r3]
	lsls r0, r0, #12
.L08316438:
	ldr r0, [pc, #4]
	bl sub_08312174
	b .L08316458
	movs r5, #12
	lsls r0, r0, #12
.L08316444:
	add r0, sp, #180
	ldr r0, [r0, #0]
	adds r5, r5, r0
	add r0, sp, #184
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08301D98
.L08316458:
	ldrb r0, [r6, #0]
	cmp r0, #0
	beq .L08316468
	ldr r1, [sp, #4]
	movs r0, #0
	bl sub_082F2760
	b .L0831646E
.L08316468:
	movs r0, #0
	bl sub_082F234C
.L0831646E:
	mov r1, r8
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831647A
	bl sub_082EA2DC
.L0831647A:
	bl sub_082F4BBC
	movs r0, #0
	bl sub_082F27E8
	bl sub_082EA3A4
	bl sub_082F4BEC
	ldr r0, [sp, #0]
	cmp r0, #0
	bne .L083163D8
	movs r0, #1
	add sp, #188
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083164A4
	.thumb_func
sub_083164A4:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r3, [pc, #16]
	movs r2, #1
	strb r2, [r3, #0]
	ldr r2, [pc, #16]
	ldrh r3, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r0, [pc, #12]
	str r1, [r0, #0]
	bx lr
	.4byte 0x0200796C
	.4byte 0x02007974
	.4byte 0x02007970

	.thumb
	.align 1, 0
	.global sub_083164C8
	.thumb_func
sub_083164C8:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007976

	.thumb
	.align 1, 0
	.global sub_083164DC
	.thumb_func
sub_083164DC:
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq .L083164EA
	ldr r0, [pc, #8]
	str r1, [r0, #0]
.L083164EA:
	bx lr
	.4byte 0x02007978
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_083164F4
	.thumb_func
sub_083164F4:
	ldr r1, [pc, #4]
	movs r0, #0
	str r0, [r1, #0]
	bx lr
	.4byte 0x02007968

	.thumb
	.align 1, 0
	.global sub_08316500
	.thumb_func
sub_08316500:
	ldr r1, [pc, #4]
	str r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x03005A40

	.thumb
	.align 1, 0
	.global sub_0831650C
	.thumb_func
sub_0831650C:
	ldr r0, [pc, #16]
	adds r0, #172
	movs r2, #0
	movs r1, #1
	strb r1, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	ldr r0, [pc, #12]
	strh r2, [r0, #0]
	bx lr
	.4byte 0x02007978
	.4byte 0x03000D1C
	.4byte 0x03000D14

	.thumb
	.align 1, 0
	.global sub_0831652C
	.thumb_func
sub_0831652C:
	ldr r0, [pc, #8]
	adds r0, #173
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831653C
	.thumb_func
sub_0831653C:
	ldr r0, [pc, #8]
	adds r0, #174
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x02007978

	.thumb
	.align 1, 0
	.global sub_0831654C
	.thumb_func
sub_0831654C:
	push {r4, lr}
	ldr r0, [pc, #28]
	adds r0, #175
	movs r1, #1
	strb r1, [r0, #0]
	ldr r4, [pc, #24]
	ldrb r0, [r4, #0]
	cmp r0, #1
	bne .L08316562
	bl sub_08004A1C
.L08316562:
	movs r0, #0
	strb r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x02007978
	.4byte 0x030059DD

	.thumb
	.align 1, 0
	.global sub_08316574
	.thumb_func
sub_08316574:
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #240
	mov r8, r0
	str r0, [sp, #4]
	movs r4, #15
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #236]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #224]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #4
	movs r3, #120
	bl sub_08316178
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #15
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #240
	bl sub_08316098
	movs r0, #150
	movs r1, #30
	movs r2, #60
	movs r3, #255
	bl sub_08316308
	str r5, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	movs r4, #60
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r6, #5
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #124]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	str r6, [sp, #0]
	mov r0, r8
	str r0, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #55
	negs r0, r0
	movs r3, #210
	lsls r3, r3, #1
	movs r1, #13
	adds r2, r3, #0
	bl sub_08316308
	str r6, [sp, #0]
	movs r0, #1
	str r0, [sp, #4]
	str r5, [sp, #8]
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #52]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #1
	bl sub_08316178
	movs r0, #8
	movs r1, #1
	bl sub_083164A4
	add sp, #12
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DF9C4
	.4byte 0x083DF9E0
	.4byte 0x083DF9E8
	.4byte 0x083DF9FC
	.4byte 0x083DFA18
	.4byte 0x083DFA2C

	.thumb
	.align 1, 0
	.global sub_083166A4
	.thumb_func
sub_083166A4:
	push {r4, r5, lr}
	sub sp, #12
	bl sub_0831650C
	bl sub_0831652C
	movs r0, #5
	str r0, [sp, #0]
	movs r5, #200
	str r5, [sp, #4]
	movs r4, #0
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	str r4, [sp, #0]
	str r5, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #200
	bl sub_08316178
	movs r3, #200
	lsls r3, r3, #1
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #200
	movs r1, #200
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r1, #200
	negs r1, r1
	adds r0, r1, #0
	movs r2, #100
	movs r3, #0
	bl sub_08316308
	movs r0, #4
	bl sub_083164DC
	add sp, #12
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DFA4C
	.4byte 0x083DFA58

	.thumb
	.align 1, 0
	.global sub_08316734
	.thumb_func
sub_08316734:
	push {r4, r5, r6, lr}
	sub sp, #12
	movs r0, #2
	movs r1, #0
	movs r2, #0
	movs r3, #60
	bl sub_08316098
	movs r4, #0
	str r4, [sp, #0]
	movs r6, #240
	str r6, [sp, #4]
	movs r5, #60
	str r5, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #136]
	str r5, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r0, #5
	str r0, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #108]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #120
	bl sub_08316178
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #3
	movs r3, #120
	bl sub_08316178
	str r4, [sp, #0]
	str r6, [sp, #4]
	str r4, [sp, #8]
	movs r0, #1
	movs r1, #1
	movs r2, #27
	movs r3, #4
	bl sub_0831628C
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	movs r0, #6
	movs r1, #2
	movs r3, #240
	bl sub_08316178
	movs r3, #150
	lsls r3, r3, #2
	movs r0, #8
	movs r1, #0
	movs r2, #0
	bl sub_08316098
	movs r0, #1
	movs r1, #0
	movs r2, #0
	movs r3, #58
	bl sub_08316098
	movs r0, #8
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08316098
	add sp, #12
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083DFA5C
	.4byte 0x083DFA6C
	.4byte 0x083DFA80
	.4byte 0x083DFA94

	.thumb
	.align 1, 0
	.global sub_083167F8
	.thumb_func
sub_083167F8:
	adds r1, r0, #0
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r1, r0, #4
	lsrs r1, r1, #3
	movs r0, #128
	lsls r0, r0, #1
	cmp r1, r0
	bls .L0831680C
	adds r1, r0, #0
.L0831680C:
	adds r0, r1, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_08316810
	.thumb_func
sub_08316810:
	adds r1, r0, #0
	movs r0, #186
	muls r1, r0
	lsrs r1, r1, #3
	adds r0, #70
	cmp r1, r0
	bls .L08316820
	adds r1, r0, #0
.L08316820:
	adds r0, r1, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_08316824
	.thumb_func
sub_08316824:
	push {lr}
	ldr r1, [pc, #16]
	movs r0, #0
	bl sub_08001FC8
	bl sub_08319214
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08001FF1

	.thumb
	.align 1, 0
	.global sub_0831683C
	.thumb_func
sub_0831683C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #0
	b .L0831686E
.L0831686C:
	movs r0, #1
.L0831686E:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08316874
	.thumb_func
sub_08316874:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316886
	movs r0, #0
	b .L083168B4
.L08316886:
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316894
	movs r0, #1
	b .L083168B4
.L08316894:
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	bne .L083168A2
	movs r0, #2
	b .L083168B4
.L083168A2:
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L083168B2
	movs r0, #1
	negs r0, r0
	b .L083168B4
.L083168B2:
	movs r0, #3
.L083168B4:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083168BC
	.thumb_func
sub_083168BC:
	push {r4, lr}
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	movs r4, #1
	movs r3, #0
	ldr r1, [pc, #8]
.L083168CE:
	cmp r2, r0
	bcs .L083168DC
	strb r4, [r1, #0]
	b .L083168DE
	movs r0, r0
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
.L083168DC:
	strb r3, [r1, #0]
.L083168DE:
	adds r1, #1
	adds r2, #1
	cmp r2, #255
	bls .L083168CE
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #16]
.L083168EC:
	stmia r2!, {r1}
	adds r0, #1
	cmp r0, #7
	bls .L083168EC
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300581C

	.thumb
	.align 1, 0
	.global sub_08316900
	.thumb_func
sub_08316900:
	ldr r2, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300581C

	.thumb
	.align 1, 0
	.global sub_08316910
	.thumb_func
sub_08316910:
	ldr r1, [pc, #8]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316920
	.thumb_func
sub_08316920:
	ldr r1, [pc, #8]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316930
	.thumb_func
sub_08316930:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #32
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08001B6C
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	cmp r0, #7
	bls .L0831694C
	b .L08316E0A
.L0831694C:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xfa9c @ .raw
	lsrs r5, r7, #32
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316968
	b .L08316E0A
.L08316968:
	ldr r4, [pc, #140]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316978
	b .L08316E0A
.L08316978:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316980
	b .L08316E0A
.L08316980:
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L08316992
	b .L08316E0A
.L08316992:
	add r0, sp, #16
	bl sub_082EA29C
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L083169A2
	b .L08316E0A
.L083169A2:
	ldr r0, [sp, #16]
	strb r1, [r0, #1]
	ldr r1, [sp, #16]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #16]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #16]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #16]
	b .L08316B24
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316A08
	b .L08316E0A
.L08316A08:
	ldr r4, [pc, #140]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316A18
	b .L08316E0A
.L08316A18:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316A20
	b .L08316E0A
.L08316A20:
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L08316A32
	b .L08316E0A
.L08316A32:
	add r0, sp, #20
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316A42
	b .L08316E0A
.L08316A42:
	ldr r0, [sp, #20]
	strb r1, [r0, #1]
	ldr r1, [sp, #20]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #20]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #20]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #20]
	b .L08316B24
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316AA8
	b .L08316E0A
.L08316AA8:
	ldr r4, [pc, #128]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316AB8
	b .L08316E0A
.L08316AB8:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316AC0
	b .L08316E0A
.L08316AC0:
	add r0, sp, #24
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316AD0
	b .L08316E0A
.L08316AD0:
	ldr r0, [sp, #24]
	strb r1, [r0, #1]
	ldr r1, [sp, #24]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #24]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #24]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #24]
.L08316B24:
	adds r0, #224
	strh r7, [r0, #0]
	b .L08316E0A
	movs r0, r0
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	ldr r1, [pc, #224]
	ldrh r2, [r6, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316B40
	b .L08316E0A
.L08316B40:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316B48
	b .L08316E0A
.L08316B48:
	ldrb r1, [r6, #9]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08001B50
	ldrh r3, [r6, #0]
	lsrs r1, r3, #3
	lsls r4, r1, #3
	ldrh r5, [r0, #0]
	lsls r1, r5, #3
	adds r1, r1, r4
	mov r9, r1
	ldrh r2, [r6, #2]
	lsrs r1, r2, #3
	lsls r5, r1, #3
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r8, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	mov r0, r9
	adds r1, r5, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	b .L08316E0A
.L08316BA8:
	add r0, sp, #28
	bl sub_08313030
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316BB8
	b .L08316E0A
.L08316BB8:
	ldr r0, [sp, #28]
	strb r1, [r0, #0]
	ldr r1, [sp, #28]
	ldrh r3, [r6, #0]
	lsrs r0, r3, #3
	strh r0, [r1, #10]
	ldr r1, [sp, #28]
	ldrh r4, [r6, #2]
	lsrs r0, r4, #3
	strh r0, [r1, #12]
	ldr r1, [sp, #28]
	movs r0, #3
	ldrb r5, [r6, #8]
	ands r0, r5
	strb r0, [r1, #2]
	ldr r1, [sp, #28]
	ldrb r0, [r6, #9]
	strh r0, [r1, #4]
	ldr r1, [sp, #28]
	ldrb r0, [r6, #10]
	strb r0, [r1, #3]
	ldr r1, [sp, #28]
	ldrb r2, [r6, #11]
	negs r0, r2
	lsrs r0, r0, #31
	strb r0, [r1, #1]
	ldr r1, [pc, #36]
	ldrh r3, [r6, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #28]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #28]
	strh r7, [r0, #20]
	b .L08316E0A
	movs r0, r0
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316C24
	b .L08316E0A
.L08316C24:
	ldr r4, [pc, #124]
	mov r9, r4
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316C36
	b .L08316E0A
.L08316C36:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316C3E
	b .L08316E0A
.L08316C3E:
	ldrb r1, [r6, #9]
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #31
	mov r8, r0
	ldrb r4, [r6, #10]
	ldrb r2, [r6, #11]
	mov ip, r2
	ldr r1, [pc, #88]
	ldr r0, [r1, #52]
	asrs r3, r0, #11
	ldr r0, [r1, #56]
	asrs r5, r0, #11
	ldrh r0, [r6, #0]
	lsrs r1, r0, #3
	ldrh r0, [r6, #2]
	lsrs r2, r0, #3
	subs r0, r1, r4
	cmp r3, r0
	blt .L08316CB0
	adds r0, r1, r4
	cmp r3, r0
	bgt .L08316CB0
	mov r1, ip
	subs r0, r2, r1
	cmp r5, r0
	blt .L08316CB0
	adds r0, r2, r1
	cmp r5, r0
	bgt .L08316CB0
	ldr r0, [pc, #48]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08316C86
	b .L08316E0A
.L08316C86:
	adds r0, r7, #0
	bl sub_08316910
	ldrh r2, [r6, #4]
	lsls r0, r2, #2
	add r0, r9
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0831638C
	b .L08316E0A
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
.L08316CB0:
	ldr r0, [pc, #24]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08316CBC
	b .L08316E0A
.L08316CBC:
	mov r3, r8
	cmp r3, #0
	beq .L08316CC4
	b .L08316E0A
.L08316CC4:
	adds r0, r7, #0
	bl sub_08316920
	b .L08316E0A
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316CDC
	b .L08316E0A
.L08316CDC:
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316D12
	ldrh r4, [r6, #6]
	cmp r4, #2
	bhi .L08316DAE
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrh r2, [r6, #6]
	ldrb r3, [r6, #9]
	str r3, [sp, #0]
	ldrb r5, [r6, #10]
	negs r3, r5
	lsrs r3, r3, #31
	add r4, sp, #4
	strb r3, [r4, #0]
	ldrb r6, [r6, #11]
	negs r3, r6
	lsrs r3, r3, #31
	add r4, sp, #8
	strb r3, [r4, #0]
	lsls r3, r7, #16
	lsrs r3, r3, #16
	str r3, [sp, #12]
	b .L08316DA8
.L08316D12:
	movs r2, #0
	ldrh r4, [r6, #6]
	cmp r4, #10
	bhi .L08316D80
	lsls r0, r4, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xfabc @ .raw
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	ldrb r2, [r0, #0]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #1]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #2]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #3]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #4]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #5]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #6]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #56]
	ldrb r2, [r0, #7]
.L08316D80:
	cmp r2, #0
	beq .L08316DAE
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrb r2, [r6, #9]
	str r2, [sp, #0]
	ldrb r3, [r6, #10]
	negs r2, r3
	lsrs r2, r2, #31
	add r3, sp, #4
	strb r2, [r3, #0]
	ldrb r6, [r6, #11]
	negs r2, r6
	lsrs r2, r2, #31
	add r3, sp, #8
	strb r2, [r3, #0]
	lsls r2, r7, #16
	lsrs r2, r2, #16
	str r2, [sp, #12]
	adds r2, r4, #0
.L08316DA8:
	movs r3, #1
	bl sub_08314338
.L08316DAE:
	adds r0, r7, #0
	bl sub_08316910
	b .L08316E0A
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316E0A
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316E0A
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrh r2, [r6, #6]
	ldrb r4, [r6, #8]
	negs r3, r4
	orrs r3, r4
	lsrs r3, r3, #31
	ldrb r4, [r6, #9]
	str r4, [sp, #0]
	ldrb r5, [r6, #10]
	negs r4, r5
	lsrs r4, r4, #31
	add r5, sp, #4
	strb r4, [r5, #0]
	ldrb r6, [r6, #11]
	negs r4, r6
	lsrs r4, r4, #31
	add r5, sp, #8
	strb r4, [r5, #0]
	lsls r4, r7, #16
	lsrs r4, r4, #16
	str r4, [sp, #12]
	bl sub_08314338
	adds r0, r7, #0
	bl sub_08316910
.L08316E0A:
	add sp, #32
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08316E18
	.thumb_func
sub_08316E18:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r4, #0
	cmp r4, r6
	bcs .L08316E58
.L08316E2A:
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq .L08316E58
	ldr r0, [pc, #48]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08316E4A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001B6C
	ldrh r0, [r0, #4]
	cmp r0, #4
	bne .L08316E52
.L08316E4A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08316930
.L08316E52:
	adds r4, #1
	cmp r4, r6
	bcc .L08316E2A
.L08316E58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030059F4
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316E68
	.thumb_func
sub_08316E68:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r5, #0
	cmp r5, r6
	bcs .L08316E9A
.L08316E7A:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001B6C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne .L08316E94
	adds r0, r5, #0
	bl sub_08316910
	adds r0, r4, #0
	b .L08316E9C
.L08316E94:
	adds r5, #1
	cmp r5, r6
	bcc .L08316E7A
.L08316E9A:
	movs r0, #0
.L08316E9C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08316EA4
	.thumb_func
sub_08316EA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r7, #0
	movs r5, #0
	cmp r5, r6
	bcs .L08316EEA
.L08316EC0:
	mov r0, r8
	adds r1, r5, #0
	bl sub_08001B6C
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #128
	lsls r0, r0, #9
	cmp r1, r0
	bne .L08316EE4
	cmp r7, r9
	bne .L08316EE2
	adds r0, r5, #0
	bl sub_08316910
	adds r0, r4, #0
	b .L08316EEC
.L08316EE2:
	adds r7, #1
.L08316EE4:
	adds r5, #1
	cmp r5, r6
	bcc .L08316EC0
.L08316EEA:
	movs r0, #0
.L08316EEC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08316EF8
	.thumb_func
sub_08316EF8:
	push {lr}
	bl sub_08001B6C
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08316F04
	.thumb_func
sub_08316F04:
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	bx lr
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316F10
	.thumb_func
sub_08316F10:
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq .L08316F3A
	ldr r0, [pc, #36]
	strb r3, [r0, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, [pc, #32]
	movs r0, #136
	lsls r0, r0, #13
	adds r1, r2, #0
	bl __udivsi3
	str r0, [r4, #0]
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r5, r0
	strh r5, [r1, #0]
.L08316F3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005840
	.4byte 0x03005A4C
	.4byte 0x0300583C
	.4byte 0x04000050

	.thumb
	.align 1, 0
	.global sub_08316F50
	.thumb_func
sub_08316F50:
	ldr r0, [pc, #12]
	ldr r3, [r0, #0]
	ldr r0, [pc, #12]
	cmp r3, r0
	bls .L08316F68
	movs r0, #0
	b .L08316F98
	movs r0, r0
	ldrh r4, [r1, r1]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r2
.L08316F68:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08316F84
	ldr r2, [pc, #12]
	lsrs r1, r3, #16
	movs r0, #16
	subs r0, r0, r1
	strh r0, [r2, #0]
	b .L08316F8A
	ldr r0, [r0, r1]
	lsls r0, r0, #12
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316F84:
	ldr r1, [pc, #20]
	lsrs r0, r3, #16
	strh r0, [r1, #0]
.L08316F8A:
	ldr r2, [pc, #20]
	ldr r1, [pc, #20]
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	movs r0, #1
.L08316F98:
	bx lr
	.2byte 0x0000
	.4byte 0x04000054
	.4byte 0x03005A4C
	.4byte 0x0300583C

	.thumb
	.align 1, 0
	.global sub_08316FA8
	.thumb_func
sub_08316FA8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	movs r5, #0
	movs r0, #136
	lsls r0, r0, #13
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r4, r0
	strh r4, [r1, #0]
	ldr r4, [pc, #20]
.L08316FC6:
	bl VBlankIntrWait
	cmp r7, #0
	bne .L08316FE0
	lsrs r1, r5, #16
	movs r0, #16
	subs r0, r0, r1
	b .L08316FE2
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316FE0:
	lsrs r0, r5, #16
.L08316FE2:
	strh r0, [r4, #0]
	adds r5, r5, r6
	ldr r0, [pc, #12]
	cmp r5, r0
	bls .L08316FC6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0010FFFF

	.thumb
	.align 1, 0
	.global sub_08316FF8
	.thumb_func
sub_08316FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	ldr r0, [pc, #92]
	ldr r1, [pc, #96]
	mov ip, r1
	ldr r6, [pc, #96]
	movs r3, #3
	mov r8, r3
	adds r4, r0, #0
	adds r4, #60
.L08317010:
	lsls r2, r5, #2
	ldr r7, [pc, #88]
	adds r3, r2, r7
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldr r1, [r4, #0]
	mov r0, r8
	ldrb r7, [r6, #0]
	ands r0, r7
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r3, #0]
	ldr r1, [r4, #4]
	ldrb r0, [r6, #0]
	adds r0, #2
	mov r3, r8
	ands r0, r3
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r2, #0]
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls .L08317010
	ldr r1, [pc, #24]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x083DFAE8
	.4byte 0x03005A50
	.4byte 0x04000010
	.4byte 0x04000012

	.thumb
	.align 1, 0
	.global sub_08317074
	.thumb_func
sub_08317074:
	push {lr}
	ldr r1, [pc, #20]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050

	.thumb
	.align 1, 0
	.global sub_08317090
	.thumb_func
sub_08317090:
	cmp r0, #0
	blt .L08317098
	movs r0, #1
	b .L0831709C
.L08317098:
	movs r0, #1
	negs r0, r0
.L0831709C:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083170A0
	.thumb_func
sub_083170A0:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08317090
	muls r0, r5
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083170B8
	.thumb_func
sub_083170B8:
	push {r4, lr}
	adds r4, r3, #0
	bl sub_083170A0
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	bge .L083170CA
	negs r2, r1
.L083170CA:
	adds r0, r4, #0
	cmp r4, #0
	bge .L083170D2
	negs r0, r4
.L083170D2:
	cmp r2, r0
	ble .L083170E0
	adds r0, r1, #0
	bl sub_08317090
	adds r1, r0, #0
	muls r1, r4
.L083170E0:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_083170E8
	.thumb_func
sub_083170E8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08317090
	adds r6, r0, #0
	cmp r4, #0
	beq .L08317112
	cmp r5, #0
	ble .L08317112
	negs r2, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_083170A0
	adds r4, r0, #0
	bl sub_08317090
	cmp r6, r0
	beq .L08317112
	movs r4, #0
.L08317112:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0xE92D0F00
	.4byte 0xE3A0C301
	.4byte 0xE59FB02C
	.4byte 0xE28BA028
	.4byte 0xE3A09001
	.4byte 0xE3A08000
	.4byte 0xE5CC8208
	.4byte 0xE89A0003
	.4byte 0xE8AA0002
	.4byte 0xE8AA0001
	.4byte 0xE5DB0005
	.4byte 0xE5CB8005
	.4byte 0xE5CC9208
	.4byte 0xE8BD0F00
	.4byte 0xE12FFF1E
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_0831715C
	.thumb_func
sub_0831715C:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	cmp r0, #4
	bne .L08317178
	ldr r1, [pc, #8]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfaf8 @ .raw
	lsrs r5, r7, #32
.L08317178:
	cmp r0, #64
	bne .L0831718C
	ldr r1, [pc, #4]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfb04 @ .raw
	lsrs r5, r7, #32
.L0831718C:
	ldr r1, [pc, #8]
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r2, #1
.L08317194:
	adds r0, r2, #0
	bx lr
	.4byte 0x03000B08
	.4byte 0x083DFAF8
	.4byte 0x88084906
	.4byte 0xD0082800
	.4byte 0x38018808
	.4byte 0x04008008
	.4byte 0xD1022800
	.4byte 0x20014902
	.4byte 0x47707008
	.4byte 0x03005846
	.4byte 0x03005848

	.thumb
	.align 1, 0
	.global sub_083171C4
	.thumb_func
sub_083171C4:
	adds r2, r1, #0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bhi .L083171F8
	ldr r0, [pc, #24]
	strb r1, [r0, #0]
	ldr r1, [pc, #24]
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	ldr r3, [pc, #20]
	adds r0, r0, r3
	str r0, [r1, #0]
	ldr r0, [pc, #20]
	str r0, [r2, #0]
	movs r0, #0
	b .L083171FA
	movs r0, r0
	ldr r4, [r0, r1]
	lsls r0, r0, #12
	ldr r4, [r1, r1]
	lsls r0, r0, #12
	lsls r0, r0, #4
	lsls r0, r0, #16
	strb r1, [r4, #6]
	lsrs r1, r6, #32
.L083171F8:
	movs r0, #1
.L083171FA:
	bx lr

	.thumb
	.align 1, 0
	.global sub_083171FC
	.thumb_func
sub_083171FC:
	push {r4, r5, lr}
	ldr r2, [pc, #68]
	ldr r3, [pc, #68]
	ldrh r1, [r3, #0]
	strh r1, [r2, #0]
	movs r5, #0
	strh r5, [r3, #0]
	ldr r4, [pc, #64]
	ldr r1, [pc, #64]
	ldrb r1, [r1, #0]
	movs r2, #8
	lsls r2, r1
	ldrh r1, [r4, #0]
	orrs r1, r2
	strh r1, [r4, #0]
	movs r1, #1
	strh r1, [r3, #0]
	ldr r1, [pc, #52]
	strb r5, [r1, #0]
	ldr r2, [pc, #52]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	adds r0, #2
	ldr r3, [pc, #48]
	ldr r1, [r3, #0]
	ldrh r2, [r0, #0]
	strh r2, [r1, #0]
	adds r1, #2
	str r1, [r3, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #0]
	subs r1, #2
	str r1, [r3, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005850
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005848
	.4byte 0x03005846
	.4byte 0x0300584C

	.thumb
	.align 1, 0
	.global sub_08317260
	.thumb_func
sub_08317260:
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	movs r2, #0
	strh r2, [r0, #0]
	adds r0, #2
	str r0, [r1, #0]
	strh r2, [r0, #0]
	subs r0, #2
	str r0, [r1, #0]
	ldr r3, [pc, #32]
	strh r2, [r3, #0]
	ldr r2, [pc, #32]
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #24]
	ldrh r0, [r0, #0]
	strh r0, [r3, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300584C
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005850

	.thumb
	.align 1, 0
	.global sub_083172A4
	.thumb_func
sub_083172A4:
	push {r4, r5, r6, lr}
	lsls r2, r2, #16
	lsrs r2, r2, #16
	ldr r4, [pc, #88]
	ldrh r3, [r4, #0]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4, #0]
	ldr r5, [pc, #80]
	ldrh r4, [r5, #0]
	ldr r3, [pc, #80]
	ands r4, r3
	ldr r3, [pc, #80]
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	orrs r3, r4
	strh r3, [r5, #0]
	ldr r3, [pc, #76]
	str r0, [r3, #0]
	ldr r0, [pc, #76]
	str r1, [r0, #0]
	ldr r1, [pc, #76]
	movs r0, #128
	lsls r0, r0, #24
	orrs r2, r0
	str r2, [r1, #0]
	adds r1, #2
	movs r2, #128
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083172F8
	ldr r2, [pc, #52]
	movs r0, #128
	lsls r0, r0, #8
	adds r1, r0, #0
.L083172F0:
	ldrh r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne .L083172F0
.L083172F8:
	ldr r0, [pc, #8]
	strh r6, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000204
	.4byte 0x0000F8FF
	.4byte 0x03000B08
	.4byte 0x040000D4
	.4byte 0x040000D8
	.4byte 0x040000DC
	.4byte 0x040000DE

	.thumb
	.align 1, 0
	.global sub_08317324
	.thumb_func
sub_08317324:
	push {r4, r5, r6, lr}
	sub sp, #136
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r3, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	bcc .L08317344
	ldr r0, [pc, #4]
	b .L083173CE
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L08317344:
	ldr r0, [pc, #144]
	adds r6, r0, #0
	ldr r0, [r0, #0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bcs .L0831736E
.L0831735A:
	strh r3, [r2, #0]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldr r0, [r6, #0]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bcc .L0831735A
.L0831736E:
	movs r0, #1
	strh r0, [r2, #0]
	subs r2, #2
	strh r0, [r2, #0]
	movs r4, #208
	lsls r4, r4, #20
	ldr r0, [pc, #92]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #192
	lsls r0, r0, #10
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	adds r1, r4, #0
	bl sub_083172A4
	adds r0, r4, #0
	mov r1, sp
	movs r2, #68
	bl sub_083172A4
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
.L083173A4:
	movs r1, #0
	movs r3, #0
.L083173A8:
	lsls r1, r1, #17
	ldrh r0, [r2, #0]
	ands r0, r6
	lsrs r1, r1, #16
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #15
	bls .L083173A8
	strh r1, [r5, #0]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #3
	bls .L083173A4
	movs r0, #0
.L083173CE:
	add sp, #136
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000B08

	.thumb
	.align 1, 0
	.global sub_083173DC
	.thumb_func
sub_083173DC:
	push {r4, r5, lr}
	sub sp, #164
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r4, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	bcc .L083173FC
	ldr r0, [pc, #4]
	b .L083174A8
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083173FC:
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #132
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r1, #0
.L08317412:
	ldrh r2, [r5, #0]
	adds r5, #2
	movs r0, #0
.L08317418:
	strh r2, [r3, #0]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #15
	bls .L08317418
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bls .L08317412
	movs r1, #0
	ldr r0, [pc, #4]
	adds r2, r0, #0
	ldr r0, [r0, #0]
	b .L0831744E
	lsrs r0, r1, #12
	lsls r0, r0, #12
.L08317440:
	strh r4, [r3, #0]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldr r0, [r2, #0]
.L0831744E:
	ldrb r0, [r0, #8]
	cmp r1, r0
	bcc .L08317440
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r0, #1
	strh r0, [r3, #0]
	movs r1, #208
	lsls r1, r1, #20
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #134
	lsls r0, r0, #15
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	bl sub_083172A4
	ldr r0, [pc, #56]
	bl sub_083171FC
	movs r4, #0
	movs r1, #208
	lsls r1, r1, #20
	movs r3, #1
	ldr r2, [pc, #48]
.L08317488:
	ldrh r0, [r1, #0]
	ands r0, r3
	cmp r0, #0
	bne .L083174A2
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08317488
	ldrh r0, [r1, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L083174A2
	ldr r4, [pc, #24]
.L083174A2:
	bl sub_08317260
	adds r0, r4, #0
.L083174A8:
	add sp, #164
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03000B08
	.4byte 0x083DFB10
	.4byte 0x03005848
	.4byte 0x0000C001

	.thumb
	.align 1, 0
	.global sub_083174C0
	.thumb_func
sub_083174C0:
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #16
	lsrs r1, r0, #16
	movs r5, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bcc .L083174E4
	ldr r0, [pc, #8]
	b .L0831750E
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083174E4:
	adds r0, r1, #0
	mov r1, sp
	bl sub_08317324
	mov r2, sp
	movs r3, #0
	b .L083174FC
.L083174F2:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #3
	bhi .L0831750C
.L083174FC:
	ldrh r1, [r4, #0]
	ldrh r0, [r2, #0]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq .L083174F2
	movs r5, #128
	lsls r5, r5, #8
.L0831750C:
	adds r0, r5, #0
.L0831750E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

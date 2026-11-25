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
	bl sub_08001EBC
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
	bl sub_08001EBC
	ldr r0, [pc, #128]
	adds r1, r5, #0
	movs r2, #224
	movs r3, #16
	bl sub_08001EBC
	ldr r0, [pc, #120]
	adds r1, r5, #0
	movs r2, #240
	movs r3, #16
	bl sub_08001EBC
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
	bl sub_080002E0
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
	bl sub_08005100
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
	bl sub_08001EBC
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
	bl sub_08001EBC
	bl sub_0800436C
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
	bl sub_080002E0
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
	bl sub_0800436C
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
	bl sub_080002E0
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
	bl sub_08001EBC
	ldr r5, [pc, #116]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	adds r2, r7, #0
	bl sub_08301BD8
	bl Pickup_ClearAll
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
	bl Fade_Start
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
	bl Fade_IsBusy
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
	bl Fade_Start
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
	bl Fade_IsBusy
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

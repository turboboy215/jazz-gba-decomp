	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAXFx_render: [likely]
	.thumb
	.align 1, 0
	.global sub_08319F88
	.thumb_func
sub_08319F88:
	.global GAXFx_render
	.thumb_set GAXFx_render, sub_08319F88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldrb r0, [r1, #19]
	cmp r0, #0
	beq .L08319F9C
	movs r0, #0
	str r0, [r4, #44]
.L08319F9C:
	mov r1, r8
	ldrb r0, [r1, #18]
	cmp r0, #0
	beq .L0831A090
	adds r0, r4, #0
	adds r0, #75
	ldrb r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, #1
	beq .L08319FBC
	cmp r1, #0
	beq .L0831A090
	adds r0, #1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0831A090
.L08319FBC:
	mov r3, r8
	ldrb r1, [r3, #19]
	cmp r1, #0
	bne .L0831A090
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L08319FF0
	ldr r0, [r4, #44]
	cmp r0, #0
	beq .L08319FE6
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	cmp r0, #255
	bne .L08319FE6
	ldr r0, [pc, #16]
	strh r0, [r4, #14]
	strh r1, [r4, #30]
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r4, #64]
	str r1, [r4, #44]
.L08319FE6:
	movs r0, #1
	strb r0, [r4, #23]
	b .L0831A002
	ldrh r0, [r2, #22]
	movs r0, r0
.L08319FF0:
	cmp r0, #1
	bls .L0831A002
	subs r0, #2
	lsls r0, r0, #5
	adds r1, r4, #0
	adds r1, #68
	movs r2, #0
	strh r0, [r1, #0]
	strb r2, [r4, #23]
.L0831A002:
	adds r1, r4, #0
	adds r1, #76
	ldrb r5, [r1, #0]
	ldr r0, [pc, #60]
	ldr r6, [r0, #0]
	ldr r0, [r6, #8]
	mov ip, r1
	cmp r5, #0
	beq .L0831A062
	ldr r1, [r0, #16]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	str r2, [r4, #44]
	movs r1, #0
	movs r3, #0
	strh r3, [r4, #40]
	strh r3, [r4, #42]
	ldrb r0, [r2, #8]
	strb r0, [r4, #9]
	strh r3, [r4, #38]
	strb r1, [r4, #21]
	strb r1, [r4, #22]
	movs r0, #255
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	strh r3, [r4, #34]
	strh r3, [r4, #32]
	ldrb r0, [r2, #16]
	strb r0, [r4, #18]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0831A04C
	str r3, [r4, #44]
	b .L0831A062
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L0831A04C:
	ldr r0, [r6, #4]
	ldr r1, [r0, #52]
	cmp r1, #0
	beq .L0831A062
	movs r0, #13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt .L0831A062
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r5, [r0, #0]
.L0831A062:
	ldrb r0, [r7, #0]
	adds r2, r4, #0
	adds r2, #73
	cmp r0, #1
	bls .L0831A078
	adds r1, r4, #0
	adds r1, #68
	ldrh r0, [r1, #0]
	ldrb r3, [r2, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
.L0831A078:
	adds r0, r4, #0
	adds r0, #72
	ldrb r0, [r0, #0]
	movs r1, #0
	strb r0, [r4, #20]
	movs r0, #0
	strh r1, [r4, #24]
	strh r1, [r4, #26]
	mov r1, ip
	strb r0, [r1, #0]
	strb r0, [r2, #0]
	strb r0, [r7, #0]
.L0831A090:
	ldr r0, [r4, #44]
	ldrb r1, [r4, #21]
	cmp r0, #0
	beq .L0831A0AE
	cmp r1, #0
	bne .L0831A0AE
	ldrb r0, [r4, #18]
	cmp r0, #0
	beq .L0831A0B2
	adds r0, r4, #0
	bl sub_083198B4
	ldrb r0, [r4, #18]
	subs r0, #1
	b .L0831A0B0
.L0831A0AE:
	subs r0, r1, #1
.L0831A0B0:
	strb r0, [r4, #21]
.L0831A0B2:
	adds r0, r4, #0
	bl sub_08319AE4
	adds r0, r4, #0
	adds r0, #74
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0831A0C6
	movs r0, #0
	strb r0, [r4, #19]
.L0831A0C6:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0831A0E8
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	ldr r2, [r0, #8]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #1
	bl GAXTracker_generate_audio
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b .L0831A0EA
	movs r0, r0
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L0831A0E8:
	movs r0, #0
.L0831A0EA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF

@ GAXOutput_asm_A: [sure] ARM, code2ram'd; one of render/reverb/lowpass (order TBD)
	.arm
	.align 2, 0
	.global sub_0831A100
sub_0831A100:
	.global GAXOutput_asm_A
	.set GAXOutput_asm_A, sub_0831A100
	push {r4, r5, r6, r7, r8, r9, sl, fp, ip}
	ldm r0!, {r0, r1, r2, r3}
	lsl r3, r3, #4
	add r2, r2, r1
	mov sl, #65536
	sub sl, sl, #1
	mov fp, #255
	lsl ip, fp, #5
.L0831A120:
	ldm r0!, {r6, r7, r8, r9}
	and r5, r6, sl
	rsb r5, r3, r5
	cmn r5, #4064
	mvnlt r5, #4064
	cmp r5, #4064
	movgt r5, #4064
	and r5, fp, r5, asr #5
	rsb r6, r3, r6, lsr #16
	cmn r6, #4064
	mvnlt r6, #4064
	cmp r6, #4064
	movgt r6, #4064
	and r6, ip, r6
	orr r6, r5, r6, lsl #3
	and r5, r7, sl
	rsb r5, r3, r5
	cmn r5, #4064
	mvnlt r5, #4064
	cmp r5, #4064
	movgt r5, #4064
	and r5, ip, r5
	rsb r7, r3, r7, lsr #16
	cmn r7, #4064
	mvnlt r7, #4064
	cmp r7, #4064
	movgt r7, #4064
	and r7, ip, r7
	orr r6, r6, r5, lsl #11
	orr r6, r6, r7, lsl #19
	and r5, r8, sl
	rsb r5, r3, r5
	cmn r5, #4064
	mvnlt r5, #4064
	cmp r5, #4064
	movgt r5, #4064
	and r5, fp, r5, asr #5
	rsb r8, r3, r8, lsr #16
	cmn r8, #4064
	mvnlt r8, #4064
	cmp r8, #4064
	movgt r8, #4064
	and r8, ip, r8
	orr r8, r5, r8, lsl #3
	and r5, r9, sl
	rsb r5, r3, r5
	cmn r5, #4064
	mvnlt r5, #4064
	cmp r5, #4064
	movgt r5, #4064
	and r5, ip, r5
	rsb r9, r3, r9, lsr #16
	cmn r9, #4064
	mvnlt r9, #4064
	cmp r9, #4064
	movgt r9, #4064
	and r9, ip, r9
	orr r7, r8, r5, lsl #11
	orr r7, r7, r9, lsl #19
	stmia r1!, {r6, r7}
	cmp r1, r2
	blt .L0831A120
	pop {r4, r5, r6, r7, r8, r9, sl, fp, ip}
	bx lr

@ GAXOutput_asm_B: [sure] ARM, code2ram'd
	.arm
	.align 2, 0
	.global sub_0831A220
sub_0831A220:
	.global GAXOutput_asm_B
	.set GAXOutput_asm_B, sub_0831A220
	push {r4, r5, r6, r7, r8, r9, sl, fp}
	ldr r1, [r0, #12]
	ldr r7, [r0, #8]
	ldr r2, [r0, #4]
	ldr r0, [r0]
	add r4, pc, #164
	ldr r5, [r4, #4]
	ldr r4, [r4]
	mov r8, #820
	mul r7, r8, r7
	asr r7, r7, #8
	mov r9, #127
	lsl r9, r9, #8
	mul r9, r1, r9
.L0831A258:
	ldrsh r8, [r0]
	lsl r8, r8, #8
	sub r6, r8, r5
	sub r6, r6, r4
	cmn r6, r9
	mvnlt r6, r9
	cmp r6, r9
	movgt r6, r9
	mul sl, r6, r7
	add r5, r5, sl, asr #8
	cmn r5, r9
	mvnlt r5, r9
	cmp r5, r9
	movgt r5, r9
	mul sl, r5, r7
	add r4, r4, sl, asr #8
	cmn r4, r9
	mvnlt r4, r9
	cmp r4, r9
	movgt r4, r9
	asr sl, r4, #8
	strh sl, [r0]
	add r0, r0, #2
	subs r2, r2, #2
	cmp r2, #0
	bgt .L0831A258
	add r0, pc, #24
	str r4, [r0]
	str r5, [r0, #4]
	pop {r4, r5, r6, r7, r8, r9, sl, fp}
	bx lr
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	strbpl r4, [ip], #-2374

@ GAXOutput_asm_C: [sure] ARM, code2ram'd
	.arm
	.align 2, 0
	.global sub_0831A2EC
sub_0831A2EC:
	.global GAXOutput_asm_C
	.set GAXOutput_asm_C, sub_0831A2EC
	push {r4, r5, r6, r7, r8, r9, sl}
	ldr r5, [pc, #232]
	ldr r4, [r0]
	ldr r3, [r0, #12]
	ldr r2, [r0, #16]
	ldr r1, [r0, #8]
	ldr r9, [r0, #20]
	lsl r9, r9, #4
	ldr sl, [r0, #24]
	lsl sl, sl, #4
	ldr r0, [r0, #4]
	add r4, r4, r0
.L0831A31C:
	cmp r5, r3
	moveq r5, #0
	add r7, r5, r3
	ldr r8, [r2, #4]
	sub r7, r7, r8
	cmp r7, r3
	subge r7, r7, r3
	ldrsh r7, [r1, r7]
	ldr r8, [r2, #16]
	muls r7, r8, r7
	asr r6, r7, #4
	ldr r8, [r2, #8]
	cmp r8, #0
	beq .L0831A39C
	add r7, r5, r3
	sub r7, r7, r8
	cmp r7, r3
	subge r7, r7, r3
	ldrsh r7, [r1, r7]
	ldr r8, [r2, #20]
	muls r7, r8, r7
	add r6, r6, r7, asr #4
	ldr r8, [r2, #12]
	cmp r8, #0
	beq .L0831A39C
	add r7, r5, r3
	sub r7, r7, r8
	cmp r7, r3
	subge r7, r7, r3
	ldrsh r7, [r1, r7]
	ldr r8, [r2, #24]
	add r6, r6, r7, asr #4
.L0831A39C:
	ldrh r8, [r0]
	sub r8, r8, r9
	add r8, r8, r6
	strh r8, [r1, r5]
	add r8, r8, sl
	strh r8, [r0]
	add r0, r0, #2
	add r5, r5, #2
	cmp r0, r4
	blt .L0831A31C
	add r0, pc, #20
	str r5, [r0]
	pop {r4, r5, r6, r7, r8, r9, sl}
	bx lr
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	.4byte 0x00000000 @ ?
	ldrbpl r4, [r2], #-322

@ GAXTracker_asm: [likely] ARM, code2ram'd (tracker_asm.o signature)
	.arm
	.align 2, 0
	.global sub_0831A3E8
sub_0831A3E8:
	.global GAXTracker_asm
	.set GAXTracker_asm, sub_0831A3E8
	push {r3, r4}
	umull r3, r4, r0, r1
	mov r0, r4
	pop {r3, r4}
	bx lr

@ GAXTracker_pingpong_asm: [likely] ARM, code2ram'd
	.arm
	.align 2, 0
	.global sub_0831A3FC
sub_0831A3FC:
	.global GAXTracker_pingpong_asm
	.set GAXTracker_pingpong_asm, sub_0831A3FC
	push {r4, r5, r6, r7, r8, r9, sl, fp}
	ldm r0, {r1, r2, r3, r4, r5, r6, r7}
.L0831A404:
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	subpl r4, r4, r5
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	subpl r4, r4, r5
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic fp, r8, #458752
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	subpl r4, r4, r5
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	subpl r4, r4, r5
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic r8, r8, #458752
	ldm r2, {r9, sl}
	add r9, r9, fp, lsr #3
	add sl, sl, r8, lsr #3
	stmia r2!, {r9, sl}
	subs r3, r3, #4
	bgt .L0831A404
	str r4, [r0, #12]
	pop {r4, r5, r6, r7, r8, r9, sl, fp}
	bx lr

@ GAX_asm_0831A470: ARM block copied to RAM by GAX2_init/GAX2_estimate (0x0831A470-0x0831A528)
	.arm
	.align 2, 0
	.global sub_0831A470
sub_0831A470:
	.global GAX_asm_0831A470
	.set GAX_asm_0831A470, sub_0831A470
	push {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	ldm r0, {r1, r2, r3, r4, r5, r6, r7}
	cmp r7, #0
	.4byte 0xeb000020 @ bl 0x831a504
.L0831A480:
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x831a4f4
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x831a4f4
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic fp, r8, #458752
	ldrb r8, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x831a4f4
	ldrb r9, [r1, r4, asr #11]
	adds r4, r4, r7
	blpl 0x831a4f4
	orr r8, r8, r9, lsl #16
	mul r8, r6, r8
	bic r8, r8, #458752
	ldm r2, {r9, sl}
	add r9, r9, fp, lsr #3
	add sl, sl, r8, lsr #3
	stmia r2!, {r9, sl}
	subs r3, r3, #4
	bgt .L0831A480
	str r4, [r0, #12]
	str r7, [r0, #24]
	str r1, [r0]
	pop {r4, r5, r6, r7, r8, r9, sl, fp, lr}
	bx lr

	.arm
	.align 2, 0
	.global sub_0831A4F4
sub_0831A4F4:
	rsbs r7, r7, #0
	add r4, r4, r7, lsl #1
	subpl r4, r4, r5
	addpl r1, r1, r5, lsr #11

	.arm
	.align 2, 0
	.global sub_0831A504
sub_0831A504:
	movmi sl, #75
	addmi r4, r4, r5
	submi r1, r1, r5, lsr #11
	movpl sl, #91
	strb sl, [pc, #-145]
	strb sl, [pc, #-137]
	strb sl, [pc, #-117]
	strb sl, [pc, #-109]
	bx lr

@ CpuFastSet: [sure] svc 0x0C
	.thumb
	.align 1, 0
	.global sub_0831A528
	.thumb_func
sub_0831A528:
	.global CpuFastSet
	.thumb_set CpuFastSet, sub_0831A528
	svc 12
	bx lr

@ CpuSet: [sure] svc 0x0B
	.thumb
	.align 1, 0
	.global sub_0831A52C
	.thumb_func
sub_0831A52C:
	.global CpuSet
	.thumb_set CpuSet, sub_0831A52C
	svc 11
	bx lr

@ Div: [sure] svc 0x06
	.thumb
	.align 1, 0
	.global sub_0831A530
	.thumb_func
sub_0831A530:
	.global Div
	.thumb_set Div, sub_0831A530
	svc 6
	bx lr

@ IntrWait: [sure] svc 0x04 (r2=0)
	.thumb
	.align 1, 0
	.global sub_0831A534
	.thumb_func
sub_0831A534:
	.global IntrWait
	.thumb_set IntrWait, sub_0831A534
	movs r2, #0
	svc 4
	bx lr
	.2byte 0x0000

@ LZ77UnCompWram: [sure] svc 0x11
	.thumb
	.align 1, 0
	.global sub_0831A53C
	.thumb_func
sub_0831A53C:
	.global LZ77UnCompWram
	.thumb_set LZ77UnCompWram, sub_0831A53C
	svc 17
	bx lr

@ MultiBoot: [sure] svc 0x25 (r1=1)
	.thumb
	.align 1, 0
	.global sub_0831A540
	.thumb_func
sub_0831A540:
	.global MultiBoot
	.thumb_set MultiBoot, sub_0831A540
	movs r1, #1
	svc 37
	bx lr
	.2byte 0x0000

@ Sqrt: [sure] svc 0x08
	.thumb
	.align 1, 0
	.global sub_0831A548
	.thumb_func
sub_0831A548:
	.global Sqrt
	.thumb_set Sqrt, sub_0831A548
	svc 8
	bx lr

@ VBlankIntrWait: [sure] svc 0x05
	.thumb
	.align 1, 0
	.global sub_0831A54C
	.thumb_func
sub_0831A54C:
	.global VBlankIntrWait
	.thumb_set VBlankIntrWait, sub_0831A54C
	movs r2, #0
	svc 5
	bx lr
	.2byte 0x0000

@ SoftResetRom: [likely] clears flags, RegisterRamReset(svc 1) + SoftReset(svc 0)
	.thumb
	.align 1, 0
	.global sub_0831A554
	.thumb_func
sub_0831A554:
	.global SoftResetRom
	.thumb_set SoftResetRom, sub_0831A554
	ldr r3, [pc, #16]
	movs r2, #0
	strb r2, [r3, #0]
	ldr r3, [pc, #16]
	movs r2, #0
	strb r2, [r3, #0]
	subs r3, #250
	mov sp, r3
	svc 1
	svc 0
	lsls r0, r1, #8
	lsls r0, r0, #16
	ldrb r2, [r7, #31]
	lsls r0, r0, #12

@ memcpy: [sure] newlib word/byte copy
	.thumb
	.align 1, 0
	.global sub_0831A570
	.thumb_func
sub_0831A570:
	.global memcpy
	.thumb_set memcpy, sub_0831A570
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #15
	bls .L0831A5B0
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne .L0831A5B0
	adds r1, r5, #0
.L0831A58A:
	ldmia r3!, {r0}
	stmia r1!, {r0}
	ldmia r3!, {r0}
	stmia r1!, {r0}
	ldmia r3!, {r0}
	stmia r1!, {r0}
	ldmia r3!, {r0}
	stmia r1!, {r0}
	subs r2, #16
	cmp r2, #15
	bhi .L0831A58A
	cmp r2, #3
	bls .L0831A5AE
.L0831A5A4:
	ldmia r3!, {r0}
	stmia r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi .L0831A5A4
.L0831A5AE:
	adds r4, r1, #0
.L0831A5B0:
	subs r2, #1
	movs r0, #1
	negs r0, r0
	cmp r2, r0
	beq .L0831A5CA
	adds r1, r0, #0
.L0831A5BC:
	ldrb r0, [r3, #0]
	strb r0, [r4, #0]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne .L0831A5BC
.L0831A5CA:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

@ memset: [sure] newlib
	.thumb
	.align 1, 0
	.global sub_0831A5D4
	.thumb_func
sub_0831A5D4:
	.global memset
	.thumb_set memset, sub_0831A5D4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls .L0831A61A
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne .L0831A61A
	adds r1, r5, #0
	movs r0, #255
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #16
	orrs r3, r0
	cmp r2, #15
	bls .L0831A60E
.L0831A5FA:
	stmia r1!, {r3}
	stmia r1!, {r3}
	stmia r1!, {r3}
	stmia r1!, {r3}
	subs r2, #16
	cmp r2, #15
	bhi .L0831A5FA
	b .L0831A60E
.L0831A60A:
	stmia r1!, {r3}
	subs r2, #4
.L0831A60E:
	cmp r2, #3
	bhi .L0831A60A
	adds r3, r1, #0
	b .L0831A61A
.L0831A616:
	strb r4, [r3, #0]
	adds r3, #1
.L0831A61A:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne .L0831A616
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

@ strcmp: [sure] newlib (word compare with 0x01010101 trick)
	.thumb
	.align 1, 0
	.global sub_0831A62C
	.thumb_func
sub_0831A62C:
	.global strcmp
	.thumb_set strcmp, sub_0831A62C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne .L0831A672
	ldr r1, [r2, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	bne .L0831A672
	ldr r5, [pc, #16]
	ldr r4, [pc, #20]
.L0831A648:
	ldr r1, [r2, #0]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq .L0831A660
	movs r0, #0
	b .L0831A684
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
	strh r0, [r0, #4]
	strh r0, [r0, #4]
.L0831A660:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2, #0]
	ldr r0, [r3, #0]
	cmp r1, r0
	beq .L0831A648
	b .L0831A672
.L0831A66E:
	adds r2, #1
	adds r3, #1
.L0831A672:
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0831A67E
	ldrb r1, [r3, #0]
	cmp r0, r1
	beq .L0831A66E
.L0831A67E:
	ldrb r2, [r2, #0]
	ldrb r3, [r3, #0]
	subs r0, r2, r3
.L0831A684:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

@ strlen: [sure] newlib
	.thumb
	.align 1, 0
	.global sub_0831A68C
	.thumb_func
sub_0831A68C:
	.global strlen
	.thumb_set strlen, sub_0831A68C
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r4, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne .L0831A6CA
	adds r2, r1, #0
	ldr r1, [r2, #0]
	ldr r3, [pc, #8]
	adds r0, r1, r3
	bics r0, r1
	ldr r3, [pc, #4]
	b .L0831A6BA
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
	strh r0, [r0, #4]
	strh r0, [r0, #4]
.L0831A6B0:
	adds r2, #4
	ldr r1, [r2, #0]
	ldr r5, [pc, #12]
	adds r0, r1, r5
	bics r0, r1
.L0831A6BA:
	ands r0, r3
	cmp r0, #0
	beq .L0831A6B0
	adds r1, r2, #0
	b .L0831A6CA
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
.L0831A6C8:
	adds r1, #1
.L0831A6CA:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831A6C8
	subs r0, r1, r4
	pop {r4, r5}
	pop {r1}
	bx r1

@ strncpy: [sure] newlib
	.thumb
	.align 1, 0
	.global sub_0831A6D8
	.thumb_func
sub_0831A6D8:
	.global strncpy
	.thumb_set strncpy, sub_0831A6D8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	adds r4, r6, #0
	adds r3, r1, #0
	adds r0, r3, #0
	orrs r0, r6
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne .L0831A71C
	cmp r2, #3
	bls .L0831A71C
	ldr r1, [r3, #0]
	ldr r5, [pc, #8]
	adds r0, r1, r5
	bics r0, r1
	ldr r5, [pc, #4]
	b .L0831A716
	.2byte 0xfeff @ .raw
	.2byte 0xfefe @ .raw
	strh r0, [r0, #4]
	strh r0, [r0, #4]
.L0831A704:
	subs r2, #4
	ldmia r3!, {r0}
	stmia r4!, {r0}
	cmp r2, #3
	bls .L0831A71C
	ldr r1, [r3, #0]
	ldr r7, [pc, #60]
	adds r0, r1, r7
	bics r0, r1
.L0831A716:
	ands r0, r5
	cmp r0, #0
	beq .L0831A704
.L0831A71C:
	cmp r2, #0
	beq .L0831A730
	subs r2, #1
	ldrb r0, [r3, #0]
	strb r0, [r4, #0]
	lsls r0, r0, #24
	adds r3, #1
	adds r4, #1
	cmp r0, #0
	bne .L0831A71C
.L0831A730:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	beq .L0831A746
	movs r1, #0
.L0831A73A:
	strb r1, [r4, #0]
	adds r4, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne .L0831A73A
.L0831A746:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0xFEFEFEFF

@ __do_global_dtors: [likely] libgcc: walks __DTOR_LIST__
	.thumb
	.align 1, 0
	.global sub_0831A754
	.thumb_func
sub_0831A754:
	.global __do_global_dtors
	.thumb_set __do_global_dtors, sub_0831A754
	push {r4, lr}
	ldr r1, [pc, #36]
	ldr r0, [r1, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq .L0831A776
	adds r4, r1, #0
.L0831A762:
	ldr r1, [r4, #0]
	adds r0, r1, #4
	str r0, [r4, #0]
	ldr r0, [r1, #0]
	bl _call_via_r0
	ldr r0, [r4, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L0831A762
.L0831A776:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x03005A54

@ __do_global_ctors: [likely] libgcc: walks __CTOR_LIST__ backwards
	.thumb
	.align 1, 0
	.global sub_0831A780
	.thumb_func
sub_0831A780:
	.global __do_global_ctors
	.thumb_set __do_global_ctors, sub_0831A780
	push {r4, r5, lr}
	ldr r2, [pc, #64]
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L0831A7A2
	movs r1, #0
	ldr r0, [r2, #4]
	cmp r0, #0
	beq .L0831A7A2
	adds r2, #4
.L0831A798:
	adds r1, #1
	adds r2, #4
	ldr r0, [r2, #0]
	cmp r0, #0
	bne .L0831A798
.L0831A7A2:
	adds r5, r1, #0
	cmp r5, #0
	beq .L0831A7BC
	ldr r1, [pc, #24]
	lsls r0, r5, #2
	adds r4, r0, r1
.L0831A7AE:
	ldr r0, [r4, #0]
	subs r4, #4
	bl _call_via_r0
	subs r5, #1
	cmp r5, #0
	bne .L0831A7AE
.L0831A7BC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083E084C

@ __main: [sure] libgcc: run ctors once (first call in AgbMain)
	.thumb
	.align 1, 0
	.global sub_0831A7C8
	.thumb_func
sub_0831A7C8:
	.global __main
	.thumb_set __main, sub_0831A7C8
	push {lr}
	ldr r1, [pc, #20]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L0831A7DA
	movs r0, #1
	str r0, [r1, #0]
	bl __do_global_ctors
.L0831A7DA:
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005854

@ _call_via_r0: [sure] libgcc interworking thunks r0..lr follow, 4 bytes apart
	.thumb
	.align 1, 0
	.global sub_0831A7E4
	.thumb_func
sub_0831A7E4:
	.global _call_via_r0
	.thumb_set _call_via_r0, sub_0831A7E4
	bx r0
	.2byte 0x46C0

	.thumb
	.align 1, 0
	.global sub_0831A7E8
	.thumb_func
sub_0831A7E8:
	bx r1
	.2byte 0x46C0
	.4byte 0x46C04710

	.thumb
	.align 1, 0
	.global sub_0831A7F0
	.thumb_func
sub_0831A7F0:
	bx r3
	.2byte 0x46C0

	.thumb
	.align 1, 0
	.global sub_0831A7F4
	.thumb_func
sub_0831A7F4:
	bx r4
	.2byte 0x46C0

	.thumb
	.align 1, 0
	.global sub_0831A7F8
	.thumb_func
sub_0831A7F8:
	bx r5
	.2byte 0x46C0
	.4byte 0x46C04730
	.4byte 0x46C04738
	.4byte 0x46C04740
	.4byte 0x46C04748
	.4byte 0x46C04750
	.4byte 0x46C04758
	.4byte 0x46C04760
	.4byte 0x46C04768
	.4byte 0x46C04770

@ __divsi3: [sure] libgcc (non-interwork: returns with mov pc, lr)
	.thumb
	.align 1, 0
	.global sub_0831A820
	.thumb_func
sub_0831A820:
	.global __divsi3
	.thumb_set __divsi3, sub_0831A820
	cmp r1, #0
	beq .L0831A8A8
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl .L0831A836
	negs r1, r1
.L0831A836:
	cmp r0, #0
	bpl .L0831A83C
	negs r0, r0
.L0831A83C:
	cmp r0, r1
	bcc .L0831A89A
	movs r4, #1
	lsls r4, r4, #28
.L0831A844:
	cmp r1, r4
	bcs .L0831A852
	cmp r1, r0
	bcs .L0831A852
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L0831A844
.L0831A852:
	lsls r4, r4, #3
.L0831A854:
	cmp r1, r4
	bcs .L0831A862
	cmp r1, r0
	bcs .L0831A862
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L0831A854
.L0831A862:
	cmp r0, r1
	bcc .L0831A86A
	subs r0, r0, r1
	orrs r2, r3
.L0831A86A:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L0831A876
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
.L0831A876:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L0831A882
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
.L0831A882:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L0831A88E
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
.L0831A88E:
	cmp r0, #0
	beq .L0831A89A
	lsrs r3, r3, #4
	beq .L0831A89A
	lsrs r1, r1, #4
	b .L0831A862
.L0831A89A:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl .L0831A8A4
	negs r0, r0
.L0831A8A4:
	pop {r4}
	mov pc, lr
.L0831A8A8:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}
	.2byte 0x0000

@ __div0: [sure]
	.thumb
	.align 1, 0
	.global sub_0831A8B4
	.thumb_func
sub_0831A8B4:
	.global __div0
	.thumb_set __div0, sub_0831A8B4
	mov pc, lr
	.2byte 0x0000

@ __muldi3: [likely]
	.thumb
	.align 1, 0
	.global sub_0831A8B8
	.thumb_func
sub_0831A8B8:
	.global __muldi3
	.thumb_set __muldi3, sub_0831A8B8
	push {r4, r5, r6, r7, lr}
	sub sp, #16
	str r0, [sp, #0]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #12]
	ldr r3, [sp, #0]
	ldr r0, [pc, #96]
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #16
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #16
	adds r7, r2, #0
	muls r7, r0
	adds r4, r2, #0
	muls r4, r1
	adds r2, r3, #0
	muls r2, r0
	muls r3, r1
	lsrs r0, r7, #16
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bcs .L0831A8F8
	movs r0, #128
	lsls r0, r0, #9
	adds r3, r3, r0
.L0831A8F8:
	lsrs r0, r4, #16
	adds r6, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #16
	ands r7, r1
	adds r5, r0, #0
	orrs r5, r7
	adds r1, r6, #0
	adds r0, r5, #0
	ldr r3, [sp, #0]
	ldr r4, [sp, #12]
	adds r2, r3, #0
	muls r2, r4
	ldr r7, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r7, #0
	muls r3, r4
	adds r2, r2, r3
	adds r1, r6, r2
	add sp, #16
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.4byte 0x0000FFFF

@ __udivdi3: [likely] 64-bit division helper (976 bytes)
	.thumb
	.align 1, 0
	.global sub_0831A92C
	.thumb_func
sub_0831A92C:
	.global __udivdi3
	.thumb_set __udivdi3, sub_0831A92C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #32
	mov r8, r2
	adds r6, r3, #0
	mov sl, r0
	adds r7, r1, #0
	cmp r6, #0
	beq .L0831A946
	b .L0831AB98
.L0831A946:
	cmp r8, r7
	bls .L0831AA24
	ldr r0, [pc, #16]
	cmp r8, r0
	bhi .L0831A960
	movs r1, #0
	mov r0, r8
	cmp r0, #255
	bls .L0831A96A
	movs r1, #8
	b .L0831A96A
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831A960:
	ldr r0, [pc, #180]
	movs r1, #24
	cmp r8, r0
	bhi .L0831A96A
	movs r1, #16
.L0831A96A:
	ldr r0, [pc, #176]
	lsrs r2, r1
	adds r0, r2, r0
	ldrb r0, [r0, #0]
	adds r0, r0, r1
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	beq .L0831A992
	mov r3, r8
	lsls r3, r2
	mov r8, r3
	lsls r7, r2
	subs r1, r1, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r4, sl
	lsls r4, r2
	mov sl, r4
.L0831A992:
	mov r0, r8
	lsrs r0, r0, #16
	mov r9, r0
	ldr r1, [pc, #132]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #0]
	adds r0, r7, #0
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r7, #0
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r3, [sp, #0]
	adds r2, r6, #0
	muls r2, r3
	lsls r4, r4, #16
	mov r1, sl
	lsrs r0, r1, #16
	orrs r4, r0
	cmp r4, r2
	bcs .L0831A9D6
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L0831A9D6
	cmp r4, r2
	bcs .L0831A9D6
	subs r6, #1
	add r4, r8
.L0831A9D6:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r1, r0, #0
	ldr r3, [sp, #0]
	adds r2, r1, #0
	muls r2, r3
	lsls r5, r5, #16
	ldr r0, [pc, #40]
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bcs .L0831AA0E
	subs r1, #1
	add r5, r8
	cmp r5, r8
	bcc .L0831AA0E
	cmp r5, r2
	bcs .L0831AA0E
	subs r1, #1
.L0831AA0E:
	lsls r6, r6, #16
	orrs r6, r1
	movs r0, #0
	str r0, [sp, #4]
	b .L0831ACE2
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	lsls r1, r1, #29
	lsrs r6, r7, #32
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831AA24:
	cmp r2, #0
	bne .L0831AA32
	movs r0, #1
	movs r1, #0
	bl __udivsi3
	mov r8, r0
.L0831AA32:
	ldr r0, [pc, #16]
	cmp r8, r0
	bhi .L0831AA48
	movs r2, #0
	mov r1, r8
	cmp r1, #255
	bls .L0831AA52
	movs r2, #8
	b .L0831AA52
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831AA48:
	ldr r0, [pc, #36]
	movs r2, #24
	cmp r8, r0
	bhi .L0831AA52
	movs r2, #16
.L0831AA52:
	ldr r0, [pc, #32]
	mov r1, r8
	lsrs r1, r2
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	adds r0, r1, r2
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	bne .L0831AA78
	mov r2, r8
	subs r7, r7, r2
	movs r3, #1
	str r3, [sp, #4]
	b .L0831AB12
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	lsls r1, r1, #29
	lsrs r6, r7, #32
.L0831AA78:
	subs r1, r1, r2
	mov r4, r8
	lsls r4, r2
	mov r8, r4
	adds r5, r7, #0
	lsrs r5, r1
	lsls r7, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r0, sl
	lsls r0, r2
	mov sl, r0
	lsrs r4, r4, #16
	mov r9, r4
	ldr r1, [pc, #252]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #8]
	adds r0, r5, #0
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r3, [sp, #8]
	adds r1, r6, #0
	muls r1, r3
	lsls r4, r4, #16
	lsrs r0, r7, #16
	orrs r4, r0
	cmp r4, r1
	bcs .L0831AAD2
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L0831AAD2
	cmp r4, r1
	bcs .L0831AAD2
	subs r6, #1
	add r4, r8
.L0831AAD2:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #8]
	adds r1, r2, #0
	muls r1, r4
	lsls r5, r5, #16
	ldr r0, [pc, #160]
	ands r7, r0
	orrs r5, r7
	cmp r5, r1
	bcs .L0831AB0A
	subs r2, #1
	add r5, r8
	cmp r5, r8
	bcc .L0831AB0A
	cmp r5, r1
	bcs .L0831AB0A
	subs r2, #1
	add r5, r8
.L0831AB0A:
	lsls r6, r6, #16
	orrs r6, r2
	str r6, [sp, #4]
	subs r7, r5, r1
.L0831AB12:
	mov r0, r8
	lsrs r0, r0, #16
	mov r9, r0
	ldr r1, [pc, #120]
	mov r2, r8
	ands r2, r1
	str r2, [sp, #12]
	adds r0, r7, #0
	mov r1, r9
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r7, #0
	mov r1, r9
	bl __udivsi3
	adds r6, r0, #0
	ldr r3, [sp, #12]
	adds r2, r6, #0
	muls r2, r3
	lsls r4, r4, #16
	mov r1, sl
	lsrs r0, r1, #16
	orrs r4, r0
	cmp r4, r2
	bcs .L0831AB56
	subs r6, #1
	add r4, r8
	cmp r4, r8
	bcc .L0831AB56
	cmp r4, r2
	bcs .L0831AB56
	subs r6, #1
	add r4, r8
.L0831AB56:
	subs r4, r4, r2
	adds r0, r4, #0
	mov r1, r9
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r1, r0, #0
	ldr r3, [sp, #12]
	adds r2, r1, #0
	muls r2, r3
	lsls r5, r5, #16
	ldr r0, [pc, #28]
	mov r4, sl
	ands r4, r0
	orrs r5, r4
	cmp r5, r2
	bcs .L0831AB8E
	subs r1, #1
	add r5, r8
	cmp r5, r8
	bcc .L0831AB8E
	cmp r5, r2
	bcs .L0831AB8E
	subs r1, #1
.L0831AB8E:
	lsls r6, r6, #16
	orrs r6, r1
	b .L0831ACE2
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831AB98:
	cmp r6, r7
	bls .L0831ABA2
	movs r6, #0
	str r6, [sp, #4]
	b .L0831ACE2
.L0831ABA2:
	ldr r0, [pc, #16]
	cmp r6, r0
	bhi .L0831ABB8
	movs r2, #0
	cmp r6, #255
	bls .L0831ABC2
	movs r2, #8
	b .L0831ABC2
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L0831ABB8:
	ldr r0, [pc, #40]
	movs r2, #24
	cmp r6, r0
	bhi .L0831ABC2
	movs r2, #16
.L0831ABC2:
	ldr r0, [pc, #36]
	adds r1, r6, #0
	lsrs r1, r2
	adds r1, r1, r0
	ldrb r1, [r1, #0]
	adds r0, r1, r2
	movs r1, #32
	subs r2, r1, r0
	cmp r2, #0
	bne .L0831ABF0
	cmp r7, r6
	bhi .L0831ABDE
	cmp sl, r8
	bcc .L0831ABEC
.L0831ABDE:
	movs r6, #1
	b .L0831ACDE
	movs r0, r0
	.2byte 0xffff @ .raw
	lsls r7, r7, #3
	lsls r1, r1, #29
	lsrs r6, r7, #32
.L0831ABEC:
	movs r6, #0
	b .L0831ACDE
.L0831ABF0:
	subs r1, r1, r2
	lsls r6, r2
	mov r0, r8
	lsrs r0, r1
	orrs r6, r0
	mov r4, r8
	lsls r4, r2
	mov r8, r4
	adds r5, r7, #0
	lsrs r5, r1
	lsls r7, r2
	mov r0, sl
	lsrs r0, r1
	orrs r7, r0
	mov r0, sl
	lsls r0, r2
	mov sl, r0
	lsrs r1, r6, #16
	mov r9, r1
	ldr r2, [pc, #228]
	ands r2, r6
	str r2, [sp, #16]
	adds r0, r5, #0
	bl __umodsi3
	adds r4, r0, #0
	adds r0, r5, #0
	mov r1, r9
	bl __udivsi3
	adds r3, r0, #0
	ldr r0, [sp, #16]
	adds r1, r3, #0
	muls r1, r0
	lsls r4, r4, #16
	lsrs r0, r7, #16
	orrs r4, r0
	cmp r4, r1
	bcs .L0831AC4E
	subs r3, #1
	adds r4, r4, r6
	cmp r4, r6
	bcc .L0831AC4E
	cmp r4, r1
	bcs .L0831AC4E
	subs r3, #1
	adds r4, r4, r6
.L0831AC4E:
	subs r4, r4, r1
	adds r0, r4, #0
	mov r1, r9
	str r3, [sp, #28]
	bl __umodsi3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r9
	bl __udivsi3
	adds r2, r0, #0
	ldr r4, [sp, #16]
	adds r1, r2, #0
	muls r1, r4
	lsls r5, r5, #16
	ldr r0, [pc, #140]
	ands r7, r0
	orrs r5, r7
	ldr r3, [sp, #28]
	cmp r5, r1
	bcs .L0831AC8A
	subs r2, #1
	adds r5, r5, r6
	cmp r5, r6
	bcc .L0831AC8A
	cmp r5, r1
	bcs .L0831AC8A
	subs r2, #1
	adds r5, r5, r6
.L0831AC8A:
	subs r5, r5, r1
	lsls r6, r3, #16
	orrs r6, r2
	ldr r0, [pc, #104]
	mov r9, r0
	adds r1, r6, #0
	ands r1, r0
	lsrs r3, r6, #16
	mov r0, r8
	mov r2, r9
	ands r0, r2
	mov r4, r8
	lsrs r2, r4, #16
	adds r7, r1, #0
	muls r7, r0
	adds r4, r1, #0
	muls r4, r2
	adds r1, r3, #0
	muls r1, r0
	muls r3, r2
	lsrs r0, r7, #16
	adds r4, r4, r0
	adds r4, r4, r1
	cmp r4, r1
	bcs .L0831ACC2
	movs r0, #128
	lsls r0, r0, #9
	adds r3, r3, r0
.L0831ACC2:
	lsrs r0, r4, #16
	adds r3, r3, r0
	mov r1, r9
	ands r4, r1
	lsls r0, r4, #16
	ands r7, r1
	adds r1, r0, r7
	cmp r3, r5
	bhi .L0831ACDC
	cmp r3, r5
	bne .L0831ACDE
	cmp r1, sl
	bls .L0831ACDE
.L0831ACDC:
	subs r6, #1
.L0831ACDE:
	movs r3, #0
	str r3, [sp, #4]
.L0831ACE2:
	str r6, [sp, #20]
	ldr r4, [sp, #4]
	str r4, [sp, #24]
	ldr r0, [sp, #20]
	ldr r1, [sp, #24]
	add sp, #32
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r2}
	bx r2
	.4byte 0x0000FFFF

@ __udivsi3: [sure]
	.thumb
	.align 1, 0
	.global sub_0831AD00
	.thumb_func
sub_0831AD00:
	.global __udivsi3
	.thumb_set __udivsi3, sub_0831AD00
	cmp r1, #0
	beq .L0831AD6E
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	bcc .L0831AD68
	movs r4, #1
	lsls r4, r4, #28
.L0831AD12:
	cmp r1, r4
	bcs .L0831AD20
	cmp r1, r0
	bcs .L0831AD20
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L0831AD12
.L0831AD20:
	lsls r4, r4, #3
.L0831AD22:
	cmp r1, r4
	bcs .L0831AD30
	cmp r1, r0
	bcs .L0831AD30
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L0831AD22
.L0831AD30:
	cmp r0, r1
	bcc .L0831AD38
	subs r0, r0, r1
	orrs r2, r3
.L0831AD38:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L0831AD44
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
.L0831AD44:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L0831AD50
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
.L0831AD50:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L0831AD5C
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
.L0831AD5C:
	cmp r0, #0
	beq .L0831AD68
	lsrs r3, r3, #4
	beq .L0831AD68
	lsrs r1, r1, #4
	b .L0831AD30
.L0831AD68:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
.L0831AD6E:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

@ __umodsi3: [sure]
	.thumb
	.align 1, 0
	.global sub_0831AD78
	.thumb_func
sub_0831AD78:
	.global __umodsi3
	.thumb_set __umodsi3, sub_0831AD78
	cmp r1, #0
	beq .L0831AE2E
	movs r3, #1
	cmp r0, r1
	bcs .L0831AD84
	mov pc, lr
.L0831AD84:
	push {r4}
	movs r4, #1
	lsls r4, r4, #28
.L0831AD8A:
	cmp r1, r4
	bcs .L0831AD98
	cmp r1, r0
	bcs .L0831AD98
	lsls r1, r1, #4
	lsls r3, r3, #4
	b .L0831AD8A
.L0831AD98:
	lsls r4, r4, #3
.L0831AD9A:
	cmp r1, r4
	bcs .L0831ADA8
	cmp r1, r0
	bcs .L0831ADA8
	lsls r1, r1, #1
	lsls r3, r3, #1
	b .L0831AD9A
.L0831ADA8:
	movs r2, #0
	cmp r0, r1
	bcc .L0831ADB0
	subs r0, r0, r1
.L0831ADB0:
	lsrs r4, r1, #1
	cmp r0, r4
	bcc .L0831ADC2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L0831ADC2:
	lsrs r4, r1, #2
	cmp r0, r4
	bcc .L0831ADD4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L0831ADD4:
	lsrs r4, r1, #3
	cmp r0, r4
	bcc .L0831ADE6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
.L0831ADE6:
	mov ip, r3
	cmp r0, #0
	beq .L0831ADF4
	lsrs r3, r3, #4
	beq .L0831ADF4
	lsrs r1, r1, #4
	b .L0831ADA8
.L0831ADF4:
	movs r4, #14
	lsls r4, r4, #28
	ands r2, r4
	bne .L0831AE00
	pop {r4}
	mov pc, lr
.L0831AE00:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq .L0831AE0E
	lsrs r4, r1, #3
	adds r0, r0, r4
.L0831AE0E:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq .L0831AE1C
	lsrs r4, r1, #2
	adds r0, r0, r4
.L0831AE1C:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq .L0831AE2A
	lsrs r4, r1, #1
	adds r0, r0, r4
.L0831AE2A:
	pop {r4}
	mov pc, lr
.L0831AE2E:
	push {lr}
	bl __div0
	movs r0, #0
	pop {pc}

	.thumb
	.align 1, 0
	.global sub_0831AE38
	.thumb_func
sub_0831AE38:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x0300031D

	.thumb
	.align 1, 0
	.global sub_0831AE48
	.thumb_func
sub_0831AE48:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x030006C1

	.thumb
	.align 1, 0
	.global sub_0831AE58
	.thumb_func
sub_0831AE58:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000779

	.thumb
	.align 1, 0
	.global sub_0831AE68
	.thumb_func
sub_0831AE68:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x030000BD

	.thumb
	.align 1, 0
	.global sub_0831AE78
	.thumb_func
sub_0831AE78:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000001

	.thumb
	.align 1, 0
	.global sub_0831AE88
	.thumb_func
sub_0831AE88:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x030001ED

	.thumb
	.align 1, 0
	.global sub_0831AE98
	.thumb_func
sub_0831AE98:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.2byte 0x46C0
	.4byte 0x03000059

	.thumb
	.align 1, 0
	.global sub_0831AEA8
	.thumb_func
sub_0831AEA8:
	push {r0}
	ldr r0, [pc, #8]
	mov ip, r0
	pop {r0}
	bx ip
	.incbin "baserom.gba", 0x31aeb2, 0x2

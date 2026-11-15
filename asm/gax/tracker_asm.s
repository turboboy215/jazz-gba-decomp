	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAX_umulhi: [sure] ARM umull helper (returns hi word); called in place by GAXTracker_generate_audio
	.arm
	.align 2, 0
	.global sub_0831A3E8
sub_0831A3E8:
	.global GAX_umulhi
	.set GAX_umulhi, sub_0831A3E8
	push {r3, r4}
	umull r3, r4, r0, r1
	mov r0, r4
	pop {r3, r4}
	bx lr

@ GAXTracker_asm: [sure] ARM sample resampler (GAX_ram+0x60); patched by GAX2_init_volboost
	.arm
	.align 2, 0
	.global sub_0831A3FC
sub_0831A3FC:
	.global GAXTracker_asm
	.set GAXTracker_asm, sub_0831A3FC
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

@ GAXTracker_pingpong_asm: [sure] ARM ping-pong loop resampler (GAX_ram+0x64), ends at 0831A528
	.arm
	.align 2, 0
	.global sub_0831A470
sub_0831A470:
	.global GAXTracker_pingpong_asm
	.set GAXTracker_pingpong_asm, sub_0831A470
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

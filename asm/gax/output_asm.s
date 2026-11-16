	.include "asm/macros.inc"
	.syntax unified
	.text
	.incbin "baserom.gba", 0x31a0f4, 0xc

@ GAXOutput_render_asm: [sure] ARM mixer (s16 mix buffer -> s8 output); GAX2_init stores its RAM copy at GAX_ram+0x68
	.arm
	.align 2, 0
	.global sub_0831A100
sub_0831A100:
	.global GAXOutput_render_asm
	.set GAXOutput_render_asm, sub_0831A100
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

@ GAXOutput_lowpass_asm: [sure] ARM; copied only with GAX_LOWPASS_FILTER (GAX_ram+0x70)
	.arm
	.align 2, 0
	.global sub_0831A220
sub_0831A220:
	.global GAXOutput_lowpass_asm
	.set GAXOutput_lowpass_asm, sub_0831A220
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

@ GAXOutput_reverb_asm: [sure] ARM; copied when the song has reverb (GAX_ram+0x6C), called by GAXOutput_render
	.arm
	.align 2, 0
	.global sub_0831A2EC
sub_0831A2EC:
	.global GAXOutput_reverb_asm
	.set GAXOutput_reverb_asm, sub_0831A2EC
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

	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAXSync_render: [likely]
	.thumb
	.align 1, 0
	.global sub_083192C0
	.thumb_func
sub_083192C0:
	.global GAXSync_render
	.thumb_set GAXSync_render, sub_083192C0
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r0, [r2, #4]
	cmp r0, r6
	beq .L08319384
	ldrb r0, [r2, #18]
	cmp r0, #0
	beq .L08319384
	ldrb r0, [r2, #16]
	ldrh r3, [r2, #16]
	ldrb r1, [r2, #20]
	cmp r0, #0
	beq .L0831935C
	movs r4, #0
	strb r4, [r2, #25]
	lsls r0, r1, #24
	cmp r0, #0
	bgt .L0831935C
	ldrb r0, [r2, #26]
	cmp r0, #0
	beq .L083192F8
	strb r4, [r2, #26]
	ldr r1, [r2, #0]
	ldrh r0, [r1, #2]
	strh r0, [r2, #14]
	adds r4, r1, #0
	b .L08319300
.L083192F8:
	ldrh r0, [r2, #14]
	adds r0, #1
	strh r0, [r2, #14]
	ldr r4, [r2, #0]
.L08319300:
	ldrh r3, [r2, #16]
	lsrs r1, r3, #8
	cmp r1, #0
	beq .L08319312
	movs r0, #255
	ands r0, r3
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r2, #16]
.L08319312:
	ldrh r0, [r2, #16]
	subs r1, r0, #1
	movs r5, #0
	strb r1, [r2, #20]
	movs r3, #14
	ldrsh r1, [r2, r3]
	adds r3, r0, #0
	ldrh r7, [r4, #2]
	cmp r1, r7
	blt .L08319354
	strh r5, [r2, #14]
	strh r5, [r2, #28]
	movs r1, #1
	strb r1, [r2, #22]
	ldrh r0, [r2, #12]
	adds r0, #1
	strh r0, [r2, #12]
	movs r7, #12
	ldrsh r0, [r2, r7]
	ldrh r7, [r4, #4]
	cmp r0, r7
	blt .L08319356
	ldrb r0, [r2, #24]
	cmp r0, #0
	beq .L0831934A
	movs r0, #0
	strb r0, [r2, #18]
	strh r5, [r2, #16]
.L0831934A:
	strb r1, [r2, #25]
	ldrh r0, [r4, #6]
	strh r0, [r2, #12]
	ldrh r3, [r2, #16]
	b .L08319356
.L08319354:
	strb r5, [r2, #22]
.L08319356:
	movs r0, #1
	strb r0, [r2, #21]
	b .L08319364
.L0831935C:
	subs r0, r1, #1
	movs r1, #0
	strb r0, [r2, #20]
	strb r1, [r2, #21]
.L08319364:
	movs r0, #255
	ands r0, r3
	cmp r0, #0
	bne .L08319370
	movs r0, #1
	strb r0, [r2, #25]
.L08319370:
	str r6, [r2, #4]
	ldr r0, [r2, #8]
	cmp r0, #0
	bne .L0831937A
	str r6, [r2, #8]
.L0831937A:
	ldrb r0, [r2, #19]
	cmp r0, #0
	beq .L08319384
	subs r0, #1
	strb r0, [r2, #19]
.L08319384:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_080028F4
	.thumb_func
sub_080028F4:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #24]
	cmp r0, #224
	beq .L0800290C
	cmp r0, #224
	blt .L0800291C
	cmp r0, #232
	bgt .L0800291C
	cmp r0, #231
	blt .L0800291C
	b .L0800297C
.L0800290C:
	movs r1, #0
	movs r0, #225
	strb r0, [r2, #24]
	str r1, [r2, #4]
	movs r0, #128
	lsls r0, r0, #13
	str r0, [r2, #0]
	b .L0800296E
.L0800291C:
	movs r3, #3
	ldrb r5, [r2, #30]
	movs r6, #1
	ldr r4, [pc, #84]
.L08002924:
	ldrh r0, [r4, #0]
	adds r1, r0, #0
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq .L08002938
	ldr r0, [r2, #4]
	cmp r1, r0
	bne .L0800290C
.L08002938:
	subs r4, #2
	subs r3, #1
	cmp r3, #0
	bne .L08002924
	ldrb r0, [r2, #24]
	adds r0, #1
	strb r0, [r2, #24]
	ldr r1, [r2, #0]
	ldrh r0, [r2, #0]
	str r0, [r2, #4]
	cmp r1, #0
	bne .L08002966
	ldr r0, [r2, #40]
	adds r1, r0, #0
	adds r1, #172
	adds r0, #173
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldrb r1, [r1, #0]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r0, #5
	str r0, [r2, #0]
.L08002966:
	ldr r0, [r2, #0]
	lsrs r0, r0, #5
	str r0, [r2, #0]
.L0800296C:
	ldrh r1, [r2, #0]
.L0800296E:
	adds r0, r2, #0
	bl sub_080027D4
	b .L080029D4
	movs r0, r0
	lsls r6, r4, #4
	lsls r0, r0, #16
.L0800297C:
	movs r3, #3
	ldrb r5, [r2, #30]
	movs r6, #1
	ldr r4, [pc, #64]
.L08002984:
	ldrh r0, [r4, #0]
	adds r1, r0, #0
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq .L08002998
	ldr r0, [r2, #4]
	cmp r1, r0
	bne .L080029C8
.L08002998:
	subs r4, #2
	subs r3, #1
	cmp r3, #0
	bne .L08002984
	ldrb r0, [r2, #24]
	adds r0, #1
	strb r0, [r2, #24]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #233
	beq .L080029D2
	ldr r0, [r2, #40]
	adds r1, r0, #0
	adds r1, #174
	adds r0, #175
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldrb r1, [r1, #0]
	orrs r0, r1
	str r0, [r2, #0]
	str r0, [r2, #4]
	b .L0800296C
	lsls r6, r4, #4
	lsls r0, r0, #16
.L080029C8:
	adds r0, r2, #0
	bl sub_080023B0
	movs r0, #113
	b .L080029D4
.L080029D2:
	movs r0, #0
.L080029D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080029DC
	.thumb_func
sub_080029DC:
	mov r2, pc
	lsrs r2, r2, #24
	movs r1, #12
	cmp r2, #2
	beq .L080029EE
	movs r1, #13
	cmp r2, #8
	beq .L080029EE
	movs r1, #4
.L080029EE:
	subs r0, r0, r1
	bgt .L080029EE
	bx lr

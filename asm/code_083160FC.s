	.include "asm/macros.inc"
	.syntax unified
	.text

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

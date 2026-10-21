	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08004408
	.thumb_func
sub_08004408:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_080045D4
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #255
	bne .L0800442A
	movs r0, #0
	str r0, [r5, #0]
	b .L080044F6
.L0800442A:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #64]
	adds r0, r0, r1
	str r0, [r5, #0]
	bl sub_0800481C
	ldr r0, [r5, #0]
	movs r1, #0
	mov r9, r1
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, [sp, #28]
	str r2, [r0, #20]
	ldr r0, [r5, #0]
	strb r6, [r0, #9]
	ldr r0, [r5, #0]
	strb r7, [r0, #10]
	ldr r0, [r5, #0]
	mov r1, r8
	strb r1, [r0, #13]
	bl sub_08003DC0
	ldr r1, [r5, #0]
	strb r0, [r1, #1]
	ldr r1, [r5, #0]
	ldrb r0, [r1, #1]
	cmp r0, #255
	bne .L08004478
	ldrb r0, [r1, #0]
	bl sub_080045FC
	mov r2, r9
	str r2, [r5, #0]
	movs r0, #0
	b .L080044F6
	asrs r0, r5, #25
	lsls r0, r0, #12
.L08004478:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004654
	ldr r1, [r5, #0]
	ldrb r1, [r1, #1]
	lsls r3, r1, #3
	ldr r4, [pc, #64]
	adds r3, r3, r4
	mov r2, r8
	lsls r1, r2, #13
	movs r2, #128
	lsls r2, r2, #2
	orrs r1, r2
	orrs r1, r0
	str r1, [r3, #0]
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #28]
	mov r3, r8
	bl sub_08003FBC
	ldr r1, [r5, #0]
	strh r0, [r1, #2]
	ldr r1, [r5, #0]
	ldr r0, [pc, #32]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bne .L080044D0
	ldrb r0, [r1, #1]
	bl sub_08003F00
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0]
	bl sub_080045FC
	mov r0, r9
	str r0, [r5, #0]
	movs r0, #0
	b .L080044F6
	lsrs r0, r3, #25
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
.L080044D0:
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	adds r1, r1, r4
	movs r0, #252
	lsls r0, r0, #8
	ldrh r2, [r1, #4]
	ands r0, r2
	strh r0, [r1, #4]
	ldr r2, [r5, #0]
	ldrb r0, [r2, #1]
	lsls r1, r0, #3
	adds r1, r1, r4
	ldr r0, [pc, #24]
	ldrh r2, [r2, #2]
	ands r0, r2
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	movs r0, #1
.L080044F6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x000003FF

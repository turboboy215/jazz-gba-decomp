	.include "asm/macros.inc"
	.syntax unified
	.text

@ MultiSioSendDataSet: [sure] Nintendo MultiSio sample library, older revision (cf. SAT-R/sa2 src/multi_sio.c)
	.thumb
	.align 1, 0
	.global sub_080039F0
	.thumb_func
sub_080039F0:
	.global MultiSioSendDataSet
	.thumb_set MultiSioSendDataSet, sub_080039F0
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r4, [pc, #152]
	ldr r3, [r4, #28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #17
	negs r2, r2
	ldrb r5, [r3, #1]
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #1]
	ldr r5, [r4, #28]
	ldr r1, [pc, #132]
	movs r3, #1
	adds r2, r3, #0
	ldrb r1, [r1, #3]
	ands r2, r1
	lsls r2, r2, #5
	movs r1, #33
	negs r1, r1
	ldrb r7, [r5, #1]
	ands r1, r7
	orrs r1, r2
	strb r1, [r5, #1]
	ldr r2, [r4, #28]
	ldrb r5, [r4, #6]
	lsls r1, r5, #25
	lsrs r1, r1, #31
	ands r3, r1
	lsls r3, r3, #6
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #1]
	ands r1, r7
	orrs r1, r3
	strb r1, [r2, #1]
	ldr r2, [r4, #28]
	ldrb r1, [r4, #11]
	strb r1, [r2, #0]
	ldr r3, [r4, #28]
	ldrb r2, [r4, #2]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	ldrb r2, [r4, #3]
	eors r2, r1
	movs r1, #15
	ands r2, r1
	movs r1, #16
	negs r1, r1
	ldrb r5, [r3, #1]
	ands r1, r5
	orrs r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #28]
	strh r6, [r1, #2]
	ldr r1, [r4, #28]
	adds r1, #4
	ldr r2, [pc, #48]
	bl CpuSet
	movs r2, #0
	ldr r1, [r4, #28]
.L08003A70:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r6, r6, r0
	adds r2, #1
	cmp r2, #9
	bls .L08003A70
	ldr r0, [r4, #28]
	mvns r1, r6
	subs r1, #12
	strh r1, [r0, #2]
	movs r0, #1
	strb r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000970
	.4byte 0x03000AF0
	.4byte 0x04000004

@ MultiSioRecvDataCheck: [sure] Nintendo MultiSio sample library, older revision (cf. SAT-R/sa2 src/multi_sio.c)
	.thumb
	.align 1, 0
	.global sub_08003A9C
	.thumb_func
sub_08003A9C:
	.global MultiSioRecvDataCheck
	.thumb_set MultiSioRecvDataCheck, sub_08003A9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	ldr r0, [pc, #280]
	movs r1, #0
	mov r8, r1
	bl _call_via_r0
	lsls r0, r0, #24
	ldr r2, [pc, #272]
	mov r3, r8
	strb r3, [r2, #3]
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #6]
	ands r1, r7
	strb r1, [r2, #6]
	cmp r0, #0
	beq .L08003B4E
	movs r4, #3
	adds r6, r2, #0
	movs r0, #13
	negs r0, r0
	mov sl, r0
.L08003AD4:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [r6, #44]
	adds r1, r1, r0
	mov r8, r1
	movs r3, #0
	movs r2, #0
	subs r1, r4, #1
	str r1, [sp, #4]
	mov r1, r8
.L08003AEA:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #9
	bls .L08003AEA
	lsls r0, r3, #16
	asrs r0, r0, #16
	mov r5, r8
	adds r5, #4
	cmp r0, sl
	bne .L08003B3A
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r6, #3]
	orrs r0, r2
	strb r0, [r6, #3]
	ldrb r2, [r6, #6]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	mov r3, r8
	ldrb r3, [r3, #1]
	lsls r0, r3, #26
	lsrs r0, r0, #31
	lsls r0, r4
	orrs r0, r1
	movs r1, #15
	ands r0, r1
	movs r7, #16
	negs r7, r7
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #6]
	lsls r1, r4, #4
	add r1, r9
	adds r0, r5, #0
	ldr r2, [pc, #148]
	bl CpuSet
.L08003B3A:
	movs r0, #0
	str r0, [sp, #0]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, [pc, #140]
	bl CpuSet
	ldr r4, [sp, #4]
	cmp r4, #0
	bge .L08003AD4
.L08003B4E:
	ldr r5, [pc, #120]
	ldrb r2, [r5, #2]
	lsls r0, r2, #28
	lsrs r0, r0, #28
	ldrb r4, [r5, #3]
	orrs r0, r4
	movs r1, #15
	ands r0, r1
	movs r1, #16
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	lsrs r2, r1, #4
	lsls r0, r1, #28
	lsrs r0, r0, #28
	orrs r2, r0
	lsls r2, r2, #4
	movs r3, #15
	ands r3, r1
	orrs r3, r2
	strb r3, [r5, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq .L08003C04
	ldrb r0, [r5, #0]
	cmp r0, #8
	bne .L08003BD4
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L08003BA2
	lsls r0, r4, #24
	lsrs r0, r0, #24
	lsrs r1, r3, #4
	cmp r0, r1
	bne .L08003BA2
	movs r0, #16
	ldrb r1, [r5, #6]
	orrs r0, r1
	strb r0, [r5, #6]
.L08003BA2:
	ldr r4, [pc, #36]
	ldrb r5, [r4, #6]
	lsls r2, r5, #28
	lsrs r2, r2, #28
	movs r0, #14
	ldrb r7, [r4, #2]
	lsrs r3, r7, #4
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne .L08003BEC
	movs r0, #64
	orrs r0, r5
	strb r0, [r4, #6]
	b .L08003BEC
	movs r0, r0
	strb r4, [r3, #4]
	lsrs r1, r6, #32
	lsrs r0, r6, #5
	lsls r0, r0, #12
	movs r4, r0
	lsls r0, r0, #16
	movs r4, r0
	lsls r0, r0, #20
.L08003BD4:
	mov r2, r8
	ldrb r2, [r2, #1]
	lsls r0, r2, #25
	lsrs r0, r0, #31
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #65
	negs r0, r0
	ldrb r3, [r5, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #6]
.L08003BEC:
	ldr r2, [pc, #40]
	mov r7, r8
	ldrb r7, [r7, #1]
	lsls r1, r7, #27
	lsrs r1, r1, #31
	lsls r1, r1, #5
	movs r0, #33
	negs r0, r0
	ldrb r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #6]
.L08003C04:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #3]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x03000970

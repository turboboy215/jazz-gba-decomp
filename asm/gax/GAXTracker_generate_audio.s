	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAXTracker_generate_audio: [likely] calls RAM-resident ARM mixer
	.thumb
	.align 1, 0
	.global sub_08319C60
	.thumb_func
sub_08319C60:
	.global GAXTracker_generate_audio
	.thumb_set GAXTracker_generate_audio, sub_08319C60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	adds r4, r0, #0
	mov r8, r1
	str r2, [sp, #32]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov sl, r3
	ldr r5, [r4, #44]
	cmp r5, #0
	beq .L08319CA8
	movs r0, #14
	ldrsh r1, [r4, r0]
	ldr r0, [pc, #40]
	cmp r1, r0
	beq .L08319CA8
	ldrb r0, [r4, #4]
	cmp r0, #3
	bhi .L08319CA8
	ldrb r2, [r4, #4]
	adds r0, r5, #1
	adds r0, r0, r2
	ldrb r0, [r0, #0]
	lsls r0, r0, #3
	ldr r3, [sp, #32]
	ldr r1, [r3, #20]
	adds r1, r1, r0
	str r1, [sp, #36]
	ldr r0, [r1, #0]
	adds r5, r2, #0
	cmp r0, #0
	bne .L08319CB0
.L08319CA8:
	movs r0, #0
	b .L08319F1A
	ldrh r0, [r2, #22]
	.2byte 0xffff @ .raw
.L08319CB0:
	movs r1, #14
	ldrsh r0, [r4, r1]
	movs r2, #16
	ldrsh r1, [r4, r2]
	adds r2, r0, r1
	ldrb r0, [r4, #19]
	cmp r0, #0
	bne .L08319CE6
	adds r0, r4, #0
	adds r0, #68
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r2, r2, r0
	mov r0, sl
	cmp r0, #0
	bne .L08319CE6
	mov r1, r8
	movs r3, #12
	ldrsh r0, [r1, r3]
	ldr r1, [r4, #52]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #5
	adds r2, r2, r0
.L08319CE6:
	ldr r0, [r4, #44]
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #24
	ldrsh r0, [r0, r1]
	adds r2, r2, r0
	ldr r0, [pc, #60]
	cmp r2, r0
	ble .L08319CFE
	adds r2, r0, #0
.L08319CFE:
	cmp r2, #0
	bge .L08319D04
	movs r2, #0
.L08319D04:
	ldr r0, [pc, #48]
	cmp r2, r0
	ble .L08319D44
	ldr r0, [pc, #48]
	ldr r3, [pc, #48]
	adds r1, r2, r3
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	lsls r6, r0, #1
	ldrb r0, [r4, #10]
	mov r9, r0
	ldrb r7, [r4, #11]
	ldrb r1, [r4, #20]
	mov ip, r1
	ldrb r3, [r4, #12]
	mov r2, r8
	ldrb r2, [r2, #23]
	mov r8, r2
	mov r0, sl
	lsls r0, r0, #2
	str r0, [sp, #40]
	add r5, sp, #4
	b .L08319D7E
	lsrs r1, r6, #27
	movs r0, r0
	lsrs r7, r7, #21
	movs r0, r0
	movs r0, r1
	lsrs r6, r7, #32
	.2byte 0xf280, 0xffff @ bl 0x859ad42
.L08319D44:
	ldr r1, [pc, #396]
	adds r2, r2, r1
	movs r1, #0
	ldr r6, [pc, #396]
	ldrb r3, [r4, #10]
	mov r9, r3
	ldrb r7, [r4, #11]
	ldrb r0, [r4, #20]
	mov ip, r0
	ldrb r3, [r4, #12]
	mov r0, r8
	ldrb r0, [r0, #23]
	mov r8, r0
	mov r0, sl
	lsls r0, r0, #2
	str r0, [sp, #40]
	add r5, sp, #4
	cmp r2, #0
	bge .L08319D76
	movs r0, #192
	lsls r0, r0, #1
.L08319D6E:
	adds r2, r2, r0
	adds r1, #1
	cmp r2, #0
	blt .L08319D6E
.L08319D76:
	lsls r0, r2, #2
	adds r0, r0, r6
	ldr r6, [r0, #0]
	asrs r6, r1
.L08319D7E:
	mov r0, r9
	muls r0, r7
	asrs r0, r0, #8
	mov r1, ip
	muls r1, r0
	adds r0, r1, #0
	asrs r0, r0, #8
	muls r0, r3
	asrs r0, r0, #8
	mov r2, r8
	muls r2, r0
	adds r0, r2, #0
	asrs r7, r0, #8
	mov r3, sl
	cmp r3, #0
	bne .L08319DA6
	ldr r1, [sp, #32]
	ldrh r0, [r1, #8]
	muls r0, r7
	lsrs r7, r0, #8
.L08319DA6:
	ldr r0, [pc, #308]
	ldr r2, [r0, #0]
	adds r0, r2, #0
	adds r0, #88
	ldrb r1, [r0, #0]
	lsrs r7, r1
	adds r3, r2, #0
	adds r3, #118
	adds r0, r7, #0
	lsls r0, r1
	ldrh r1, [r3, #0]
	adds r0, r0, r1
	strh r0, [r3, #0]
	adds r0, r2, #0
	adds r0, #64
	ldr r2, [sp, #40]
	adds r0, r0, r2
	ldr r1, [r0, #0]
	adds r0, r6, #0
	ldr r3, [pc, #272]
	bl sub_0831A7F0
	str r0, [sp, #0]
	movs r0, #0
	mov r8, r0
	ldr r3, [r4, #44]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r2, r0, #3
	adds r0, r3, r2
	ldrb r0, [r0, #26]
	cmp r0, #0
	bne .L08319E02
	adds r1, r3, #0
	adds r1, #32
	adds r1, r1, r2
	adds r0, r3, #0
	adds r0, #36
	adds r0, r0, r2
	ldr r1, [r1, #0]
	ldr r0, [r0, #0]
	cmp r1, r0
	bge .L08319E02
	movs r1, #1
	mov r8, r1
.L08319E02:
	ldr r2, [sp, #36]
	ldr r0, [r2, #4]
	lsls r6, r0, #11
	ldr r2, [pc, #208]
	ldr r1, [r2, #0]
	ldr r0, [r1, #56]
	str r0, [r5, #4]
	ldr r0, [r1, #44]
	ldrh r0, [r0, #4]
	str r0, [r5, #8]
	str r7, [r5, #20]
	ldr r0, [sp, #0]
	str r0, [r5, #24]
	adds r7, r2, #0
	mov r3, r8
	cmp r3, #0
	beq .L08319E44
	ldr r2, [r4, #44]
	ldrb r0, [r4, #4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r0, r2, #0
	adds r0, #36
	adds r0, r0, r1
	ldr r0, [r0, #0]
	lsls r6, r0, #11
	adds r2, #32
	adds r2, r2, r1
	ldr r1, [r2, #0]
	subs r0, r0, r1
	lsls r0, r0, #11
	str r0, [r5, #16]
.L08319E44:
	ldrb r3, [r4, #6]
	cmp r3, #0
	beq .L08319E64
	ldr r1, [r4, #44]
	ldrb r2, [r4, #4]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, #40
	adds r1, r1, r0
	ldr r0, [r4, #60]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	lsls r6, r0, #11
	lsls r1, r1, #11
	str r1, [r5, #16]
.L08319E64:
	asrs r0, r6, #11
	ldr r2, [sp, #36]
	ldr r1, [r2, #0]
	adds r1, r1, r0
	str r1, [sp, #4]
	ldr r0, [r4, #56]
	subs r0, r0, r6
	str r0, [r5, #12]
	mov r0, r8
	cmp r0, #0
	bne .L08319E8C
	cmp r3, #0
	bne .L08319EF0
	ldr r1, [sp, #32]
	ldr r0, [r1, #20]
	ldr r1, [sp, #4]
	ldr r0, [r0, #0]
	subs r1, r1, r0
	lsls r1, r1, #11
	str r1, [r5, #16]
.L08319E8C:
	cmp r3, #0
	bne .L08319EF0
	mov r2, r8
	cmp r2, #0
	beq .L08319EF0
	ldr r2, [r4, #44]
	ldrb r1, [r4, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrb r0, [r2, #27]
	cmp r0, #0
	beq .L08319EF0
	movs r1, #5
	ldrsb r1, [r4, r1]
	ldr r0, [r5, #24]
	muls r0, r1
	str r0, [r5, #24]
	ldr r0, [r7, #0]
	ldr r1, [r0, #100]
	adds r0, r5, #0
	bl sub_0831A7E8
	ldr r0, [r5, #24]
	cmp r0, #0
	bge .L08319EE4
	movs r0, #255
	strb r0, [r4, #5]
	ldr r0, [r5, #12]
	adds r0, r0, r6
	ldr r1, [r5, #16]
	subs r0, r0, r1
	str r0, [r4, #56]
	b .L08319F18
	movs r0, r0
	.2byte 0xf400, 0xffff @ bl 0x7f1aed6
	movs r0, r1
	lsrs r6, r7, #32
	lsrs r4, r1, #12
	lsls r0, r0, #12
	add r3, pc, #928
	lsrs r1, r6, #32
.L08319EE4:
	movs r0, #1
	strb r0, [r4, #5]
	ldr r0, [r5, #12]
	adds r0, r0, r6
	str r0, [r4, #56]
	b .L08319F18
.L08319EF0:
	ldr r0, [r7, #0]
	ldr r1, [r0, #96]
	adds r0, r5, #0
	bl sub_0831A7E8
	ldr r0, [r5, #12]
	adds r0, r0, r6
	str r0, [r4, #56]
	cmp r0, #0
	bge .L08319F18
	movs r0, #0
	ldr r1, [pc, #36]
	strh r1, [r4, #14]
	strh r0, [r4, #30]
	ldrb r0, [r4, #18]
	cmp r0, #0
	bne .L08319F18
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r4, #64]
.L08319F18:
	movs r0, #1
.L08319F1A:
	add sp, #44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00008AD0

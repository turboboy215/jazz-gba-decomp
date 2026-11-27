	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08306EBC
	.thumb_func
sub_08306EBC:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0830A000
	adds r6, r0, #0
	cmp r6, #1
	bne .L08306F34
	adds r7, r5, #0
	adds r7, #226
	ldrb r4, [r7, #0]
	adds r4, #1
	bl sub_0800314C
	cmp r4, r0
	bgt .L08306F34
	movs r2, #0
	movs r0, #20
	strb r0, [r5, #5]
	adds r1, r5, #0
	adds r1, #60
	movs r0, #41
	strb r0, [r1, #0]
	strb r6, [r5, #2]
	strb r6, [r5, #3]
	adds r0, r5, #0
	adds r0, #208
	str r2, [r0, #0]
	strb r2, [r5, #4]
	subs r0, #162
	strb r6, [r0, #0]
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [pc, #40]
	adds r0, r4, #0
	movs r3, #0
	bl sub_080002E0
	ldrb r0, [r7, #0]
	cmp r0, #0
	beq .L08306F16
	ldrb r1, [r7, #0]
	adds r1, #2
	adds r0, r4, #0
	bl sub_0800075C
.L08306F16:
	adds r1, r5, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	b .L08306F38
	movs r0, r0
	ldmia r7, {r4, r5, r6, r7}
	lsrs r0, r2, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	ldr r1, [r0, #116]
	lsrs r0, r6, #32
.L08306F34:
	movs r0, #0
	strb r0, [r5, #1]
.L08306F38:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08306F40
	.thumb_func
sub_08306F40:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #208
	ldr r0, [r1, #0]
	cmp r0, #0
	beq .L08306F8A
	ldr r0, [r0, #52]
	str r0, [r4, #52]
	ldr r0, [r1, #0]
	ldr r0, [r0, #56]
	str r0, [r4, #56]
	ldr r2, [r1, #0]
	adds r0, r2, #0
	adds r0, #90
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble .L08306F70
	ldrh r0, [r2, #24]
	cmp r0, #0
	bne .L08306F8A
.L08306F70:
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #24]
	strb r1, [r4, #3]
	adds r0, r4, #0
	bl sub_08309D50
	adds r0, r4, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	b .L083070EE
.L08306F8A:
	movs r6, #0
	movs r2, #100
	adds r2, r2, r4
	mov r8, r2
	b .L083070DE
.L08306F94:
	lsls r0, r6, #5
	subs r0, r0, r6
	lsls r0, r0, #3
	ldr r7, [pc, #84]
	adds r5, r0, r7
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306FB0
	b .L083070DC
.L08306FB0:
	adds r1, r4, #0
	adds r1, #208
	ldr r2, [r1, #0]
	cmp r2, #0
	beq .L08306FBC
	b .L083070DC
.L08306FBC:
	ldrh r0, [r5, #24]
	cmp r0, #0
	bne .L08306FF4
	adds r0, r4, #0
	adds r0, #226
	ldrb r3, [r0, #0]
	ldrb r2, [r5, #0]
	cmp r3, r2
	bne .L08306FD0
	b .L083070DC
.L08306FD0:
	str r5, [r1, #0]
	ldrb r0, [r0, #0]
	adds r0, #1
	strh r0, [r5, #24]
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r5, [r5, #0]
	cmp r5, r0
	beq .L08306FE8
	b .L083070E8
.L08306FE8:
	movs r0, #32
	bl sub_083189D0
	b .L083070E8
	movs r5, #12
	lsls r0, r0, #12
.L08306FF4:
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	ldrb r3, [r5, #0]
	cmp r0, r3
	bne .L083070DC
	ldr r0, [pc, #64]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	ldr r0, [pc, #56]
	strb r2, [r0, #0]
	ldrh r0, [r5, #24]
	subs r0, #1
	lsls r4, r0, #5
	subs r4, r4, r0
	lsls r4, r4, #3
	adds r4, r4, r7
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	bne .L08307054
	ldr r2, [pc, #32]
	ldrb r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #20]
	movs r0, #5
	movs r1, #19
	bl sub_08004914
	b .L083070B8
	ldrh r4, [r1, r0]
	lsls r0, r0, #12
	ldrh r1, [r6, r0]
	lsls r0, r0, #12
	add r7, sp, #288
	lsrs r5, r7, #32
	add r7, sp, #384
	lsrs r5, r7, #32
.L08307054:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r5, #0]
	cmp r1, r0
	bne .L08307090
	ldr r2, [pc, #36]
	movs r0, #5
	movs r1, #18
	bl sub_08004914
	ldr r2, [pc, #28]
	ldrh r1, [r5, #24]
	subs r1, #1
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
	b .L083070B8
	add r7, sp, #480
	lsrs r5, r7, #32
	add r7, sp, #576
	lsrs r5, r7, #32
.L08307090:
	ldr r2, [pc, #64]
	ldrb r3, [r5, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #18
	bl sub_08004968
	ldr r2, [pc, #56]
	ldrh r1, [r5, #24]
	subs r1, #1
	lsls r0, r1, #5
	subs r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r3, [r0, #0]
	adds r3, #1
	movs r0, #5
	movs r1, #19
	bl sub_08004968
.L083070B8:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r2, [r5, #0]
	cmp r2, r0
	bne .L083070CC
	movs r0, #7
	bl sub_083189D0
.L083070CC:
	movs r0, #0
	strh r0, [r5, #24]
	b .L083070E8
	movs r0, r0
	add r7, sp, #288
	lsrs r5, r7, #32
	add r7, sp, #672
	lsrs r5, r7, #32
.L083070DC:
	adds r6, #1
.L083070DE:
	bl sub_0800314C
	cmp r6, r0
	bcs .L083070E8
	b .L08306F94
.L083070E8:
	mov r0, r8
	bl sub_08000704
.L083070EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083070F8
	.thumb_func
sub_083070F8:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #4
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	movs r5, #1
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830715A
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L08307158
	strb r0, [r4, #3]
	b .L0830715A
	movs r0, r0
	ldrsb r0, [r4, r6]
	lsrs r3, r1, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	strb r1, [r4, #5]
	lsrs r0, r6, #32
.L08307158:
	strb r5, [r4, #3]
.L0830715A:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307160
	.thumb_func
sub_08307160:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08307186
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #0
	bne .L08307182
	strb r0, [r5, #3]
	b .L083071B4
.L08307182:
	movs r0, #1
	strb r0, [r5, #3]
.L08307186:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000704
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083071B4
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L083071B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

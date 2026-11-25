	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08306E54
	.thumb_func
sub_08306E54:
	push {r4, lr}
	ldr r4, [pc, #36]
	ldr r3, [pc, #36]
	ldrh r2, [r3, #0]
	ldrh r0, [r3, #0]
	lsls r0, r0, #8
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #16
	orrs r0, r2
	ldrh r2, [r3, #0]
	lsls r2, r2, #24
	orrs r0, r2
	asrs r1, r0, #31
	str r0, [r4, #0]
	str r1, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03005938
	.4byte 0x04000006

	.thumb
	.align 1, 0
	.global sub_08306E84
	.thumb_func
sub_08306E84:
	push {r4, lr}
	ldr r4, [pc, #32]
	ldr r0, [r4, #0]
	ldr r1, [r4, #4]
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	bl __muldi3
	ldr r2, [pc, #28]
	ldr r3, [pc, #32]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [r4, #0]
	str r3, [r4, #4]
	ldr r0, [r4, #0]
	pop {r4}
	pop {r1}
	bx r1
	.4byte 0x03005938
	.4byte 0x0019660D
	.4byte 0x00000000
	.4byte 0x3C6EF35F
	.4byte 0x00000000

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

	.thumb
	.align 1, 0
	.global sub_083071BC
	.thumb_func
sub_083071BC:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307245

	.thumb
	.align 1, 0
	.global sub_08307200
	.thumb_func
sub_08307200:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307245

	.thumb
	.align 1, 0
	.global sub_08307244
	.thumb_func
sub_08307244:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307276
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307276:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830727C
	.thumb_func
sub_0830727C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #59
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307305

	.thumb
	.align 1, 0
	.global sub_083072C0
	.thumb_func
sub_083072C0:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #5
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #61
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081F4CB0
	.4byte 0x08309E79
	.4byte 0x08307305

	.thumb
	.align 1, 0
	.global sub_08307304
	.thumb_func
sub_08307304:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307336
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307336:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0830733C
	.thumb_func
sub_0830733C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #6
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #60
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x081FAC80
	.4byte 0x08309E79
	.4byte 0x08307381

	.thumb
	.align 1, 0
	.global sub_08307380
	.thumb_func
sub_08307380:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083073B2
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L083073B2:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083073B8
	.thumb_func
sub_083073B8:
	push {lr}
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083073C8
	.thumb_func
sub_083073C8:
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #5]
	cmp r0, #3
	bne .L083073E0
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
	b .L083073EA
	movs r0, r0
	strb r1, [r4, #19]
	lsrs r0, r6, #32
.L083073E0:
	cmp r0, #17
	bne .L083073F4
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #12]
.L083073EA:
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #100
	bl sub_080006AC
.L083073F4:
	pop {r0}
	bx r0
	.4byte 0x0830779D

	.thumb
	.align 1, 0
	.global sub_083073FC
	.thumb_func
sub_083073FC:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r0, #3
	strb r0, [r6, #5]
	adds r1, r6, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r6, #2]
	strb r0, [r6, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r1, #1
	strb r0, [r1, #0]
	adds r4, r6, #0
	adds r4, #100
	ldr r5, [pc, #76]
	adds r0, r6, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	adds r2, r0, #0
	lsls r2, r2, #24
	lsrs r2, r2, #24
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_080002E0
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	ldr r0, [r6, #52]
	ldr r1, [r6, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08307466
	adds r0, r6, #0
	adds r0, #52
	adds r1, r6, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L08307466:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x080BE790
	.4byte 0x08309E79
	.4byte 0x08307479

	.thumb
	.align 1, 0
	.global sub_08307478
	.thumb_func
sub_08307478:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #44]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083074B8
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
	b .L083074D8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083074B8:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	bl sub_08001E18
	adds r1, r0, #0
	lsls r1, r1, #24
	lsrs r1, r1, #24
	adds r0, r4, #0
	bl sub_08000680
	adds r0, r4, #0
	bl sub_080006AC
.L083074D8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_083074E0
	.thumb_func
sub_083074E0:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830757C
	adds r4, r6, #0
	adds r4, #226
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	adds r5, r4, #0
	adds r4, #3
	cmp r0, #0
	beq .L0830750A
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08307522
.L0830750A:
	ldrb r0, [r5, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830751C
	ldrb r0, [r4, #0]
	cmp r0, #1
	beq .L08307522
.L0830751C:
	ldrb r4, [r4, #0]
	cmp r4, #2
	bne .L08307574
.L08307522:
	movs r0, #32
	bl sub_083189D0
	ldrb r0, [r5, #0]
	bl sub_08001DF4
	ldrb r0, [r5, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L0830755C
	adds r1, r6, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307574
	ldr r0, [pc, #16]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
	b .L08307574
	movs r0, r0
	sub sp, #112
	lsrs r5, r7, #32
.L0830755C:
	adds r1, r6, #0
	adds r1, #228
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307574
	ldr r0, [pc, #28]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
.L08307574:
	adds r1, r6, #0
	adds r1, #200
	ldr r0, [pc, #12]
	str r0, [r1, #0]
.L0830757C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DB09C
	.4byte 0x08307479

	.thumb
	.align 1, 0
	.global sub_0830758C
	.thumb_func
sub_0830758C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
.L08307592:
	movs r0, #152
	adds r1, r5, #0
	muls r1, r0
	ldr r0, [pc, #36]
	adds r4, r1, r0
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq .L083075C4
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne .L083075C4
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083075C4
	adds r0, r4, #0
	bl sub_082FA350
	movs r0, #1
	b .L083075CC
	cmp r0, #252
	lsls r0, r0, #12
.L083075C4:
	adds r5, #1
	cmp r5, #19
	bls .L08307592
	movs r0, #0
.L083075CC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083075D4
	.thumb_func
sub_083075D4:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #17
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r5, #1
	strb r5, [r4, #2]
	strb r5, [r4, #3]
	adds r0, r4, #0
	adds r0, #46
	strb r5, [r0, #0]
	adds r0, #1
	strb r5, [r0, #0]
	adds r0, #179
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08307614
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L0830761E
	movs r0, #0
	strh r0, [r4, #10]
	b .L08307624
.L08307614:
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307622
.L0830761E:
	strh r5, [r4, #10]
	b .L08307624
.L08307622:
	strh r1, [r4, #10]
.L08307624:
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830765C
	ldrh r0, [r4, #10]
	cmp r0, #0
	bne .L08307648
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldr r2, [pc, #8]
	b .L0830766A
	movs r0, r0
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #224
	lsrs r5, r7, #32
.L08307648:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	ldr r2, [pc, #8]
	ldrb r2, [r2, #0]
	b .L0830766C
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #224
	lsrs r5, r7, #32
.L0830765C:
	ldrh r0, [r4, #10]
	cmp r0, #0
	bne .L0830767C
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #12]
	ldr r2, [pc, #12]
.L0830766A:
	ldrb r2, [r2, #1]
.L0830766C:
	movs r3, #0
	bl sub_080002E0
	b .L0830768C
	cmp r6, #72
	lsrs r7, r3, #32
	sub sp, #236
	lsrs r5, r7, #32
.L0830767C:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #60]
	ldr r2, [pc, #64]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
.L0830768C:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #52]
	str r0, [r1, #0]
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083076B8
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
.L083076B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x081F2E48
	.4byte 0x083DB0BB
	.4byte 0x08309E79
	.4byte 0x083076D1

	.thumb
	.align 1, 0
	.global sub_083076D0
	.thumb_func
sub_083076D0:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L083076EE
	adds r0, r5, #0
	bl sub_0830758C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083076EE
	adds r0, r5, #0
	bl sub_083073C8
.L083076EE:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #44]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307728
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	b .L08307790
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L08307728:
	adds r0, r5, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307760
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L0830774C
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	sub sp, #224
	lsrs r5, r7, #32
.L0830774C:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	sub sp, #224
	lsrs r5, r7, #32
.L08307760:
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L0830777C
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #12]
	ldrb r1, [r0, #1]
	adds r0, r4, #0
	bl sub_08000680
	b .L0830778A
	movs r0, r0
	sub sp, #236
	lsrs r5, r7, #32
.L0830777C:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #20]
	ldrb r1, [r0, #0]
	adds r0, r4, #0
	bl sub_08000680
.L0830778A:
	adds r0, r4, #0
	bl sub_080006AC
.L08307790:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x083DB0BB

	.thumb
	.align 1, 0
	.global sub_0830779C
	.thumb_func
sub_0830779C:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083077BC
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #8]
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08000680
	b .L083077CA
	sub sp, #224
	lsrs r5, r7, #32
.L083077BC:
	adds r4, r5, #0
	adds r4, #100
	ldr r0, [pc, #76]
	ldrb r1, [r0, #2]
	adds r0, r4, #0
	bl sub_08000680
.L083077CA:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830783C
	ldrh r0, [r5, #10]
	cmp r0, #0
	bne .L08307830
	adds r4, r5, #0
	adds r4, #226
	ldrb r0, [r4, #0]
	bl sub_08001DF4
	ldrb r0, [r4, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L08307818
	adds r1, r5, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307830
	ldr r0, [pc, #20]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
	b .L08307830
	movs r0, r0
	sub sp, #236
	lsrs r5, r7, #32
	sub sp, #112
	lsrs r5, r7, #32
.L08307818:
	adds r1, r5, #0
	adds r1, #227
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08307830
	ldr r0, [pc, #32]
	ldrb r1, [r1, #0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1, #0]
	bl sub_0831638C
.L08307830:
	adds r0, r5, #0
	adds r0, #200
	ldr r1, [pc, #16]
	str r1, [r0, #0]
	movs r0, #1
	strh r0, [r5, #10]
.L0830783C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083DB09C
	.4byte 0x083076D1

	.thumb
	.align 1, 0
	.global sub_0830784C
	.thumb_func
sub_0830784C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #7
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #227
	ldrb r1, [r0, #0]
	subs r0, #179
	strb r1, [r0, #0]
	adds r0, #178
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08307898
	cmp r0, #1
	bgt .L08307882
	cmp r0, #0
	beq .L08307888
	b .L083078F4
.L08307882:
	cmp r0, #2
	beq .L083078CC
	b .L083078F4
.L08307888:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	movs r2, #0
	b .L083078A0
	movs r0, r0
	bpl .L083078F8
	lsrs r3, r1, #32
.L08307898:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #40]
	movs r2, #7
.L083078A0:
	movs r3, #0
	bl sub_080002E0
	ldr r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r2, #1
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0830790A
	adds r0, r4, #0
	adds r0, #52
	adds r1, r4, #0
	adds r1, #56
	movs r2, #1
	bl sub_08000A70
	b .L0830790A
	movs r0, r0
	.2byte 0xd530 @ bpl.n 0x830792c
	lsrs r3, r1, #32
.L083078CC:
	lsls r0, r1, #24
	cmp r0, #0
	bne .L083078E0
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #4]
	movs r2, #2
	b .L083078E8
	.2byte 0xd530 @ bpl.n 0x8307940
	lsrs r3, r1, #32
.L083078E0:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	movs r2, #1
.L083078E8:
	movs r3, #0
	bl sub_080002E0
	b .L0830790A
	.2byte 0xd530 @ bpl.n 0x8307954
	lsrs r3, r1, #32
.L083078F4:
	adds r1, r4, #0
	adds r1, #226
.L083078F8:
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #28]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
.L0830790A:
	adds r1, r4, #0
	adds r1, #212
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080BD530
	.4byte 0x08309E79
	.4byte 0x0830792D

	.thumb
	.align 1, 0
	.global sub_0830792C
	.thumb_func
sub_0830792C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #226
	ldrb r0, [r6, #0]
	cmp r0, #2
	beq .L08307952
	cmp r0, #2
	ble .L08307944
	cmp r0, #3
	beq .L0830798A
	b .L083079A8
.L08307944:
	cmp r0, #0
	blt .L083079A8
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	b .L083079A8
.L08307952:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083079A8
	movs r0, #3
	strb r0, [r6, #0]
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L0830797A
	adds r0, r4, #0
	movs r1, #6
	bl sub_08000680
	b .L08307982
.L0830797A:
	adds r0, r4, #0
	movs r1, #5
	bl sub_08000680
.L08307982:
	adds r0, r4, #0
	bl sub_080006AC
	b .L08307AAE
.L0830798A:
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083079A2
	ldr r0, [r5, #52]
	adds r0, #128
	b .L083079A6
.L083079A2:
	ldr r0, [r5, #52]
	subs r0, #128
.L083079A6:
	str r0, [r5, #52]
.L083079A8:
	ldr r4, [pc, #36]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08307A8C
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08307A24
	cmp r0, #1
	bgt .L083079D4
	cmp r0, #0
	beq .L083079DA
	b .L08307A8C
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083079D4:
	cmp r0, #3
	bgt .L08307A8C
	b .L08307A70
.L083079DA:
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L083079F2
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L083079FE
.L083079F2:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L083079FE:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	ldr r1, [pc, #16]
	ldrh r0, [r1, #0]
	adds r0, #10
	strh r0, [r1, #0]
	movs r0, #16
	bl sub_083189D0
	b .L08307AAE
	ldrb r5, [r6, #10]
	lsrs r0, r6, #32
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A24:
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08307A3C
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L08307A48
.L08307A3C:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #4
	bl sub_08000680
.L08307A48:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #200
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	ldrh r0, [r1, #0]
	adds r0, #5
	strh r0, [r1, #0]
	movs r0, #18
	bl sub_083189D0
	b .L08307AAE
	movs r0, r0
	ldrb r5, [r6, #10]
	lsrs r0, r6, #32
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A70:
	adds r0, r5, #0
	bl sub_08309D50
	ldr r1, [pc, #16]
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	movs r0, #30
	bl sub_083189D0
	b .L08307AAE
	movs r0, r0
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08307A8C:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307AAE
	adds r0, r5, #0
	bl sub_08309D50
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
.L08307AAE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307AB4
	.thumb_func
sub_08307AB4:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307ACA
	adds r0, r4, #0
	bl sub_08309D50
.L08307ACA:
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307AD0
	.thumb_func
sub_08307AD0:
	adds r0, #204
	ldr r1, [r0, #0]
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #31
	bx lr
	.4byte 0x23011C02
	.4byte 0x680030D8
	.4byte 0x2807380D
	.4byte 0x0080D82D
	.4byte 0x18404901
	.4byte 0x46876800
	.4byte 0x083DAFC0
	.4byte 0xE0034800
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x20006450
	.4byte 0xE01D6410
	.4byte 0xE00F2000
	.4byte 0xE0042000
	.4byte 0xE0134800
	.4byte 0xFFFFFF00
	.4byte 0x64504802
	.4byte 0x00402080
	.4byte 0xE00F6410
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x48016450
	.4byte 0xE0076410
	.4byte 0xFFFFFF00
	.4byte 0x00402080
	.4byte 0x64106450
	.4byte 0x2300E000
	.4byte 0xD0032B00
	.4byte 0x31C81C11
	.4byte 0x60084801
	.4byte 0x00004770
	.4byte 0x08307EE1

	.thumb
	.align 1, 0
	.global sub_08307B5C
	.thumb_func
sub_08307B5C:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #2
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r6, [r3, #0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #2
	beq .L08307BFA
	cmp r0, #2
	bgt .L08307BC8
	cmp r0, #1
	beq .L08307BD2
	b .L08307C28
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
.L08307BC8:
	cmp r0, #3
	beq .L08307C18
	cmp r0, #4
	beq .L08307C1C
	b .L08307C28
.L08307BD2:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307C28
.L08307BFA:
	strh r5, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307C28
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08307C18:
	strh r5, [r4, #26]
	strh r5, [r4, #28]
.L08307C1C:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307C28:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307C30
	.thumb_func
sub_08307C30:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r2, #7
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r6, [r3, #0]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #2
	beq .L08307CCE
	cmp r0, #2
	bgt .L08307C9C
	cmp r0, #1
	beq .L08307CA6
	b .L08307CFC
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
.L08307C9C:
	cmp r0, #3
	beq .L08307CEC
	cmp r0, #4
	beq .L08307CF0
	b .L08307CFC
.L08307CA6:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307CFC
.L08307CCE:
	strh r5, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307CFC
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08307CEC:
	strh r5, [r4, #26]
	strh r5, [r4, #28]
.L08307CF0:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307CFC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307D04
	.thumb_func
sub_08307D04:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #42
	strb r0, [r1, #0]
	movs r0, #1
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	subs r1, #14
	strb r0, [r1, #0]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #21
	bhi .L08307D4C
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r7, #12
	lsls r0, r0, #12
	add r7, sp, #896
	lsrs r5, r7, #32
	movs r2, #3
	b .L08307D4E
	movs r2, #5
	b .L08307D4E
	movs r2, #4
	b .L08307D4E
	movs r2, #1
	b .L08307D4E
	movs r2, #6
	b .L08307D4E
.L08307D4C:
	movs r2, #0
.L08307D4E:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #56]
	movs r3, #0
	bl sub_080002E0
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #48]
	str r0, [r1, #0]
	subs r1, #8
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	adds r2, r4, #0
	adds r2, #200
	ldr r1, [pc, #40]
	adds r3, r4, #0
	adds r3, #226
	ldrb r5, [r3, #0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	str r0, [r2, #0]
	ldrb r0, [r3, #0]
	cmp r0, #4
	bhi .L08307DFA
	lsls r0, r0, #2
	ldr r1, [pc, #20]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	add r3, pc, #576
	lsrs r3, r1, #32
	ldrb r5, [r3, #11]
	lsrs r0, r6, #32
	ldr r6, [sp, #484]
	lsrs r0, r6, #32
	sub sp, #480
	lsrs r5, r7, #32
	add sp, #224
	lsrs r5, r7, #32
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #64]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	lsls r0, r0, #2
	str r0, [r4, #68]
	adds r0, r4, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #6
	strh r0, [r4, #26]
	b .L08307DFA
	movs r0, #0
	strh r0, [r4, #26]
	ldr r1, [pc, #20]
	adds r0, r4, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r0, [r0, #0]
	strh r0, [r4, #28]
	b .L08307DFA
	movs r0, r0
	ldr r0, [r0, r5]
	lsls r0, r0, #12
	movs r0, #0
	strh r0, [r4, #26]
	strh r0, [r4, #28]
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	strh r0, [r4, #10]
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	strh r0, [r4, #12]
.L08307DFA:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08307E00
	.thumb_func
sub_08307E00:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r7, r0, #0
	adds r5, r1, #0
	ldr r0, [r7, #68]
	cmp r0, #0
	bge .L08307E18
	movs r0, #0
	b .L08307E74
.L08307E18:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	movs r1, #0
	bl sub_0800062C
	mov r9, r0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000614
	mov r8, r0
	ldr r6, [r5, #52]
	asrs r6, r6, #8
	mov r2, r9
	movs r1, #0
	ldrsh r0, [r2, r1]
	subs r6, r6, r0
	ldr r5, [r5, #56]
	asrs r5, r5, #8
	movs r3, #2
	ldrsh r0, [r2, r3]
	subs r5, r5, r0
	ldr r0, [r7, #52]
	asrs r0, r0, #8
	ldr r1, [r7, #56]
	asrs r1, r1, #8
	mov r7, r8
	movs r4, #4
	ldrsh r2, [r7, r4]
	adds r2, r6, r2
	movs r4, #6
	ldrsh r3, [r7, r4]
	adds r3, r5, r3
	movs r4, #8
	ldrsh r7, [r7, r4]
	mov r9, r7
	add r6, r9
	str r6, [sp, #0]
	mov r7, r8
	movs r6, #10
	ldrsh r4, [r7, r6]
	adds r5, r5, r4
	str r5, [sp, #4]
	bl sub_08000BDC
.L08307E74:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307E84
	.thumb_func
sub_08307E84:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #28]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08307E00
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08307EAC
	adds r1, r5, #0
	adds r1, #204
	ldr r0, [r1, #0]
	cmp r0, r4
	beq .L08307EB8
	str r4, [r1, #0]
	b .L08307EB8
	movs r5, #12
	lsls r0, r0, #12
.L08307EAC:
	adds r2, r5, #0
	adds r2, #204
	ldr r0, [r2, #0]
	cmp r0, r4
	bne .L08307EB8
	str r1, [r2, #0]
.L08307EB8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08307EC0
	.thumb_func
sub_08307EC0:
	adds r3, r1, #0
	ldr r2, [pc, #24]
	adds r1, r2, #0
	adds r1, #204
	ldr r1, [r1, #0]
	cmp r1, r0
	bne .L08307ED8
	ldr r0, [r2, #52]
	adds r0, r0, r3
	str r0, [r2, #52]
	ldr r0, [r1, #56]
	str r0, [r2, #56]
.L08307ED8:
	bx lr
	.2byte 0x0000
	.4byte 0x0300250C

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08004164
	.thumb_func
sub_08004164:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [pc, #20]
	ldrb r1, [r0, #1]
	adds r3, r0, #0
	cmp r1, #4
	bls .L08004174
	b .L08004356
.L08004174:
	lsls r0, r1, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
	adds r3, #32
	lsrs r5, r7, #32
	ldr r2, [pc, #16]
	ldr r0, [r2, #0]
	ldr r1, [pc, #16]
	ands r0, r1
	cmp r0, #0
	bne .L08004196
	b .L08004356
.L08004196:
	movs r0, #1
	strb r0, [r2, #1]
	b .L08004356
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #3
	ldr r0, [pc, #16]
	ldrb r1, [r0, #0]
	cmp r1, #1
	bne .L080041BC
	ldrb r0, [r0, #2]
	cmp r0, #5
	bhi .L080041B4
	b .L08004356
.L080041B4:
	b .L080041C6
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
.L080041BC:
	ldr r1, [pc, #60]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
.L080041C6:
	ldr r0, [pc, #56]
	movs r5, #0
	str r5, [r0, #0]
	ldr r1, [pc, #52]
	movs r0, #192
	strh r0, [r1, #0]
	ldr r0, [pc, #52]
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne .L08004218
	ldr r2, [pc, #32]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r3, [pc, #40]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #64
	orrs r0, r1
	strh r0, [r2, #0]
	strh r4, [r3, #0]
	b .L08004238
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	.2byte 0xf318 @ .raw
	lsls r0, r0, #3
	lsls r0, r1, #8
	lsls r0, r0, #16
.L08004218:
	ldr r2, [pc, #40]
	ldrh r0, [r2, #0]
	movs r3, #129
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r3, [pc, #32]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L08004238:
	ldr r0, [pc, #16]
	movs r1, #0
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #1]
	b .L08004356
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	ldr r0, [pc, #16]
	ldr r6, [r0, #8]
	adds r4, r6, #0
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L08004268
	adds r4, r0, #0
	b .L0800426E
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
.L08004268:
	cmp r6, #0
	bge .L0800426E
	movs r4, #0
.L0800426E:
	cmp r2, #0
	beq .L08004274
	str r4, [r2, #0]
.L08004274:
	ldr r1, [pc, #92]
	ldrb r0, [r1, #0]
	cmp r0, #1
	beq .L080042BA
	ldr r0, [r1, #20]
	cmp r0, r4
	bge .L0800429C
	adds r3, r1, #0
	ldr r5, [r3, #4]
.L08004286:
	ldr r2, [r3, #20]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r3, #16]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r3, #16]
	adds r2, #1
	str r2, [r3, #20]
	cmp r2, r4
	blt .L08004286
.L0800429C:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L080042C2
	ldr r2, [pc, #44]
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	adds r0, r0, r1
	str r0, [r2, #12]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne .L080042BA
	movs r0, #1
	strb r0, [r2, #3]
.L080042BA:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	bgt .L080042CA
.L080042C2:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #2]
	cmp r0, #74
	bne .L08004356
.L080042CA:
	ldr r1, [pc, #8]
	movs r0, #3
	strb r0, [r1, #1]
	b .L08004356
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
	ldr r3, [pc, #80]
	movs r4, #0
	strh r4, [r3, #0]
	ldr r2, [pc, #80]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #80]
	ands r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r1, [pc, #72]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #128
	lsls r0, r0, #6
	str r0, [r1, #0]
	adds r0, #3
	str r0, [r1, #0]
	ldr r2, [pc, #56]
	movs r0, #0
	movs r1, #0
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r2, [pc, #52]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08004318
	ldr r1, [pc, #48]
	movs r0, #0
	str r0, [r1, #0]
.L08004318:
	ldr r0, [pc, #44]
	movs r1, #192
	strh r1, [r0, #0]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08004352
	strb r4, [r2, #2]
	movs r0, #4
	strb r0, [r2, #1]
	b .L08004356
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #8
	lsls r0, r0, #16
	.2byte 0xff3f @ .raw
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	ldrb r3, [r3, #2]
	cmp r3, #2
	bls .L08004356
.L08004352:
	movs r0, #1
	b .L08004360
.L08004356:
	ldr r1, [pc, #16]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
.L08004360:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000AF0

@ Obj_InitAll: [sure] (nonmatching)
	.thumb
	.align 1, 0
	.global sub_0800436C
	.thumb_func
sub_0800436C:
	.global Obj_InitAll
	.thumb_set Obj_InitAll, sub_0800436C
	push {r4, lr}
	movs r0, #0
	ldr r3, [pc, #12]
	movs r4, #255
.L08004374:
	adds r2, r0, #1
	cmp r2, #128
	beq .L08004384
	adds r0, r0, r3
	strb r2, [r0, #0]
	b .L0800438C
	movs r2, #104
	lsls r0, r0, #12
.L08004384:
	adds r1, r0, r3
	ldrb r0, [r1, #0]
	orrs r0, r4
	strb r0, [r1, #0]
.L0800438C:
	adds r0, r2, #0
	cmp r0, #127
	bls .L08004374
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	movs r0, #255
	str r0, [r1, #0]
	bl Oam_Init
	bl sub_08003F94
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030022E8
	.4byte 0x030022EC

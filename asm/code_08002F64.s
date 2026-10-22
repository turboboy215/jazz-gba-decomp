	.include "asm/macros.inc"
	.syntax unified
	.text

@ Link_EnterGame: [likely] after linking: clears VRAM, Obj_InitAll, prints, starts GAX
	.thumb
	.align 1, 0
	.global sub_08002F64
	.thumb_func
sub_08002F64:
	.global Link_EnterGame
	.thumb_set Link_EnterGame, sub_08002F64
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r4, [pc, #176]
	ldrb r3, [r4, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #6]
	strh r1, [r2, #6]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #8]
	strh r1, [r2, #8]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #10]
	strh r1, [r2, #10]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #12]
	strh r1, [r2, #12]
	ldr r1, [r4, #16]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	movs r7, #1
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	beq .L08002FF0
	lsls r0, r3, #2
	adds r0, #68
	adds r2, r0, r4
	lsls r0, r3, #4
	adds r1, r0, r6
.L08002FB2:
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #10]
	strh r0, [r1, #10]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #12]
	strh r0, [r1, #12]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	subs r2, #4
	subs r1, #16
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne .L08002FB2
.L08002FF0:
	bl sub_0800347C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08003014
	ldr r0, [pc, #36]
	ldrh r0, [r0, #0]
	movs r4, #4
	ands r4, r0
	bl sub_0800347C
	lsls r0, r0, #24
	lsls r4, r4, #16
	lsrs r4, r4, #16
	lsrs r0, r0, #24
	cmp r4, r0
	beq .L08003014
	movs r7, #0
.L08003014:
	movs r4, #0
	ldr r5, [pc, #12]
	b .L08003058
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	.2byte 0xffff @ .raw
	movs r0, r0
.L08003028:
	cmp r4, #1
	beq .L08003042
	cmp r4, #1
	bcc .L0800303A
	cmp r4, #2
	beq .L08003046
	cmp r4, #3
	beq .L0800304E
	b .L08003056
.L0800303A:
	ldrh r0, [r6, #0]
	cmp r0, r5
	bne .L08003056
	b .L08003054
.L08003042:
	ldrh r2, [r6, #16]
	b .L08003050
.L08003046:
	ldrh r0, [r6, #32]
	cmp r0, r5
	bne .L08003056
	b .L08003054
.L0800304E:
	ldrh r2, [r6, #48]
.L08003050:
	cmp r2, r5
	bne .L08003056
.L08003054:
	movs r7, #0
.L08003056:
	adds r4, #1
.L08003058:
	bl sub_0800314C
	cmp r4, r0
	bcc .L08003028
	cmp r7, #1
	bne .L08003070
	ldr r1, [pc, #4]
	movs r0, #0
	b .L08003076
	movs r0, r0
	ldr r4, [r2, r2]
	lsls r0, r0, #12
.L08003070:
	ldr r1, [pc, #24]
	ldr r0, [r1, #0]
	adds r0, #1
.L08003076:
	str r0, [r1, #0]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #119
	bls .L0800310C
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L08003094
	ldr r4, [r2, r2]
	lsls r0, r0, #12
.L08003090:
	bl VBlankIntrWait
.L08003094:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08003090
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl Obj_InitAll
	bl VBlankIntrWait
	ldr r2, [pc, #40]
	movs r0, #0
	movs r1, #6
	bl sub_08004914
	ldr r2, [pc, #36]
	movs r0, #0
	movs r1, #13
	bl sub_08004914
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #14
	bl sub_08004914
.L080030F2:
	b .L080030F2
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	adds r1, #160
	lsrs r5, r7, #32
	adds r1, #192
	lsrs r5, r7, #32
	adds r1, #224
	lsrs r5, r7, #32
.L0800310C:
	ldr r2, [pc, #48]
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L08003138
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	str r1, [r2, #12]
	str r0, [r2, #16]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L08003138
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
.L08003138:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D38
	.4byte 0x04000128
	.4byte 0x0400010E

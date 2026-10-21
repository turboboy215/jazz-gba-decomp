	.include "asm/macros.inc"
	.syntax unified
	.text

@ Obj_Update: [sure] state -> OAM shadow entry (nonmatching)
	.thumb
	.align 1, 0
	.global sub_080046DC
	.thumb_func
sub_080046DC:
	.global Obj_Update
	.thumb_set Obj_Update, sub_080046DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne .L08004714
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #28]
	adds r1, r1, r2
	ldr r0, [pc, #28]
	ldrh r3, [r1, #0]
	ands r0, r3
	strh r0, [r1, #0]
	ldrb r5, [r5, #1]
	lsls r0, r5, #3
	adds r0, r0, r2
	movs r2, #128
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	b .L08004808
	lsrs r0, r3, #25
	lsls r0, r0, #12
	.2byte 0xfcff @ .raw
	movs r0, r0
.L08004714:
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	ldr r4, [pc, #100]
	adds r2, r2, r4
	ldr r0, [r2, #0]
	ldr r1, [pc, #100]
	ands r0, r1
	str r0, [r2, #0]
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	bl sub_08004654
	ldrb r1, [r5, #1]
	lsls r2, r1, #3
	adds r2, r2, r4
	ldrb r3, [r5, #13]
	lsls r1, r3, #13
	orrs r1, r0
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldrb r6, [r5, #14]
	cmp r6, #0
	beq .L08004788
	ldrh r0, [r5, #2]
	bl sub_08004080
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	ldr r2, [r5, #20]
	ldrb r3, [r5, #13]
	bl VramMap_Alloc
	movs r2, #0
	strh r0, [r5, #2]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r4
	movs r0, #252
	lsls r0, r0, #8
	ldrh r3, [r1, #4]
	ands r0, r3
	strh r0, [r1, #4]
	ldrb r1, [r5, #1]
	lsls r0, r1, #3
	adds r0, r0, r4
	ldrh r1, [r0, #4]
	ldrh r3, [r5, #2]
	orrs r1, r3
	strh r1, [r0, #4]
	strb r2, [r5, #14]
	strb r2, [r5, #15]
	b .L080047A0
	movs r0, r0
	lsrs r0, r3, #25
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #7
.L08004788:
	ldrb r0, [r5, #15]
	cmp r0, #0
	beq .L080047A0
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #10]
	ldr r3, [r5, #20]
	ldrb r4, [r5, #13]
	str r4, [sp, #0]
	bl sub_0800404C
	strb r6, [r5, #15]
.L080047A0:
	ldrb r0, [r5, #16]
	cmp r0, #0
	beq .L080047CA
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #100]
	adds r1, r1, r2
	ldr r0, [pc, #100]
	ldrh r3, [r1, #4]
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #4]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldrb r2, [r5, #12]
	lsls r0, r2, #12
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	strb r3, [r5, #16]
.L080047CA:
	ldrb r3, [r5, #1]
	lsls r0, r3, #3
	ldr r3, [pc, #64]
	adds r0, r0, r3
	ldr r1, [pc, #68]
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	ldrb r0, [r5, #19]
	cmp r0, #0
	beq .L080047F2
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r3
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
.L080047F2:
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r1, [r5, #17]
	lsls r0, r1, #12
	ldrb r5, [r5, #18]
	lsls r1, r5, #13
	orrs r0, r1
	ldrh r3, [r2, #2]
	orrs r0, r3
	strh r0, [r2, #2]
.L08004808:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03000E58
	.4byte 0x00000FFF
	.4byte 0x0000F3FF

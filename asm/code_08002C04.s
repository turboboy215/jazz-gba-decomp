	.include "asm/macros.inc"
	.syntax unified
	.text

@ Link_Session: [likely] installs VBlank_LinkError (080033CD), runs a link session via a callback
	.thumb
	.align 1, 0
	.global sub_08002C04
	.thumb_func
sub_08002C04:
	.global Link_Session
	.thumb_set Link_Session, sub_08002C04
	push {r4, r5, lr}
	sub sp, #80
	ldr r2, [pc, #48]
	movs r1, #1
	strh r1, [r2, #0]
	subs r2, #212
	movs r1, #0
	strh r1, [r2, #0]
	ldr r3, [pc, #40]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r4, #128
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	orrs r1, r0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08002C44
	ldrh r1, [r3, #0]
	b .L08002C78
	movs r0, r0
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002C44:
	ldr r4, [pc, #116]
	ldr r5, [pc, #120]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002094
	ldr r0, [pc, #112]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq .L08002C62
	bl _call_via_r0
	cmp r0, #0
	bne .L08002C62
	b .L08002E94
.L08002C62:
	ldr r0, [pc, #100]
	ldr r0, [r0, #0]
	bl sub_08002A30
	ldr r2, [pc, #96]
	ldrh r1, [r2, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08002C44
	ldrh r1, [r2, #0]
.L08002C78:
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	bne .L08002C44
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #64]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08002CE8
	ldr r1, [pc, #64]
	movs r0, #6
	bl sub_08001FC8
	movs r0, #6
	bl sub_08001FA0
	ldr r1, [pc, #56]
	ldr r2, [pc, #56]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, [pc, #48]
	movs r0, #192
	strh r0, [r1, #0]
	b .L08002CF6
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r2, r5, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	adds r1, #105
	lsrs r0, r0, #32
	lsls r4, r1, #4
	lsls r0, r0, #16
	strh r0, [r4, #30]
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08002CE8:
	ldr r1, [pc, #84]
	movs r0, #7
	bl sub_08001FC8
	movs r0, #7
	bl sub_08001FA0
.L08002CF6:
	ldr r2, [pc, #76]
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq .L08002D06
	b .L08002DFE
.L08002D06:
	adds r4, r2, #0
.L08002D08:
	bl VBlankIntrWait
	ldr r0, [pc, #56]
	ldr r1, [pc, #60]
	bl sub_08002094
	ldr r0, [pc, #56]
	ldr r0, [r0, #0]
	cmp r0, #1
	bhi .L08002D8A
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L08002DEA
	bl _call_via_r0
	cmp r0, #0
	bne .L08002D7C
	ldr r0, [pc, #40]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08002D58
	movs r0, #6
	bl sub_08001FD8
	b .L08002D5E
	movs r0, r0
	adds r1, #105
	lsrs r0, r0, #32
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002D58:
	movs r0, #7
	bl sub_08001FD8
.L08002D5E:
	movs r0, #4
	movs r1, #14
	movs r2, #26
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	bl sub_08002A30
	movs r0, #0
	strb r0, [r4, #4]
	movs r0, #255
	strb r0, [r4, #5]
	movs r0, #0
	b .L08002F14
.L08002D7C:
	movs r0, #4
	movs r1, #15
	movs r2, #26
	movs r3, #0
	bl sub_080049D4
	b .L08002DEA
.L08002D8A:
	movs r0, #4
	movs r1, #14
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #12
	movs r1, #19
	movs r2, #6
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #40]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08002DEA
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L08002DD4
	movs r0, #4
	movs r1, #15
	movs r2, #22
	movs r3, #0
	bl sub_080049D4
	b .L08002DDE
	lsls r0, r5, #4
	lsls r0, r0, #16
	ldr r4, [r4, r2]
	lsls r0, r0, #12
.L08002DD4:
	movs r0, #4
	movs r1, #15
	ldr r2, [pc, #68]
	bl sub_08004914
.L08002DDE:
	ldr r1, [pc, #68]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #120
	bhi .L08002EA6
.L08002DEA:
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	bl sub_08002A30
	movs r1, #5
	ldrsb r1, [r4, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq .L08002D08
.L08002DFE:
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r0, [pc, #32]
	ldrb r0, [r0, #5]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	bne .L08002E34
	ldr r1, [pc, #24]
	movs r0, #6
	bl sub_08001FC8
	b .L08002E3C
	adds r1, #136
	lsrs r5, r7, #32
	ldr r0, [r4, r2]
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
	adds r2, #153
	lsrs r0, r0, #32
.L08002E34:
	ldr r1, [pc, #80]
	movs r0, #7
	bl sub_08001FC8
.L08002E3C:
	movs r0, #0
	bl sub_08002A30
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r2, [pc, #60]
	movs r0, #1
	negs r0, r0
	str r0, [r2, #0]
	ldr r1, [pc, #56]
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L08002ED0
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	beq .L08002EF0
	add r4, sp, #64
	movs r5, #111
.L08002E70:
	strh r5, [r4, #0]
	bl VBlankIntrWait
	adds r0, r4, #0
	mov r1, sp
	bl Link_EnterGame
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	bne .L08002E70
	b .L08002EF0
	adds r2, #153
	lsrs r0, r0, #32
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
.L08002E94:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #0
	bl sub_08002A30
	movs r0, #0
	b .L08002F14
.L08002EA6:
	movs r0, #0
	bl sub_08002A30
	ldr r0, [pc, #28]
	movs r1, #0
	strb r1, [r0, #4]
	movs r1, #255
	strb r1, [r0, #5]
	bl sub_08002F28
	movs r0, #4
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	b .L08002F14
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L08002ED0:
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	beq .L08002EF0
	mov r4, sp
.L08002EDA:
	movs r0, #1
	movs r1, #7
	bl IntrWait
	add r0, sp, #64
	mov r1, sp
	bl Link_EnterGame
	ldrh r0, [r4, #0]
	cmp r0, #111
	bne .L08002EDA
.L08002EF0:
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r1, [pc, #28]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0]
	ldr r1, [pc, #24]
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #24]
	movs r0, #0
	bl sub_08001FC8
	movs r0, #1
.L08002F14:
	add sp, #80
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03000D38
	.4byte 0x0400012A
	.4byte 0x080033CD

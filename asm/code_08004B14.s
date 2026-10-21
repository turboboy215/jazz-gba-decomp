	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08004B14
	.thumb_func
sub_08004B14:
	push {lr}
	sub sp, #12
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2, #0]
	cmp r0, #80
	beq .L08004B2A
	cmp r0, #112
	beq .L08004B2A
	movs r0, #0
	b .L08004B5E
.L08004B2A:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r0, #125
	beq .L08004B48
	mov r0, sp
	adds r1, r3, r0
.L08004B36:
	ldrb r0, [r2, #0]
	strb r0, [r1, #0]
	adds r1, #1
	adds r3, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r2, #1
	cmp r0, #125
	bne .L08004B36
.L08004B48:
	subs r3, #1
	mov r0, sp
	adds r1, r0, r3
	movs r0, #0
	strb r0, [r1, #0]
	mov r0, sp
	bl sub_08004A8C
	ldr r1, [pc, #8]
	strb r0, [r1, #13]
	movs r0, #1
.L08004B5E:
	add sp, #12
	pop {r1}
	bx r1
	.4byte 0x030024F0

	.thumb
	.align 1, 0
	.global sub_08004B68
	.thumb_func
sub_08004B68:
	lsls r0, r0, #24
	lsrs r1, r0, #24
	adds r2, r1, #0
	subs r2, #48
	lsls r0, r2, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08004B7C
	adds r0, r2, #0
	b .L08004BA2
.L08004B7C:
	adds r0, r1, #0
	subs r0, #97
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #5
	bhi .L08004B8E
	adds r0, r1, #0
	subs r0, #87
	b .L08004BA2
.L08004B8E:
	adds r0, r1, #0
	subs r0, #65
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #5
	bls .L08004B9E
	movs r0, #0
	b .L08004BA2
.L08004B9E:
	adds r0, r1, #0
	subs r0, #55
.L08004BA2:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004BA4
	.thumb_func
sub_08004BA4:
	ldr r1, [pc, #24]
	ands r0, r1
	ldr r3, [pc, #24]
	ldr r2, [pc, #28]
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1, #0]
	cmp r1, r0
	beq .L08004BCC
	movs r0, #0
	b .L08004BCE
	lsls r7, r7, #15
	movs r0, r0
	movs r0, #0
	lsls r0, r0, #8
	adds r6, #0
	lsls r0, r0, #8
.L08004BCC:
	movs r0, #1
.L08004BCE:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004BD0
	.thumb_func
sub_08004BD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r9, r1
	lsls r0, r5, #16
	lsrs r0, r0, #16
	mov r8, r0
	adds r5, r5, r2
	cmp r5, #0
	beq .L08004C3C
	ldr r0, [pc, #28]
	lsls r1, r5, #1
	adds r2, r1, r0
	ldrh r3, [r2, #0]
	ldr r0, [pc, #24]
	mov ip, r1
	cmp r3, r0
	beq .L08004C14
	adds r4, r3, #0
	ldr r0, [pc, #20]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b .L08004C84
	movs r0, #0
	lsls r0, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
.L08004C14:
	ldr r6, [pc, #20]
	ldrh r7, [r6, #0]
	adds r0, r7, #0
	cmp r0, r3
	beq .L08004C34
	ldrh r4, [r6, #0]
	ldr r0, [pc, #12]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L08004C5A
	movs r5, #4
	lsls r0, r0, #12
	cmp r0, #0
	lsls r0, r0, #8
.L08004C34:
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	cmp r2, r0
	bne .L08004C44
.L08004C3C:
	movs r0, #0
	b .L08004C86
	movs r5, #0
	lsls r0, r0, #12
.L08004C44:
	ldrh r4, [r1, #0]
	ldr r2, [pc, #76]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r1, r4, #1
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r7, [r0, #0]
	strh r1, [r6, #0]
.L08004C5A:
	ldr r0, [pc, #56]
	lsls r2, r4, #1
	adds r0, r2, r0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, [pc, #48]
	add r0, ip
	strh r4, [r0, #0]
	ldr r0, [pc, #48]
	adds r2, r2, r0
	strh r5, [r2, #0]
	mov r1, r8
	lsls r0, r1, #5
	add r0, r9
	lsls r1, r4, #5
	movs r2, #192
	lsls r2, r2, #19
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
.L08004C84:
	adds r0, r4, #0
.L08004C86:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02002800
	.4byte 0x02002000
	.4byte 0x02003600

	.thumb
	.align 1, 0
	.global sub_08004CA0
	.thumb_func
sub_08004CA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [pc, #108]
	ands r5, r0
	cmp r5, #0
	beq .L08004D64
	ldr r7, [pc, #104]
	lsls r2, r5, #1
	adds r6, r2, r7
	ldrh r0, [r6, #0]
	subs r0, #1
	strh r0, [r6, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L08004D64
	ldr r1, [pc, #92]
	ldr r4, [pc, #92]
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [pc, #88]
	adds r3, r1, #0
	ldrh r1, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	movs r2, #1
	eors r2, r5
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, r3
	bne .L08004D5C
	adds r1, r0, #0
	ldr r0, [pc, #60]
	ldrh r3, [r0, #0]
	adds r6, r0, #0
	cmp r3, r2
	beq .L08004D02
	adds r4, r7, #0
.L08004CF6:
	adds r1, r3, #0
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r3, [r0, #0]
	cmp r3, r2
	bne .L08004CF6
.L08004D02:
	ldr r0, [pc, #32]
	cmp r1, r0
	bne .L08004D2C
	ldr r0, [pc, #12]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L08004D3A
	lsls r7, r7, #15
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
	movs r0, #0
	lsls r0, r0, #8
	adds r6, #0
	lsls r0, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
	movs r5, #4
	lsls r0, r0, #12
.L08004D2C:
	ldr r2, [pc, #32]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
.L08004D3A:
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	ands r2, r5
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r3, [pc, #16]
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	strh r2, [r3, #0]
	b .L08004D64
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
	.2byte 0xfffe @ .raw
	movs r0, r0
	movs r5, #0
	lsls r0, r0, #12
.L08004D5C:
	ldr r1, [pc, #12]
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	strh r5, [r1, #0]
.L08004D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002504

	.thumb
	.align 1, 0
	.global sub_08004D70
	.thumb_func
sub_08004D70:
	push {r4, lr}
	movs r1, #0
	ldr r4, [pc, #156]
	ldr r0, [pc, #160]
	adds r3, r0, #0
	ldr r2, [pc, #160]
.L08004D7C:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004D7C
	movs r1, #0
	ldr r4, [pc, #144]
	ldr r2, [pc, #136]
	adds r3, r2, #0
	ldr r2, [pc, #144]
.L08004D94:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004D94
	movs r1, #0
	ldr r4, [pc, #128]
	ldr r0, [pc, #112]
	adds r3, r0, #0
	ldr r2, [pc, #128]
.L08004DAC:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004DAC
	movs r1, #0
	ldr r3, [pc, #104]
	ldr r2, [pc, #112]
.L08004DC0:
	adds r0, r1, #2
	strh r0, [r2, #0]
	adds r2, #4
	adds r1, r0, #0
	cmp r1, r3
	bls .L08004DC0
	ldr r1, [pc, #96]
	ldr r0, [pc, #100]
	adds r2, r1, r0
	ldr r0, [pc, #68]
	adds r3, r0, #0
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r2, [pc, #88]
	adds r1, r1, r2
	ldrh r0, [r1, #0]
	orrs r0, r3
	strh r0, [r1, #0]
	ldr r1, [pc, #84]
	movs r0, #2
	strh r0, [r1, #0]
	ldr r1, [pc, #80]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #76]
	strh r3, [r0, #0]
	movs r1, #0
	movs r2, #0
	movs r0, #192
	lsls r0, r0, #19
.L08004E02:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #31
	bls .L08004E02
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x00000FFF
	.4byte 0x0000FFFF
	.4byte 0x02000000
	.4byte 0x000003FF
	.4byte 0x02002000
	.4byte 0x000006FF
	.4byte 0x02003600
	.4byte 0x02002800
	.4byte 0x000007FC
	.4byte 0x00000DFC
	.4byte 0x03002500
	.4byte 0x03002502
	.4byte 0x03002504

	.thumb
	.align 1, 0
	.global sub_08004E48
	.thumb_func
sub_08004E48:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r0, [pc, #44]
	mov ip, r0
	cmp r2, #0
	bne .L08004EB0
	movs r2, #10
	ldrb r0, [r4, #0]
	cmp r0, #48
	bne .L08004EB0
	movs r2, #8
	adds r4, #1
	ldrb r0, [r4, #0]
	cmp r0, #120
	bne .L08004EB0
	ldrb r1, [r4, #1]
	add r1, ip
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08004EB0
	adds r4, #1
	movs r2, #16
	b .L08004EB0
	movs r0, r0
	lsls r1, r1, #25
	lsrs r6, r7, #32
.L08004E84:
	adds r0, r3, r5
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08004E96
	adds r1, r3, #0
	subs r1, #48
	b .L08004EA4
.L08004E96:
	movs r0, #2
	ands r0, r1
	adds r1, r3, #0
	subs r1, #55
	cmp r0, #0
	beq .L08004EA4
	subs r1, #32
.L08004EA4:
	cmp r1, r2
	bcs .L08004EC0
	adds r0, r6, #0
	muls r0, r2
	adds r6, r0, r1
	adds r4, #1
.L08004EB0:
	ldrb r3, [r4, #0]
	mov r5, ip
	adds r1, r3, r5
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08004E84
.L08004EC0:
	cmp r7, #0
	beq .L08004EC6
	str r4, [r7, #0]
.L08004EC6:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004ED0
	.thumb_func
sub_08004ED0:
	push {lr}
	ldrb r3, [r0, #0]
	cmp r3, #45
	beq .L08004EDE
	bl sub_08004E48
	b .L08004EE6
.L08004EDE:
	adds r0, #1
	bl sub_08004E48
	negs r0, r0
.L08004EE6:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004EEC
	.thumb_func
sub_08004EEC:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [r3, #0]
	b .L08004F08
.L08004EF4:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldrb r2, [r1, #0]
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #48
	adds r0, r1, #1
	str r0, [r3, #0]
	adds r1, r0, #0
.L08004F08:
	ldrb r0, [r1, #0]
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bls .L08004EF4
	adds r0, r2, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004F18
	.thumb_func
sub_08004F18:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl strlen
	cmp r0, r4
	bcc .L08004F2A
	adds r0, r4, #0
	b .L08004F30
.L08004F2A:
	adds r0, r5, #0
	bl strlen
.L08004F30:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004F38
	.thumb_func
sub_08004F38:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #88
	adds r5, r0, #0
	mov r8, r1
	mov r9, r2
	adds r6, r3, #0
	ldr r0, [sp, #120]
	mov sl, r0
	ldr r3, [sp, #124]
	ldr r1, [pc, #40]
	str r1, [sp, #72]
	movs r0, #64
	ands r0, r3
	cmp r0, #0
	beq .L08004F62
	ldr r4, [pc, #32]
	str r4, [sp, #72]
.L08004F62:
	movs r0, #16
	ands r0, r3
	cmp r0, #0
	beq .L08004F70
	movs r0, #2
	negs r0, r0
	ands r3, r0
.L08004F70:
	mov r0, r9
	subs r0, #2
	cmp r0, #34
	bls .L08004F84
	movs r0, #0
	b .L080050F0
	adds r3, #52
	lsrs r5, r7, #32
	adds r3, #92
	lsrs r5, r7, #32
.L08004F84:
	movs r0, #1
	ands r0, r3
	movs r1, #32
	str r1, [sp, #76]
	cmp r0, #0
	beq .L08004F94
	movs r4, #48
	str r4, [sp, #76]
.L08004F94:
	movs r0, #0
	str r0, [sp, #68]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L08004FCC
	mov r1, r8
	cmp r1, #0
	bge .L08004FB0
	movs r4, #45
	str r4, [sp, #68]
	negs r1, r1
	mov r8, r1
	b .L08004FCA
.L08004FB0:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq .L08004FBE
	movs r0, #43
	str r0, [sp, #68]
	b .L08004FCA
.L08004FBE:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq .L08004FCC
	movs r1, #32
	str r1, [sp, #68]
.L08004FCA:
	subs r6, #1
.L08004FCC:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L08004FE6
	mov r4, r9
	cmp r4, #16
	bne .L08004FDE
	subs r6, #2
	b .L08004FE6
.L08004FDE:
	mov r0, r9
	cmp r0, #8
	bne .L08004FE6
	subs r6, #1
.L08004FE6:
	movs r2, #0
	mov r1, r8
	cmp r1, #0
	bne .L08004FF8
	mov r1, sp
	movs r0, #48
	strb r0, [r1, #0]
	movs r2, #1
	b .L08005028
.L08004FF8:
	mov r7, sp
.L08004FFA:
	mov r0, r8
	mov r1, r9
	str r2, [sp, #80]
	str r3, [sp, #84]
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, r9
	bl __udivsi3
	mov r8, r0
	ldr r0, [sp, #72]
	adds r4, r0, r4
	ldrb r0, [r4, #0]
	strb r0, [r7, #0]
	adds r7, #1
	ldr r2, [sp, #80]
	adds r2, #1
	ldr r3, [sp, #84]
	mov r1, r8
	cmp r1, #0
	bne .L08004FFA
.L08005028:
	cmp r2, sl
	ble .L0800502E
	mov sl, r2
.L0800502E:
	mov r4, sl
	subs r6, r6, r4
	movs r0, #17
	ands r0, r3
	subs r4, #1
	subs r7, r2, #1
	cmp r0, #0
	bne .L08005054
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	ble .L08005054
	movs r1, #32
.L08005048:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L08005048
.L08005054:
	ldr r0, [sp, #68]
	cmp r0, #0
	beq .L0800505E
	strb r0, [r5, #0]
	adds r5, #1
.L0800505E:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L08005086
	mov r0, r9
	cmp r0, #8
	bne .L08005070
	movs r0, #48
	b .L08005082
.L08005070:
	mov r1, r9
	cmp r1, #16
	bne .L08005086
	movs r0, #48
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #72]
	adds r0, #33
	ldrb r0, [r0, #0]
.L08005082:
	strb r0, [r5, #0]
	adds r5, #1
.L08005086:
	movs r0, #16
	ands r3, r0
	cmp r3, #0
	bne .L080050A0
	b .L08005098
.L08005090:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	strb r0, [r5, #0]
	adds r5, #1
.L08005098:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L08005090
.L080050A0:
	mov r0, sl
	mov sl, r4
	subs r3, r6, #1
	cmp r2, r0
	bge .L080050BC
	movs r1, #48
.L080050AC:
	strb r1, [r5, #0]
	adds r5, #1
	mov r0, sl
	movs r4, #1
	negs r4, r4
	add sl, r4
	cmp r2, r0
	blt .L080050AC
.L080050BC:
	adds r0, r2, #0
	adds r2, r7, #0
	cmp r0, #0
	ble .L080050D8
	mov r0, sp
	adds r1, r2, r0
.L080050C8:
	ldrb r0, [r1, #0]
	subs r1, #1
	strb r0, [r5, #0]
	adds r5, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt .L080050C8
.L080050D8:
	adds r0, r6, #0
	adds r6, r3, #0
	cmp r0, #0
	ble .L080050EE
	movs r1, #32
.L080050E2:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L080050E2
.L080050EE:
	adds r0, r5, #0
.L080050F0:
	add sp, #88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08005100
	.thumb_func
sub_08005100:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	mov r8, r0
	str r1, [sp, #8]
	adds r6, r2, #0
	mov r5, r8
	adds r2, r1, #0
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L0800511A
	b .L0800536E
.L0800511A:
	ldrb r0, [r2, #0]
	cmp r0, #37
	beq .L08005122
	b .L080052F8
.L08005122:
	movs r3, #0
.L08005124:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	ldrb r0, [r1, #1]
	subs r0, #32
	cmp r0, #16
	bhi .L0800515E
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r3, #140
	lsrs r5, r7, #32
	movs r0, #16
	orrs r3, r0
	b .L08005124
	movs r0, #4
	orrs r3, r0
	b .L08005124
	movs r0, #8
	orrs r3, r0
	b .L08005124
	movs r0, #32
	orrs r3, r0
	b .L08005124
	movs r0, #1
	orrs r3, r0
	b .L08005124
.L0800515E:
	movs r7, #1
	negs r7, r7
	ldr r2, [sp, #8]
	ldrb r1, [r2, #0]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08005180
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_08004EEC
	adds r7, r0, #0
	ldr r3, [sp, #12]
	b .L0800519C
.L08005180:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L0800519C
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r7, [r0, #0]
	cmp r7, #0
	bge .L0800519C
	negs r7, r7
	movs r0, #16
	orrs r3, r0
.L0800519C:
	movs r0, #1
	negs r0, r0
	mov ip, r0
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #46
	bne .L080051EA
	adds r2, r0, #1
	str r2, [sp, #8]
	ldrb r1, [r0, #1]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L080051CA
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_08004EEC
	mov ip, r0
	ldr r3, [sp, #12]
	b .L080051DE
.L080051CA:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L080051DE
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r0, [r0, #0]
	mov ip, r0
.L080051DE:
	ldr r0, [sp, #8]
	mov r2, ip
	cmp r2, #0
	bge .L080051EA
	movs r1, #0
	mov ip, r1
.L080051EA:
	movs r4, #1
	negs r4, r4
	ldrb r0, [r0, #0]
	cmp r0, #104
	beq .L080051FC
	cmp r0, #108
	beq .L080051FC
	cmp r0, #76
	bne .L08005204
.L080051FC:
	ldr r0, [sp, #8]
	ldrb r4, [r0, #0]
	adds r0, #1
	str r0, [sp, #8]
.L08005204:
	movs r2, #10
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0]
	subs r0, #37
	cmp r0, #83
	bls .L08005212
	b .L08005310
.L08005212:
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r3, #208
	lsrs r5, r7, #32
	movs r0, #16
	ands r3, r0
	adds r2, r6, #4
	cmp r3, #0
	bne .L0800523C
	subs r7, #1
	cmp r7, #0
	ble .L0800523C
	movs r3, #32
.L08005232:
	strb r3, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L08005232
.L0800523C:
	adds r6, r2, #0
	adds r0, r5, #0
	adds r5, #1
	subs r1, r6, #4
	ldr r1, [r1, #0]
	strb r1, [r0, #0]
	subs r7, #1
	cmp r7, #0
	bgt .L08005250
	b .L0800535E
.L08005250:
	movs r0, #32
.L08005252:
	strb r0, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L08005252
	b .L0800535E
	adds r6, #4
	subs r0, r6, #4
	ldr r4, [r0, #0]
	cmp r4, #0
	bne .L0800526A
	ldr r4, [pc, #88]
.L0800526A:
	adds r0, r4, #0
	mov r1, ip
	str r3, [sp, #12]
	bl sub_08004F18
	adds r2, r0, #0
	movs r0, #16
	ldr r3, [sp, #12]
	ands r3, r0
	cmp r3, #0
	bne .L08005296
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	bge .L08005296
	movs r1, #32
.L0800528A:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L0800528A
.L08005296:
	subs r3, r7, #1
	cmp r2, #0
	ble .L080052AC
	adds r1, r2, #0
.L0800529E:
	ldrb r0, [r4, #0]
	strb r0, [r5, #0]
	adds r4, #1
	adds r5, #1
	subs r1, #1
	cmp r1, #0
	bne .L0800529E
.L080052AC:
	adds r0, r7, #0
	adds r7, r3, #0
	cmp r2, r0
	bge .L0800535E
	movs r1, #32
.L080052B6:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L080052B6
	b .L0800535E
	adds r3, #132
	lsrs r5, r7, #32
	movs r0, #1
	negs r0, r0
	cmp r7, r0
	bne .L080052D6
	movs r7, #8
	movs r0, #1
	orrs r3, r0
.L080052D6:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, ip
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #16
	b .L08005356
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, r8
	subs r0, r5, r2
	str r0, [r1, #0]
	b .L0800535E
	movs r0, #37
.L080052F8:
	strb r0, [r5, #0]
	adds r5, #1
	b .L0800535E
	movs r2, #8
	b .L0800532A
	movs r0, #64
	orrs r3, r0
	movs r2, #16
	b .L0800532A
	movs r0, #2
	orrs r3, r0
	b .L0800532A
.L08005310:
	movs r0, #37
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L08005324
	strb r1, [r5, #0]
	adds r5, #1
	b .L0800535E
.L08005324:
	subs r0, #1
	str r0, [sp, #8]
	b .L0800535E
.L0800532A:
	cmp r4, #108
	beq .L08005348
	cmp r4, #104
	bne .L08005346
	adds r6, #4
	subs r0, r6, #4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L0800534E
	lsls r0, r1, #16
	asrs r1, r0, #16
	b .L0800534E
.L08005346:
	movs r0, #2
.L08005348:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
.L0800534E:
	mov r0, ip
	str r0, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
.L08005356:
	adds r3, r7, #0
	bl sub_08004F38
	adds r5, r0, #0
.L0800535E:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	adds r2, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0800536E
	b .L0800511A
.L0800536E:
	movs r0, #0
	strb r0, [r5, #0]
	mov r1, r8
	subs r0, r5, r1
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.2byte 0xB40E

	.thumb
	.align 1, 0
	.global sub_08005386
	.thumb_func
sub_08005386:
	push {lr}
	ldr r1, [sp, #4]
	add r2, sp, #8
	bl sub_08005100
	pop {r3}
	add sp, #12
	bx r3
	.2byte 0x0000
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0xEA00002E
	.4byte 0x51AEFF24
	.4byte 0x21A29A69
	.4byte 0x0A82843D
	.4byte 0xAD09E484
	.4byte 0x988B2411
	.4byte 0x217F81C0
	.4byte 0x19BE52A3
	.4byte 0x20CE0993
	.4byte 0x4A4A4610
	.4byte 0xEC3127F8
	.4byte 0x33E8C758
	.4byte 0xBFCEE382
	.4byte 0x94DFF485
	.4byte 0xC1094BCE
	.4byte 0xC08A5694
	.4byte 0xFCA77213
	.4byte 0x734D849F
	.4byte 0x619ACAA3
	.4byte 0x27A39758
	.4byte 0x769803FC
	.4byte 0x61C71D23
	.4byte 0x56AE0403
	.4byte 0x008438BF
	.4byte 0xFD0EA740
	.4byte 0x03FE52FF
	.4byte 0xF130956F
	.4byte 0x85C0FB97
	.4byte 0x2580D660
	.4byte 0x03BE63A9
	.4byte 0xE2384E01
	.4byte 0xFF34A2F9
	.4byte 0x44033EBB
	.4byte 0xCB900078
	.4byte 0x943A1188
	.4byte 0x637CC065
	.4byte 0xAF3CF087
	.4byte 0x8BE425D6
	.4byte 0x72AC0A38
	.4byte 0x07F8D421
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00963130
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000F000
	.4byte 0xEA000011
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.arm
	.align 2, 0
	.global sub_08005480
sub_08005480:
	ldrh r1, [r0, #8]
	tst r1, #128
	.4byte 0x0afffffc @ beq 0x8005480
.L0800548C:
	ldrh r1, [r0, #8]
	tst r1, #128
	bne .L0800548C
	ldrh r1, [r0, #8]
	tst r1, #64
	bxne lr
	ldrh r1, [r0]
	bx lr
	.4byte 0xE59F0248
	.4byte 0xEBFFFFF2
	.4byte 0x1AFFFFFD
	.4byte 0xE3A02000
	.4byte 0xE1C020BA
	.4byte 0xE3510000
	.4byte 0x1AFFFFF9
	.4byte 0xE3A02902
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xEBFFFFE9
	.4byte 0x1AFFFFF4
	.4byte 0xE1510002
	.4byte 0x1AFFFFF9
	.4byte 0xE1A022A2
	.4byte 0xE3510000
	.4byte 0x1AFFFFF7
	.4byte 0xE59F3208
	.4byte 0xE1D320B0
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFDF
	.4byte 0x1AFFFFFE
	.4byte 0xE1510002
	.4byte 0x1AFFFFFC
	.4byte 0xE1D320B2
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFD9
	.4byte 0x1AFFFFF8
	.4byte 0xE1510002
	.4byte 0x1AFFFFF6
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xE3A00012
	.4byte 0xE129F000
	.4byte 0xE59FD1C8
	.4byte 0xE3A0001F
	.4byte 0xE129F000
	.4byte 0xE59FD1C0
	.4byte 0xE28F0001
	.4byte 0xE12FFF10
	.4byte 0xA025490C
	.4byte 0x20036008
	.4byte 0x490B0600
	.4byte 0xF836F000
	.4byte 0x4A0B490A
	.4byte 0xF0004C0B
	.4byte 0x490BF838
	.4byte 0x4C0C4A0B
	.4byte 0xF833F000
	.4byte 0x49024814
	.4byte 0x4700468E
	.4byte 0x46C046C0
	.4byte 0x0200018C
	.4byte 0x03007FFC
	.4byte 0x00007BF0
	.4byte 0x020133BC
	.4byte 0x03006FBC
	.4byte 0x030070B4
	.4byte 0x02012F00
	.4byte 0x03000000
	.4byte 0x030004BC
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x030070B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020084DD

	.thumb
	.align 1, 0
	.global sub_080055C8
	.thumb_func
sub_080055C8:
	cmp r1, #0
	beq .L080055D4
	movs r2, #0
.L080055CE:
	stmia r0!, {r2}
	subs r1, #4
	bne .L080055CE
.L080055D4:
	bx lr

	.thumb
	.align 1, 0
	.global sub_080055D6
	.thumb_func
sub_080055D6:
	subs r3, r4, r2
	beq .L080055E2
.L080055DA:
	ldmia r1!, {r0}
	stmia r2!, {r0}
	subs r3, #4
	bne .L080055DA
.L080055E2:
	bx lr
	.4byte 0xE3A03301
	.4byte 0xE5B32200
	.4byte 0xE1D310B8
	.4byte 0xE14F0000
	.4byte 0xE92D400F
	.4byte 0xE3A00001
	.4byte 0xE1C300B8
	.4byte 0xE0021822
	.4byte 0xE59FC100
	.4byte 0xE2110001
	.4byte 0x1A000027
	.4byte 0xE28CC004
	.4byte 0xE2110002
	.4byte 0x1A000024
	.4byte 0xE28CC004
	.4byte 0xE2110004
	.4byte 0x1A000021
	.4byte 0xE28CC004
	.4byte 0xE2110008
	.4byte 0x1A00001E
	.4byte 0xE28CC004
	.4byte 0xE2110010
	.4byte 0x1A00001B
	.4byte 0xE28CC004
	.4byte 0xE2110020
	.4byte 0x1A000018
	.4byte 0xE28CC004
	.4byte 0xE2110040
	.4byte 0x1A000015
	.4byte 0xE28CC004
	.4byte 0xE2110080
	.4byte 0x1A000012
	.4byte 0xE2822004
	.4byte 0xE2110C01
	.4byte 0x1A00000F
	.4byte 0xE28CC004
	.4byte 0xE2110C02
	.4byte 0x1A00000C
	.4byte 0xE28CC004
	.4byte 0xE2110B01
	.4byte 0x1A000009
	.4byte 0xE28CC004
	.4byte 0xE2110B02
	.4byte 0x1A000006
	.4byte 0xE28CC004
	.4byte 0xE2110A01
	.4byte 0x1A000003
	.4byte 0xE28CC004
	.4byte 0xE2110A02
	.4byte 0x1543017C
	.4byte 0x1AFFFFFE
	.4byte 0xE1C300B2
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE383301F
	.4byte 0xE129F003
	.4byte 0xE59C0000
	.4byte 0xE92D4000
	.4byte 0xE28FE000
	.4byte 0xE12FFF10
	.4byte 0xE8BD4000
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE3833092
	.4byte 0xE129F003
	.4byte 0xE8BD400F
	.4byte 0xE1C320B0
	.4byte 0xE1C310B8
	.4byte 0xE169F000
	.4byte 0xE12FFF1E
	.4byte 0x04000120
	.4byte 0x020000AC
	.4byte 0x03007FA0
	.4byte 0x03007C00
	.4byte 0x03006FD0

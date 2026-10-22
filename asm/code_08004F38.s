	.include "asm/macros.inc"
	.syntax unified
	.text

@ number: [sure] Linux lib/vsprintf.c number() (nonmatching: register allocation)
	.thumb
	.align 1, 0
	.global sub_08004F38
	.thumb_func
sub_08004F38:
	.global number
	.thumb_set number, sub_08004F38
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

@ vsprintf: [sure] Linux lib/vsprintf.c (flag/conversion switches use rodata jump tables)
	.thumb
	.align 1, 0
	.global sub_08005100
	.thumb_func
sub_08005100:
	.global vsprintf
	.thumb_set vsprintf, sub_08005100
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
	bl number
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

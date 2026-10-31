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

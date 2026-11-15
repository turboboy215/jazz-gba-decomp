	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08316824
	.thumb_func
sub_08316824:
	push {lr}
	ldr r1, [pc, #16]
	movs r0, #0
	bl sub_08001FC8
	bl sub_08319214
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08001FF1

	.thumb
	.align 1, 0
	.global sub_0831683C
	.thumb_func
sub_0831683C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #0
	b .L0831686E
.L0831686C:
	movs r0, #1
.L0831686E:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08316874
	.thumb_func
sub_08316874:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316886
	movs r0, #0
	b .L083168B4
.L08316886:
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316894
	movs r0, #1
	b .L083168B4
.L08316894:
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	bne .L083168A2
	movs r0, #2
	b .L083168B4
.L083168A2:
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L083168B2
	movs r0, #1
	negs r0, r0
	b .L083168B4
.L083168B2:
	movs r0, #3
.L083168B4:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083168BC
	.thumb_func
sub_083168BC:
	push {r4, lr}
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	movs r4, #1
	movs r3, #0
	ldr r1, [pc, #8]
.L083168CE:
	cmp r2, r0
	bcs .L083168DC
	strb r4, [r1, #0]
	b .L083168DE
	movs r0, r0
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
.L083168DC:
	strb r3, [r1, #0]
.L083168DE:
	adds r1, #1
	adds r2, #1
	cmp r2, #255
	bls .L083168CE
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #16]
.L083168EC:
	stmia r2!, {r1}
	adds r0, #1
	cmp r0, #7
	bls .L083168EC
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300581C

	.thumb
	.align 1, 0
	.global sub_08316900
	.thumb_func
sub_08316900:
	ldr r2, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300581C

	.thumb
	.align 1, 0
	.global sub_08316910
	.thumb_func
sub_08316910:
	ldr r1, [pc, #8]
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316920
	.thumb_func
sub_08316920:
	ldr r1, [pc, #8]
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316930
	.thumb_func
sub_08316930:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #32
	adds r4, r0, #0
	adds r7, r1, #0
	bl sub_08001B6C
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	cmp r0, #7
	bls .L0831694C
	b .L08316E0A
.L0831694C:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xfa9c @ .raw
	lsrs r5, r7, #32
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316968
	b .L08316E0A
.L08316968:
	ldr r4, [pc, #140]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316978
	b .L08316E0A
.L08316978:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316980
	b .L08316E0A
.L08316980:
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L08316992
	b .L08316E0A
.L08316992:
	add r0, sp, #16
	bl sub_082EA29C
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L083169A2
	b .L08316E0A
.L083169A2:
	ldr r0, [sp, #16]
	strb r1, [r0, #1]
	ldr r1, [sp, #16]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #16]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #16]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #16]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #16]
	b .L08316B24
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316A08
	b .L08316E0A
.L08316A08:
	ldr r4, [pc, #140]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316A18
	b .L08316E0A
.L08316A18:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316A20
	b .L08316E0A
.L08316A20:
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	beq .L08316A32
	b .L08316E0A
.L08316A32:
	add r0, sp, #20
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316A42
	b .L08316E0A
.L08316A42:
	ldr r0, [sp, #20]
	strb r1, [r0, #1]
	ldr r1, [sp, #20]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #20]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #20]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #20]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #20]
	b .L08316B24
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316AA8
	b .L08316E0A
.L08316AA8:
	ldr r4, [pc, #128]
	ldrh r1, [r6, #4]
	lsls r0, r1, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316AB8
	b .L08316E0A
.L08316AB8:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316AC0
	b .L08316E0A
.L08316AC0:
	add r0, sp, #24
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316AD0
	b .L08316E0A
.L08316AD0:
	ldr r0, [sp, #24]
	strb r1, [r0, #1]
	ldr r1, [sp, #24]
	ldrh r2, [r6, #0]
	lsls r0, r2, #8
	str r0, [r1, #52]
	ldr r1, [sp, #24]
	ldrh r3, [r6, #2]
	lsls r0, r3, #8
	str r0, [r1, #56]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #8]
	adds r0, #226
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #9]
	adds r0, #227
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #10]
	adds r0, #228
	strb r1, [r0, #0]
	ldr r0, [sp, #24]
	ldrb r1, [r6, #11]
	adds r0, #229
	strb r1, [r0, #0]
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #24]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #24]
.L08316B24:
	adds r0, #224
	strh r7, [r0, #0]
	b .L08316E0A
	movs r0, r0
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	ldr r1, [pc, #224]
	ldrh r2, [r6, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316B40
	b .L08316E0A
.L08316B40:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316B48
	b .L08316E0A
.L08316B48:
	ldrb r1, [r6, #9]
	adds r0, r4, #0
	movs r2, #0
	bl sub_08001B50
	ldrh r3, [r6, #0]
	lsrs r1, r3, #3
	lsls r4, r1, #3
	ldrh r5, [r0, #0]
	lsls r1, r5, #3
	adds r1, r1, r4
	mov r9, r1
	ldrh r2, [r6, #2]
	lsrs r1, r2, #3
	lsls r5, r1, #3
	ldrh r0, [r0, #2]
	lsls r0, r0, #3
	adds r0, r0, r5
	mov r8, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	adds r0, r4, #0
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	mov r0, r9
	adds r1, r5, #0
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	mov r0, r9
	mov r1, r8
	bl sub_08302058
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316BA8
	b .L08316E0A
.L08316BA8:
	add r0, sp, #28
	bl sub_08313030
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L08316BB8
	b .L08316E0A
.L08316BB8:
	ldr r0, [sp, #28]
	strb r1, [r0, #0]
	ldr r1, [sp, #28]
	ldrh r3, [r6, #0]
	lsrs r0, r3, #3
	strh r0, [r1, #10]
	ldr r1, [sp, #28]
	ldrh r4, [r6, #2]
	lsrs r0, r4, #3
	strh r0, [r1, #12]
	ldr r1, [sp, #28]
	movs r0, #3
	ldrb r5, [r6, #8]
	ands r0, r5
	strb r0, [r1, #2]
	ldr r1, [sp, #28]
	ldrb r0, [r6, #9]
	strh r0, [r1, #4]
	ldr r1, [sp, #28]
	ldrb r0, [r6, #10]
	strb r0, [r1, #3]
	ldr r1, [sp, #28]
	ldrb r2, [r6, #11]
	negs r0, r2
	lsrs r0, r0, #31
	strb r0, [r1, #1]
	ldr r1, [pc, #36]
	ldrh r3, [r6, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	ldr r0, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r0, [sp, #28]
	ldr r1, [r1, #0]
	bl sub_0831A7E8
	adds r0, r7, #0
	bl sub_08316910
	ldr r0, [sp, #28]
	strh r7, [r0, #20]
	b .L08316E0A
	movs r0, r0
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316C24
	b .L08316E0A
.L08316C24:
	ldr r4, [pc, #124]
	mov r9, r4
	ldrh r5, [r6, #4]
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	cmp r0, #0
	bne .L08316C36
	b .L08316E0A
.L08316C36:
	ldr r0, [r0, #4]
	cmp r0, #0
	bne .L08316C3E
	b .L08316E0A
.L08316C3E:
	ldrb r1, [r6, #9]
	negs r0, r1
	orrs r0, r1
	lsrs r0, r0, #31
	mov r8, r0
	ldrb r4, [r6, #10]
	ldrb r2, [r6, #11]
	mov ip, r2
	ldr r1, [pc, #88]
	ldr r0, [r1, #52]
	asrs r3, r0, #11
	ldr r0, [r1, #56]
	asrs r5, r0, #11
	ldrh r0, [r6, #0]
	lsrs r1, r0, #3
	ldrh r0, [r6, #2]
	lsrs r2, r0, #3
	subs r0, r1, r4
	cmp r3, r0
	blt .L08316CB0
	adds r0, r1, r4
	cmp r3, r0
	bgt .L08316CB0
	mov r1, ip
	subs r0, r2, r1
	cmp r5, r0
	blt .L08316CB0
	adds r0, r2, r1
	cmp r5, r0
	bgt .L08316CB0
	ldr r0, [pc, #48]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08316C86
	b .L08316E0A
.L08316C86:
	adds r0, r7, #0
	bl sub_08316910
	ldrh r2, [r6, #4]
	lsls r0, r2, #2
	add r0, r9
	ldr r0, [r0, #0]
	ldr r1, [r0, #4]
	ldrh r6, [r6, #6]
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0, #0]
	bl sub_0831638C
	b .L08316E0A
	ldr r4, [r3, r0]
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
.L08316CB0:
	ldr r0, [pc, #24]
	adds r0, r7, r0
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08316CBC
	b .L08316E0A
.L08316CBC:
	mov r3, r8
	cmp r3, #0
	beq .L08316CC4
	b .L08316E0A
.L08316CC4:
	adds r0, r7, #0
	bl sub_08316920
	b .L08316E0A
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316CDC
	b .L08316E0A
.L08316CDC:
	bl sub_08309FF4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316D12
	ldrh r4, [r6, #6]
	cmp r4, #2
	bhi .L08316DAE
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrh r2, [r6, #6]
	ldrb r3, [r6, #9]
	str r3, [sp, #0]
	ldrb r5, [r6, #10]
	negs r3, r5
	lsrs r3, r3, #31
	add r4, sp, #4
	strb r3, [r4, #0]
	ldrb r6, [r6, #11]
	negs r3, r6
	lsrs r3, r3, #31
	add r4, sp, #8
	strb r3, [r4, #0]
	lsls r3, r7, #16
	lsrs r3, r3, #16
	str r3, [sp, #12]
	b .L08316DA8
.L08316D12:
	movs r2, #0
	ldrh r4, [r6, #6]
	cmp r4, #10
	bhi .L08316D80
	lsls r0, r4, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xfabc @ .raw
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	ldrb r2, [r0, #0]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #1]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #2]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #3]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #4]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #5]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #4]
	ldrb r2, [r0, #6]
	b .L08316D80
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	ldr r0, [pc, #56]
	ldrb r2, [r0, #7]
.L08316D80:
	cmp r2, #0
	beq .L08316DAE
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrb r2, [r6, #9]
	str r2, [sp, #0]
	ldrb r3, [r6, #10]
	negs r2, r3
	lsrs r2, r2, #31
	add r3, sp, #4
	strb r2, [r3, #0]
	ldrb r6, [r6, #11]
	negs r2, r6
	lsrs r2, r2, #31
	add r3, sp, #8
	strb r2, [r3, #0]
	lsls r2, r7, #16
	lsrs r2, r2, #16
	str r2, [sp, #12]
	adds r2, r4, #0
.L08316DA8:
	movs r3, #1
	bl sub_08314338
.L08316DAE:
	adds r0, r7, #0
	bl sub_08316910
	b .L08316E0A
	movs r0, r0
	strb r0, [r7, #21]
	lsls r0, r0, #8
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08316E0A
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08316E0A
	ldrh r0, [r6, #0]
	ldrh r1, [r6, #2]
	ldrh r2, [r6, #6]
	ldrb r4, [r6, #8]
	negs r3, r4
	orrs r3, r4
	lsrs r3, r3, #31
	ldrb r4, [r6, #9]
	str r4, [sp, #0]
	ldrb r5, [r6, #10]
	negs r4, r5
	lsrs r4, r4, #31
	add r5, sp, #4
	strb r4, [r5, #0]
	ldrb r6, [r6, #11]
	negs r4, r6
	lsrs r4, r4, #31
	add r5, sp, #8
	strb r4, [r5, #0]
	lsls r4, r7, #16
	lsrs r4, r4, #16
	str r4, [sp, #12]
	bl sub_08314338
	adds r0, r7, #0
	bl sub_08316910
.L08316E0A:
	add sp, #32
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08316E18
	.thumb_func
sub_08316E18:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r4, #0
	cmp r4, r6
	bcs .L08316E58
.L08316E2A:
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	cmp r0, #1
	beq .L08316E58
	ldr r0, [pc, #48]
	adds r0, r4, r0
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08316E4A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08001B6C
	ldrh r0, [r0, #4]
	cmp r0, #4
	bne .L08316E52
.L08316E4A:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08316930
.L08316E52:
	adds r4, #1
	cmp r4, r6
	bcc .L08316E2A
.L08316E58:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030059F4
	.4byte 0x0300571C

	.thumb
	.align 1, 0
	.global sub_08316E68
	.thumb_func
sub_08316E68:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r5, #0
	cmp r5, r6
	bcs .L08316E9A
.L08316E7A:
	adds r0, r7, #0
	adds r1, r5, #0
	bl sub_08001B6C
	adds r4, r0, #0
	ldr r0, [r4, #4]
	cmp r0, #0
	bne .L08316E94
	adds r0, r5, #0
	bl sub_08316910
	adds r0, r4, #0
	b .L08316E9C
.L08316E94:
	adds r5, #1
	cmp r5, r6
	bcc .L08316E7A
.L08316E9A:
	movs r0, #0
.L08316E9C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08316EA4
	.thumb_func
sub_08316EA4:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r6, r0, #16
	movs r7, #0
	movs r5, #0
	cmp r5, r6
	bcs .L08316EEA
.L08316EC0:
	mov r0, r8
	adds r1, r5, #0
	bl sub_08001B6C
	adds r4, r0, #0
	ldr r1, [r4, #4]
	movs r0, #128
	lsls r0, r0, #9
	cmp r1, r0
	bne .L08316EE4
	cmp r7, r9
	bne .L08316EE2
	adds r0, r5, #0
	bl sub_08316910
	adds r0, r4, #0
	b .L08316EEC
.L08316EE2:
	adds r7, #1
.L08316EE4:
	adds r5, #1
	cmp r5, r6
	bcc .L08316EC0
.L08316EEA:
	movs r0, #0
.L08316EEC:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08316EF8
	.thumb_func
sub_08316EF8:
	push {lr}
	bl sub_08001B6C
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08316F04
	.thumb_func
sub_08316F04:
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	bx lr
	.4byte 0x0300571C

@ Fade_Start: [sure] REG_BLDCNT = mode | 0x3F (0x80 brighten, 0xC0 darken), step = 0x110000 / frames
	.thumb
	.align 1, 0
	.global sub_08316F10
	.thumb_func
sub_08316F10:
	.global Fade_Start
	.thumb_set Fade_Start, sub_08316F10
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r1, #0
	cmp r2, #0
	beq .L08316F3A
	ldr r0, [pc, #36]
	strb r3, [r0, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
	ldr r4, [pc, #32]
	movs r0, #136
	lsls r0, r0, #13
	adds r1, r2, #0
	bl __udivsi3
	str r0, [r4, #0]
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r5, r0
	strh r5, [r1, #0]
.L08316F3A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005840
	.4byte 0x03005A4C
	.4byte 0x0300583C
	.4byte 0x04000050

@ Fade_IsBusy: [likely] nonzero while the fade counter at 0x03005A4C is below 0x110000
	.thumb
	.align 1, 0
	.global sub_08316F50
	.thumb_func
sub_08316F50:
	.global Fade_IsBusy
	.thumb_set Fade_IsBusy, sub_08316F50
	ldr r0, [pc, #12]
	ldr r3, [r0, #0]
	ldr r0, [pc, #12]
	cmp r3, r0
	bls .L08316F68
	movs r0, #0
	b .L08316F98
	movs r0, r0
	ldrh r4, [r1, r1]
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r2
.L08316F68:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08316F84
	ldr r2, [pc, #12]
	lsrs r1, r3, #16
	movs r0, #16
	subs r0, r0, r1
	strh r0, [r2, #0]
	b .L08316F8A
	ldr r0, [r0, r1]
	lsls r0, r0, #12
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316F84:
	ldr r1, [pc, #20]
	lsrs r0, r3, #16
	strh r0, [r1, #0]
.L08316F8A:
	ldr r2, [pc, #20]
	ldr r1, [pc, #20]
	ldr r0, [r2, #0]
	ldr r1, [r1, #0]
	adds r0, r0, r1
	str r0, [r2, #0]
	movs r0, #1
.L08316F98:
	bx lr
	.2byte 0x0000
	.4byte 0x04000054
	.4byte 0x03005A4C
	.4byte 0x0300583C

	.thumb
	.align 1, 0
	.global sub_08316FA8
	.thumb_func
sub_08316FA8:
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r1, r2, #0
	movs r5, #0
	movs r0, #136
	lsls r0, r0, #13
	bl __udivsi3
	adds r6, r0, #0
	ldr r1, [pc, #24]
	movs r0, #63
	orrs r4, r0
	strh r4, [r1, #0]
	ldr r4, [pc, #20]
.L08316FC6:
	bl VBlankIntrWait
	cmp r7, #0
	bne .L08316FE0
	lsrs r1, r5, #16
	movs r0, #16
	subs r0, r0, r1
	b .L08316FE2
	movs r0, r0
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsls r4, r2, #1
	lsls r0, r0, #16
.L08316FE0:
	lsrs r0, r5, #16
.L08316FE2:
	strh r0, [r4, #0]
	adds r5, r5, r6
	ldr r0, [pc, #12]
	cmp r5, r0
	bls .L08316FC6
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0010FFFF

	.thumb
	.align 1, 0
	.global sub_08316FF8
	.thumb_func
sub_08316FF8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #1
	ldr r0, [pc, #92]
	ldr r1, [pc, #96]
	mov ip, r1
	ldr r6, [pc, #96]
	movs r3, #3
	mov r8, r3
	adds r4, r0, #0
	adds r4, #60
.L08317010:
	lsls r2, r5, #2
	ldr r7, [pc, #88]
	adds r3, r2, r7
	ldr r0, [pc, #88]
	adds r2, r2, r0
	ldr r1, [r4, #0]
	mov r0, r8
	ldrb r7, [r6, #0]
	ands r0, r7
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r3, #0]
	ldr r1, [r4, #4]
	ldrb r0, [r6, #0]
	adds r0, #2
	mov r3, r8
	ands r0, r3
	add r0, ip
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	adds r1, r1, r0
	strh r1, [r2, #0]
	adds r4, #8
	adds r5, #1
	cmp r5, #3
	bls .L08317010
	ldr r1, [pc, #24]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0x083DFAE8
	.4byte 0x03005A50
	.4byte 0x04000010
	.4byte 0x04000012

	.thumb
	.align 1, 0
	.global sub_08317074
	.thumb_func
sub_08317074:
	push {lr}
	ldr r1, [pc, #20]
	movs r0, #255
	strh r0, [r1, #0]
	adds r1, #4
	movs r0, #16
	strh r0, [r1, #0]
	bl VBlankIntrWait
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000050

	.thumb
	.align 1, 0
	.global sub_08317090
	.thumb_func
sub_08317090:
	cmp r0, #0
	blt .L08317098
	movs r0, #1
	b .L0831709C
.L08317098:
	movs r0, #1
	negs r0, r0
.L0831709C:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083170A0
	.thumb_func
sub_083170A0:
	push {r4, r5, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	bl sub_08317090
	muls r0, r5
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083170B8
	.thumb_func
sub_083170B8:
	push {r4, lr}
	adds r4, r3, #0
	bl sub_083170A0
	adds r1, r0, #0
	adds r2, r1, #0
	cmp r1, #0
	bge .L083170CA
	negs r2, r1
.L083170CA:
	adds r0, r4, #0
	cmp r4, #0
	bge .L083170D2
	negs r0, r4
.L083170D2:
	cmp r2, r0
	ble .L083170E0
	adds r0, r1, #0
	bl sub_08317090
	adds r1, r0, #0
	muls r1, r4
.L083170E0:
	adds r0, r1, #0
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_083170E8
	.thumb_func
sub_083170E8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08317090
	adds r6, r0, #0
	cmp r4, #0
	beq .L08317112
	cmp r5, #0
	ble .L08317112
	negs r2, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_083170A0
	adds r4, r0, #0
	bl sub_08317090
	cmp r6, r0
	beq .L08317112
	movs r4, #0
.L08317112:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0xE92D0F00
	.4byte 0xE3A0C301
	.4byte 0xE59FB02C
	.4byte 0xE28BA028
	.4byte 0xE3A09001
	.4byte 0xE3A08000
	.4byte 0xE5CC8208
	.4byte 0xE89A0003
	.4byte 0xE8AA0002
	.4byte 0xE8AA0001
	.4byte 0xE5DB0005
	.4byte 0xE5CB8005
	.4byte 0xE5CC9208
	.4byte 0xE8BD0F00
	.4byte 0xE12FFF1E
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_0831715C
	.thumb_func
sub_0831715C:
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	cmp r0, #4
	bne .L08317178
	ldr r1, [pc, #8]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfaf8 @ .raw
	lsrs r5, r7, #32
.L08317178:
	cmp r0, #64
	bne .L0831718C
	ldr r1, [pc, #4]
	ldr r0, [pc, #8]
	str r0, [r1, #0]
	b .L08317194
	lsrs r0, r1, #12
	lsls r0, r0, #12
	.2byte 0xfb04 @ .raw
	lsrs r5, r7, #32
.L0831718C:
	ldr r1, [pc, #8]
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	movs r2, #1
.L08317194:
	adds r0, r2, #0
	bx lr
	.4byte 0x03000B08
	.4byte 0x083DFAF8
	.4byte 0x88084906
	.4byte 0xD0082800
	.4byte 0x38018808
	.4byte 0x04008008
	.4byte 0xD1022800
	.4byte 0x20014902
	.4byte 0x47707008
	.4byte 0x03005846
	.4byte 0x03005848

	.thumb
	.align 1, 0
	.global sub_083171C4
	.thumb_func
sub_083171C4:
	adds r2, r1, #0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bhi .L083171F8
	ldr r0, [pc, #24]
	strb r1, [r0, #0]
	ldr r1, [pc, #24]
	ldrb r0, [r0, #0]
	lsls r0, r0, #2
	ldr r3, [pc, #20]
	adds r0, r0, r3
	str r0, [r1, #0]
	ldr r0, [pc, #20]
	str r0, [r2, #0]
	movs r0, #0
	b .L083171FA
	movs r0, r0
	ldr r4, [r0, r1]
	lsls r0, r0, #12
	ldr r4, [r1, r1]
	lsls r0, r0, #12
	lsls r0, r0, #4
	lsls r0, r0, #16
	strb r1, [r4, #6]
	lsrs r1, r6, #32
.L083171F8:
	movs r0, #1
.L083171FA:
	bx lr

	.thumb
	.align 1, 0
	.global sub_083171FC
	.thumb_func
sub_083171FC:
	push {r4, r5, lr}
	ldr r2, [pc, #68]
	ldr r3, [pc, #68]
	ldrh r1, [r3, #0]
	strh r1, [r2, #0]
	movs r5, #0
	strh r5, [r3, #0]
	ldr r4, [pc, #64]
	ldr r1, [pc, #64]
	ldrb r1, [r1, #0]
	movs r2, #8
	lsls r2, r1
	ldrh r1, [r4, #0]
	orrs r1, r2
	strh r1, [r4, #0]
	movs r1, #1
	strh r1, [r3, #0]
	ldr r1, [pc, #52]
	strb r5, [r1, #0]
	ldr r2, [pc, #52]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	adds r0, #2
	ldr r3, [pc, #48]
	ldr r1, [r3, #0]
	ldrh r2, [r0, #0]
	strh r2, [r1, #0]
	adds r1, #2
	str r1, [r3, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #0]
	subs r1, #2
	str r1, [r3, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03005850
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005848
	.4byte 0x03005846
	.4byte 0x0300584C

	.thumb
	.align 1, 0
	.global sub_08317260
	.thumb_func
sub_08317260:
	ldr r1, [pc, #44]
	ldr r0, [r1, #0]
	movs r2, #0
	strh r2, [r0, #0]
	adds r0, #2
	str r0, [r1, #0]
	strh r2, [r0, #0]
	subs r0, #2
	str r0, [r1, #0]
	ldr r3, [pc, #32]
	strh r2, [r3, #0]
	ldr r2, [pc, #32]
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	ldr r0, [pc, #24]
	ldrh r0, [r0, #0]
	strh r0, [r3, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300584C
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x03005844
	.4byte 0x03005850

	.thumb
	.align 1, 0
	.global sub_083172A4
	.thumb_func
sub_083172A4:
	push {r4, r5, r6, lr}
	lsls r2, r2, #16
	lsrs r2, r2, #16
	ldr r4, [pc, #88]
	ldrh r3, [r4, #0]
	adds r6, r3, #0
	movs r3, #0
	strh r3, [r4, #0]
	ldr r5, [pc, #80]
	ldrh r4, [r5, #0]
	ldr r3, [pc, #80]
	ands r4, r3
	ldr r3, [pc, #80]
	ldr r3, [r3, #0]
	ldrh r3, [r3, #6]
	orrs r3, r4
	strh r3, [r5, #0]
	ldr r3, [pc, #76]
	str r0, [r3, #0]
	ldr r0, [pc, #76]
	str r1, [r0, #0]
	ldr r1, [pc, #76]
	movs r0, #128
	lsls r0, r0, #24
	orrs r2, r0
	str r2, [r1, #0]
	adds r1, #2
	movs r2, #128
	lsls r2, r2, #8
	adds r0, r2, #0
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083172F8
	ldr r2, [pc, #52]
	movs r0, #128
	lsls r0, r0, #8
	adds r1, r0, #0
.L083172F0:
	ldrh r0, [r2, #0]
	ands r0, r1
	cmp r0, #0
	bne .L083172F0
.L083172F8:
	ldr r0, [pc, #8]
	strh r6, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000204
	.4byte 0x0000F8FF
	.4byte 0x03000B08
	.4byte 0x040000D4
	.4byte 0x040000D8
	.4byte 0x040000DC
	.4byte 0x040000DE

	.thumb
	.align 1, 0
	.global sub_08317324
	.thumb_func
sub_08317324:
	push {r4, r5, r6, lr}
	sub sp, #136
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r3, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r3, r0
	bcc .L08317344
	ldr r0, [pc, #4]
	b .L083173CE
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L08317344:
	ldr r0, [pc, #144]
	adds r6, r0, #0
	ldr r0, [r0, #0]
	ldrb r1, [r0, #8]
	lsls r0, r1, #1
	mov r4, sp
	adds r2, r0, r4
	adds r2, #2
	movs r4, #0
	cmp r4, r1
	bcs .L0831736E
.L0831735A:
	strh r3, [r2, #0]
	subs r2, #2
	lsrs r3, r3, #1
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	ldr r0, [r6, #0]
	ldrb r0, [r0, #8]
	cmp r4, r0
	bcc .L0831735A
.L0831736E:
	movs r0, #1
	strh r0, [r2, #0]
	subs r2, #2
	strh r0, [r2, #0]
	movs r4, #208
	lsls r4, r4, #20
	ldr r0, [pc, #92]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #192
	lsls r0, r0, #10
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	adds r1, r4, #0
	bl sub_083172A4
	adds r0, r4, #0
	mov r1, sp
	movs r2, #68
	bl sub_083172A4
	add r2, sp, #8
	adds r5, #6
	movs r4, #0
	movs r6, #1
.L083173A4:
	movs r1, #0
	movs r3, #0
.L083173A8:
	lsls r1, r1, #17
	ldrh r0, [r2, #0]
	ands r0, r6
	lsrs r1, r1, #16
	orrs r1, r0
	adds r2, #2
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #15
	bls .L083173A8
	strh r1, [r5, #0]
	subs r5, #2
	adds r0, r4, #1
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #3
	bls .L083173A4
	movs r0, #0
.L083173CE:
	add sp, #136
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000B08

	.thumb
	.align 1, 0
	.global sub_083173DC
	.thumb_func
sub_083173DC:
	push {r4, r5, lr}
	sub sp, #164
	adds r5, r1, #0
	lsls r0, r0, #16
	lsrs r4, r0, #16
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r4, r0
	bcc .L083173FC
	ldr r0, [pc, #4]
	b .L083174A8
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083173FC:
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r0, r0, #1
	mov r1, sp
	adds r3, r0, r1
	adds r3, #132
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r1, #0
.L08317412:
	ldrh r2, [r5, #0]
	adds r5, #2
	movs r0, #0
.L08317418:
	strh r2, [r3, #0]
	subs r3, #2
	lsrs r2, r2, #1
	adds r0, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #15
	bls .L08317418
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #3
	bls .L08317412
	movs r1, #0
	ldr r0, [pc, #4]
	adds r2, r0, #0
	ldr r0, [r0, #0]
	b .L0831744E
	lsrs r0, r1, #12
	lsls r0, r0, #12
.L08317440:
	strh r4, [r3, #0]
	subs r3, #2
	lsrs r4, r4, #1
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldr r0, [r2, #0]
.L0831744E:
	ldrb r0, [r0, #8]
	cmp r1, r0
	bcc .L08317440
	movs r0, #0
	strh r0, [r3, #0]
	subs r3, #2
	movs r0, #1
	strh r0, [r3, #0]
	movs r1, #208
	lsls r1, r1, #20
	ldr r0, [pc, #76]
	ldr r0, [r0, #0]
	ldrb r0, [r0, #8]
	lsls r2, r0, #16
	movs r0, #134
	lsls r0, r0, #15
	adds r2, r2, r0
	lsrs r2, r2, #16
	mov r0, sp
	bl sub_083172A4
	ldr r0, [pc, #56]
	bl sub_083171FC
	movs r4, #0
	movs r1, #208
	lsls r1, r1, #20
	movs r3, #1
	ldr r2, [pc, #48]
.L08317488:
	ldrh r0, [r1, #0]
	ands r0, r3
	cmp r0, #0
	bne .L083174A2
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08317488
	ldrh r0, [r1, #0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne .L083174A2
	ldr r4, [pc, #24]
.L083174A2:
	bl sub_08317260
	adds r0, r4, #0
.L083174A8:
	add sp, #164
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03000B08
	.4byte 0x083DFB10
	.4byte 0x03005848
	.4byte 0x0000C001

	.thumb
	.align 1, 0
	.global sub_083174C0
	.thumb_func
sub_083174C0:
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r1, #0
	lsls r0, r0, #16
	lsrs r1, r0, #16
	movs r5, #0
	ldr r0, [pc, #12]
	ldr r0, [r0, #0]
	ldrh r0, [r0, #4]
	cmp r1, r0
	bcc .L083174E4
	ldr r0, [pc, #8]
	b .L0831750E
	movs r0, r0
	lsrs r0, r1, #12
	lsls r0, r0, #12
	strh r7, [r7, #6]
	movs r0, r0
.L083174E4:
	adds r0, r1, #0
	mov r1, sp
	bl sub_08317324
	mov r2, sp
	movs r3, #0
	b .L083174FC
.L083174F2:
	adds r0, r3, #1
	lsls r0, r0, #24
	lsrs r3, r0, #24
	cmp r3, #3
	bhi .L0831750C
.L083174FC:
	ldrh r1, [r4, #0]
	ldrh r0, [r2, #0]
	adds r2, #2
	adds r4, #2
	cmp r1, r0
	beq .L083174F2
	movs r5, #128
	lsls r5, r5, #8
.L0831750C:
	adds r0, r5, #0
.L0831750E:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

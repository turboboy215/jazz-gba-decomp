	.include "asm/macros.inc"
	.syntax unified
	.text

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
	bl Pickup_Create
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
	bl Pickup_Create
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

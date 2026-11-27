	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F9698
	.thumb_func
sub_082F9698:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082F96AE
	b .L082F988A
.L082F96AE:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #48
	ldrb r0, [r0, #0]
	strb r0, [r1, #14]
	ldr r1, [sp, #0]
	ldr r0, [r4, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	subs r0, #1
	strb r0, [r1, #16]
	ldr r0, [sp, #0]
	adds r0, #140
	ldr r1, [pc, #36]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082F9750
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082F9704
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082F970A
	ldr r0, [sp, #612]
	lsrs r7, r5, #32
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9704:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082F970A:
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9730
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #176
	lsls r2, r2, #5
	b .L082F9778
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L082F9730:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #12]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082F983E
	.2byte 0xea00 @ .raw
	.2byte 0xffff @ .raw
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9750:
	cmp r0, #1
	bne .L082F97A4
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9790
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #192
	lsls r2, r2, #5
.L082F9778:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r1, #28]
	b .L082F983E
	movs r0, r0
	beq .L082F978C
	.2byte 0xffff @ .raw
.L082F978C:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9790:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082F97F6
	movs r0, r0
	.2byte 0xe800 @ .raw
	.2byte 0xffff @ .raw
.L082F97A4:
	cmp r0, #3
	bne .L082F97CC
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #4]
	b .L082F9838
	b .L082F97C8
	.2byte 0xffff @ .raw
.L082F97C8:
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F97CC:
	cmp r0, #2
	bne .L082F981C
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #128
	lsls r2, r2, #4
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F9804
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082F97F6:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082F983E
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082F9804:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #8]
	adds r0, r0, r2
	str r0, [r1, #20]
	b .L082F983A
	movs r0, r0
	b .L082F981C
	.2byte 0xffff @ .raw
.L082F981C:
	cmp r0, #4
	bne .L082F983E
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #128
	lsls r0, r0, #4
.L082F9838:
	str r0, [r1, #32]
.L082F983A:
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082F983E:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082F985C
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #12]
	movs r2, #4
	movs r3, #0
	bl sub_080002E0
	b .L082F986A
	movs r0, r0
	adds r4, #192
	lsrs r7, r1, #32
.L082F985C:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #48]
	movs r2, #5
	movs r3, #0
	bl sub_080002E0
.L082F986A:
	ldr r1, [sp, #0]
	movs r0, #0
	strb r0, [r1, #4]
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F988A
	movs r0, #22
	bl sub_083189D0
.L082F988A:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x080F34C0

	.thumb
	.align 1, 0
	.global sub_082F9898
	.thumb_func
sub_082F9898:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	movs r0, #0
	str r0, [sp, #16]
.L082F98AA:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r6, #1
	negs r6, r6
	str r6, [sp, #0]
	movs r4, #1
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F98EE
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r6, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F98EE
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F98FC
.L082F98EE:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082F9AA6
	str r6, [sp, #468]
	lsrs r7, r5, #32
.L082F98FC:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F99C8
	movs r6, #0
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	ldr r7, [pc, #60]
	movs r2, #80
	adds r2, r2, r7
	mov sl, r2
	adds r4, r7, #0
	mov r9, r6
.L082F992A:
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	cmp r6, r0
	beq .L082F99AE
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082F99AE
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F99AE
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F9960
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F996A
	movs r5, #12
	lsls r0, r0, #12
.L082F9960:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F996A:
	adds r0, r7, #0
	adds r0, #52
	add r0, r9
	mov r3, sl
	movs r2, #0
	ldrsh r1, [r3, r2]
	lsls r1, r1, #8
	ldr r0, [r0, #0]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #20
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #32]
	adds r1, r6, r1
	mov r2, r8
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082F99AE:
	movs r3, #248
	add sl, r3
	adds r4, #248
	add r9, r3
	adds r6, #1
	cmp r6, #3
	bls .L082F992A
	b .L082F9A38
	movs r0, r0
	ldr r2, [sp, #756]
	lsrs r7, r5, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082F99C8:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082F9A38
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F99EA
	adds r0, r5, #0
	adds r0, #40
	movs r1, #1
	bl sub_08000680
	b .L082F99F4
.L082F99EA:
	adds r0, r5, #0
	adds r0, #40
	movs r1, #0
	bl sub_08000680
.L082F99F4:
	ldr r2, [sp, #12]
	adds r0, r2, #0
	adds r0, #88
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L082F9A10
	adds r0, r2, #0
	adds r0, #80
	movs r3, #0
	ldrsh r1, [r0, r3]
	lsls r1, r1, #8
	ldr r0, [r2, #52]
	adds r0, r0, r1
	str r0, [r5, #20]
.L082F9A10:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
	ldr r0, [sp, #12]
	movs r2, #0
	str r2, [sp, #0]
	add r1, sp, #4
	strb r2, [r1, #0]
	add r1, sp, #8
	strb r2, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
	b .L082F9AA6
	movs r0, r0
	ldr r2, [sp, #756]
	lsrs r7, r5, #32
.L082F9A38:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082F9A66
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r2, r5, #0
	adds r2, #144
	ldr r2, [r2, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	b .L082F9A72
.L082F9A66:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302058
.L082F9A72:
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082F9A80
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F9AA6
.L082F9A80:
	ldr r0, [r5, #20]
	ldr r4, [pc, #52]
	cmp r0, r4
	bgt .L082F9A8E
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9A8E:
	ldr r0, [r5, #24]
	cmp r0, r4
	bgt .L082F9A9A
	adds r0, r5, #0
	bl sub_082F4B78
.L082F9A9A:
	ldr r0, [sp, #16]
	adds r0, #1
	str r0, [sp, #16]
	cmp r0, #2
	beq .L082F9AA6
	b .L082F98AA
.L082F9AA6:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x000007FF

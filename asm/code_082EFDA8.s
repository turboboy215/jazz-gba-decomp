	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082EFDA8
	.thumb_func
sub_082EFDA8:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [pc, #60]
	ldr r2, [r4, #56]
	movs r1, #128
	lsls r1, r1, #5
	adds r0, r2, r1
	ldr r1, [r5, #56]
	cmp r1, r0
	bge .L082EFDFE
	ldr r3, [pc, #48]
	adds r0, r2, r3
	cmp r1, r0
	ble .L082EFDFE
	ldr r3, [r4, #52]
	asrs r1, r3, #8
	ldr r2, [r5, #52]
	asrs r0, r2, #8
	subs r1, r1, r0
	cmp r1, #0
	bge .L082EFDD4
	negs r1, r1
.L082EFDD4:
	cmp r1, #74
	bgt .L082EFDFE
	adds r0, r4, #0
	adds r0, #48
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082EFDF4
	movs r0, #0
	cmp r2, r3
	ble .L082EFE00
	movs r0, #1
	b .L082EFE00
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xc000 @ .raw stmia r0!, {}
	.2byte 0xffff @ .raw
.L082EFDF4:
	movs r0, #0
	cmp r2, r3
	bge .L082EFE00
	movs r0, #1
	b .L082EFE00
.L082EFDFE:
	movs r0, #0
.L082EFE00:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFE08
	.thumb_func
sub_082EFE08:
	adds r2, r0, #0
	strb r1, [r2, #7]
	subs r0, r1, #1
	cmp r0, #7
	bhi .L082EFE8C
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r6, #68]
	lsrs r5, r7, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r7, #3
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r2, #1
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r4, #10
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r2, #13
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #16]
	str r0, [r1, #0]
	adds r0, r2, #0
	adds r0, #47
	movs r1, #0
	strb r1, [r0, #0]
	subs r0, #1
	strb r1, [r0, #0]
	b .L082EFE8C
	movs r0, r0
	lsls r5, r2, #15
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r1, r1, #17
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #0]
	b .L082EFE8A
	lsls r5, r7, #18
	lsrs r7, r5, #32
	adds r1, r2, #0
	adds r1, #200
	ldr r0, [pc, #4]
.L082EFE8A:
	str r0, [r1, #0]
.L082EFE8C:
	bx lr
	.2byte 0x0000
	.4byte 0x082F051D

	.thumb
	.align 1, 0
	.global sub_082EFE94
	.thumb_func
sub_082EFE94:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #216
	ldr r0, [r0, #0]
	subs r0, #7
	cmp r0, #5
	bhi .L082EFF20
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	str r4, [r2, #72]
	lsrs r5, r7, #32
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082EFEBE
	adds r0, r4, #0
	movs r1, #5
	bl sub_082EFE08
.L082EFEBE:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #5
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #5
	b .L082EFF14
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082EFEE0
	adds r0, r4, #0
	movs r1, #6
	bl sub_082EFE08
.L082EFEE0:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #6
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #6
	b .L082EFF14
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082EFF02
	adds r0, r4, #0
	movs r1, #7
	bl sub_082EFE08
.L082EFF02:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	b .L082EFF1E
	ldrb r0, [r4, #7]
	cmp r0, #7
	beq .L082EFF18
	adds r0, r4, #0
	movs r1, #7
.L082EFF14:
	bl sub_082EFE08
.L082EFF18:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
.L082EFF1E:
	strb r0, [r1, #0]
.L082EFF20:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082EFF28
	.thumb_func
sub_082EFF28:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r1, #1
	bl sub_082F8A24
	movs r1, #0
	movs r2, #1
	strb r2, [r4, #5]
	strb r2, [r4, #6]
	adds r0, r4, #0
	adds r0, #46
	strb r2, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	adds r0, #33
	movs r3, #0
	strh r1, [r0, #0]
	movs r0, #82
	adds r0, r0, r4
	mov ip, r0
	ldr r0, [pc, #68]
	mov r5, ip
	strh r0, [r5, #0]
	str r1, [r4, #64]
	str r1, [r4, #68]
	movs r0, #128
	lsls r0, r0, #3
	str r0, [r4, #72]
	movs r0, #128
	lsls r0, r0, #4
	str r0, [r4, #76]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #50
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #87
	strb r3, [r0, #0]
	adds r0, #1
	strb r2, [r0, #0]
	subs r0, #2
	strb r3, [r0, #0]
	adds r1, #24
	movs r0, #250
	lsls r0, r0, #1
	strh r0, [r1, #0]
	ldr r0, [pc, #20]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L082EFFB2
	cmp r0, #1
	bgt .L082EFFA0
	cmp r0, #0
	beq .L082EFFAA
	b .L082EFFCA
	movs r0, r0
	.2byte 0xffe0 @ .raw
	movs r0, r0
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082EFFA0:
	cmp r0, #2
	beq .L082EFFBA
	cmp r0, #3
	beq .L082EFFC2
	b .L082EFFCA
.L082EFFAA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #10
	b .L082EFFC8
.L082EFFB2:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #20
	b .L082EFFC8
.L082EFFBA:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #30
	b .L082EFFC8
.L082EFFC2:
	adds r1, r4, #0
	adds r1, #90
	movs r0, #40
.L082EFFC8:
	strh r0, [r1, #0]
.L082EFFCA:
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082EFFDE
	adds r0, r4, #0
	movs r1, #8
	bl sub_082EFE08
	b .L082EFFE6
.L082EFFDE:
	adds r0, r4, #0
	movs r1, #2
	bl sub_082EFE08
.L082EFFE6:
	adds r0, r4, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L082F000C
	adds r1, r4, #0
	adds r1, #48
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #8]
	movs r2, #8
	movs r3, #0
	bl sub_080002E0
	b .L082F0022
	asrs r0, r6, #14
	lsrs r2, r2, #32
.L082F000C:
	adds r1, r4, #0
	adds r1, #48
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #44]
	movs r2, #9
	movs r3, #0
	bl sub_080002E0
.L082F0022:
	adds r1, r4, #0
	adds r1, #229
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L082F0030
	subs r1, #139
	strh r0, [r1, #0]
.L082F0030:
	adds r0, r4, #0
	adds r0, #216
	movs r2, #0
	str r2, [r0, #0]
	adds r1, r4, #0
	adds r1, #220
	ldr r0, [pc, #12]
	str r0, [r1, #0]
	strb r2, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x081213B0
	.4byte 0x082EFE95

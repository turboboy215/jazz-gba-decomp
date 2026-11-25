	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08307F0C
	.thumb_func
sub_08307F0C:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	bl sub_08307E84
	ldr r0, [r5, #52]
	ldr r1, [r5, #64]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldr r0, [r5, #56]
	ldr r2, [r5, #68]
	adds r0, r0, r2
	str r0, [r5, #56]
	adds r0, r5, #0
	bl sub_08307EC0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L08307F42
	subs r0, r1, #1
	b .L08307F5A
.L08307F42:
	ldr r0, [r5, #64]
	negs r0, r0
	str r0, [r5, #64]
	ldr r0, [r5, #68]
	negs r0, r0
	str r0, [r5, #68]
	adds r1, r5, #0
	adds r1, #229
	ldrb r2, [r1, #0]
	lsls r0, r2, #4
	subs r0, r0, r2
	lsls r0, r0, #2
.L08307F5A:
	strh r0, [r5, #26]
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08307F8E
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L08307F8E:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_08307F9C
	.thumb_func
sub_08307F9C:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r0, #100
	bl sub_08000704
	movs r4, #0
	str r4, [r5, #64]
	str r4, [r5, #68]
	adds r0, r5, #0
	bl sub_08307E84
	adds r0, r5, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #43
	beq .L0830806A
	adds r0, r5, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r2, r5, #0
	adds r2, #229
	ldrb r3, [r2, #0]
	negs r1, r3
	orrs r1, r3
	lsrs r1, r1, #31
	cmp r0, r1
	bne .L0830806A
	ldrh r6, [r5, #28]
	movs r1, #28
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble .L08308030
	ldr r4, [pc, #68]
	adds r3, r5, #0
	adds r3, #228
	ldrb r2, [r3, #0]
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r2, #26
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r0, #4]
	str r1, [r5, #64]
	ldr r0, [r5, #52]
	adds r0, r0, r1
	str r0, [r5, #52]
	ldrb r3, [r3, #0]
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r0, [r0, #0]
	movs r3, #26
	ldrsh r1, [r5, r3]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r1, [r5, #56]
	ldr r0, [r0, #8]
	adds r1, r1, r0
	str r1, [r5, #56]
	subs r0, r6, #1
	b .L08308068
	ldr r0, [r0, r5]
	lsls r0, r0, #12
.L08308030:
	ldrh r0, [r5, #26]
	adds r0, #1
	strh r0, [r5, #26]
	movs r6, #26
	ldrsh r1, [r5, r6]
	ldr r3, [pc, #60]
	adds r2, r5, #0
	adds r2, #228
	ldrb r6, [r2, #0]
	lsls r0, r6, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	ldrb r0, [r0, #0]
	cmp r1, r0
	blt .L08308050
	strh r4, [r5, #26]
.L08308050:
	ldrb r2, [r2, #0]
	lsls r0, r2, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	movs r2, #26
	ldrsh r1, [r5, r2]
	ldr r2, [r0, #4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0, #0]
.L08308068:
	strh r0, [r5, #28]
.L0830806A:
	ldr r1, [r5, #64]
	adds r0, r5, #0
	bl sub_08307EC0
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03005940

	.thumb
	.align 1, 0
	.global sub_0830807C
	.thumb_func
sub_0830807C:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	ldr r0, [r7, #52]
	mov r8, r0
	adds r0, r7, #0
	adds r0, #100
	bl sub_08000704
	movs r0, #0
	str r0, [r7, #64]
	str r0, [r7, #68]
	adds r0, r7, #0
	bl sub_08307E84
	adds r0, r7, #0
	adds r0, #216
	ldr r0, [r0, #0]
	cmp r0, #43
	beq .L08308112
	ldrh r1, [r7, #10]
	lsls r4, r1, #8
	adds r6, r7, #0
	adds r6, #227
	ldrb r2, [r6, #0]
	lsls r3, r2, #3
	ldr r2, [pc, #112]
	ldrh r5, [r7, #26]
	ldr r1, [pc, #112]
	adds r0, r1, #0
	ands r0, r5
	lsls r0, r0, #1
	adds r0, r0, r2
	movs r2, #0
	ldrsh r0, [r0, r2]
	muls r0, r3
	asrs r0, r0, #7
	adds r4, r4, r0
	str r4, [r7, #52]
	ldrh r0, [r7, #12]
	lsls r2, r0, #8
	ldrb r6, [r6, #0]
	lsls r6, r6, #3
	mov ip, r6
	ldr r0, [pc, #84]
	ldrh r3, [r7, #28]
	ands r1, r3
	lsls r1, r1, #1
	adds r1, r1, r0
	movs r6, #0
	ldrsh r0, [r1, r6]
	mov r1, ip
	muls r1, r0
	adds r0, r1, #0
	asrs r0, r0, #7
	adds r2, r2, r0
	str r2, [r7, #56]
	adds r0, r7, #0
	adds r0, #228
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	subs r5, r5, r0
	strh r5, [r7, #26]
	adds r0, r7, #0
	adds r0, #229
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	subs r3, r3, r0
	strh r3, [r7, #28]
	mov r2, r8
	subs r4, r4, r2
	str r4, [r7, #64]
.L08308112:
	ldr r1, [r7, #64]
	adds r0, r7, #0
	bl sub_08307EC0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D532C
	.4byte 0x000003FF
	.4byte 0x083D5B2C

	.thumb
	.align 1, 0
	.global sub_08308130
	.thumb_func
sub_08308130:
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #227
	ldrb r0, [r0, #0]
	bl sub_08001E18
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	beq .L08308162
	movs r0, #1
	strb r0, [r5, #3]
	adds r0, r5, #0
	adds r0, #100
	bl sub_08000704
	adds r0, r5, #0
	bl sub_08307E84
	adds r0, r5, #0
	movs r1, #0
	bl sub_08307EC0
	b .L08308172
.L08308162:
	ldr r0, [pc, #72]
	adds r2, r0, #0
	adds r2, #204
	ldr r0, [r2, #0]
	cmp r0, r5
	bne .L08308170
	str r1, [r2, #0]
.L08308170:
	strb r1, [r5, #3]
.L08308172:
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	ldr r1, [r5, #56]
	asrs r1, r1, #8
	ldr r3, [pc, #48]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #180
	lsls r4, r4, #2
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083081A4
	adds r0, r5, #0
	adds r0, #224
	ldrh r0, [r0, #0]
	bl sub_08316920
	adds r0, r5, #0
	bl sub_08309D50
.L083081A4:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x0300250C

	.thumb
	.align 1, 0
	.global sub_083081B0
	.thumb_func
sub_083081B0:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	bne .L08308214
	ldr r0, [sp, #0]
	strb r1, [r0, #1]
	ldr r0, [sp, #0]
	strb r1, [r0, #2]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	str r4, [r0, #52]
	ldr r0, [sp, #0]
	str r5, [r0, #56]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #45
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	movs r2, #0
	strh r6, [r0, #26]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #40]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	strb r2, [r0, #5]
	ldr r0, [sp, #0]
	adds r0, #224
	movs r1, #255
	strh r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #100
	ldr r1, [pc, #24]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L08308214:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x08308229
	.4byte 0x08309E79
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_08308228
	.thumb_func
sub_08308228:
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #26]
	movs r2, #26
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble .L0830824C
	subs r0, r1, #1
	movs r1, #0
	strh r0, [r4, #26]
	strb r1, [r4, #3]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L08308264
	movs r0, #33
	bl sub_083189D0
	b .L08308264
.L0830824C:
	movs r0, #1
	strb r0, [r4, #3]
	adds r0, r4, #0
	adds r0, #100
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08308264
	adds r0, r4, #0
	bl sub_08309D50
.L08308264:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0830826C
	.thumb_func
sub_0830826C:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	mov r0, sp
	bl sub_08309CB0
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #1
	bne .L083082F6
	ldr r1, [sp, #0]
	movs r2, #0
	movs r0, #10
	strb r0, [r1, #5]
	ldr r0, [sp, #0]
	strb r6, [r0, #1]
	ldr r0, [sp, #0]
	strb r6, [r0, #2]
	ldr r0, [sp, #0]
	strb r6, [r0, #3]
	ldr r0, [sp, #0]
	adds r0, #46
	strb r2, [r0, #0]
	ldr r0, [sp, #0]
	str r4, [r0, #52]
	ldr r0, [sp, #0]
	str r5, [r0, #56]
	ldr r0, [sp, #0]
	adds r0, #60
	movs r1, #101
	strb r1, [r0, #0]
	bl sub_08306E84
	ldr r2, [sp, #0]
	movs r3, #255
	ands r0, r3
	movs r1, #192
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r2, #64]
	ldr r0, [sp, #0]
	adds r0, #200
	ldr r1, [pc, #60]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #212
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r0, [sp, #0]
	adds r0, #224
	strh r3, [r0, #0]
	ldr r4, [sp, #0]
	adds r4, #100
	ldr r5, [pc, #44]
	bl sub_08306E84
	adds r2, r0, #0
	ands r2, r6
	adds r0, r4, #0
	adds r1, r5, #0
	movs r3, #0
	bl sub_080002E0
	ldr r0, [sp, #0]
	adds r0, #100
	movs r1, #1
	bl sub_0800078C
.L083082F6:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0830830D
	.4byte 0x08309E79
	.4byte 0x080BEE20

	.thumb
	.align 1, 0
	.global sub_0830830C
	.thumb_func
sub_0830830C:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #100
	bl sub_08000704
	ldr r0, [r4, #52]
	ldr r1, [r4, #64]
	subs r0, r0, r1
	str r0, [r4, #52]
	ldr r1, [r4, #56]
	movs r0, #128
	lsls r0, r0, #3
	adds r1, r1, r0
	str r1, [r4, #56]
	asrs r1, r1, #8
	ldr r0, [pc, #36]
	ldr r0, [r0, #28]
	adds r0, #200
	cmp r1, r0
	ble .L0830833A
	adds r0, r4, #0
	bl sub_08309D50
.L0830833A:
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	cmp r0, #0
	bgt .L08308348
	adds r0, r4, #0
	bl sub_08309D50
.L08308348:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030038CC

	.thumb
	.align 1, 0
	.global sub_08308354
	.thumb_func
sub_08308354:
	push {r4, lr}
	adds r4, r0, #0
	movs r2, #0
	movs r0, #8
	strb r0, [r4, #5]
	adds r1, r4, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	strb r2, [r4, #2]
	strb r2, [r4, #3]
	adds r1, #152
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	bl sub_08306E54
	adds r0, r4, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	strh r0, [r4, #26]
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08309E79
	.4byte 0x08308391

	.thumb
	.align 1, 0
	.global sub_08308390
	.thumb_func
sub_08308390:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #26]
	movs r2, #26
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne .L083083F4
	ldr r1, [pc, #72]
	movs r2, #145
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r1, #2
	ldr r2, [pc, #64]
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800347C
	ldr r2, [pc, #56]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #3
	adds r2, #52
	adds r1, r1, r2
	ldr r0, [r1, #0]
	asrs r4, r0, #8
	bl sub_08306E84
	adds r2, r4, #0
	adds r2, #255
	movs r1, #255
	ands r1, r0
	lsls r1, r1, #1
	adds r4, r2, r1
	lsls r0, r4, #8
	movs r1, #0
	bl sub_0830826C
	adds r0, r5, #0
	adds r0, #226
	ldrb r0, [r0, #0]
	b .L083083F6
	lsls r0, r2, #1
	lsls r0, r0, #16
	lsrs r0, r1, #32
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
.L083083F4:
	subs r0, r1, #1
.L083083F6:
	strh r0, [r5, #26]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08308400
	.thumb_func
sub_08308400:
	push {r4, lr}
	sub sp, #4
	adds r3, r0, #0
	movs r2, #0
	movs r0, #11
	strb r0, [r3, #5]
	adds r1, r3, #0
	adds r1, #60
	movs r0, #38
	strb r0, [r1, #0]
	strb r2, [r3, #2]
	strb r2, [r3, #3]
	str r2, [r3, #52]
	str r2, [r3, #56]
	movs r0, #128
	str r0, [r3, #64]
	ldr r0, [pc, #144]
	str r0, [r3, #68]
	strh r2, [r3, #26]
	adds r1, #152
	ldr r0, [pc, #140]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #140]
	str r0, [r1, #0]
	bl sub_08306E54
	ldr r4, [pc, #136]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #2
	bl sub_080012F4
	ldr r2, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #120]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #116]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #104]
	ands r0, r1
	adds r1, #1
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	movs r0, #1
	movs r1, #31
	bl sub_08003F88
	ldr r1, [pc, #80]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #0
	bl Bg_DrawLevelScreen
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0xFFFFFE80
	.4byte 0x08309E75
	.4byte 0x083084E1
	.4byte 0x0300398C
	.4byte 0x08268AC0
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C81

	.thumb
	.align 1, 0
	.global sub_083084E0
	.thumb_func
sub_083084E0:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, [r4, #52]
	ldr r6, [r4, #56]
	bl sub_08306E84
	movs r1, #3
	ands r0, r1
	ldrh r1, [r4, #26]
	adds r0, r1, r0
	strh r0, [r4, #26]
	ldr r2, [pc, #84]
	ldr r1, [pc, #84]
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r0, r0, #16
	asrs r0, r0, #26
	ldr r1, [r4, #64]
	adds r1, r1, r0
	str r1, [r4, #64]
	movs r0, #128
	negs r0, r0
	cmp r1, r0
	bge .L08308516
	str r0, [r4, #64]
.L08308516:
	ldr r0, [r4, #64]
	movs r1, #160
	lsls r1, r1, #4
	cmp r0, r1
	ble .L08308522
	str r1, [r4, #64]
.L08308522:
	ldr r2, [r4, #52]
	ldr r0, [r4, #64]
	adds r2, r2, r0
	str r2, [r4, #52]
	ldr r3, [r4, #56]
	ldr r0, [r4, #68]
	adds r3, r3, r0
	str r3, [r4, #56]
	ldr r0, [pc, #32]
	asrs r2, r2, #8
	asrs r1, r5, #8
	subs r2, r2, r1
	asrs r3, r3, #8
	asrs r1, r6, #8
	subs r3, r3, r1
	movs r1, #3
	bl sub_08001404
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D532C
	.4byte 0x000003FF
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08308558
	.thumb_func
sub_08308558:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	movs r5, #0
	movs r0, #12
	strb r0, [r6, #5]
	strb r5, [r6, #2]
	strb r5, [r6, #3]
	adds r1, r6, #0
	adds r1, #212
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	subs r1, #12
	ldr r0, [pc, #128]
	str r0, [r1, #0]
	ldr r4, [pc, #128]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #1
	bl sub_080012F4
	ldr r2, [pc, #120]
	adds r0, r4, #0
	movs r1, #3
	bl sub_08001314
	ldr r1, [pc, #112]
	ldr r0, [sp, #0]
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	ldr r1, [pc, #108]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, [pc, #100]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #9
	orrs r0, r1
	ldr r1, [pc, #96]
	ands r0, r1
	movs r1, #128
	lsls r1, r1, #18
	orrs r0, r1
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r1, #3
	mov r2, sp
	bl sub_08001A48
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r2, #128
	lsls r2, r2, #19
	ldrh r0, [r2, #0]
	movs r3, #128
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	adds r0, r4, #0
	movs r1, #3
	movs r2, #0
	movs r3, #18
	bl Bg_DrawLevelScreen
	strh r5, [r6, #26]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x08309E75
	.4byte 0x08308619
	.4byte 0x0300398C
	.4byte 0x0828D430
	.4byte 0xFFFFFF00
	.4byte 0xFFFF00FF
	.4byte 0xFF00FFFF
	.4byte 0x00FFFFFF
	.4byte 0x0400000E
	.4byte 0x00001C82

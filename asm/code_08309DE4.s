	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08309DE4
	.thumb_func
sub_08309DE4:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	movs r5, #0
.L08309DF2:
	ldr r0, [pc, #40]
	adds r4, r5, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L08309E24
	ldrb r0, [r4, #5]
	cmp r0, r7
	bne .L08309E24
	ldr r0, [pc, #28]
	adds r1, r4, #0
	movs r2, #0
	bl sub_08000D04
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309E24
	mov r0, r8
	str r4, [r0, #0]
	movs r0, #1
	b .L08309E2E
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
	movs r5, #12
	lsls r0, r0, #12
.L08309E24:
	adds r5, #248
	adds r6, #1
	cmp r6, #15
	bls .L08309DF2
	movs r0, #0
.L08309E2E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08309E38
	.thumb_func
sub_08309E38:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r1, #0
	ldr r0, [pc, #24]
	adds r3, r0, #0
	adds r3, #224
	adds r2, r0, #0
.L08309E48:
	ldrb r0, [r2, #1]
	cmp r0, #0
	beq .L08309E60
	ldrh r0, [r3, #0]
	cmp r0, r4
	bne .L08309E60
	str r2, [r5, #0]
	movs r0, #1
	b .L08309E6C
	movs r0, r0
	ldr r4, [pc, #512]
	lsls r0, r0, #8
.L08309E60:
	adds r3, #248
	adds r2, #248
	adds r1, #1
	cmp r1, #15
	bls .L08309E48
	movs r0, #0
.L08309E6C:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_08309E78
	.thumb_func
sub_08309E78:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08309EE4
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L08309ED4
	adds r4, r5, #0
	adds r4, #100
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08309ECC
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r3, [pc, #28]
	ldr r0, [r3, #8]
	subs r1, r1, r0
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	ldr r0, [r3, #12]
	subs r2, r2, r0
	adds r0, r5, #0
	adds r0, #60
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	b .L08309EDE
	movs r0, r0
	subs r0, #204
	lsls r0, r0, #12
.L08309ECC:
	adds r0, r4, #0
	bl sub_0800060C
	b .L08309EDE
.L08309ED4:
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_0800060C
.L08309EDE:
	adds r0, r4, #0
	bl Sprite_Draw
.L08309EE4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08309EEC
	.thumb_func
sub_08309EEC:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #2]
	cmp r0, #0
	beq .L08309F20
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq .L08309F20
	adds r4, r5, #0
	adds r4, #100
	adds r0, r4, #0
	bl sub_08000604
	ldr r1, [r5, #52]
	asrs r1, r1, #8
	ldr r2, [r5, #56]
	asrs r2, r2, #8
	adds r0, r5, #0
	adds r0, #60
	ldrb r3, [r0, #0]
	adds r0, r4, #0
	bl sub_08000684
	adds r0, r4, #0
	bl Sprite_Draw
.L08309F20:
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

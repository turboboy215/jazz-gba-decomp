	.include "asm/macros.inc"
	.syntax unified
	.text

@ GAXFx_render: [likely]
	.thumb
	.align 1, 0
	.global sub_08319F88
	.thumb_func
sub_08319F88:
	.global GAXFx_render
	.thumb_set GAXFx_render, sub_08319F88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r1
	ldrb r0, [r1, #19]
	cmp r0, #0
	beq .L08319F9C
	movs r0, #0
	str r0, [r4, #44]
.L08319F9C:
	mov r1, r8
	ldrb r0, [r1, #18]
	cmp r0, #0
	beq .L0831A090
	adds r0, r4, #0
	adds r0, #75
	ldrb r1, [r0, #0]
	adds r7, r0, #0
	cmp r1, #1
	beq .L08319FBC
	cmp r1, #0
	beq .L0831A090
	adds r0, #1
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0831A090
.L08319FBC:
	mov r3, r8
	ldrb r1, [r3, #19]
	cmp r1, #0
	bne .L0831A090
	ldrb r0, [r7, #0]
	cmp r0, #1
	bne .L08319FF0
	ldr r0, [r4, #44]
	cmp r0, #0
	beq .L08319FE6
	ldr r0, [r0, #12]
	ldrb r0, [r0, #1]
	cmp r0, #255
	bne .L08319FE6
	ldr r0, [pc, #16]
	strh r0, [r4, #14]
	strh r1, [r4, #30]
	movs r0, #128
	lsls r0, r0, #24
	str r0, [r4, #64]
	str r1, [r4, #44]
.L08319FE6:
	movs r0, #1
	strb r0, [r4, #23]
	b .L0831A002
	ldrh r0, [r2, #22]
	movs r0, r0
.L08319FF0:
	cmp r0, #1
	bls .L0831A002
	subs r0, #2
	lsls r0, r0, #5
	adds r1, r4, #0
	adds r1, #68
	movs r2, #0
	strh r0, [r1, #0]
	strb r2, [r4, #23]
.L0831A002:
	adds r1, r4, #0
	adds r1, #76
	ldrb r5, [r1, #0]
	ldr r0, [pc, #60]
	ldr r6, [r0, #0]
	ldr r0, [r6, #8]
	mov ip, r1
	cmp r5, #0
	beq .L0831A062
	ldr r1, [r0, #16]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0, #0]
	str r2, [r4, #44]
	movs r1, #0
	movs r3, #0
	strh r3, [r4, #40]
	strh r3, [r4, #42]
	ldrb r0, [r2, #8]
	strb r0, [r4, #9]
	strh r3, [r4, #38]
	strb r1, [r4, #21]
	strb r1, [r4, #22]
	movs r0, #255
	strb r0, [r4, #20]
	strb r1, [r4, #23]
	strh r3, [r4, #34]
	strh r3, [r4, #32]
	ldrb r0, [r2, #16]
	strb r0, [r4, #18]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L0831A04C
	str r3, [r4, #44]
	b .L0831A062
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L0831A04C:
	ldr r0, [r6, #4]
	ldr r1, [r0, #52]
	cmp r1, #0
	beq .L0831A062
	movs r0, #13
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt .L0831A062
	lsls r0, r0, #2
	adds r0, r0, r1
	strb r5, [r0, #0]
.L0831A062:
	ldrb r0, [r7, #0]
	adds r2, r4, #0
	adds r2, #73
	cmp r0, #1
	bls .L0831A078
	adds r1, r4, #0
	adds r1, #68
	ldrh r0, [r1, #0]
	ldrb r3, [r2, #0]
	adds r0, r0, r3
	strh r0, [r1, #0]
.L0831A078:
	adds r0, r4, #0
	adds r0, #72
	ldrb r0, [r0, #0]
	movs r1, #0
	strb r0, [r4, #20]
	movs r0, #0
	strh r1, [r4, #24]
	strh r1, [r4, #26]
	mov r1, ip
	strb r0, [r1, #0]
	strb r0, [r2, #0]
	strb r0, [r7, #0]
.L0831A090:
	ldr r0, [r4, #44]
	ldrb r1, [r4, #21]
	cmp r0, #0
	beq .L0831A0AE
	cmp r1, #0
	bne .L0831A0AE
	ldrb r0, [r4, #18]
	cmp r0, #0
	beq .L0831A0B2
	adds r0, r4, #0
	bl sub_083198B4
	ldrb r0, [r4, #18]
	subs r0, #1
	b .L0831A0B0
.L0831A0AE:
	subs r0, r1, #1
.L0831A0B0:
	strb r0, [r4, #21]
.L0831A0B2:
	adds r0, r4, #0
	bl sub_08319AE4
	adds r0, r4, #0
	adds r0, #74
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0831A0C6
	movs r0, #0
	strb r0, [r4, #19]
.L0831A0C6:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0831A0E8
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	ldr r2, [r0, #8]
	adds r0, r4, #0
	mov r1, r8
	movs r3, #1
	bl GAXTracker_generate_audio
	lsls r0, r0, #24
	lsrs r0, r0, #24
	b .L0831A0EA
	movs r0, r0
	lsrs r4, r1, #12
	lsls r0, r0, #12
.L0831A0E8:
	movs r0, #0
.L0831A0EA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF

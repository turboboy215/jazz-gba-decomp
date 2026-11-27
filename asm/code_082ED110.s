	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082ED110
	.thumb_func
sub_082ED110:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	cmp r1, #0
	bne .L082ED1F4
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082ED130
	ldr r0, [pc, #124]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	blt .L082ED144
.L082ED130:
	cmp r3, #0
	beq .L082ED136
	b .L082ED2C4
.L082ED136:
	ldr r0, [pc, #108]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082ED144
	b .L082ED2C4
.L082ED144:
	ldr r3, [r5, #56]
	ldr r1, [pc, #96]
	adds r0, r3, r1
	ldr r1, [r6, #56]
	cmp r1, r0
	bgt .L082ED152
	b .L082ED2C4
.L082ED152:
	movs r7, #208
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	blt .L082ED15E
	b .L082ED2C4
.L082ED15E:
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L082ED1B0
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED170
	b .L082ED2B8
.L082ED170:
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082ED176:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #48]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082ED194
	b .L082ED2C4
.L082ED194:
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED176
	b .L082ED2B8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	bvs .L082ED1B0
	.2byte 0xffff @ .raw
.L082ED1B0:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED1BC
	b .L082ED2B8
.L082ED1BC:
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082ED1C2:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	subs r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED1C2
	b .L082ED2B8
	bvs .L082ED1F0
	.2byte 0xffff @ .raw
.L082ED1F0:
	movs r5, #12
	lsls r0, r0, #12
.L082ED1F4:
	adds r0, r5, #0
	adds r0, #48
	ldrb r3, [r0, #0]
	adds r4, r0, #0
	cmp r3, #1
	bne .L082ED20C
	ldr r0, [pc, #112]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bgt .L082ED21C
.L082ED20C:
	cmp r3, #0
	bne .L082ED2C4
	ldr r0, [pc, #96]
	ldr r1, [r0, #52]
	adds r6, r0, #0
	ldr r2, [r5, #52]
	cmp r1, r2
	bge .L082ED2C4
.L082ED21C:
	ldr r3, [r5, #56]
	ldr r7, [pc, #88]
	adds r0, r3, r7
	ldr r1, [r6, #56]
	cmp r1, r0
	ble .L082ED2C4
	movs r7, #208
	lsls r7, r7, #6
	adds r0, r3, r7
	cmp r1, r0
	bge .L082ED2C4
	ldrb r4, [r4, #0]
	cmp r4, #1
	bne .L082ED280
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bge .L082ED2B8
	movs r7, #8
	negs r7, r7
	movs r6, #8
.L082ED248:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #44]
	adds r1, r1, r2
	str r7, [sp, #0]
	str r6, [sp, #4]
	str r6, [sp, #8]
	movs r2, #8
	adds r3, r7, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	adds r4, #8
	ldr r0, [pc, #12]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	blt .L082ED248
	b .L082ED2B8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	bvs .L082ED280
	.2byte 0xffff @ .raw
.L082ED280:
	asrs r4, r2, #8
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	cmp r4, r0
	ble .L082ED2B8
	movs r6, #8
	negs r6, r6
	movs r7, #8
.L082ED290:
	lsls r0, r4, #8
	ldr r1, [r5, #56]
	ldr r2, [pc, #36]
	adds r1, r1, r2
	str r6, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r2, r6, #0
	adds r3, r6, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED2C4
	subs r4, #8
	ldr r0, [pc, #16]
	ldr r0, [r0, #52]
	asrs r0, r0, #8
	cmp r4, r0
	bgt .L082ED290
.L082ED2B8:
	movs r0, #1
	b .L082ED2C6
	bvs .L082ED2C0
	.2byte 0xffff @ .raw
.L082ED2C0:
	movs r5, #12
	lsls r0, r0, #12
.L082ED2C4:
	movs r0, #0
.L082ED2C6:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_082ED2D0
	.thumb_func
sub_082ED2D0:
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #86
	ldrb r1, [r0, #0]
	ldrb r0, [r0, #0]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	ble .L082ED310
	movs r0, #7
	ands r0, r1
	cmp r0, #5
	ble .L082ED2F6
	adds r0, r4, #0
	adds r0, #100
	movs r1, #14
	bl sub_0800075C
	b .L082ED300
.L082ED2F6:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #16]
	bl sub_0800075C
.L082ED300:
	adds r1, r4, #0
	adds r1, #86
	ldrb r0, [r1, #0]
	subs r0, #1
	strb r0, [r1, #0]
	b .L082ED31A
	.2byte 0xffff @ .raw
	movs r0, r0
.L082ED310:
	adds r0, r4, #0
	adds r0, #100
	ldr r1, [pc, #84]
	bl sub_0800075C
.L082ED31A:
	adds r0, r4, #0
	adds r0, #230
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L082ED370
	movs r0, #42
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082ED336
	movs r0, #42
	bl sub_083189D0
.L082ED336:
	adds r0, r4, #0
	adds r0, #236
	adds r1, r4, #0
	adds r1, #90
	ldrh r2, [r1, #0]
	ldrh r0, [r0, #0]
	subs r0, r2, r0
	strh r0, [r1, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082ED350
	movs r0, #0
	strh r0, [r1, #0]
.L082ED350:
	adds r1, r4, #0
	adds r1, #86
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne .L082ED360
	movs r0, #7
	strb r0, [r1, #0]
.L082ED360:
	adds r0, r4, #0
	bl sub_08306E28
	movs r0, #1
	b .L082ED372
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L082ED370:
	movs r0, #0
.L082ED372:
	pop {r4}
	pop {r1}
	bx r1

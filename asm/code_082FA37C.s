	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082FA37C
	.thumb_func
sub_082FA37C:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	movs r7, #0
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r4, [pc, #128]
	ldr r1, [r4, #32]
	cmp r0, r1
	bgt .L082FA39C
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA39C:
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r0, [r4, #24]
	adds r0, #240
	cmp r1, r0
	blt .L082FA3AE
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA3AE:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r4, #1
	negs r4, r4
	str r4, [sp, #0]
	movs r6, #1
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA3D4
	movs r7, #1
	ldr r0, [r5, #28]
	negs r0, r0
	str r0, [r5, #28]
.L082FA3D4:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r4, [sp, #0]
	str r6, [sp, #4]
	adds r3, r4, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA440
	movs r7, #1
	ldr r0, [r5, #28]
	cmp r0, #0
	bne .L082FA436
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	str r4, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA418
	ldr r0, [pc, #4]
	b .L082FA434
	subs r0, #204
	lsls r0, r0, #12
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA418:
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [pc, #100]
	str r4, [sp, #0]
	str r7, [sp, #4]
	str r7, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA436
	movs r0, #160
	lsls r0, r0, #3
.L082FA434:
	str r0, [r5, #28]
.L082FA436:
	ldr r0, [r5, #32]
	cmp r0, #0
	bge .L082FA43E
	negs r0, r0
.L082FA43E:
	str r0, [r5, #32]
.L082FA440:
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA51E
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	adds r1, #8
	bl sub_08000AF8
	cmp r0, #0
	beq .L082FA474
	cmp r0, #4
	beq .L082FA474
	movs r7, #1
.L082FA474:
	cmp r0, #2
	beq .L082FA4C0
	cmp r0, #2
	bhi .L082FA488
	cmp r0, #1
	beq .L082FA4A0
	b .L082FA51E
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA488:
	cmp r0, #3
	beq .L082FA4E6
	cmp r0, #4
	bne .L082FA51E
	ldr r0, [r5, #24]
	ldr r3, [pc, #8]
	adds r0, r0, r3
	str r0, [r5, #24]
	b .L082FA51E
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA4A0:
	ldr r0, [r5, #32]
	cmp r0, #0
	bne .L082FA4B4
	ldr r0, [r5, #24]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	str r0, [r5, #24]
	b .L082FA51E
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FA4B4:
	ldr r0, [pc, #4]
	str r0, [r5, #32]
	b .L082FA51E
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA4C0:
	ldr r0, [r5, #28]
	ldr r1, [r5, #32]
	cmp r0, #0
	ble .L082FA4CC
	cmp r1, #0
	bgt .L082FA4F2
.L082FA4CC:
	cmp r0, #0
	bne .L082FA4E0
	cmp r1, #0
	ble .L082FA4E0
	str r0, [r5, #32]
	ldr r0, [pc, #4]
	str r0, [r5, #28]
	b .L082FA51E
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA4E0:
	cmp r0, #0
	ble .L082FA51E
	b .L082FA512
.L082FA4E6:
	ldr r0, [r5, #28]
	ldr r1, [r5, #32]
	cmp r0, #0
	bge .L082FA4FC
	cmp r1, #0
	ble .L082FA4FC
.L082FA4F2:
	negs r0, r0
	str r0, [r5, #28]
	negs r0, r1
	str r0, [r5, #32]
	b .L082FA51E
.L082FA4FC:
	cmp r0, #0
	bne .L082FA50E
	cmp r1, #0
	ble .L082FA50E
	str r0, [r5, #32]
	movs r0, #160
	lsls r0, r0, #3
	str r0, [r5, #28]
	b .L082FA51E
.L082FA50E:
	cmp r0, #0
	bge .L082FA51E
.L082FA512:
	ldr r1, [r5, #32]
	cmp r1, #0
	bne .L082FA51E
	ldr r0, [pc, #32]
	str r0, [r5, #32]
	str r1, [r5, #28]
.L082FA51E:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FA540
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FA54C
	movs r0, r0
	.2byte 0xfb00 @ .raw
	.2byte 0xffff @ .raw
.L082FA540:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FA54C:
	mov r8, r4
	mov r0, r8
	bl sub_08000704
	cmp r7, #0
	beq .L082FA5B8
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA57C
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA582
	movs r0, #36
	bl sub_083189D0
	b .L082FA582
.L082FA57C:
	movs r0, #36
	bl sub_083189D0
.L082FA582:
	movs r0, #1
	ldrb r2, [r5, #14]
	subs r0, r0, r2
	strb r0, [r5, #14]
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
	lsls r0, r0, #16
	cmp r0, #0
	bgt .L082FA5B8
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #20]
	str r1, [r0, #0]
	ldr r1, [pc, #20]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	b .L082FA758
	movs r0, r0
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA5B8:
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FA67C
	movs r6, #0
	movs r3, #144
	adds r3, r3, r5
	mov r9, r3
	mov r7, r8
	ldr r4, [pc, #156]
.L082FA5D0:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FA624
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA624
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #132]
	str r0, [r1, #0]
	adds r0, r7, #0
	ldr r1, [pc, #132]
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #5
	movs r2, #30
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #96]
	adds r1, r6, r1
	mov r2, r9
	ldr r0, [r2, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FA624:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082FA5D0
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	mov r3, r9
	ldr r2, [r3, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #250
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA710
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #24]
	str r1, [r0, #0]
	ldr r1, [pc, #24]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	b .L082FA710
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA67C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FA6C0
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #36]
	str r0, [r1, #0]
	ldr r1, [pc, #36]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #6
	b .L082FA700
	movs r0, r0
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA6C0:
	adds r6, r5, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA710
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #44]
	str r0, [r1, #0]
	ldr r1, [pc, #44]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	movs r1, #45
	str r1, [sp, #0]
	add r2, sp, #4
	movs r1, #1
	strb r1, [r2, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #15
.L082FA700:
	movs r3, #2
	bl sub_08306DD4
	b .L082FA758
	add r7, pc, #452
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FA710:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA732
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA732
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA732:
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FA742
	subs r0, r1, #1
	strh r0, [r5, #8]
	b .L082FA758
.L082FA742:
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #32]
	str r1, [r0, #0]
	ldr r1, [pc, #32]
	mov r0, r8
	bl sub_080003FC
	mov r0, r8
	bl sub_080006AC
.L082FA758:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x082FA771
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_082FA770
	.thumb_func
sub_082FA770:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #16
	adds r5, r0, #0
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FA78E
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082FA78E:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA7C6
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	mov r9, r4
	cmp r0, #0
	beq .L082FA7DE
	movs r1, #12
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FA7DE
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
	b .L082FA7DE
.L082FA7C6:
	movs r1, #12
	ldrsh r0, [r5, r1]
	movs r1, #40
	adds r1, r1, r5
	mov r9, r1
	cmp r0, #0
	bne .L082FA7DE
	movs r0, #1
	strh r0, [r5, #12]
	movs r0, #33
	bl sub_083189D0
.L082FA7DE:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FA7EE
	mov r0, r9
	movs r1, #1
	bl sub_08000680
	b .L082FA7F6
.L082FA7EE:
	mov r0, r9
	movs r1, #0
	bl sub_08000680
.L082FA7F6:
	movs r7, #1
	ldrh r1, [r5, #10]
	subs r0, r7, r1
	movs r4, #0
	strh r0, [r5, #10]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082FA8CC
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r6, r0, #24
	cmp r6, #0
	beq .L082FA878
	movs r6, #0
	adds r7, r5, #0
	adds r7, #144
	mov r8, r6
.L082FA81A:
	ldr r0, [pc, #84]
	mov r1, r8
	adds r4, r1, r0
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	beq .L082FA862
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FA862
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA862
	movs r0, #2
	str r0, [sp, #0]
	add r0, sp, #4
	movs r1, #0
	strb r1, [r0, #0]
	add r0, sp, #8
	strb r1, [r0, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #1
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FA862:
	movs r0, #248
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls .L082FA81A
	b .L082FA8CC
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FA878:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FA89E
	ldr r0, [sp, #12]
	str r6, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #1
	movs r2, #3
	movs r3, #2
	bl sub_08306DD4
.L082FA89E:
	adds r6, r5, #0
	adds r6, #144
	ldr r0, [r6, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FA8CC
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #1
	movs r3, #2
	bl sub_08306DD4
.L082FA8CC:
	mov r0, r9
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FA8DE
	adds r0, r5, #0
	bl sub_082F4B78
.L082FA8DE:
	add sp, #16
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FA8EC
	.thumb_func
sub_082FA8EC:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082FA902
	b .L082FAB10
.L082FA902:
	movs r2, #0
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r1, [r0, #4]
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
	ldr r1, [pc, #44]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	strh r2, [r0, #8]
	ldr r0, [sp, #0]
	strh r2, [r0, #10]
	ldr r3, [sp, #0]
	adds r0, r3, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FA9C0
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FA964
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FA96A
	add r3, sp, #116
	lsrs r7, r5, #32
	.2byte 0xf400, 0xffff @ bl 0x7efb962
.L082FA964:
	ldr r0, [r1, #56]
	ldr r2, [pc, #48]
	adds r0, r0, r2
.L082FA96A:
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FA99C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #224
	lsls r0, r0, #2
	str r0, [r1, #28]
	movs r2, #1
	b .L082FAAC0
	.2byte 0xe400 @ b.n 0x82fa19c
	.2byte 0xffff @ .raw
.L082FA99C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #16]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #12]
	str r0, [r1, #28]
	movs r2, #0
	b .L082FAAC0
	movs r0, r0
	b .L082FA9BC
	.2byte 0xffff @ .raw
.L082FA9BC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FA9C0:
	cmp r0, #1
	bne .L082FAA1C
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	ldr r2, [pc, #44]
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAA00
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #224
	lsls r0, r0, #2
	str r0, [r1, #28]
	movs r2, #3
	b .L082FAAC0
	beq .L082FA9FC
	.2byte 0xffff @ .raw
.L082FA9FC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FAA00:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #12]
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	movs r2, #2
	b .L082FAAC0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAA1C:
	cmp r0, #3
	bne .L082FAA6C
	ldrb r0, [r3, #14]
	cmp r0, #0
	bne .L082FAA38
	ldr r0, [r1, #52]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	str r0, [r3, #20]
	movs r2, #7
	b .L082FAA44
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FAA38:
	ldr r0, [r1, #52]
	movs r2, #192
	lsls r2, r2, #3
	adds r0, r0, r2
	str r0, [r3, #20]
	movs r2, #6
.L082FAA44:
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r3, [pc, #16]
	adds r0, r0, r3
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #12]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FAAC0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
.L082FAA6C:
	cmp r0, #2
	bne .L082FAAC0
	ldr r0, [r1, #56]
	ldr r1, [pc, #48]
	adds r0, r0, r1
	str r0, [r3, #24]
	ldr r0, [sp, #0]
	movs r2, #224
	lsls r2, r2, #2
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAAA8
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	movs r2, #5
	b .L082FAAC0
	movs r0, r0
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FAAA8:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #36]
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #32]
	str r0, [r1, #28]
	movs r2, #4
.L082FAAC0:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAAE4
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #16]
	movs r3, #0
	bl sub_080002E0
	b .L082FAAF0
	movs r0, r0
	b .L082FAADC
	.2byte 0xffff @ .raw
.L082FAADC:
	.2byte 0xfc80 @ .raw
	.2byte 0xffff @ .raw
	adds r5, #0
	lsrs r0, r2, #32
.L082FAAE4:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #44]
	movs r3, #0
	bl sub_080002E0
.L082FAAF0:
	ldr r1, [sp, #0]
	ldr r0, [r1, #20]
	asrs r0, r0, #8
	ldr r1, [r1, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAB0A
	movs r0, #40
	bl sub_083189D0
.L082FAB0A:
	ldr r1, [sp, #0]
	movs r0, #240
	strh r0, [r1, #6]
.L082FAB10:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08103500

	.thumb
	.align 1, 0
	.global sub_082FAB1C
	.thumb_func
sub_082FAB1C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	adds r5, r0, #0
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r4, #8
	negs r4, r4
	str r4, [sp, #0]
	movs r6, #8
	str r6, [sp, #4]
	str r6, [sp, #8]
	adds r3, r4, #0
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAB6E
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAB6E
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #32]
	str r6, [sp, #0]
	str r4, [sp, #4]
	adds r3, r4, #0
	bl sub_08000900
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAB94
.L082FAB6E:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #20]
	adds r0, r4, #0
	bl sub_080003FC
	adds r0, r4, #0
	bl sub_080006AC
	b .L082FAD04
	movs r0, r0
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FAB94:
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
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FAC8C
	movs r0, #0
	mov r9, r0
	adds r7, r5, #0
	adds r7, #40
	movs r1, #144
	adds r1, r1, r5
	mov r8, r1
	movs r2, #140
	adds r2, r2, r5
	mov sl, r2
	adds r6, r7, #0
	str r0, [sp, #16]
.L082FABC8:
	ldr r0, [pc, #172]
	ldr r3, [sp, #16]
	adds r4, r3, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FAC2A
	mov r1, r8
	ldr r0, [r1, #0]
	ldr r0, [r0, #16]
	cmp r4, r0
	beq .L082FAC2A
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAC2A
	ldr r0, [pc, #140]
	mov r2, sl
	str r0, [r2, #0]
	adds r0, r6, #0
	ldr r1, [pc, #136]
	bl sub_080003FC
	adds r0, r6, #0
	bl sub_080006AC
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #9
	movs r2, #128
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #100]
	add r1, r9
	mov r3, r8
	ldr r0, [r3, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FAC2A:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	mov r3, r8
	ldr r2, [r3, #0]
	ldr r3, [r2, #16]
	ldr r2, [r3, #52]
	asrs r2, r2, #8
	ldr r3, [r3, #56]
	asrs r3, r3, #8
	movs r4, #250
	lsls r4, r4, #1
	str r4, [sp, #0]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAC64
	ldr r0, [pc, #52]
	mov r1, sl
	str r0, [r1, #0]
	adds r0, r6, #0
	ldr r1, [pc, #36]
	bl sub_080003FC
	adds r0, r6, #0
	bl sub_080006AC
.L082FAC64:
	ldr r2, [sp, #16]
	adds r2, #248
	str r2, [sp, #16]
	movs r3, #1
	add r9, r3
	mov r0, r9
	cmp r0, #3
	bls .L082FABC8
	b .L082FACD8
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
	ldr r4, [r5, r3]
	lsls r0, r0, #12
	add r7, pc, #452
	lsrs r7, r5, #32
.L082FAC8C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r7, r5, #0
	adds r7, #40
	cmp r0, #1
	bne .L082FACD8
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r1, [pc, #40]
	adds r0, r7, #0
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #9
	movs r2, #20
	movs r3, #2
	bl sub_08306DD4
	b .L082FAD04
	add r5, sp, #116
	lsrs r7, r5, #32
	str r0, [r2, #120]
	lsrs r7, r2, #32
.L082FACD8:
	ldrh r1, [r5, #6]
	movs r2, #6
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FACE8
	subs r0, r1, #1
	strh r0, [r5, #6]
	b .L082FACFE
.L082FACE8:
	adds r0, r5, #0
	adds r0, #140
	ldr r1, [pc, #36]
	str r1, [r0, #0]
	ldr r1, [pc, #36]
	adds r0, r7, #0
	bl sub_080003FC
	adds r0, r7, #0
	bl sub_080006AC
.L082FACFE:
	adds r0, r7, #0
	bl sub_08000704
.L082FAD04:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x082FAD1D
	.4byte 0x08176790

	.thumb
	.align 1, 0
	.global sub_082FAD1C
	.thumb_func
sub_082FAD1C:
	push {r4, r5, r6, r7, lr}
	sub sp, #16
	adds r5, r0, #0
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAD58
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [r5, #20]
	asrs r1, r1, #8
	ldr r2, [r5, #24]
	asrs r2, r2, #8
	adds r0, r4, #0
	bl sub_083020A8
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAD6E
	movs r1, #10
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082FAD6E
	movs r0, #1
	strh r0, [r5, #10]
	movs r0, #41
	bl sub_083189D0
	b .L082FAD6E
.L082FAD58:
	movs r1, #10
	ldrsh r0, [r5, r1]
	adds r4, r5, #0
	adds r4, #40
	cmp r0, #0
	bne .L082FAD6E
	movs r0, #1
	strh r0, [r5, #10]
	movs r0, #41
	bl sub_083189D0
.L082FAD6E:
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FAD7E
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FAD86
.L082FAD7E:
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FAD86:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FAD9A
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082FAE60
.L082FAD9A:
	movs r6, #1
	ldrh r1, [r5, #8]
	subs r0, r6, r1
	movs r7, #0
	strh r0, [r5, #8]
	lsls r0, r0, #16
	cmp r0, #0
	beq .L082FAE60
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FAE0C
	movs r6, #0
	ldr r4, [pc, #72]
.L082FADBA:
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FADFA
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FADFA
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #28]
	adds r1, r6, r1
	adds r0, r5, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FADFA:
	adds r4, #248
	adds r6, #1
	cmp r6, #3
	bls .L082FADBA
	b .L082FAE60
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FAE0C:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FAE32
	ldr r0, [sp, #12]
	str r4, [sp, #0]
	add r1, sp, #4
	strb r7, [r1, #0]
	add r1, sp, #8
	strb r7, [r1, #0]
	movs r1, #1
	movs r2, #4
	movs r3, #2
	bl sub_08306DD4
.L082FAE32:
	adds r4, r5, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r1, [r0, #16]
	adds r0, r5, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FAE60
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r6, [r1, #0]
	add r1, sp, #8
	strb r6, [r1, #0]
	movs r1, #1
	movs r2, #2
	movs r3, #2
	bl sub_08306DD4
.L082FAE60:
	add sp, #16
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FAE68
	.thumb_func
sub_082FAE68:
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	mov r0, sp
	bl sub_082F4B44
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #1
	beq .L082FAE7E
	b .L082FB076
.L082FAE7E:
	ldr r0, [sp, #0]
	adds r0, #144
	str r4, [r0, #0]
	ldr r0, [sp, #0]
	movs r3, #0
	strb r1, [r0, #3]
	ldr r0, [sp, #0]
	strb r3, [r0, #4]
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
	ldr r1, [pc, #56]
	str r1, [r0, #0]
	ldr r1, [sp, #0]
	ldrb r0, [r4, #2]
	strb r0, [r1, #1]
	ldr r0, [sp, #0]
	strh r3, [r0, #10]
	ldr r1, [sp, #0]
	movs r0, #10
	strh r0, [r1, #8]
	ldr r1, [sp, #0]
	movs r0, #140
	lsls r0, r0, #1
	strh r0, [r1, #12]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r1, [r0, #16]
	ldrh r0, [r1, #16]
	cmp r0, #0
	bne .L082FAF2C
	ldrb r0, [r1, #7]
	cmp r0, #7
	bne .L082FAEEC
	ldr r0, [r1, #56]
	ldr r1, [pc, #8]
	adds r0, r0, r1
	b .L082FAEF2
	movs r0, r0
	sub sp, #84
	lsrs r7, r5, #32
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAEEC:
	ldr r0, [r1, #56]
	ldr r3, [pc, #36]
	adds r0, r0, r3
.L082FAEF2:
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r1, #0
	str r1, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FAF18
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #160
	lsls r2, r2, #6
	b .L082FAF54
	movs r0, r0
	udf #0
	.2byte 0xffff @ .raw
.L082FAF18:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	adds r0, r0, r3
	b .L082FB012
	bhi .L082FAF2C
	.2byte 0xffff @ .raw
.L082FAF2C:
	cmp r0, #1
	bne .L082FAF80
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
	bne .L082FAF6C
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r2, #144
	lsls r2, r2, #5
.L082FAF54:
	adds r0, r0, r2
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #28]
	b .L082FB04C
	movs r0, r0
	.2byte 0xcc00 @ .raw ldmia r4!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FAF6C:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r3, [pc, #4]
	b .L082FAFF6
	movs r0, r0
	.2byte 0xee00 @ .raw
	.2byte 0xffff @ .raw
.L082FAF80:
	cmp r0, #3
	bne .L082FAFCC
	ldrb r0, [r2, #14]
	cmp r0, #0
	bne .L082FAF98
	ldr r0, [r1, #52]
	ldr r1, [pc, #4]
	adds r0, r0, r1
	b .L082FAFA0
	movs r0, r0
	.2byte 0xfa00 @ .raw
	.2byte 0xffff @ .raw
.L082FAF98:
	ldr r0, [r1, #52]
	movs r3, #192
	lsls r3, r3, #3
	adds r0, r0, r3
.L082FAFA0:
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	ldr r2, [pc, #20]
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	ldr r0, [pc, #16]
	str r0, [r1, #32]
	ldr r1, [sp, #0]
	movs r0, #0
	str r0, [r1, #28]
	b .L082FB04C
	movs r0, r0
	.2byte 0xc800 @ .raw ldmia r0!, {}
	.2byte 0xffff @ .raw
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FAFCC:
	cmp r0, #2
	bne .L082FB024
	ldr r0, [r1, #56]
	ldr r3, [pc, #44]
	adds r0, r0, r3
	str r0, [r2, #24]
	ldr r0, [sp, #0]
	movs r2, #192
	lsls r2, r2, #1
	str r2, [r0, #32]
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FB004
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r3, #128
	lsls r3, r3, #6
.L082FAFF6:
	adds r0, r0, r3
	str r0, [r1, #20]
	ldr r0, [sp, #0]
	str r2, [r0, #28]
	b .L082FB04C
	.2byte 0xf800 @ .raw
	.2byte 0xffff @ .raw
.L082FB004:
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r2, [pc, #12]
	adds r0, r0, r2
.L082FB012:
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	ldr r0, [pc, #8]
	str r0, [r1, #28]
	b .L082FB04C
	b .L082FB020
	.2byte 0xffff @ .raw
.L082FB020:
	.2byte 0xfe80 @ .raw
	.2byte 0xffff @ .raw
.L082FB024:
	cmp r0, #4
	bne .L082FB04C
	ldr r0, [r1, #52]
	str r0, [r2, #20]
	ldr r1, [sp, #0]
	adds r0, r1, #0
	adds r0, #144
	ldr r0, [r0, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #56]
	movs r2, #128
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r1, #24]
	ldr r1, [sp, #0]
	movs r0, #192
	lsls r0, r0, #1
	str r0, [r1, #32]
	ldr r0, [sp, #0]
	str r3, [r0, #28]
.L082FB04C:
	ldr r1, [sp, #0]
	ldrb r0, [r1, #14]
	cmp r0, #0
	bne .L082FB068
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #8]
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	b .L082FB076
	ldr r0, [r0, #68]
	lsrs r0, r2, #32
.L082FB068:
	adds r0, r1, #0
	adds r0, #40
	ldr r1, [pc, #32]
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
.L082FB076:
	movs r0, #34
	bl sub_0831683C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB088
	movs r0, #34
	bl sub_083189D0
.L082FB088:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x08106C40

	.thumb
	.align 1, 0
	.global sub_082FB094
	.thumb_func
sub_082FB094:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	adds r5, r0, #0
	ldrh r1, [r5, #8]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FB0AE
	subs r0, r1, #1
	strh r0, [r5, #8]
	b .L082FB1F4
.L082FB0AE:
	ldrh r1, [r5, #12]
	movs r2, #12
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble .L082FB0F8
	subs r0, r1, #1
	strh r0, [r5, #12]
	movs r0, #1
	strb r0, [r5, #4]
	ldr r0, [r5, #20]
	ldr r1, [r5, #24]
	ldr r2, [r5, #28]
	movs r3, #8
	negs r3, r3
	str r3, [sp, #0]
	movs r4, #8
	str r4, [sp, #4]
	str r4, [sp, #8]
	bl sub_08000990
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB0F8
	ldr r0, [r5, #20]
	ldr r1, [r5, #28]
	adds r0, r0, r1
	str r0, [r5, #20]
	ldr r1, [r5, #24]
	movs r2, #128
	lsls r2, r2, #4
	adds r1, r1, r2
	movs r2, #0
	bl sub_08000A1C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB108
.L082FB0F8:
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #4]
	str r0, [r1, #0]
	b .L082FB1F4
	movs r0, r0
	.2byte 0xb201 @ .raw sxth r1, r0
	lsrs r7, r5, #32
.L082FB108:
	ldr r0, [r5, #24]
	ldr r1, [r5, #32]
	adds r0, r0, r1
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FB124
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082FB130
.L082FB124:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082FB130:
	adds r0, r4, #0
	bl sub_08000704
	bl sub_08003490
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #0
	beq .L082FB1A8
	movs r6, #0
	adds r7, r5, #0
	adds r7, #144
	mov r8, r6
.L082FB14A:
	ldr r0, [r7, #0]
	ldr r1, [pc, #80]
	mov r2, r8
	adds r4, r2, r1
	ldr r0, [r0, #16]
	cmp r0, r4
	beq .L082FB194
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L082FB194
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0800104C
	lsls r0, r0, #24
	cmp r0, #0
	beq .L082FB194
	movs r0, #2
	str r0, [sp, #0]
	add r1, sp, #4
	movs r0, #1
	strb r0, [r1, #0]
	add r1, sp, #8
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r4, #0
	movs r1, #10
	movs r2, #10
	movs r3, #2
	bl sub_08306DD4
	ldr r1, [pc, #24]
	adds r1, r6, r1
	ldr r0, [r7, #0]
	ldr r0, [r0, #16]
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L082FB194:
	movs r0, #248
	add r8, r0
	adds r6, #1
	cmp r6, #3
	bls .L082FB14A
	b .L082FB1D2
	movs r5, #12
	lsls r0, r0, #12
	ldr r4, [r5, r3]
	lsls r0, r0, #12
.L082FB1A8:
	adds r0, r5, #0
	add r1, sp, #12
	bl sub_08001238
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #1
	bne .L082FB1D2
	ldr r0, [sp, #12]
	movs r1, #2
	str r1, [sp, #0]
	add r1, sp, #4
	strb r4, [r1, #0]
	add r1, sp, #8
	strb r4, [r1, #0]
	movs r1, #10
	movs r2, #5
	movs r3, #2
	bl sub_08306DD4
	b .L082FB1F4
.L082FB1D2:
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB1F4
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB1F4
	adds r0, r5, #0
	bl sub_082F4B78
.L082FB1F4:
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_082FB200
	.thumb_func
sub_082FB200:
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082FB218
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #3
	bl sub_08000680
	b .L082FB224
.L082FB218:
	adds r4, r5, #0
	adds r4, #40
	adds r0, r4, #0
	movs r1, #2
	bl sub_08000680
.L082FB224:
	adds r0, r4, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L082FB236
	adds r0, r5, #0
	bl sub_082F4B78
.L082FB236:
	pop {r4, r5}
	pop {r0}
	bx r0

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08314464
	.thumb_func
sub_08314464:
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r5, r2, #0
	cmp r0, #10
	bls .L08314470
	b .L08314886
.L08314470:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	.2byte 0xf6e8 @ .raw
	lsrs r5, r7, #32
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144B6
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #5
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083144B0
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	ldrb r0, [r4, #0]
	movs r1, #5
	bl sub_082FB6D8
.L083144B0:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L083144B6:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083144E2
	b .L08314886
.L083144E2:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083144F6
	b .L08314886
.L083144F6:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083144FE
	b .L083147E4
.L083144FE:
	ldrb r0, [r4, #0]
	movs r1, #5
	movs r2, #3
	b .L08314868
	movs r0, r0
	adds r4, #228
	lsls r0, r0, #12
	ldr r6, [pc, #612]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	ldr r0, [pc, #32]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314530
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #16]
	bl sub_0831638C
.L08314530:
	ldr r1, [pc, #12]
	movs r0, #1
	strb r0, [r1, #0]
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldmia r7!, {r0, r4, r5}
	lsrs r7, r5, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #92
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
	movs r0, #7
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831458C
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #3
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314586
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #3
	bl sub_082FB6D8
.L08314586:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L0831458C:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #3
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L083145B8
	b .L08314886
.L083145B8:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083145CC
	b .L08314886
.L083145CC:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L083145D4
	b .L083147E4
.L083145D4:
	ldrb r0, [r4, #0]
	movs r1, #3
	movs r2, #40
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r3, [pc, #724]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
.L083145EC:
	movs r0, #255
	strh r0, [r1, #0]
.L083145F0:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r4, [r4, #0]
	cmp r4, r0
	beq .L08314600
	b .L08314886
.L08314600:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314614
	b .L08314886
.L08314614:
	b .L083147E4
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314632
	ldr r6, [pc, #128]
	ldrb r0, [r6, #0]
	cmp r0, #0
	bne .L08314632
	ldr r0, [pc, #124]
	bl sub_0831638C
	movs r0, #1
	strb r0, [r6, #0]
.L08314632:
	ldr r1, [pc, #120]
	movs r0, #1
	strb r0, [r1, #0]
	ldr r6, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r1, [r4, #0]
	lsls r0, r1, #1
	adds r1, r0, r6
	ldrh r2, [r1, #0]
	cmp r2, #99
	bls .L08314656
	movs r0, #99
	strh r0, [r1, #0]
.L08314656:
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L08314666
	b .L08314886
.L08314666:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831467A
	b .L08314886
.L0831467A:
	ldr r0, [r5, #8]
	cmp r0, #0
	bne .L08314682
	b .L083147E4
.L08314682:
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r6
	ldrh r1, [r0, #0]
	adds r1, #5
	strh r1, [r0, #0]
	ldrb r4, [r4, #0]
	lsls r0, r4, #1
	adds r1, r0, r6
	ldrh r0, [r1, #0]
	cmp r0, #99
	bhi .L0831469C
	b .L0831486C
.L0831469C:
	movs r0, #99
	strh r0, [r1, #0]
	b .L0831486C
	movs r0, r0
	cmp r0, #236
	lsls r0, r0, #12
	ldr r7, [pc, #340]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	adds r4, #220
	lsls r0, r0, #12
	adds r1, r4, #0
	adds r1, #90
	ldrh r0, [r1, #0]
	adds r0, #128
	strh r0, [r1, #0]
	lsls r0, r0, #16
	asrs r0, r0, #16
	cmp r0, #255
	ble .L083145F0
	b .L083145EC
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083146FE
	ldr r0, [pc, #120]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #2
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L083146F8
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #100]
	bl sub_0831638C
	movs r0, #0
	movs r1, #2
	bl sub_082FB6D8
.L083146F8:
	ldr r1, [pc, #88]
	movs r0, #1
	strb r0, [r1, #0]
.L083146FE:
	ldr r1, [pc, #76]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #2
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	beq .L0831472A
	b .L08314886
.L0831472A:
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831473E
	b .L08314886
.L0831473E:
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #2
	movs r2, #10
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r4, [pc, #804]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0831478E
	ldr r0, [pc, #116]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #4
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08314788
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #96]
	bl sub_0831638C
	movs r0, #0
	movs r1, #4
	bl sub_082FB6D8
.L08314788:
	ldr r1, [pc, #84]
	movs r0, #1
	strb r0, [r1, #0]
.L0831478E:
	ldr r1, [pc, #72]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #6
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L083147E4
	ldrb r0, [r4, #0]
	movs r1, #4
	movs r2, #4
	b .L08314868
	adds r4, #228
	lsls r0, r0, #12
	ldr r5, [pc, #532]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L083147E4:
	movs r0, #31
	bl sub_083189D0
	b .L08314886
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08314822
	ldr r0, [pc, #124]
	ldrb r2, [r4, #0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	adds r0, #1
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L0831481C
	movs r0, #1
	strb r0, [r1, #0]
	ldr r0, [pc, #104]
	bl sub_0831638C
	movs r0, #0
	movs r1, #1
	bl sub_082FB6D8
.L0831481C:
	ldr r1, [pc, #92]
	movs r0, #1
	strb r0, [r1, #0]
.L08314822:
	ldr r1, [pc, #80]
	ldrb r2, [r4, #0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0]
	ldrb r0, [r4, #0]
	movs r2, #75
	bl sub_082FB810
	bl sub_0800347C
	lsls r0, r0, #24
	lsrs r0, r0, #24
	ldrb r1, [r4, #0]
	cmp r1, r0
	bne .L08314886
	ldr r0, [r5, #20]
	asrs r0, r0, #8
	ldr r1, [r5, #24]
	asrs r1, r1, #8
	bl sub_08302078
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314886
	ldr r0, [r5, #8]
	cmp r0, #0
	beq .L08314880
	ldrb r0, [r4, #0]
	movs r1, #1
	movs r2, #50
.L08314868:
	bl sub_082FB810
.L0831486C:
	movs r0, #17
	bl sub_083189D0
	b .L08314886
	adds r4, #228
	lsls r0, r0, #12
	ldr r2, [pc, #996]
	lsrs r1, r6, #32
	ldr r4, [r3, r7]
	lsls r0, r0, #12
.L08314880:
	movs r0, #31
	bl sub_083189D0
.L08314886:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_0831488C
	.thumb_func
sub_0831488C:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne .L08314898
	b .L0831498A
.L08314898:
	ldrb r0, [r5, #5]
	cmp r0, #0
	beq .L08314900
	ldrb r0, [r5, #0]
	subs r0, #1
	cmp r0, #9
	bhi .L08314900
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf714 @ .raw
	lsrs r5, r7, #32
	ldr r0, [pc, #4]
	adds r0, #126
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #78
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	ldrh r0, [r0, #0]
	b .L083148F8
	movs r0, r0
	adds r4, #220
	lsls r0, r0, #12
	movs r0, #50
	str r0, [r5, #8]
	b .L08314900
	ldr r0, [pc, #4]
	ldrh r0, [r0, #54]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #4]
	adds r0, #102
	ldrh r0, [r0, #0]
	b .L083148F8
	adds r4, #252
	lsls r0, r0, #12
	ldr r0, [pc, #80]
	ldrh r0, [r0, #30]
.L083148F8:
	cmp r0, #0
	beq .L08314900
	movs r0, #10
	strh r0, [r5, #12]
.L08314900:
	ldrh r1, [r5, #12]
	movs r2, #12
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bgt .L08314984
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314950
	movs r7, #0
	movs r6, #0
.L08314918:
	ldr r0, [pc, #48]
	adds r4, r6, r0
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L0831493E
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L0831493E
	ldrb r0, [r5, #0]
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
.L0831493E:
	adds r6, #248
	adds r7, #1
	cmp r7, #3
	bls .L08314918
	b .L083149BC
	adds r4, #252
	lsls r0, r0, #12
	movs r5, #12
	lsls r0, r0, #12
.L08314950:
	ldr r6, [pc, #40]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #28]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	ldrh r0, [r5, #16]
	strh r0, [r5, #12]
	b .L083149B4
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	ldr r0, [r6, r3]
	lsls r0, r0, #12
.L08314984:
	subs r0, r1, #1
	strh r0, [r5, #12]
	b .L083149BC
.L0831498A:
	ldr r6, [pc, #56]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08000ECC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083149BC
	ldr r4, [pc, #44]
	ldr r0, [r5, #8]
	ldrh r1, [r4, #0]
	cmp r1, r0
	bcc .L083149BC
	ldrb r0, [r5, #0]
	adds r1, r6, #0
	adds r2, r5, #0
	bl sub_08314464
	adds r0, r5, #0
	bl sub_08314454
.L083149B4:
	ldrh r2, [r4, #0]
	ldrh r5, [r5, #8]
	subs r0, r2, r5
	strh r0, [r4, #0]
.L083149BC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300250C
	.4byte 0x030058F0

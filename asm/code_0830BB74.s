	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0830BB74
	.thumb_func
sub_0830BB74:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	bl sub_08003490
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830BBA8
	bl sub_08002B50
	ldr r0, [pc, #24]
	bl sub_08002BA0
	movs r0, #3
	bl sub_08002C04
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830BBA8
	bl sub_08002F28
	.2byte 0xe1fc @ b.n 0x830bf9c
	movs r0, r0
	add r0, pc, #132
	lsrs r0, r6, #32
.L0830BBA8:
	bl sub_0800347C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830BBE8
	ldr r0, [pc, #32]
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L0830BBBE
	bl sub_0830A274
.L0830BBBE:
	bl sub_0830A4AC
	ldr r1, [pc, #20]
	ldr r0, [pc, #20]
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	ldr r0, [pc, #24]
	str r0, [r1, #0]
	bl sub_0830A3B4
	.2byte 0xe1e3 @ b.n 0x830bf9c
	strb r4, [r6, #21]
	lsls r0, r0, #8
	strb r0, [r6, #21]
	lsls r0, r0, #8
	str r4, [r3, #16]
	lsls r0, r0, #8
	strb r4, [r5, #21]
	lsls r0, r0, #8
	str r0, [r2, #44]
	lsls r0, r0, #8
.L0830BBE8:
	movs r0, #1
	mov r9, r0
	bl sub_08002058
	ldr r0, [pc, #16]
	ldrb r0, [r0, #0]
	cmp r0, #2
	beq .L0830BC20
	cmp r0, #2
	bgt .L0830BC08
	cmp r0, #1
	beq .L0830BC0E
	b .L0830BC52
	movs r0, r0
	strb r1, [r4, #21]
	lsls r0, r0, #8
.L0830BC08:
	cmp r0, #3
	beq .L0830BC32
	b .L0830BC52
.L0830BC0E:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	b .L0830BC52
.L0830BC20:
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
	b .L0830BC52
.L0830BC32:
	movs r0, #1
	movs r1, #2
	bl sub_08001FFC
	movs r0, #2
	movs r1, #1
	bl sub_08001FFC
	movs r0, #8
	movs r1, #4
	bl sub_08001FFC
	movs r0, #4
	movs r1, #8
	bl sub_08001FFC
.L0830BC52:
	bl sub_08004A1C
	bl sub_0800436C
	movs r4, #0
	.2byte 0xe070 @ b.n 0x830bd40
	movs r0, #1
	movs r1, #7
	bl IntrWait
	ldr r0, [pc, #36]
	ldr r1, [pc, #36]
	bl sub_08002F64
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L0830BC98
	movs r0, #10
	movs r1, #12
	movs r2, #11
	movs r3, #0
	bl sub_080049D4
	b .L0830BCA2
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
	ldr r0, [r0, r7]
	lsls r0, r0, #12
.L0830BC98:
	movs r0, #10
	movs r1, #12
	ldr r2, [pc, #28]
	bl sub_08004914
.L0830BCA2:
	adds r4, #1
	cmp r4, #120
	bhi .L0830BCB0
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	cmp r0, #120
	.2byte 0xd947 @ bls.n 0x830bd40
.L0830BCB0:
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L0830BCC8
	push {r4, r5, r6, r7}
	lsrs r5, r7, #32
	ldr r0, [r4, r2]
	lsls r0, r0, #12
.L0830BCC4:
	bl VBlankIntrWait
.L0830BCC8:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830BCC4
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800436C
	bl VBlankIntrWait
	movs r0, #0
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #0
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #0
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_08004914
.L0830BD26:
	b .L0830BD26
	.4byte 0x04000050
	.4byte 0x04000008
	.4byte 0x00001F01
	.4byte 0x083DB4FC

	.thumb
	.align 1, 0
	.global sub_0830BD38
	.thumb_func
sub_0830BD38:
	push {r2, r3, r4, lr}
	lsrs r5, r7, #32
	push {r2, r3, r4, r5, lr}
	lsrs r5, r7, #32
	ldr r0, [pc, #64]
	ldrh r0, [r0, #0]
	cmp r0, #120
	.2byte 0xd18a @ bne.n 0x830bc5e
	movs r4, #0
	ldr r0, [pc, #56]
	ldrh r0, [r0, #0]
	cmp r0, #222
	bne .L0830BD54
	.2byte 0xe07f @ b.n 0x830be54
.L0830BD54:
	movs r0, #1
	movs r1, #7
	bl IntrWait
	ldr r0, [pc, #40]
	ldr r1, [pc, #36]
	bl sub_08002F64
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L0830BD90
	movs r0, #10
	movs r1, #12
	movs r2, #11
	movs r3, #0
	bl sub_080049D4
	b .L0830BD9A
	movs r0, r0
	subs r3, #196
	lsls r0, r0, #12
	subs r4, #4
	lsls r0, r0, #12
	ldr r4, [r0, r7]
	lsls r0, r0, #12
.L0830BD90:
	movs r0, #10
	movs r1, #12
	ldr r2, [pc, #44]
	bl sub_08004914
.L0830BD9A:
	ldr r0, [pc, #44]
	ldrh r1, [r0, #0]
	adds r2, r0, #0
	cmp r1, #120
	beq .L0830BDAA
	cmp r1, #222
	beq .L0830BDAA
	adds r4, #1
.L0830BDAA:
	cmp r4, #60
	bhi .L0830BDB6
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	cmp r0, #120
	.2byte 0xd94a @ bls.n 0x830be4c
.L0830BDB6:
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl Fade_Start
	b .L0830BDD4
	movs r0, r0
	push {r4, r5, r6, r7}
	lsrs r5, r7, #32
	subs r3, #196
	lsls r0, r0, #12
	ldr r0, [r4, r2]
	lsls r0, r0, #12
.L0830BDD0:
	bl VBlankIntrWait
.L0830BDD4:
	bl Fade_IsBusy
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830BDD0
	bl sub_08004D70
	bl sub_08001A6C
	ldr r0, [pc, #76]
	strh r4, [r0, #0]
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #8
	movs r2, #138
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_08004A1C
	movs r1, #160
	lsls r1, r1, #19
	movs r2, #213
	lsls r2, r2, #7
	adds r0, r2, #0
	strh r0, [r1, #0]
	bl sub_0800436C
	bl VBlankIntrWait
	movs r0, #0
	movs r1, #6
	ldr r2, [pc, #36]
	bl sub_08004914
	movs r0, #0
	movs r1, #13
	ldr r2, [pc, #32]
	bl sub_08004914
	movs r0, #0
	movs r1, #14
	ldr r2, [pc, #24]
	bl sub_08004914
.L0830BE32:
	b .L0830BE32
	.4byte 0x04000050
	.4byte 0x04000008
	.4byte 0x00001F01
	.4byte 0x083DB4FC

	.thumb
	.align 1, 0
	.global sub_0830BE44
	.thumb_func
sub_0830BE44:
	push {r2, r3, r4, lr}
	lsrs r5, r7, #32
	push {r2, r3, r4, r5, lr}
	lsrs r5, r7, #32
	ldrh r2, [r2, #0]
	cmp r2, #222
	beq .L0830BE54
	.2byte 0xe77f @ b.n 0x830bd54
.L0830BE54:
	mov r0, r9
	cmp r0, #0
	bne .L0830BE5C
	.2byte 0xe09f @ b.n 0x830bf9c
.L0830BE5C:
	ldr r6, [pc, #92]
	ldr r5, [pc, #96]
	movs r2, #1
	mov r8, r2
	ldr r1, [pc, #92]
	ldrh r0, [r6, #4]
	strh r0, [r1, #0]
	ldr r1, [pc, #92]
	ldrh r0, [r6, #8]
	strb r0, [r1, #0]
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	strb r0, [r5, #0]
	lsls r1, r1, #16
	lsrs r0, r1, #17
	mov r2, r8
	ands r0, r2
	strb r0, [r5, #1]
	lsrs r0, r1, #18
	ands r0, r2
	strb r0, [r5, #2]
	lsrs r0, r1, #19
	ands r0, r2
	strb r0, [r5, #3]
	lsrs r0, r1, #20
	ands r0, r2
	strb r0, [r5, #4]
	lsrs r0, r1, #21
	ands r0, r2
	strb r0, [r5, #5]
	lsrs r0, r1, #22
	ands r0, r2
	strb r0, [r5, #6]
	lsrs r1, r1, #23
	ands r1, r2
	strb r1, [r5, #7]
	ldr r1, [pc, #36]
	ldrh r2, [r6, #10]
	negs r0, r2
	lsrs r0, r0, #31
	strb r0, [r1, #0]
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl Fade_Start
	b .L0830BED4
	subs r3, #196
	lsls r0, r0, #12
	strb r0, [r7, #21]
	lsls r0, r0, #8
	strb r4, [r4, #21]
	lsls r0, r0, #8
	strb r6, [r3, #21]
	lsls r0, r0, #8
	strb r1, [r5, #21]
	lsls r0, r0, #8
.L0830BED0:
	bl VBlankIntrWait
.L0830BED4:
	bl Fade_IsBusy
	cmp r0, #0
	bne .L0830BED0
	ldrh r0, [r6, #2]
	ldrh r1, [r6, #4]
	bl sub_08313D78
	bl sub_0800314C
	cmp r0, #3
	beq .L0830BF02
	cmp r0, #3
	bhi .L0830BEF6
	cmp r0, #2
	beq .L0830BEFC
	b .L0830BF0C
.L0830BEF6:
	cmp r0, #4
	beq .L0830BF08
	b .L0830BF0C
.L0830BEFC:
	bl sub_0830E93C
	b .L0830BF0C
.L0830BF02:
	bl sub_0830ECF4
	b .L0830BF0C
.L0830BF08:
	bl sub_0830F0AC
.L0830BF0C:
	movs r7, #0
	movs r4, #0
	bl VBlankIntrWait
	ldr r0, [pc, #40]
	ldr r1, [pc, #44]
	bl sub_08002F64
	adds r4, #1
	cmp r7, #0
	.2byte 0xd022 @ beq.n 0x830bf68
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0830BF48
	movs r0, #0
	movs r1, #0
	movs r2, #28
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #1
	movs r2, #28
	.2byte 0xe01b @ b.n 0x830bf76
	movs r0, r0
	subs r4, #4
	lsls r0, r0, #12
	subs r3, #196
	lsls r0, r0, #12
.L0830BF48:
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #16]
	bl sub_08004914
	movs r0, #0
	movs r1, #1
	ldr r2, [pc, #12]
	bl sub_08004914
	.2byte 0xe014 @ b.n 0x830bf88
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0830BF60
	.thumb_func
sub_0830BF60:
	push {r2, r3, r4, r6, lr}
	lsrs r5, r7, #32
	push {r2, r3, r4, r5, r6, lr}
	lsrs r5, r7, #32
	movs r0, #31
	ands r0, r4
	cmp r0, #16
	bls .L0830BF7E
	movs r0, #10
	movs r1, #0
	movs r2, #11
	movs r3, #0
	bl sub_080049D4
	b .L0830BF88
.L0830BF7E:
	movs r0, #10
	movs r1, #0
	ldr r2, [pc, #36]
	bl sub_08004914
.L0830BF88:
	ldrh r0, [r6, #0]
	cmp r0, #127
	bne .L0830BF90
	movs r7, #1
.L0830BF90:
	cmp r0, #222
	.2byte 0xd1bd @ bne.n 0x830bf10
	mov r0, r9
	cmp r0, #0
	beq .L0830BF9C
	.2byte 0xe763 @ b.n 0x830be64
.L0830BF9C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083DB4F0

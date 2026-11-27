	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_082F75DC
	.thumb_func
sub_082F75DC:
	push {r4, r5, r6, r7, lr}
	sub sp, #12
	adds r5, r0, #0
	movs r1, #6
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bne .L082F75F2
	adds r0, r5, #0
	bl sub_082F4B78
	b .L082F7720
.L082F75F2:
	adds r4, r5, #0
	adds r4, #144
	ldr r0, [r4, #0]
	ldr r0, [r0, #16]
	ldr r7, [pc, #88]
	adds r1, r7, #0
	movs r2, #1
	bl sub_08000D04
	lsls r0, r0, #24
	adds r6, r4, #0
	cmp r0, #0
	bne .L082F760E
	b .L082F771A
.L082F760E:
	adds r0, r7, #0
	adds r0, #46
	ldrb r4, [r0, #0]
	cmp r4, #1
	beq .L082F761A
	b .L082F771A
.L082F761A:
	movs r0, #34
	bl sub_083189D0
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r1, [r7, #52]
	ldr r0, [r0, #52]
	cmp r1, r0
	bge .L082F7660
	ldr r1, [pc, #40]
	ldr r0, [pc, #44]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r7, #0
	movs r1, #8
	movs r3, #0
	bl sub_08306DD4
	strb r4, [r5, #14]
	b .L082F7686
	movs r0, r0
	movs r5, #12
	lsls r0, r0, #12
	str r0, [r6, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L082F7660:
	ldr r1, [pc, #112]
	ldr r0, [pc, #116]
	ldrb r0, [r0, #0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r2, [r0, #0]
	movs r0, #75
	str r0, [sp, #0]
	add r0, sp, #4
	strb r4, [r0, #0]
	add r0, sp, #8
	strb r4, [r0, #0]
	adds r0, r7, #0
	movs r1, #8
	movs r3, #1
	bl sub_08306DD4
	movs r0, #0
	strb r0, [r5, #14]
.L082F7686:
	movs r0, #1
	strb r0, [r5, #3]
	strb r0, [r5, #4]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	adds r0, #60
	ldrb r0, [r0, #0]
	adds r0, #1
	strb r0, [r5, #16]
	ldr r0, [pc, #64]
	ldr r0, [r0, #56]
	str r0, [r5, #24]
	ldrb r0, [r5, #14]
	cmp r0, #0
	bne .L082F76E4
	movs r0, #128
	lsls r0, r0, #2
	str r0, [r5, #28]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	movs r1, #140
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #32]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #1
	bl sub_08000680
	b .L082F770C
	movs r0, r0
	str r0, [r6, #100]
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
	movs r5, #12
	lsls r0, r0, #12
	strh r0, [r6, #46]
	lsrs r5, r3, #32
.L082F76E4:
	ldr r0, [pc, #64]
	str r0, [r5, #28]
	ldr r0, [r6, #0]
	ldr r0, [r0, #16]
	ldr r0, [r0, #52]
	ldr r1, [pc, #60]
	adds r0, r0, r1
	str r0, [r5, #20]
	adds r4, r5, #0
	adds r4, #40
	ldr r1, [pc, #52]
	adds r0, r4, #0
	movs r2, #1
	movs r3, #0
	bl sub_080002E0
	adds r0, r4, #0
	movs r1, #0
	bl sub_08000680
.L082F770C:
	adds r0, r4, #0
	bl sub_080006AC
	adds r1, r5, #0
	adds r1, #140
	ldr r0, [pc, #28]
	str r0, [r1, #0]
.L082F771A:
	ldrh r0, [r5, #6]
	subs r0, #1
	strh r0, [r5, #6]
.L082F7720:
	add sp, #12
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0xFFFFFE00
	.4byte 0xFFFFDD00
	.4byte 0x081D85F0
	.4byte 0x082F7739

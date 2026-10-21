	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08003FBC
	.thumb_func
sub_08003FBC:
	push {r4, r5, r6, r7, lr}
	mov ip, r2
	adds r4, r1, #0
	muls r4, r0
	cmp r3, #0
	beq .L08003FCA
	lsls r4, r4, #1
.L08003FCA:
	movs r0, #128
	lsls r0, r0, #3
	subs r1, r0, r4
	cmp r1, #0
	blt .L08004006
	ldr r6, [pc, #36]
.L08003FD6:
	adds r5, r1, r6
	ldrb r0, [r5, #0]
	cmp r0, #0
	bne .L08004000
	movs r2, #0
	cmp r2, r4
	bge .L08003FF4
	adds r3, r5, #0
.L08003FE6:
	ldrb r0, [r3, #0]
	adds r3, #1
	cmp r0, #0
	bne .L08004000
	adds r2, #1
	cmp r2, r4
	blt .L08003FE6
.L08003FF4:
	lsls r0, r1, #16
	lsrs r6, r0, #16
	b .L08004010
	movs r0, r0
	asrs r0, r5, #9
	lsls r0, r0, #12
.L08004000:
	subs r1, r1, r4
	cmp r1, #0
	bge .L08003FD6
.L08004006:
	ldr r0, [pc, #4]
	b .L0800403C
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L08004010:
	movs r0, #1
	strb r0, [r5, #0]
	lsls r7, r6, #5
	lsls r2, r4, #3
	cmp r4, #1
	ble .L0800402C
	movs r3, #255
	adds r0, r5, #1
	subs r1, r4, #1
.L08004022:
	strb r3, [r0, #0]
	adds r0, #1
	subs r1, #1
	cmp r1, #0
	bne .L08004022
.L0800402C:
	ldr r0, [pc, #20]
	adds r1, r7, r0
	ldr r0, [pc, #20]
	ands r2, r0
	mov r0, ip
	bl CpuFastSet
	adds r0, r6, #0
.L0800403C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x06010000
	.4byte 0x001FFFFF

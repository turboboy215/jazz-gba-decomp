	.include "asm/macros.inc"
	.syntax unified
	.text

@ Pickup_Create: [likely] allocates and fills a pickup; scored ones get 50-250 points by type
	.thumb
	.align 1, 0
	.global sub_08314338
	.thumb_func
sub_08314338:
	.global Pickup_Create
	.thumb_set Pickup_Create, sub_08314338
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #12
	mov r8, r0
	mov r9, r1
	adds r5, r2, #0
	ldr r0, [sp, #44]
	add r2, sp, #48
	add r4, sp, #52
	ldr r1, [sp, #56]
	lsls r3, r3, #24
	lsrs r3, r3, #24
	mov sl, r3
	lsls r0, r0, #16
	lsrs r6, r0, #16
	ldrb r2, [r2, #0]
	str r2, [sp, #8]
	ldrb r4, [r4, #0]
	str r4, [sp, #4]
	lsls r1, r1, #16
	lsrs r4, r1, #16
	mov r0, sp
	bl sub_08314310
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08314440
	ldr r0, [sp, #0]
	movs r3, #0
	movs r2, #1
	strb r2, [r0, #2]
	ldr r0, [sp, #0]
	strb r5, [r0, #0]
	ldr r1, [sp, #0]
	mov r7, r8
	lsls r0, r7, #8
	str r0, [r1, #20]
	ldr r1, [sp, #0]
	mov r7, r9
	lsls r0, r7, #8
	str r0, [r1, #24]
	ldr r0, [sp, #0]
	adds r0, #36
	movs r1, #39
	strb r1, [r0, #0]
	ldr r0, [sp, #0]
	strb r2, [r0, #3]
	ldr r0, [sp, #0]
	strb r4, [r0, #1]
	ldr r0, [sp, #0]
	mov r1, sl
	strb r1, [r0, #4]
	ldr r1, [sp, #0]
	lsls r0, r6, #4
	subs r0, r0, r6
	lsls r0, r0, #2
	strh r0, [r1, #16]
	ldr r0, [sp, #0]
	mov r2, sp
	ldrb r2, [r2, #4]
	strb r2, [r0, #5]
	ldr r0, [sp, #0]
	strh r3, [r0, #12]
	ldr r7, [sp, #8]
	cmp r7, #0
	beq .L08314420
	cmp r5, #10
	bhi .L08314404
	lsls r0, r5, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	.2byte 0xf6bc @ .raw
	lsrs r5, r7, #32
	ldr r1, [sp, #0]
	movs r0, #250
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #125
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #100
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #75
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #200
	str r0, [r1, #8]
	b .L08314408
	ldr r1, [sp, #0]
	movs r0, #50
	str r0, [r1, #8]
	b .L08314408
.L08314404:
	ldr r0, [sp, #0]
	str r3, [r0, #8]
.L08314408:
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
	b .L08314436
	movs r0, r0
	lsls r0, r4, #3
	lsrs r4, r3, #32
.L08314420:
	ldr r0, [sp, #0]
	ldr r1, [sp, #8]
	str r1, [r0, #8]
	ldr r2, [sp, #0]
	adds r0, r2, #0
	adds r0, #40
	ldr r1, [pc, #12]
	ldrb r2, [r2, #0]
	movs r3, #0
	bl sub_080002E0
.L08314436:
	movs r0, #1
	b .L08314442
	movs r0, r0
	movs r1, #48
	lsrs r7, r3, #32
.L08314440:
	movs r0, #0
.L08314442:
	add sp, #12
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

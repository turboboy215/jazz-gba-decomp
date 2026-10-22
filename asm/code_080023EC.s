	.include "asm/macros.inc"
	.syntax unified
	.text

@ MultiBootMain: [sure] Nintendo libmultiboot (same code as pret/pokeemerald src/multiboot.c)
	.thumb
	.align 1, 0
	.global sub_080023EC
	.thumb_func
sub_080023EC:
	.global MultiBootMain
	.thumb_set MultiBootMain, sub_080023EC
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	bl sub_080028E4
	cmp r0, #0
	beq .L08002400
	b .L080027C6
.L08002400:
	adds r0, r6, #0
	adds r0, #74
	ldrb r1, [r0, #0]
	mov r9, r0
	cmp r1, #15
	bls .L08002414
	subs r0, r1, #1
	mov r1, r9
	strb r0, [r1, #0]
	b .L080027C6
.L08002414:
	adds r1, r6, #0
	adds r1, #72
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08002440
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #24]
	ldrh r0, [r0, #0]
	movs r4, #252
	ands r4, r0
	cmp r4, #8
	beq .L08002440
	adds r0, r6, #0
	bl sub_080023B0
	movs r0, #8
	eors r0, r4
	b .L080027C8
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002440:
	ldrb r2, [r6, #24]
	cmp r2, #223
	bls .L08002492
	adds r0, r6, #0
	bl MultiBootHandShake
	adds r4, r0, #0
	cmp r4, #0
	beq .L08002454
	b .L080027C8
.L08002454:
	adds r0, r6, #0
	adds r0, #75
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08002470
	ldrb r0, [r6, #24]
	cmp r0, #225
	bls .L08002470
	adds r0, r6, #0
	bl sub_080028E4
	cmp r0, #0
	bne .L08002470
	b .L080027B6
.L08002470:
	adds r0, r6, #0
	bl sub_080028E4
	cmp r0, #0
	beq .L0800247C
	b .L080027C6
.L0800247C:
	ldrh r0, [r6, #22]
	cmp r0, #0
	bne .L0800248C
	adds r0, r6, #0
	bl sub_080023B0
	movs r0, #113
	b .L080027C8
.L0800248C:
	subs r0, #1
	strh r0, [r6, #22]
	b .L080027C6
.L08002492:
	ldrb r0, [r6, #24]
	cmp r0, #2
	bne .L0800249A
	b .L080025D4
.L0800249A:
	cmp r0, #2
	bgt .L080024A8
	cmp r0, #0
	beq .L080024B6
	cmp r0, #1
	beq .L08002574
	b .L0800270C
.L080024A8:
	cmp r0, #208
	bne .L080024AE
	b .L08002620
.L080024AE:
	cmp r0, #209
	bne .L080024B4
	b .L080026BA
.L080024B4:
	b .L0800270C
.L080024B6:
	movs r5, #14
	movs r4, #3
	ldr r0, [pc, #60]
	ldrh r0, [r0, #6]
	adds r1, r0, #0
	ldr r0, [pc, #56]
	cmp r1, r0
	bne .L080024DA
	adds r2, r1, #0
	ldr r1, [pc, #52]
.L080024CA:
	asrs r5, r5, #1
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	beq .L080024DA
	ldrh r0, [r1, #0]
	cmp r0, r2
	beq .L080024CA
.L080024DA:
	movs r0, #14
	ands r5, r0
	strb r5, [r6, #29]
	movs r4, #3
	ldr r0, [pc, #20]
	ldrh r0, [r0, #6]
	adds r3, r0, #0
	ldrb r1, [r6, #30]
	lsrs r0, r1, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08002508
	ldr r0, [pc, #12]
	b .L0800252E
	lsls r0, r4, #4
	lsls r0, r0, #16
	.2byte 0xffff @ .raw
	movs r0, r0
	lsls r6, r4, #4
	lsls r0, r0, #16
	strb r0, [r1, #8]
	movs r0, r0
.L08002508:
	subs r4, #1
	cmp r4, #0
	beq .L08002534
	lsls r0, r4, #1
	ldr r2, [pc, #76]
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	adds r3, r0, #0
	ldrb r0, [r6, #30]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08002508
	adds r0, r1, #0
	lsls r0, r4
	movs r1, #228
	lsls r1, r1, #7
	orrs r0, r1
.L0800252E:
	cmp r3, r0
	beq .L08002508
	movs r5, #0
.L08002534:
	adds r0, r5, #0
	ldrb r1, [r6, #30]
	ands r0, r1
	strb r0, [r6, #30]
	cmp r5, #0
	bne .L08002546
	movs r0, #15
	mov r2, r9
	strb r0, [r2, #0]
.L08002546:
	mov r1, r9
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08002564
	ldrb r2, [r6, #29]
	ldrb r0, [r6, #30]
	cmp r2, r0
	beq .L0800256A
	adds r0, r6, #0
	bl sub_08002820
	b .L08002574
	movs r0, r0
	lsls r0, r4, #4
	lsls r0, r0, #16
.L08002564:
	subs r0, #1
	mov r1, r9
	strb r0, [r1, #0]
.L0800256A:
	movs r2, #196
	lsls r2, r2, #7
	adds r0, r2, #0
	ldrb r1, [r6, #30]
	b .L08002678
.L08002574:
	adds r1, r6, #0
	adds r1, #73
	movs r0, #0
	strb r0, [r1, #0]
	movs r4, #3
	mov ip, r1
	ldr r5, [pc, #72]
.L08002582:
	lsls r0, r4, #1
	ldr r2, [pc, #72]
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	adds r3, r0, #0
	asrs r0, r3, #8
	subs r2, r4, #1
	cmp r0, #114
	bne .L080025AC
	lsls r0, r2, #1
	adds r0, r0, r5
	strh r3, [r0, #0]
	movs r0, #255
	ands r3, r0
	movs r0, #1
	lsls r0, r4
	cmp r3, r0
	bne .L080025AC
	ldrb r0, [r1, #0]
	orrs r3, r0
	strb r3, [r1, #0]
.L080025AC:
	adds r4, r2, #0
	cmp r4, #0
	bne .L08002582
	ldrb r1, [r6, #29]
	mov r2, ip
	ldrb r2, [r2, #0]
	cmp r1, r2
	bne .L0800256A
	movs r0, #2
	strb r0, [r6, #24]
	movs r1, #194
	lsls r1, r1, #7
	adds r0, r1, #0
	mov r2, ip
	ldrb r1, [r2, #0]
	b .L08002678
	lsrs r0, r6, #20
	lsls r0, r0, #12
	lsls r0, r4, #4
	lsls r0, r0, #16
.L080025D4:
	movs r4, #3
	movs r0, #73
	adds r0, r0, r6
	mov ip, r0
	movs r5, #1
	ldr r1, [pc, #56]
	mov r8, r1
	mov r7, ip
.L080025E4:
	ldrb r3, [r7, #0]
	adds r0, r3, #0
	asrs r0, r4
	ands r0, r5
	subs r2, r4, #1
	cmp r0, #0
	beq .L0800260E
	lsls r0, r4, #1
	ldr r1, [pc, #36]
	adds r0, r0, r1
	ldrh r1, [r0, #0]
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0, #0]
	cmp r1, r0
	beq .L0800260E
	adds r0, r5, #0
	lsls r0, r4
	eors r3, r0
	mov r0, ip
	strb r3, [r0, #0]
.L0800260E:
	adds r4, r2, #0
	cmp r4, #0
	bne .L080025E4
	b .L0800276C
	movs r0, r0
	lsrs r0, r6, #20
	lsls r0, r0, #12
	lsls r0, r4, #4
	lsls r0, r0, #16
.L08002620:
	movs r5, #1
	movs r4, #3
	movs r1, #73
	adds r1, r1, r6
	mov ip, r1
	adds r7, r6, #0
	adds r7, #25
	ldr r2, [pc, #84]
	mov r8, r2
.L08002632:
	lsls r0, r4, #1
	ldr r1, [pc, #80]
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r3, r0, #0
	subs r2, r4, #1
	adds r0, r7, r2
	strb r3, [r0, #0]
	mov r0, ip
	ldrb r1, [r0, #0]
	asrs r1, r4
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq .L08002666
	asrs r0, r3, #8
	subs r0, #114
	cmp r0, #1
	bls .L0800265A
	b .L080027BC
.L0800265A:
	lsls r0, r2, #1
	add r0, r8
	ldrh r0, [r0, #0]
	cmp r3, r0
	bne .L08002666
	movs r5, #0
.L08002666:
	adds r4, r2, #0
	cmp r4, #0
	bne .L08002632
	cmp r5, #0
	bne .L0800268C
	movs r1, #198
	lsls r1, r1, #7
	adds r0, r1, #0
	ldrb r1, [r6, #28]
.L08002678:
	orrs r1, r0
	adds r0, r6, #0
	bl sub_080027D4
	b .L080027C8
	movs r0, r0
	lsrs r0, r6, #20
	lsls r0, r0, #12
	lsls r0, r4, #4
	lsls r0, r0, #16
.L0800268C:
	movs r0, #209
	strb r0, [r6, #24]
	movs r5, #17
	movs r4, #3
	adds r1, r7, #2
.L08002696:
	ldrb r0, [r1, #0]
	subs r1, #1
	adds r5, r5, r0
	subs r4, #1
	cmp r4, #0
	bne .L08002696
	strb r5, [r6, #20]
	movs r0, #255
	ands r5, r0
	movs r2, #200
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r5, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_080027D4
	b .L080027C8
.L080026BA:
	movs r4, #3
	movs r0, #73
	ldrb r2, [r0, r6]
	ldr r1, [pc, #52]
	movs r5, #1
.L080026C4:
	ldrh r0, [r1, #0]
	adds r3, r0, #0
	adds r0, r2, #0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0
	beq .L080026D8
	asrs r0, r3, #8
	cmp r0, #115
	bne .L080027BC
.L080026D8:
	subs r1, #2
	subs r4, #1
	cmp r4, #0
	bne .L080026C4
	adds r0, r6, #0
	bl MultiBoot
	adds r4, r0, #0
	cmp r4, #0
	bne .L080026FC
	movs r0, #224
	strb r0, [r6, #24]
	adds r0, #176
	strh r0, [r6, #22]
	b .L080027C6
	movs r0, r0
	lsls r6, r4, #4
	lsls r0, r0, #16
.L080026FC:
	adds r0, r6, #0
	bl sub_080023B0
	movs r0, #30
	mov r1, r9
	strb r0, [r1, #0]
	movs r0, #112
	b .L080027C8
.L0800270C:
	movs r4, #3
	movs r2, #73
	adds r2, r2, r6
	mov ip, r2
	movs r7, #1
.L08002716:
	mov r0, ip
	ldrb r5, [r0, #0]
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r7
	cmp r0, #0
	beq .L0800274E
	lsls r0, r4, #1
	ldr r1, [pc, #64]
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	adds r3, r0, #0
	asrs r2, r3, #8
	ldrb r0, [r6, #24]
	lsrs r1, r0, #1
	movs r0, #98
	subs r0, r0, r1
	adds r1, r7, #0
	lsls r1, r4
	cmp r2, r0
	bne .L08002748
	movs r0, #255
	ands r3, r0
	cmp r3, r1
	beq .L0800274E
.L08002748:
	eors r5, r1
	mov r1, ip
	strb r5, [r1, #0]
.L0800274E:
	subs r4, #1
	cmp r4, #0
	bne .L08002716
	ldrb r2, [r6, #24]
	cmp r2, #196
	bne .L0800276C
	movs r0, #14
	mov r1, ip
	ldrb r1, [r1, #0]
	ands r0, r1
	strb r0, [r6, #30]
	strb r4, [r6, #24]
	b .L0800256A
	lsls r0, r4, #4
	lsls r0, r0, #16
.L0800276C:
	mov r2, ip
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L0800277E
	adds r0, r6, #0
	bl sub_080023B0
	movs r0, #80
	b .L080027C8
.L0800277E:
	ldrb r0, [r6, #24]
	adds r0, #2
	strb r0, [r6, #24]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #196
	bne .L0800278E
	b .L0800256A
.L0800278E:
	ldr r0, [r6, #40]
	ldrb r1, [r6, #24]
	adds r0, r1, r0
	subs r1, r0, #3
	ldrb r1, [r1, #0]
	lsls r1, r1, #8
	subs r0, #4
	ldrb r0, [r0, #0]
	orrs r1, r0
	adds r0, r6, #0
	bl sub_080027D4
	adds r4, r0, #0
	cmp r4, #0
	bne .L080027C8
	adds r0, r6, #0
	adds r0, #75
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L080027C6
.L080027B6:
	bl sub_080029F4
	b .L08002414
.L080027BC:
	adds r0, r6, #0
	bl sub_080023B0
	movs r0, #96
	b .L080027C8
.L080027C6:
	movs r0, #0
.L080027C8:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

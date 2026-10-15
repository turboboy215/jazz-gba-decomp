	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08000704
	.thumb_func
sub_08000704:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080006C4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08000716
	movs r0, #1
	b .L0800071E
.L08000716:
	adds r0, r4, #0
	bl sub_080006AC
	movs r0, #0
.L0800071E:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000724
	.thumb_func
sub_08000724:
	push {lr}
	bl sub_08000814
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000730
	.thumb_func
sub_08000730:
	strh r1, [r0, #16]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000734
	.thumb_func
sub_08000734:
	strh r1, [r0, #20]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000738
	.thumb_func
sub_08000738:
	strh r1, [r0, #18]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800073C
	.thumb_func
sub_0800073C:
	adds r3, r0, #0
	cmp r2, #15
	bls .L0800074A
	ldr r0, [pc, #20]
	cmp r2, r0
	beq .L0800074A
	movs r2, #15
.L0800074A:
	lsls r1, r1, #1
	adds r0, r3, #0
	adds r0, #22
	adds r0, r0, r1
	strh r2, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_0800075C
	.thumb_func
sub_0800075C:
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r1, #0
	cmp r5, #15
	bls .L0800076E
	ldr r0, [pc, #32]
	cmp r5, r0
	beq .L0800076E
	movs r5, #15
.L0800076E:
	movs r4, #0
.L08000770:
	adds r0, r6, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_0800073C
	adds r4, #1
	cmp r4, #11
	bls .L08000770
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_0800078C
	.thumb_func
sub_0800078C:
	strb r1, [r0, #1]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000790
	.thumb_func
sub_08000790:
	ldrh r0, [r0, #8]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000794
	.thumb_func
sub_08000794:
	ldrh r0, [r0, #10]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000798
	.thumb_func
sub_08000798:
	ldr r0, [r0, #12]
	bx lr

	.thumb
	.align 1, 0
	.global sub_0800079C
	.thumb_func
sub_0800079C:
	ldr r2, [r0, #4]
	adds r0, r0, r2
	adds r0, #4
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r1, [r1, #0]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_080007AC
	.thumb_func
sub_080007AC:
	push {r4, r5, lr}
	adds r4, r2, #0
	adds r5, r3, #0
	bl sub_0800079C
	ldrh r2, [r0, #2]
	adds r1, r2, #0
	muls r1, r4
	adds r1, r1, r5
	lsls r1, r1, #3
	adds r1, #4
	adds r0, r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080007CC
	.thumb_func
sub_080007CC:
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080007AC
	ldr r1, [r4, #0]
	adds r4, r4, r1
	adds r4, #4
	ldrh r0, [r0, #4]
	lsls r0, r0, #18
	lsrs r0, r0, #16
	adds r0, r0, r4
	ldr r0, [r0, #0]
	adds r4, r4, r0
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080007F0
	.thumb_func
sub_080007F0:
	push {lr}
	adds r1, r0, #0
	ldr r0, [pc, #8]
	ldrh r2, [r1, #16]
	cmp r2, r0
	beq .L08000804
	ldrh r0, [r1, #16]
	b .L0800080E
	.2byte 0xffff @ .raw
	movs r0, r0
.L08000804:
	adds r0, r1, #0
	movs r1, #0
	bl sub_0800062C
	ldrh r0, [r0, #6]
.L0800080E:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000814
	.thumb_func
sub_08000814:
	push {lr}
	adds r1, r0, #0
	ldr r0, [pc, #8]
	ldrh r2, [r1, #20]
	cmp r2, r0
	beq .L08000828
	ldrh r0, [r1, #20]
	b .L08000832
	.2byte 0xffff @ .raw
	movs r0, r0
.L08000828:
	adds r0, r1, #0
	bl sub_08000644
	ldrh r0, [r0, #0]
	subs r0, #1
.L08000832:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000838
	.thumb_func
sub_08000838:
	adds r1, r0, #0
	ldr r0, [pc, #12]
	ldrh r2, [r1, #18]
	cmp r2, r0
	beq .L0800084C
	ldrh r0, [r1, #18]
	b .L0800084E
	movs r0, r0
	.2byte 0xffff @ .raw
	movs r0, r0
.L0800084C:
	movs r0, #0
.L0800084E:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08000850
	.thumb_func
sub_08000850:
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, [pc, #20]
	lsrs r3, r3, #3
	lsrs r2, r2, #3
	adds r1, r3, #0
	bl sub_0831AEA8
	lsls r0, r0, #16
	lsrs r0, r0, #16
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x0300398C

	.thumb
	.align 1, 0
	.global sub_08000870
	.thumb_func
sub_08000870:
	push {lr}
	bl sub_08000850
	adds r1, r0, #0
	movs r0, #112
	ands r0, r1
	lsrs r0, r0, #4
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000884
	.thumb_func
sub_08000884:
	push {lr}
	bl sub_08000850
	adds r1, r0, #0
	movs r0, #224
	lsls r0, r0, #2
	ands r0, r1
	lsrs r0, r0, #7
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000898
	.thumb_func
sub_08000898:
	push {lr}
	cmp r1, #0
	ble .L080008B4
	bl sub_08000850
	movs r2, #0
	movs r1, #128
	lsls r1, r1, #3
	ands r1, r0
	cmp r1, #0
	beq .L080008B0
	movs r2, #1
.L080008B0:
	adds r0, r2, #0
	b .L080008B6
.L080008B4:
	movs r0, #0
.L080008B6:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080008BC
	.thumb_func
sub_080008BC:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08000870
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #0
	beq .L080008DC
	bl sub_08001E18
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080008DC
	movs r0, #0
	b .L080008EA
.L080008DC:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08000850
	adds r1, r0, #0
	movs r0, #15
	ands r0, r1
.L080008EA:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_080008F0
	.thumb_func
sub_080008F0:
	cmp r0, #0
	blt .L080008F8
	movs r0, #1
	b .L080008FC
.L080008F8:
	movs r0, #1
	negs r0, r0
.L080008FC:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000900
	.thumb_func
sub_08000900:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r9, r1
	adds r7, r2, #0
	adds r4, r3, #0
	ldr r5, [sp, #28]
	ldr r6, [sp, #32]
	cmp r4, #0
	bne .L0800091C
	movs r4, #1
	negs r4, r4
.L0800091C:
	cmp r5, #0
	bne .L08000924
	movs r5, #1
	negs r5, r5
.L08000924:
	cmp r6, #0
	bne .L0800092A
	movs r6, #1
.L0800092A:
	adds r0, r7, #0
	bl sub_080008F0
	cmp r0, #1
	beq .L0800096A
	mov r0, r8
	asrs r1, r0, #8
	adds r4, r1, r4
	mov r2, r9
	adds r0, r2, r7
	asrs r0, r0, #8
	adds r5, r0, r5
	cmp r5, #0
	bge .L0800094C
	b .L0800096A
.L08000948:
	movs r0, #1
	b .L0800096C
.L0800094C:
	adds r0, r1, r6
	cmp r4, r0
	bge .L0800096A
	adds r6, r0, #0
.L08000954:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	beq .L08000948
	adds r4, #8
	cmp r4, r6
	blt .L08000954
.L0800096A:
	movs r0, #0
.L0800096C:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000978
	.thumb_func
sub_08000978:
	lsls r0, r0, #16
	movs r1, #0
	ldr r2, [pc, #12]
	adds r0, r0, r2
	lsrs r0, r0, #16
	cmp r0, #8
	bhi .L08000988
	movs r1, #1
.L08000988:
	adds r0, r1, #0
	bx lr
	.4byte 0xFFFF0000

	.thumb
	.align 1, 0
	.global sub_08000990
	.thumb_func
sub_08000990:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov r9, r0
	mov sl, r1
	mov r8, r2
	adds r4, r3, #0
	ldr r6, [sp, #32]
	ldr r5, [sp, #36]
	ldr r7, [sp, #40]
	cmp r4, #0
	bne .L080009B0
	movs r4, #1
	negs r4, r4
.L080009B0:
	cmp r6, #0
	bne .L080009B8
	movs r6, #1
	negs r6, r6
.L080009B8:
	cmp r5, #0
	bne .L080009BE
	movs r5, #1
.L080009BE:
	cmp r7, #0
	bne .L080009C4
	movs r7, #1
.L080009C4:
	mov r0, r8
	bl sub_080008F0
	adds r3, r4, #0
	cmp r0, #1
	bne .L080009D2
	adds r3, r5, #0
.L080009D2:
	mov r0, r9
	add r0, r8
	asrs r0, r0, #8
	adds r0, r0, r3
	mov r8, r0
	mov r1, sl
	asrs r0, r1, #8
	adds r4, r0, r6
	adds r1, r0, r7
	adds r5, r0, #0
	cmp r4, r1
	bge .L08000A0A
.L080009EA:
	cmp r4, #0
	blt .L08000A02
	mov r0, r8
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	cmp r0, #10
	bne .L08000A02
	movs r0, #1
	b .L08000A0C
.L08000A02:
	adds r4, #8
	adds r0, r5, r7
	cmp r4, r0
	blt .L080009EA
.L08000A0A:
	movs r0, #0
.L08000A0C:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000A1C
	.thumb_func
sub_08000A1C:
	push {r4, r5, r6, lr}
	adds r6, r2, #0
	asrs r5, r0, #8
	asrs r4, r1, #8
	ldr r0, [pc, #60]
	ldr r0, [r0, #8]
	ldr r0, [r0, #4]
	lsls r0, r0, #3
	subs r0, #8
	cmp r4, r0
	bhi .L08000A60
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_08000978
	cmp r0, #0
	bne .L08000A68
	cmp r6, #0
	beq .L08000A60
	adds r4, #8
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	bl sub_08000978
	cmp r0, #0
	bne .L08000A68
.L08000A60:
	movs r0, #0
	b .L08000A6A
	subs r1, #140
	lsls r0, r0, #12
.L08000A68:
	movs r0, #1
.L08000A6A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000A70
	.thumb_func
sub_08000A70:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	adds r7, r2, #0
	ldr r0, [r0, #0]
	asrs r6, r0, #8
	ldr r0, [r1, #0]
	asrs r4, r0, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_08000978
	cmp r0, #0
	bne .L08000AC4
	cmp r7, #0
	beq .L08000AEA
	adds r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
	adds r0, r5, #0
	bl sub_08000978
	cmp r0, #0
	beq .L08000AEA
	b .L08000AC4
.L08000AB6:
	subs r4, #8
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r5, r0, #16
.L08000AC4:
	cmp r5, #9
	beq .L08000AB6
	adds r0, r4, #0
	adds r0, #8
	movs r1, #8
	negs r1, r1
	ands r0, r1
	subs r4, r0, #1
	ldr r1, [pc, #28]
	movs r0, #7
	ands r6, r0
	lsls r0, r5, #3
	adds r0, r6, r0
	adds r0, r0, r1
	ldrb r0, [r0, #0]
	subs r4, r4, r0
	lsls r0, r4, #8
	mov r1, r8
	str r0, [r1, #0]
.L08000AEA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D1D80

	.thumb
	.align 1, 0
	.global sub_08000AF8
	.thumb_func
sub_08000AF8:
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r1, r0, #16
	ldr r2, [pc, #48]
	ldr r0, [r2, #32]
	cmp r4, r0
	ble .L08000B50
	ldr r0, [r2, #24]
	cmp r4, r0
	bge .L08000B50
	cmp r1, #9
	bne .L08000B26
	subs r5, #8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080008BC
	lsls r0, r0, #16
	lsrs r1, r0, #16
.L08000B26:
	subs r0, r1, #1
	cmp r0, #8
	bhi .L08000B50
	lsls r0, r0, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	subs r0, #204
	lsls r0, r0, #12
	adds r4, r3, #5
	lsrs r5, r7, #32
	movs r0, #4
	b .L08000B52
	movs r0, #1
	b .L08000B52
	movs r0, #3
	b .L08000B52
	movs r0, #2
	b .L08000B52
.L08000B50:
	movs r0, #0
.L08000B52:
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000B58
	.thumb_func
sub_08000B58:
	push {lr}
	asrs r0, r0, #8
	asrs r1, r1, #8
	asrs r2, r2, #8
	asrs r3, r3, #8
	subs r0, r0, r2
	adds r2, r0, #0
	muls r2, r0
	adds r0, r2, #0
	subs r1, r1, r3
	adds r2, r1, #0
	muls r2, r1
	adds r1, r2, #0
	adds r0, r0, r1
	bl Sqrt
	lsls r0, r0, #16
	lsrs r0, r0, #16
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000B80
	.thumb_func
sub_08000B80:
	push {r4, lr}
	ldr r4, [sp, #8]
	asrs r0, r0, #8
	asrs r1, r1, #8
	asrs r2, r2, #8
	asrs r3, r3, #8
	subs r0, r0, r2
	adds r2, r0, #0
	muls r2, r0
	adds r0, r2, #0
	subs r1, r1, r3
	adds r2, r1, #0
	muls r2, r1
	adds r1, r2, #0
	adds r0, r0, r1
	adds r1, r4, #0
	muls r1, r4
	cmp r0, r1
	bls .L08000BAA
	movs r0, #0
	b .L08000BAC
.L08000BAA:
	movs r0, #1
.L08000BAC:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000BB4
	.thumb_func
sub_08000BB4:
	push {r4, r5, lr}
	ldr r4, [sp, #12]
	movs r5, #0
	subs r2, r2, r0
	cmp r2, #0
	bge .L08000BC2
	negs r2, r2
.L08000BC2:
	cmp r2, r4
	bgt .L08000BD4
	subs r1, r3, r1
	cmp r1, #0
	bge .L08000BCE
	negs r1, r1
.L08000BCE:
	cmp r1, r4
	bgt .L08000BD4
	movs r5, #1
.L08000BD4:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000BDC
	.thumb_func
sub_08000BDC:
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	cmp r4, r2
	ble .L08000BF8
	ldr r0, [sp, #12]
	cmp r4, r0
	bge .L08000BF8
	cmp r1, r3
	ble .L08000BF8
	ldr r0, [sp, #16]
	cmp r1, r0
	bge .L08000BF8
	movs r5, #1
.L08000BF8:
	adds r0, r5, #0
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000C00
	.thumb_func
sub_08000C00:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	str r0, [sp, #8]
	str r1, [sp, #12]
	adds r4, r2, #0
	ldr r0, [r4, #52]
	asrs r0, r0, #8
	mov r9, r0
	ldr r0, [r4, #56]
	asrs r0, r0, #8
	str r0, [sp, #16]
	movs r0, #100
	adds r0, r0, r4
	mov r8, r0
	bl sub_08000644
	ldrh r0, [r0, #2]
	mov sl, r0
	adds r4, #47
	ldrb r0, [r4, #0]
	cmp r0, #0
	beq .L08000CF2
	movs r0, #50
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	mov r2, r9
	ldr r3, [sp, #16]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08000C50
	b .L08000CF2
.L08000C4C:
	movs r0, #1
	b .L08000CF4
.L08000C50:
	movs r7, #0
	cmp r7, sl
	beq .L08000CF2
.L08000C56:
	mov r0, r8
	adds r1, r7, #0
	bl sub_0800062C
	adds r6, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r6, #4]
	ands r0, r1
	ldr r2, [pc, #68]
	cmp r0, r2
	beq .L08000CEC
	mov r0, r8
	adds r1, r7, #0
	bl sub_08000614
	adds r4, r0, #0
	movs r3, #4
	ldrsh r0, [r4, r3]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	beq .L08000CEC
	movs r0, #64
	ldrb r2, [r6, #5]
	ands r0, r2
	cmp r0, #0
	beq .L08000CB0
	movs r3, #0
	ldrsh r2, [r6, r3]
	mov r0, r9
	subs r2, r0, r2
	ldrh r3, [r4, #0]
	lsls r1, r3, #3
	movs r3, #8
	ldrsh r0, [r4, r3]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r3, #4
	ldrsh r0, [r4, r3]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08000CC4
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08000CB0:
	movs r1, #0
	ldrsh r0, [r6, r1]
	mov r2, r9
	subs r0, r2, r0
	movs r3, #4
	ldrsh r1, [r4, r3]
	adds r5, r0, r1
	movs r1, #8
	ldrsh r0, [r4, r1]
	adds r2, r5, r0
.L08000CC4:
	movs r0, #2
	ldrsh r3, [r6, r0]
	ldr r1, [sp, #16]
	subs r3, r1, r3
	movs r1, #6
	ldrsh r0, [r4, r1]
	adds r3, r3, r0
	movs r1, #10
	ldrsh r0, [r4, r1]
	adds r0, r3, r0
	str r2, [sp, #0]
	str r0, [sp, #4]
	ldr r0, [sp, #8]
	ldr r1, [sp, #12]
	adds r2, r5, #0
	bl sub_08000BDC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08000C4C
.L08000CEC:
	adds r7, #1
	cmp r7, sl
	bne .L08000C56
.L08000CF2:
	movs r0, #0
.L08000CF4:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08000D04
	.thumb_func
sub_08000D04:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #44
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r4, r2, #24
	lsrs r4, r4, #24
	ldr r0, [r5, #52]
	asrs r0, r0, #8
	str r0, [sp, #0]
	ldr r0, [r5, #56]
	asrs r0, r0, #8
	str r0, [sp, #4]
	ldr r0, [r6, #52]
	asrs r0, r0, #8
	str r0, [sp, #8]
	ldr r0, [r6, #56]
	asrs r0, r0, #8
	str r0, [sp, #12]
	adds r0, r5, #0
	adds r0, #100
	str r0, [sp, #16]
	adds r1, #100
	str r1, [sp, #20]
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #24]
	ldr r0, [sp, #20]
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #28]
	cmp r4, #0
	bne .L08000D6C
	adds r0, r5, #0
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08000D5C
	b .L08000EB8
.L08000D5C:
	adds r0, r6, #0
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08000D6C
	b .L08000EB8
.L08000D68:
	movs r0, #1
	b .L08000EBA
.L08000D6C:
	movs r2, #0
	b .L08000EAE
.L08000D70:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_0800062C
	adds r4, r0, #0
	ldr r0, [pc, #80]
	ldrh r5, [r4, #4]
	ands r0, r5
	ldr r7, [pc, #72]
	cmp r0, r7
	bne .L08000D88
	b .L08000EAA
.L08000D88:
	ldr r0, [sp, #16]
	ldr r1, [sp, #32]
	bl sub_08000614
	adds r3, r0, #0
	movs r1, #4
	ldrsh r0, [r3, r1]
	movs r2, #1
	negs r2, r2
	cmp r0, r2
	bne .L08000DA0
	b .L08000EAA
.L08000DA0:
	movs r0, #64
	ldrb r5, [r4, #5]
	ands r0, r5
	cmp r0, #0
	beq .L08000DD0
	movs r7, #0
	ldrsh r2, [r4, r7]
	ldr r0, [sp, #0]
	subs r2, r0, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #40]
	movs r5, #4
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	adds r2, r2, r1
	mov sl, r2
	b .L08000DEA
	subs r7, #255
	movs r0, r0
.L08000DD0:
	movs r7, #0
	ldrsh r0, [r4, r7]
	ldr r1, [sp, #0]
	subs r0, r1, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #40]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #40]
	adds r0, r0, r7
	mov sl, r0
.L08000DEA:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #4]
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #36]
	movs r6, #0
	ldr r7, [sp, #28]
	cmp r6, r7
	beq .L08000EAA
	ldr r0, [pc, #84]
	mov r9, r0
.L08000E0E:
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_0800062C
	adds r4, r0, #0
	mov r0, r9
	ldrh r1, [r4, #4]
	ands r0, r1
	cmp r0, r9
	beq .L08000EA2
	ldr r0, [sp, #20]
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r2, #4
	ldrsh r0, [r3, r2]
	movs r5, #1
	negs r5, r5
	cmp r0, r5
	beq .L08000EA2
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L08000E64
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldr r1, [sp, #8]
	subs r2, r1, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r5, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08000E78
	subs r7, #255
	movs r0, r0
.L08000E64:
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r2, [sp, #8]
	subs r0, r2, r0
	movs r5, #4
	ldrsh r1, [r3, r5]
	adds r5, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r5, r0
.L08000E78:
	movs r1, #2
	ldrsh r0, [r4, r1]
	ldr r4, [sp, #12]
	subs r0, r4, r0
	movs r7, #4
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r4, #10
	ldrsh r0, [r3, r4]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L08000EA2
	ldr r7, [sp, #36]
	cmp r7, r1
	blt .L08000EA2
	ldr r0, [sp, #40]
	cmp r0, r2
	bgt .L08000EA2
	cmp sl, r5
	blt .L08000EA2
	b .L08000D68
.L08000EA2:
	adds r6, #1
	ldr r1, [sp, #28]
	cmp r6, r1
	bne .L08000E0E
.L08000EAA:
	ldr r2, [sp, #32]
	adds r2, #1
.L08000EAE:
	str r2, [sp, #32]
	ldr r4, [sp, #24]
	cmp r2, r4
	beq .L08000EB8
	b .L08000D70
.L08000EB8:
	movs r0, #0
.L08000EBA:
	add sp, #44
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08000ECC
	.thumb_func
sub_08000ECC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #20
	ldr r2, [r0, #20]
	asrs r6, r2, #8
	ldr r2, [r0, #24]
	asrs r2, r2, #8
	mov r8, r2
	ldr r2, [r1, #52]
	asrs r2, r2, #8
	str r2, [sp, #0]
	ldr r2, [r1, #56]
	asrs r2, r2, #8
	str r2, [sp, #4]
	adds r5, r0, #0
	adds r5, #40
	adds r1, #100
	mov sl, r1
	mov r0, sl
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #8]
	adds r0, r5, #0
	movs r1, #0
	bl sub_0800062C
	adds r4, r0, #0
	ldr r1, [pc, #80]
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	ands r0, r2
	cmp r0, r1
	bne .L08000F18
	b .L08001038
.L08000F18:
	adds r0, r5, #0
	movs r1, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r5, #4
	ldrsh r1, [r3, r5]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L08000F30
	b .L08001038
.L08000F30:
	movs r0, #64
	ldrb r7, [r4, #5]
	ands r0, r7
	cmp r0, #0
	beq .L08000F64
	movs r0, #0
	ldrsh r2, [r4, r0]
	subs r2, r6, r2
	ldrh r5, [r3, #0]
	lsls r1, r5, #3
	movs r7, #8
	ldrsh r0, [r3, r7]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #16]
	movs r5, #4
	ldrsh r0, [r3, r5]
	subs r1, r1, r0
	adds r2, r2, r1
	mov r9, r2
	b .L08000F7C
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08000F60:
	movs r0, #1
	b .L0800103A
.L08000F64:
	movs r7, #0
	ldrsh r0, [r4, r7]
	subs r0, r6, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #16]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #16]
	adds r0, r0, r7
	mov r9, r0
.L08000F7C:
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #12]
	movs r6, #0
	ldr r7, [sp, #8]
	cmp r6, r7
	bcs .L08001038
.L08000F9C:
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800062C
	adds r5, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r5, #4]
	ands r0, r1
	ldr r2, [pc, #64]
	cmp r0, r2
	beq .L08001030
	mov r0, sl
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r4, #4
	ldrsh r0, [r3, r4]
	movs r7, #1
	negs r7, r7
	cmp r0, r7
	beq .L08001030
	movs r0, #64
	ldrb r1, [r5, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08000FF4
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r7, [sp, #0]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r4, #8
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	adds r4, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L08001008
	subs r7, #255
	movs r0, r0
.L08000FF4:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #0]
	subs r0, r2, r0
	movs r4, #4
	ldrsh r1, [r3, r4]
	adds r4, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r4, r0
.L08001008:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r5, [sp, #4]
	subs r0, r5, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r5, #10
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L08001030
	ldr r7, [sp, #12]
	cmp r7, r1
	blt .L08001030
	ldr r0, [sp, #16]
	cmp r0, r2
	bgt .L08001030
	cmp r9, r4
	bge .L08000F60
.L08001030:
	adds r6, #1
	ldr r1, [sp, #8]
	cmp r6, r1
	bcc .L08000F9C
.L08001038:
	movs r0, #0
.L0800103A:
	add sp, #20
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800104C
	.thumb_func
sub_0800104C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #24
	adds r4, r1, #0
	ldr r1, [r0, #20]
	asrs r5, r1, #8
	ldr r1, [r0, #24]
	asrs r1, r1, #8
	mov r8, r1
	ldr r1, [r4, #52]
	asrs r1, r1, #8
	str r1, [sp, #4]
	ldr r1, [r4, #56]
	asrs r1, r1, #8
	str r1, [sp, #8]
	adds r6, r0, #0
	adds r6, #40
	movs r0, #100
	adds r0, r0, r4
	mov sl, r0
	bl sub_08000644
	ldrh r0, [r0, #2]
	str r0, [sp, #12]
	adds r4, #47
	ldrb r0, [r4, #0]
	cmp r0, #0
	bne .L0800108C
	b .L080011DC
.L0800108C:
	movs r0, #50
	str r0, [sp, #0]
	adds r0, r5, #0
	mov r1, r8
	ldr r2, [sp, #4]
	ldr r3, [sp, #8]
	bl sub_08000BB4
	lsls r0, r0, #24
	cmp r0, #0
	bne .L080010A4
	b .L080011DC
.L080010A4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_0800062C
	adds r4, r0, #0
	ldr r1, [pc, #80]
	adds r0, r1, #0
	ldrh r2, [r4, #4]
	ands r0, r2
	cmp r0, r1
	bne .L080010BC
	b .L080011DC
.L080010BC:
	adds r0, r6, #0
	movs r1, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r7, #4
	ldrsh r1, [r3, r7]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L080010D4
	b .L080011DC
.L080010D4:
	movs r0, #64
	ldrb r1, [r4, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08001108
	movs r7, #0
	ldrsh r2, [r4, r7]
	subs r2, r5, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r5, #8
	ldrsh r0, [r3, r5]
	subs r0, r1, r0
	adds r0, r2, r0
	str r0, [sp, #20]
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	mov r9, r2
	b .L08001120
	movs r0, r0
	subs r7, #255
	movs r0, r0
.L08001104:
	movs r0, #1
	b .L080011DE
.L08001108:
	movs r1, #0
	ldrsh r0, [r4, r1]
	subs r0, r5, r0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r0, r0, r1
	str r0, [sp, #20]
	movs r5, #8
	ldrsh r0, [r3, r5]
	ldr r7, [sp, #20]
	adds r0, r0, r7
	mov r9, r0
.L08001120:
	movs r1, #2
	ldrsh r0, [r4, r1]
	mov r2, r8
	subs r0, r2, r0
	movs r4, #6
	ldrsh r1, [r3, r4]
	adds r0, r0, r1
	mov r8, r0
	movs r5, #10
	ldrsh r0, [r3, r5]
	add r0, r8
	str r0, [sp, #16]
	movs r6, #0
	ldr r7, [sp, #12]
	cmp r6, r7
	bcs .L080011DC
.L08001140:
	mov r0, sl
	adds r1, r6, #0
	bl sub_0800062C
	adds r5, r0, #0
	ldr r0, [pc, #72]
	ldrh r1, [r5, #4]
	ands r0, r1
	ldr r2, [pc, #64]
	cmp r0, r2
	beq .L080011D4
	mov r0, sl
	adds r1, r6, #0
	bl sub_08000614
	adds r3, r0, #0
	movs r4, #4
	ldrsh r0, [r3, r4]
	movs r7, #1
	negs r7, r7
	cmp r0, r7
	beq .L080011D4
	movs r0, #64
	ldrb r1, [r5, #5]
	ands r0, r1
	cmp r0, #0
	beq .L08001198
	movs r4, #0
	ldrsh r2, [r5, r4]
	ldr r7, [sp, #4]
	subs r2, r7, r2
	ldrh r0, [r3, #0]
	lsls r1, r0, #3
	movs r4, #8
	ldrsh r0, [r3, r4]
	subs r0, r1, r0
	adds r4, r2, r0
	movs r7, #4
	ldrsh r0, [r3, r7]
	subs r1, r1, r0
	adds r2, r2, r1
	b .L080011AC
	subs r7, #255
	movs r0, r0
.L08001198:
	movs r1, #0
	ldrsh r0, [r5, r1]
	ldr r2, [sp, #4]
	subs r0, r2, r0
	movs r4, #4
	ldrsh r1, [r3, r4]
	adds r4, r0, r1
	movs r7, #8
	ldrsh r0, [r3, r7]
	adds r2, r4, r0
.L080011AC:
	movs r1, #2
	ldrsh r0, [r5, r1]
	ldr r5, [sp, #8]
	subs r0, r5, r0
	movs r7, #6
	ldrsh r1, [r3, r7]
	adds r1, r0, r1
	movs r5, #10
	ldrsh r0, [r3, r5]
	adds r0, r1, r0
	cmp r8, r0
	bgt .L080011D4
	ldr r7, [sp, #16]
	cmp r7, r1
	blt .L080011D4
	ldr r0, [sp, #20]
	cmp r0, r2
	bgt .L080011D4
	cmp r9, r4
	bge .L08001104
.L080011D4:
	adds r6, #1
	ldr r1, [sp, #12]
	cmp r6, r1
	bcc .L08001140
.L080011DC:
	movs r0, #0
.L080011DE:
	add sp, #24
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080011F0
	.thumb_func
sub_080011F0:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0x1c07 @ adds r7, r0, #0
	.2byte 0x4688 @ mov r8, r1
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x2500 @ movs r5, #0
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x182c @ adds r4, r5, r0
	.2byte 0x7860 @ ldrb r0, [r4, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00d @ beq.n 0x8001224
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0x2200 @ movs r2, #0
	.2byte 0xf7ff, 0xfd79 @ bl 0x8000d04
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd005 @ beq.n 0x8001224
	.2byte 0x4640 @ mov r0, r8
	.2byte 0x6004 @ str r4, [r0, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe006 @ b.n 0x800122e
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x35f8 @ adds r5, #248
	.2byte 0x3601 @ adds r6, #1
	.2byte 0x2e07 @ cmp r6, #7
	.2byte 0xd9e8 @ bls.n 0x80011fe
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1

	.thumb
	.align 1, 0
	.global sub_08001238
	.thumb_func
sub_08001238:
	.2byte 0xb5f0 @ push {r4, r5, r6, r7, lr}
	.2byte 0x4647 @ mov r7, r8
	.2byte 0xb480 @ push {r7}
	.2byte 0x1c07 @ adds r7, r0, #0
	.2byte 0x4688 @ mov r8, r1
	.2byte 0x2600 @ movs r6, #0
	.2byte 0x2500 @ movs r5, #0
	.2byte 0x4808 @ ldr r0, [pc, #32]
	.2byte 0x182c @ adds r4, r5, r0
	.2byte 0x7860 @ ldrb r0, [r4, #1]
	.2byte 0x2800 @ cmp r0, #0
	.2byte 0xd00d @ beq.n 0x800126c
	.2byte 0x1c38 @ adds r0, r7, #0
	.2byte 0x1c21 @ adds r1, r4, #0
	.2byte 0xf7ff, 0xfefa @ bl 0x800104c
	.2byte 0x0600 @ lsls r0, r0, #24
	.2byte 0x0e00 @ lsrs r0, r0, #24
	.2byte 0x2801 @ cmp r0, #1
	.2byte 0xd105 @ bne.n 0x800126c
	.2byte 0x4640 @ mov r0, r8
	.2byte 0x6004 @ str r4, [r0, #0]
	.2byte 0x2001 @ movs r0, #1
	.2byte 0xe006 @ b.n 0x8001276
	.2byte 0x4400 @ add r0, r0
	.2byte 0x0200 @ lsls r0, r0, #8
	.2byte 0x35f8 @ adds r5, #248
	.2byte 0x3601 @ adds r6, #1
	.2byte 0x2e07 @ cmp r6, #7
	.2byte 0xd9e8 @ bls.n 0x8001246
	.2byte 0x2000 @ movs r0, #0
	.2byte 0xbc08 @ pop {r3}
	.2byte 0x4698 @ mov r8, r3
	.2byte 0xbcf0 @ pop {r4, r5, r6, r7}
	.2byte 0xbc02 @ pop {r1}
	.2byte 0x4708 @ bx r1

	.thumb
	.align 1, 0
	.global sub_08001280
	.thumb_func
sub_08001280:
	push {r4, lr}
	adds r4, r0, #0
	str r1, [r4, #0]
	movs r2, #0
	movs r1, #0
	adds r0, #36
	adds r3, r4, #0
	adds r3, #20
.L08001290:
	str r1, [r0, #16]
	str r1, [r0, #48]
	stmia r0!, {r1}
	stmia r3!, {r1}
	adds r2, #1
	cmp r2, #7
	bls .L08001290
	adds r0, r4, #0
	movs r1, #0
	bl sub_08001A30
	adds r1, r4, #0
	adds r1, #132
	str r0, [r1, #0]
	adds r0, r4, #0
	bl sub_08001BA0
	adds r1, r4, #0
	adds r1, #136
	adds r0, #8
	str r0, [r1, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_080012C0
	.thumb_func
sub_080012C0:
	push {lr}
	ldr r0, [r0, #0]
	ldr r2, [r0, #4]
	adds r2, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #4]
	adds r0, r0, r1
	movs r1, #160
	lsls r1, r1, #19
	movs r3, #128
	lsls r3, r3, #1
	movs r2, #0
	bl sub_08001EBC
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080012E4
	.thumb_func
sub_080012E4:
	ldr r0, [r0, #0]
	ldr r2, [r0, #4]
	adds r2, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_080012F4
	.thumb_func
sub_080012F4:
	push {r4, lr}
	lsls r1, r1, #24
	lsls r2, r2, #24
	ldmia r0!, {r4}
	ldr r3, [r4, #12]
	adds r3, r4, r3
	lsrs r2, r2, #22
	adds r2, r2, r3
	ldr r2, [r2, #4]
	adds r4, r4, r2
	lsrs r1, r1, #22
	adds r0, r0, r1
	str r4, [r0, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08001314
	.thumb_func
sub_08001314:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	mov sl, r0
	lsls r1, r1, #24
	lsrs r1, r1, #22
	mov r3, sl
	adds r3, #20
	adds r0, r3, r1
	str r2, [r0, #0]
	mov r0, sl
	adds r0, #36
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0, #0]
	movs r6, #0
	movs r4, #0
	mov r8, r3
	mov r5, r8
	mov ip, r4
	mov r9, sp
.L08001344:
	movs r7, #0
	movs r1, #0
	cmp r1, r6
	bcs .L08001362
	mov r0, r8
	add r0, ip
	ldr r2, [r0, #0]
	mov r3, sp
.L08001354:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L0800135C
	movs r7, #1
.L0800135C:
	adds r1, #1
	cmp r1, r6
	bcc .L08001354
.L08001362:
	ldr r0, [r5, #0]
	cmp r0, #0
	beq .L08001378
	cmp r7, #0
	bne .L08001378
	mov r1, r9
	adds r1, #4
	mov r9, r1
	subs r1, #4
	stmia r1!, {r0}
	adds r6, #1
.L08001378:
	adds r5, #4
	movs r3, #4
	add ip, r3
	adds r4, #1
	cmp r4, #3
	bls .L08001344
	movs r0, #0
	str r0, [sp, #20]
	movs r4, #1
	cmp r4, r6
	bcs .L080013AE
	mov r2, sp
.L08001390:
	movs r1, #2
	ldr r0, [r2, #0]
	ldrh r3, [r0, #2]
	cmp r3, #4
	bne .L0800139C
	movs r1, #1
.L0800139C:
	ldrh r0, [r0, #0]
	muls r1, r0
	ldr r0, [r2, #20]
	adds r0, r0, r1
	str r0, [r2, #24]
	adds r2, #4
	adds r4, #1
	cmp r4, r6
	bcc .L08001390
.L080013AE:
	movs r4, #0
	add r0, sp, #20
	mov r9, r0
.L080013B4:
	movs r5, #1
	negs r5, r5
	movs r1, #0
	adds r7, r4, #1
	cmp r1, r6
	bcs .L080013D6
	lsls r0, r4, #2
	add r0, r8
	ldr r2, [r0, #0]
	mov r3, sp
.L080013C8:
	ldmia r3!, {r0}
	cmp r2, r0
	bne .L080013D0
	adds r5, r1, #0
.L080013D0:
	adds r1, #1
	cmp r1, r6
	bcc .L080013C8
.L080013D6:
	movs r0, #1
	negs r0, r0
	cmp r5, r0
	beq .L080013EE
	lsls r0, r4, #2
	mov r1, sl
	adds r1, #36
	adds r1, r1, r0
	lsls r0, r5, #2
	add r0, r9
	ldr r0, [r0, #0]
	str r0, [r1, #0]
.L080013EE:
	adds r4, r7, #0
	cmp r4, #3
	bls .L080013B4
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08001404
	.thumb_func
sub_08001404:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #40
	str r0, [sp, #0]
	adds r7, r1, #0
	adds r4, r2, #0
	adds r6, r3, #0
	mov sl, r4
	mov r9, r6
	lsls r2, r7, #2
	adds r0, r2, #0
	adds r0, #116
	ldr r1, [sp, #0]
	adds r0, r1, r0
	str r0, [sp, #4]
	adds r0, r1, #0
	adds r0, #4
	adds r0, r0, r2
	ldr r1, [r0, #0]
	ldr r0, [r1, #0]
	lsls r0, r0, #3
	str r0, [sp, #8]
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	str r0, [sp, #12]
	cmp r4, #0
	bne .L08001456
	str r2, [sp, #28]
	lsls r2, r7, #1
	str r2, [sp, #24]
	lsls r4, r7, #3
	str r4, [sp, #32]
	ldr r5, [sp, #0]
	adds r5, #52
	mov r8, r5
	cmp r6, #0
	bne .L08001456
	b .L080016EA
.L08001456:
	lsls r2, r7, #1
	lsls r3, r7, #3
	ldr r1, [sp, #0]
	adds r1, #52
	adds r0, r1, r3
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #16]
	adds r0, r2, #1
	lsls r0, r0, #2
	adds r0, r1, r0
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #20]
	str r2, [sp, #24]
	str r3, [sp, #32]
	mov r8, r1
	mov r0, sl
	cmp r0, #8
	ble .L08001482
	movs r4, #8
	b .L0800148E
.L08001482:
	movs r0, #8
	negs r0, r0
	mov r4, sl
	cmp sl, r0
	bge .L0800148E
	adds r4, r0, #0
.L0800148E:
	mov r1, r9
	cmp r1, #8
	ble .L08001498
	movs r6, #8
	b .L080014A4
.L08001498:
	movs r0, #8
	negs r0, r0
	mov r6, r9
	cmp r9, r0
	bge .L080014A4
	adds r6, r0, #0
.L080014A4:
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r4
	asrs r0, r0, #3
	ldr r2, [sp, #16]
	cmp r2, r0
	beq .L080014D2
	cmp r4, #0
	ble .L080014C4
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE98
	b .L080014D2
.L080014C4:
	cmp r4, #0
	bge .L080014D2
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_0831AE98
.L080014D2:
	ldr r0, [sp, #0]
	adds r0, #84
	ldr r5, [sp, #32]
	adds r2, r0, r5
	ldr r1, [r2, #0]
	adds r1, r1, r4
	str r1, [r2, #0]
	adds r3, r5, #0
	add r3, r8
	ldr r1, [r3, #0]
	adds r1, r1, r4
	str r1, [r3, #0]
	ldr r5, [sp, #4]
	ldrb r1, [r5, #0]
	str r0, [sp, #36]
	cmp r1, #0
	bne .L08001516
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L080014FE
	str r1, [r2, #0]
	str r1, [r3, #0]
.L080014FE:
	ldr r1, [sp, #8]
	subs r1, #240
	ldr r0, [r2, #0]
	lsls r5, r7, #2
	str r5, [sp, #28]
	cmp r0, r1
	blt .L0800154A
	ldr r0, [sp, #8]
	subs r0, #241
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L0800154A
.L08001516:
	ldr r3, [r2, #0]
	lsls r0, r7, #2
	str r0, [sp, #28]
	cmp r3, #0
	bge .L0800152E
	adds r0, r2, #0
	adds r2, r3, #0
.L08001524:
	ldr r1, [sp, #8]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08001524
	str r2, [r0, #0]
.L0800152E:
	ldr r2, [sp, #32]
	ldr r3, [sp, #36]
	adds r0, r3, r2
	ldr r0, [r0, #0]
	ldr r5, [sp, #8]
	cmp r0, r5
	blt .L0800154A
.L0800153C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	ldr r5, [sp, #8]
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, r5
	bge .L0800153C
.L0800154A:
	ldr r2, [sp, #32]
	mov r3, r8
	adds r0, r2, #0
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001568
	movs r5, #128
	lsls r5, r5, #1
.L0800155C:
	adds r1, r3, r2
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L0800155C
.L08001568:
	ldr r1, [sp, #32]
	add r1, r8
	ldrb r0, [r1, #0]
	str r0, [r1, #0]
	asrs r0, r0, #3
	ldr r1, [sp, #16]
	cmp r1, r0
	beq .L08001596
	cmp r4, #0
	ble .L08001588
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #30
	bl sub_0831AE88
	b .L08001596
.L08001588:
	cmp r4, #0
	bge .L08001596
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE88
.L08001596:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	adds r0, r0, r6
	asrs r0, r0, #3
	ldr r2, [sp, #20]
	cmp r2, r0
	beq .L080015C8
	cmp r6, #0
	ble .L080015BA
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE78
	b .L080015C8
.L080015BA:
	cmp r6, #0
	bge .L080015C8
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_0831AE78
.L080015C8:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	ldr r4, [sp, #36]
	adds r2, r4, r0
	ldr r1, [r2, #0]
	adds r1, r1, r6
	str r1, [r2, #0]
	mov r5, r8
	adds r3, r5, r0
	ldr r0, [r3, #0]
	adds r0, r0, r6
	str r0, [r3, #0]
	ldr r0, [sp, #4]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L08001608
	ldr r0, [r2, #0]
	cmp r0, #0
	bge .L080015F4
	str r1, [r2, #0]
	str r1, [r3, #0]
.L080015F4:
	ldr r1, [sp, #12]
	subs r1, #160
	ldr r0, [r2, #0]
	cmp r0, r1
	blt .L08001642
	ldr r0, [sp, #12]
	subs r0, #161
	str r0, [r2, #0]
	str r0, [r3, #0]
	b .L08001642
.L08001608:
	ldr r3, [r2, #0]
	cmp r3, #0
	bge .L0800161C
	adds r0, r2, #0
	adds r2, r3, #0
.L08001612:
	ldr r1, [sp, #12]
	adds r2, r2, r1
	cmp r2, #0
	blt .L08001612
	str r2, [r0, #0]
.L0800161C:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	ldr r2, [sp, #36]
	adds r0, r2, r0
	ldr r0, [r0, #0]
	ldr r4, [sp, #12]
	cmp r0, r4
	blt .L08001642
.L08001630:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	ldr r5, [sp, #12]
	subs r1, r1, r5
	str r1, [r0, #0]
	cmp r1, r5
	bge .L08001630
.L08001642:
	ldr r3, [sp, #24]
	adds r0, r3, #0
	adds r0, #1
	lsls r0, r0, #2
	mov r2, r8
	add r0, r8
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001668
	movs r4, #128
	lsls r4, r4, #1
.L08001658:
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r2, r0
	ldr r1, [r0, #0]
	adds r1, r1, r4
	str r1, [r0, #0]
	cmp r1, #0
	blt .L08001658
.L08001668:
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldrb r1, [r0, #0]
	str r1, [r0, #0]
	asrs r1, r1, #3
	ldr r0, [sp, #20]
	cmp r0, r1
	beq .L0800169A
	cmp r6, #0
	ble .L0800168C
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #20
	bl sub_0831AE68
	b .L0800169A
.L0800168C:
	cmp r6, #0
	bge .L0800169A
	ldr r0, [sp, #0]
	adds r1, r7, #0
	movs r2, #0
	bl sub_0831AE68
.L0800169A:
	mov r1, sl
	cmp r1, #8
	ble .L080016A8
	movs r2, #8
	negs r2, r2
	add sl, r2
	b .L080016BA
.L080016A8:
	movs r0, #8
	negs r0, r0
	cmp sl, r0
	bge .L080016B6
	movs r4, #8
	add sl, r4
	b .L080016BA
.L080016B6:
	movs r5, #0
	mov sl, r5
.L080016BA:
	mov r0, r9
	cmp r0, #8
	ble .L080016C8
	movs r1, #8
	negs r1, r1
	add r9, r1
	b .L080016DA
.L080016C8:
	movs r0, #8
	negs r0, r0
	cmp r9, r0
	bge .L080016D6
	movs r2, #8
	add r9, r2
	b .L080016DA
.L080016D6:
	movs r4, #0
	mov r9, r4
.L080016DA:
	mov r5, sl
	cmp r5, #0
	beq .L080016E2
	b .L08001456
.L080016E2:
	mov r0, r9
	cmp r0, #0
	beq .L080016EA
	b .L08001456
.L080016EA:
	ldr r2, [sp, #28]
	ldr r4, [pc, #40]
	adds r1, r2, r4
	ldr r0, [sp, #32]
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r5, [pc, #32]
	adds r1, r2, r5
	ldr r0, [sp, #24]
	adds r0, #1
	lsls r0, r0, #2
	add r0, r8
	ldr r0, [r0, #0]
	strh r0, [r1, #0]
	add sp, #40
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012

	.thumb
	.align 1, 0
	.global sub_08001720
	.thumb_func
sub_08001720:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #100
	mov r8, r0
	str r1, [sp, #0]
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r1, #2
	str r0, [sp, #24]
	adds r0, #116
	add r0, r8
	str r0, [sp, #20]
	mov r4, r8
	adds r4, #4
	ldr r1, [sp, #24]
	adds r4, r4, r1
	ldr r1, [r4, #0]
	ldr r0, [r1, #0]
	lsls r2, r0, #3
	ldr r0, [r1, #4]
	lsls r0, r0, #3
	mov sl, r0
	mov r0, r8
	str r2, [sp, #88]
	bl sub_08001B94
	adds r0, #4
	str r0, [sp, #28]
	movs r3, #0
	ldr r0, [r4, #0]
	adds r0, #12
	str r0, [sp, #16]
	ldr r4, [sp, #0]
	lsls r4, r4, #1
	str r4, [sp, #32]
	ldr r0, [sp, #0]
	lsls r0, r0, #3
	mov ip, r0
	movs r1, #84
	add r1, r8
	mov r9, r1
	mov r7, r9
	add r7, ip
	str r5, [r7, #0]
	adds r1, r4, #0
	adds r1, #1
	lsls r1, r1, #2
	mov r4, r9
	adds r0, r4, r1
	str r6, [r0, #0]
	mov r4, r8
	adds r4, #52
	mov r0, ip
	adds r0, r4, r0
	str r0, [sp, #36]
	str r5, [r0, #0]
	adds r1, r4, r1
	str r6, [r1, #0]
	ldr r1, [sp, #20]
	ldrb r0, [r1, #0]
	ldr r2, [sp, #88]
	cmp r0, #0
	bne .L080017EE
	ldr r0, [r7, #0]
	cmp r0, #0
	bge .L080017B0
	str r3, [r7, #0]
	ldr r5, [sp, #36]
	str r3, [r5, #0]
.L080017B0:
	adds r1, r2, #0
	subs r1, #240
	ldr r0, [r7, #0]
	ldr r3, [sp, #24]
	str r3, [sp, #52]
	ldr r5, [sp, #32]
	str r5, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r4, sl
	lsrs r4, r4, #3
	str r4, [sp, #80]
	mov r5, r8
	adds r5, #20
	str r5, [sp, #56]
	mov r4, r8
	adds r4, #36
	str r4, [sp, #76]
	cmp r0, r1
	blt .L0800183E
	adds r0, r2, #0
	subs r0, #241
	str r0, [r7, #0]
	ldr r5, [sp, #36]
	str r0, [r5, #0]
	b .L0800183E
.L080017EE:
	ldr r1, [r7, #0]
	ldr r0, [sp, #24]
	str r0, [sp, #52]
	ldr r3, [sp, #32]
	str r3, [sp, #48]
	mov r6, r9
	adds r3, r4, #0
	ldr r4, [sp, #0]
	lsls r4, r4, #11
	mov r9, r4
	lsrs r5, r2, #3
	str r5, [sp, #68]
	mov r0, sl
	lsrs r0, r0, #3
	str r0, [sp, #80]
	mov r4, r8
	adds r4, #20
	str r4, [sp, #56]
	mov r5, r8
	adds r5, #36
	str r5, [sp, #76]
	cmp r1, #0
	bge .L08001826
	adds r0, r7, #0
.L0800181E:
	adds r1, r1, r2
	cmp r1, #0
	blt .L0800181E
	str r1, [r0, #0]
.L08001826:
	mov r4, ip
	adds r5, r6, #0
	adds r0, r6, r4
	ldr r0, [r0, #0]
	cmp r0, r2
	blt .L0800183E
.L08001832:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	subs r0, r0, r2
	str r0, [r1, #0]
	cmp r0, r2
	bge .L08001832
.L0800183E:
	ldr r0, [sp, #20]
	ldrb r1, [r0, #1]
	cmp r1, #0
	bne .L0800186E
	ldr r0, [sp, #48]
	adds r0, #1
	lsls r5, r0, #2
	adds r4, r6, r5
	ldr r0, [r4, #0]
	cmp r0, #0
	bge .L0800185A
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
.L0800185A:
	mov r1, sl
	subs r1, #160
	ldr r0, [r4, #0]
	cmp r0, r1
	blt .L080018B4
	subs r1, #1
	str r1, [r4, #0]
	adds r0, r3, r5
	str r1, [r0, #0]
	b .L080018B4
.L0800186E:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L08001890
.L08001880:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	add r0, sl
	str r0, [r1, #0]
	cmp r0, #0
	blt .L08001880
.L08001890:
	ldr r2, [sp, #48]
	adds r0, r2, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r4, r6, #0
	adds r0, r6, r0
	ldr r0, [r0, #0]
	cmp r0, sl
	blt .L080018B4
.L080018A2:
	adds r1, r2, #1
	lsls r1, r1, #2
	adds r1, r4, r1
	ldr r0, [r1, #0]
	mov r5, sl
	subs r0, r0, r5
	str r0, [r1, #0]
	cmp r0, sl
	bge .L080018A2
.L080018B4:
	mov r4, ip
	adds r5, r3, #0
	adds r0, r3, r4
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018D0
	movs r2, #128
	lsls r2, r2, #1
.L080018C4:
	adds r1, r5, r4
	ldr r0, [r1, #0]
	adds r0, r0, r2
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018C4
.L080018D0:
	ldr r4, [sp, #48]
	adds r0, r4, #0
	adds r0, #1
	lsls r0, r0, #2
	adds r2, r3, #0
	adds r0, r3, r0
	ldr r0, [r0, #0]
	cmp r0, #0
	bge .L080018F6
	movs r5, #128
	lsls r5, r5, #1
.L080018E6:
	adds r1, r4, #1
	lsls r1, r1, #2
	adds r1, r2, r1
	ldr r0, [r1, #0]
	adds r0, r0, r5
	str r0, [r1, #0]
	cmp r0, #0
	blt .L080018E6
.L080018F6:
	mov r0, ip
	adds r4, r3, r0
	ldrb r0, [r4, #0]
	str r0, [r4, #0]
	ldr r2, [sp, #48]
	adds r2, #1
	lsls r2, r2, #2
	adds r3, r3, r2
	ldrb r0, [r3, #0]
	str r0, [r3, #0]
	ldr r5, [sp, #52]
	ldr r0, [pc, #272]
	adds r1, r5, r0
	ldr r0, [r4, #0]
	strh r0, [r1, #0]
	ldr r0, [pc, #268]
	adds r1, r5, r0
	ldr r0, [r3, #0]
	strh r0, [r1, #0]
	mov r1, ip
	adds r0, r6, r1
	ldr r0, [r0, #0]
	asrs r0, r0, #3
	str r0, [sp, #8]
	adds r2, r6, r2
	ldr r0, [r2, #0]
	asrs r1, r0, #3
	ldr r0, [r4, #0]
	asrs r7, r0, #3
	ldr r0, [r3, #0]
	asrs r3, r0, #3
	cmp r7, #0
	bge .L0800193A
	adds r7, #32
.L0800193A:
	cmp r3, #0
	bge .L08001940
	adds r3, #32
.L08001940:
	ldr r0, [pc, #228]
	mov r2, r9
	subs r2, r0, r2
	str r2, [sp, #4]
	str r7, [sp, #12]
	adds r0, r1, #0
	movs r1, #0
.L0800194E:
	ldr r7, [sp, #12]
	ldr r6, [sp, #8]
	ldr r4, [sp, #80]
	cmp r0, r4
	blt .L0800195A
	subs r0, r0, r4
.L0800195A:
	asrs r5, r0, #1
	str r5, [sp, #60]
	ldr r2, [sp, #68]
	lsrs r2, r2, #1
	str r2, [sp, #64]
	lsls r4, r3, #5
	str r4, [sp, #84]
	adds r3, #1
	str r3, [sp, #72]
	adds r5, r0, #1
	str r5, [sp, #44]
	adds r1, #1
	str r1, [sp, #40]
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #1
	mov sl, r0
	ldr r2, [sp, #52]
	mov r8, r2
	ldr r3, [sp, #76]
	add r3, r8
	mov r9, r3
	movs r3, #30
.L08001988:
	ldr r4, [sp, #68]
	cmp r6, r4
	blt .L08001990
	subs r6, r6, r4
.L08001990:
	ldr r5, [sp, #60]
	ldr r1, [sp, #64]
	adds r0, r5, #0
	muls r0, r1
	asrs r1, r6, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r2, [sp, #16]
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	lsls r1, r0, #2
	adds r0, r6, #0
	movs r4, #1
	ands r0, r4
	adds r1, r1, r0
	add r1, sl
	lsls r1, r1, #1
	ldr r5, [sp, #28]
	adds r1, r1, r5
	ldrh r4, [r1, #0]
	ldr r0, [sp, #84]
	adds r5, r0, r7
	lsls r5, r5, #1
	ldr r1, [sp, #4]
	adds r5, r5, r1
	str r5, [sp, #96]
	ldrh r0, [r5, #0]
	str r3, [sp, #92]
	bl sub_0831AE58
	ldr r0, [pc, #92]
	ands r0, r4
	ldr r1, [sp, #56]
	add r1, r8
	ldr r1, [r1, #0]
	adds r1, #4
	mov r2, r9
	ldr r2, [r2, #0]
	mov ip, r2
	bl sub_0831AE48
	lsrs r4, r4, #4
	movs r5, #192
	lsls r5, r5, #4
	adds r1, r5, #0
	ands r4, r1
	orrs r4, r0
	ldr r0, [sp, #96]
	strh r4, [r0, #0]
	adds r7, #1
	movs r0, #31
	ands r7, r0
	adds r6, #1
	ldr r3, [sp, #92]
	subs r3, #1
	cmp r3, #0
	bge .L08001988
	adds r3, r0, #0
	ldr r1, [sp, #72]
	ands r3, r1
	ldr r0, [sp, #44]
	ldr r1, [sp, #40]
	cmp r1, #20
	ble .L0800194E
	add sp, #100
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x04000010
	.4byte 0x04000012
	.4byte 0x0600F800
	.4byte 0x00003FFF

	.thumb
	.align 1, 0
	.global sub_08001A30
	.thumb_func
sub_08001A30:
	ldr r0, [r0, #0]
	ldr r2, [r0, #16]
	adds r2, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr
	.4byte 0x31740089
	.4byte 0x47701840

	.thumb
	.align 1, 0
	.global sub_08001A48
	.thumb_func
sub_08001A48:
	lsls r1, r1, #2
	adds r3, r0, r1
	ldrb r1, [r2, #0]
	adds r0, r3, #0
	adds r0, #116
	strb r1, [r0, #0]
	ldrb r0, [r2, #1]
	adds r1, r3, #0
	adds r1, #117
	strb r0, [r1, #0]
	ldrb r0, [r2, #3]
	adds r1, #2
	strb r0, [r1, #0]
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	adds r0, #118
	strb r1, [r0, #0]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08001A6C
	.thumb_func
sub_08001A6C:
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp, #0]
	movs r1, #192
	lsls r1, r1, #19
	ldr r2, [pc, #12]
	mov r0, sp
	bl CpuFastSet
	add sp, #4
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x01003FFF

	.thumb
	.align 1, 0
	.global sub_08001A8C
	.thumb_func
sub_08001A8C:
	push {r4, r5, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r0, #118
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AB0
	ldr r1, [pc, #148]
	adds r2, r3, #0
	adds r2, #119
	movs r4, #252
	lsls r4, r4, #5
	adds r0, r4, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r4, #128
	lsls r4, r4, #1
.L08001AB0:
	adds r0, r3, #0
	adds r0, #122
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AD4
	ldr r0, [pc, #120]
	adds r2, r3, #0
	adds r2, #123
	movs r5, #244
	lsls r5, r5, #5
	adds r1, r5, #0
	ldrb r2, [r2, #0]
	orrs r1, r2
	strh r1, [r0, #0]
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r1, #0
	orrs r4, r0
.L08001AD4:
	adds r0, r3, #0
	adds r0, #126
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001AFC
	ldr r1, [pc, #88]
	adds r2, r3, #0
	adds r2, #127
	movs r5, #236
	lsls r5, r5, #5
	adds r0, r5, #0
	ldrb r2, [r2, #0]
	orrs r0, r2
	strh r0, [r1, #0]
	movs r1, #128
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L08001AFC:
	adds r0, r3, #0
	adds r0, #130
	ldrb r0, [r0, #0]
	cmp r0, #1
	bne .L08001B24
	ldr r2, [pc, #52]
	adds r1, r3, #0
	adds r1, #131
	movs r3, #228
	lsls r3, r3, #5
	adds r0, r3, #0
	ldrb r1, [r1, #0]
	orrs r0, r1
	strh r0, [r2, #0]
	movs r5, #128
	lsls r5, r5, #4
	adds r0, r5, #0
	orrs r4, r0
	lsls r0, r4, #16
	lsrs r4, r0, #16
.L08001B24:
	movs r0, #128
	lsls r0, r0, #19
	strh r4, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000008
	.4byte 0x0400000A
	.4byte 0x0400000C
	.4byte 0x0400000E

	.thumb
	.align 1, 0
	.global sub_08001B40
	.thumb_func
sub_08001B40:
	ldr r0, [r0, #0]
	ldr r2, [r0, #20]
	adds r2, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08001B50
	.thumb_func
sub_08001B50:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r2, #0
	bl sub_08001B40
	adds r1, r0, #0
	ldr r0, [r5, #0]
	lsls r4, r4, #2
	adds r4, r4, r1
	ldr r1, [r4, #4]
	adds r0, r0, r1
	pop {r4, r5}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08001B6C
	.thumb_func
sub_08001B6C:
	ldr r0, [r0, #0]
	ldr r2, [r0, #24]
	adds r2, r0, r2
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08001B7C
	.thumb_func
sub_08001B7C:
	ldr r0, [r0, #0]
	ldr r1, [r0, #24]
	adds r0, r0, r1
	ldrh r0, [r0, #2]
	bx lr
	.2byte 0x0000
	.4byte 0x68C16800
	.4byte 0x88401840
	.4byte 0x00004770

	.thumb
	.align 1, 0
	.global sub_08001B94
	.thumb_func
sub_08001B94:
	ldr r0, [r0, #0]
	ldr r1, [r0, #8]
	adds r1, r0, r1
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08001BA0
	.thumb_func
sub_08001BA0:
	ldr r0, [r0, #0]
	ldr r1, [r0, #28]
	adds r1, r0, r1
	ldr r1, [r1, #4]
	adds r0, r0, r1
	bx lr

	.thumb
	.align 1, 0
	.global sub_08001BAC
	.thumb_func
sub_08001BAC:
	push {lr}
	bl sub_08001BCC
	lsls r0, r0, #24
	lsrs r0, r0, #24
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08001BBC
	.thumb_func
sub_08001BBC:
	push {lr}
	bl sub_08001BCC
	lsls r0, r0, #16
	lsrs r0, r0, #16
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08001BCC
	.thumb_func
sub_08001BCC:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #0
	bl sub_08001A30
	adds r5, r0, #0
	adds r0, r4, #0
	bl sub_08001BA0
	adds r3, r0, #0
	ldrb r4, [r5, #8]
	cmp r4, #1
	bne .L08001C00
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	adds r2, r2, r0
	ldrb r0, [r2, #0]
	b .L08001C32
.L08001C00:
	cmp r4, #2
	bne .L08001C1C
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	b .L08001C32
.L08001C1C:
	adds r2, r5, #0
	adds r2, #12
	lsrs r1, r6, #1
	ldr r0, [r5, #0]
	lsrs r0, r0, #1
	muls r0, r1
	lsrs r1, r7, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0, #0]
.L08001C32:
	ldrb r4, [r3, #4]
	cmp r4, #1
	bne .L08001C4E
	adds r1, r3, #0
	adds r1, #8
	lsls r0, r0, #2
	ands r6, r4
	lsls r2, r6, #1
	ands r4, r7
	adds r0, r0, r2
	adds r0, r0, r4
	adds r1, r1, r0
	ldrb r0, [r1, #0]
	b .L08001C80
.L08001C4E:
	cmp r4, #2
	beq .L08001C6A
	adds r3, #8
	lsls r0, r0, #2
	movs r1, #1
	ands r6, r1
	lsls r2, r6, #1
	ands r7, r1
	adds r0, r0, r2
	adds r0, r0, r7
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0, #0]
	b .L08001C80
.L08001C6A:
	adds r3, #8
	lsls r0, r0, #2
	movs r1, #1
	ands r6, r1
	lsls r2, r6, #1
	ands r7, r1
	adds r0, r0, r2
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0, #0]
.L08001C80:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x0E010600
	.4byte 0x061222BF
	.4byte 0x0E001880
	.4byte 0xD8022819
	.4byte 0x38401C08
	.4byte 0x1C08E035
	.4byte 0x06003861
	.4byte 0x28190E00
	.4byte 0x1C08D802
	.4byte 0xE02C3846
	.4byte 0x38301C08
	.4byte 0x0E000600
	.4byte 0xD8012809
	.4byte 0xE0241D48
	.4byte 0x38211C08
	.4byte 0xD81F283D
	.4byte 0x49020080
	.4byte 0x68001840
	.4byte 0x00004687
	.4byte 0x083D1DD0
	.4byte 0xE016203F
	.4byte 0xE0142040
	.4byte 0xE0122041
	.4byte 0xE0102042
	.4byte 0xE00E2043
	.4byte 0xE00C2044
	.4byte 0xE00A2045
	.4byte 0xE0082046
	.4byte 0xE0062047
	.4byte 0xE0042048
	.4byte 0xE0022049
	.4byte 0xE000204A
	.4byte 0x47702000
	.4byte 0x0E010600
	.4byte 0x061222BF
	.4byte 0x0E001880
	.4byte 0xD8022819
	.4byte 0x38401C08
	.4byte 0x1C08E04B
	.4byte 0x06003861
	.4byte 0x28190E00
	.4byte 0x1C08D802
	.4byte 0xE0423860
	.4byte 0x38301C08
	.4byte 0x0E000600
	.4byte 0xD8022809
	.4byte 0x38151C08
	.4byte 0x1C08E039
	.4byte 0x285B3821
	.4byte 0x0080D834
	.4byte 0x18404901
	.4byte 0x46876800
	.4byte 0x083D1EC8
	.4byte 0xE02C2026
	.4byte 0xE02A2027
	.4byte 0xE0282028
	.4byte 0xE0262029
	.4byte 0xE024202A
	.4byte 0xE022202B
	.4byte 0xE020202C
	.4byte 0xE01E202D
	.4byte 0xE01C202E
	.4byte 0xE01A202F
	.4byte 0xE0182030
	.4byte 0xE0162031
	.4byte 0xE0142032
	.4byte 0xE0122033
	.4byte 0xE0102034
	.4byte 0xE00E2035
	.4byte 0xE00C2036
	.4byte 0xE00A2037
	.4byte 0xE0082038
	.4byte 0xE0062039
	.4byte 0xE004203A
	.4byte 0xE002203B
	.4byte 0xE000203C
	.4byte 0x47702025

	.thumb
	.align 1, 0
	.global sub_08001DBC
	.thumb_func
sub_08001DBC:
	ldr r1, [pc, #4]
	strb r0, [r1, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x03005858

	.thumb
	.align 1, 0
	.global sub_08001DC8
	.thumb_func
sub_08001DC8:
	push {r4, r5, lr}
	adds r4, r0, #0
	lsls r1, r1, #24
	lsrs r1, r1, #24
	ldr r3, [pc, #28]
	movs r5, #1
	adds r0, r5, #0
	lsls r0, r4
	ldrb r2, [r3, #0]
	bics r2, r0
	lsls r1, r4
	orrs r2, r1
	strb r2, [r3, #0]
	ands r0, r2
	asrs r0, r4
	ands r0, r5
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03005858

	.thumb
	.align 1, 0
	.global sub_08001DF4
	.thumb_func
sub_08001DF4:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, [pc, #24]
	movs r3, #1
	adds r0, r3, #0
	lsls r0, r4
	adds r1, r0, #0
	ldrb r5, [r2, #0]
	eors r1, r5
	strb r1, [r2, #0]
	ands r0, r1
	asrs r0, r4
	ands r0, r3
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03005858

	.thumb
	.align 1, 0
	.global sub_08001E18
	.thumb_func
sub_08001E18:
	adds r2, r0, #0
	ldr r3, [pc, #16]
	movs r1, #1
	adds r0, r1, #0
	lsls r0, r2
	ldrb r3, [r3, #0]
	ands r0, r3
	asrs r0, r2
	ands r0, r1
	bx lr
	.4byte 0x03005858
	.4byte 0x780A4905
	.4byte 0x70081810
	.4byte 0x0E000600
	.4byte 0xD9012807
	.4byte 0x70082007
	.4byte 0x00004770
	.4byte 0x03005859
	.4byte 0x780A4903
	.4byte 0x28001A10
	.4byte 0x2000DC00
	.4byte 0x47707008
	.4byte 0x03005859

	.thumb
	.align 1, 0
	.global sub_08001E60
	.thumb_func
sub_08001E60:
	adds r1, r0, #0
	cmp r1, #7
	bhi .L08001E6A
	ldr r0, [pc, #4]
	strb r1, [r0, #0]
.L08001E6A:
	bx lr
	.4byte 0x03005859

	.thumb
	.align 1, 0
	.global sub_08001E70
	.thumb_func
sub_08001E70:
	push {r4, r5, r6, lr}
	lsls r2, r2, #16
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r5, [pc, #56]
	movs r6, #31
	movs r3, #248
	lsls r3, r3, #13
	ands r3, r2
	lsrs r3, r3, #16
	ldr r1, [pc, #48]
	ldrb r1, [r1, #0]
	lsls r4, r1, #5
	adds r3, r3, r4
	adds r3, r3, r5
	lsrs r1, r2, #21
	ands r1, r6
	adds r1, r1, r4
	adds r1, r1, r5
	lsrs r2, r2, #26
	ands r2, r6
	adds r2, r2, r4
	adds r2, r2, r5
	ldrb r1, [r1, #0]
	lsls r1, r1, #5
	ldrb r3, [r3, #0]
	orrs r1, r3
	ldrb r2, [r2, #0]
	lsls r2, r2, #10
	orrs r1, r2
	strh r1, [r0, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x083D2FD8
	.4byte 0x03005859

	.thumb
	.align 1, 0
	.global sub_08001EBC
	.thumb_func
sub_08001EBC:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov ip, r3
	lsls r2, r2, #1
	adds r5, r1, r2
	movs r6, #0
	cmp r6, ip
	beq .L08001F1E
	ldr r1, [pc, #88]
	mov sl, r1
	movs r7, #31
	mov r8, r7
	ldr r1, [pc, #84]
	mov r9, r1
	adds r4, r0, #0
.L08001EE0:
	ldrh r1, [r4, #0]
	adds r4, #2
	movs r2, #31
	ands r2, r1
	mov r7, r9
	ldrb r7, [r7, #0]
	lsls r3, r7, #5
	adds r2, r2, r3
	add r2, sl
	lsls r1, r1, #16
	lsrs r0, r1, #21
	mov r7, r8
	ands r0, r7
	adds r0, r0, r3
	add r0, sl
	lsrs r1, r1, #26
	ands r1, r7
	adds r1, r1, r3
	add r1, sl
	ldrb r0, [r0, #0]
	lsls r0, r0, #5
	ldrb r2, [r2, #0]
	orrs r0, r2
	ldrb r1, [r1, #0]
	lsls r1, r1, #10
	orrs r0, r1
	strh r0, [r5, #0]
	adds r5, #2
	adds r6, #1
	cmp r6, ip
	bne .L08001EE0
.L08001F1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.4byte 0x083D2FD8
	.4byte 0x03005859

	.thumb
	.align 1, 0
	.global sub_08001F34
	.thumb_func
sub_08001F34:
	push {lr}
	ldr r1, [pc, #60]
	ldr r0, [pc, #60]
	str r0, [r1, #0]
	ldr r2, [pc, #60]
	str r2, [r1, #4]
	ldr r0, [pc, #60]
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [pc, #60]
	str r2, [r0, #0]
	ldr r1, [pc, #60]
	movs r0, #0
	bl SetIntrHandler
	ldr r1, [pc, #56]
	movs r0, #1
	bl SetIntrHandler
	ldr r1, [pc, #52]
	ldr r2, [pc, #52]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #52]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #48]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x040000D4
	.4byte 0x080001B0
	.4byte 0x03000B10
	.4byte 0x84000080
	.4byte 0x03007FFC
	.4byte 0x08001FF1
	.4byte 0x08001FED
	.4byte 0x04000200
	.4byte 0x00002001
	.4byte 0x04000004
	.4byte 0x04000208

	.thumb
	.align 1, 0
	.global sub_08001FA0
	.thumb_func
sub_08001FA0:
	ldr r2, [pc, #12]
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2, #0]
	orrs r1, r0
	strh r1, [r2, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x04000200

	.thumb
	.align 1, 0
	.global sub_08001FB4
	.thumb_func
sub_08001FB4:
	ldr r2, [pc, #12]
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2, #0]
	bics r0, r1
	strh r0, [r2, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x04000200

@ SetIntrHandler: [sure] IntrTable[idx] = fn (IntrTable = 0x0300585C)
	.thumb
	.align 1, 0
	.global sub_08001FC8
	.thumb_func
sub_08001FC8:
	.global SetIntrHandler
	.thumb_set SetIntrHandler, sub_08001FC8
	ldr r2, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300585C

@ ClearIntrHandler: [sure] IntrTable[idx] = DummyIntrHandler
	.thumb
	.align 1, 0
	.global sub_08001FD8
	.thumb_func
sub_08001FD8:
	.global ClearIntrHandler
	.thumb_set ClearIntrHandler, sub_08001FD8
	ldr r1, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [pc, #8]
	str r1, [r0, #0]
	bx lr
	.4byte 0x0300585C
	.4byte 0x08001FED
	.4byte 0x00004770
	.4byte 0x20014901
	.4byte 0x47708008
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08001FFC
	.thumb_func
sub_08001FFC:
	lsls r0, r0, #16
	lsrs r2, r0, #16
	lsls r1, r1, #16
	lsrs r1, r1, #16
	cmp r2, #1
	bne .L08002010
	ldr r0, [pc, #0]
	b .L0800204E
	lsrs r0, r5, #20
	lsls r0, r0, #12
.L08002010:
	cmp r2, #2
	bne .L0800201C
	ldr r0, [pc, #0]
	b .L0800204E
	lsrs r2, r5, #20
	lsls r0, r0, #12
.L0800201C:
	movs r0, #128
	lsls r0, r0, #2
	cmp r2, r0
	bne .L0800202C
	ldr r0, [pc, #0]
	b .L0800204E
	lsrs r4, r4, #20
	lsls r0, r0, #12
.L0800202C:
	movs r0, #128
	lsls r0, r0, #1
	cmp r2, r0
	bne .L0800203C
	ldr r0, [pc, #0]
	b .L0800204E
	lsrs r6, r4, #20
	lsls r0, r0, #12
.L0800203C:
	cmp r2, #4
	bne .L08002048
	ldr r0, [pc, #0]
	b .L0800204E
	lsrs r4, r5, #20
	lsls r0, r0, #12
.L08002048:
	cmp r2, #8
	bne .L08002050
	ldr r0, [pc, #4]
.L0800204E:
	strh r1, [r0, #0]
.L08002050:
	bx lr
	.2byte 0x0000
	.4byte 0x03000D2E

	.thumb
	.align 1, 0
	.global sub_08002058
	.thumb_func
sub_08002058:
	push {lr}
	movs r0, #1
	movs r1, #1
	bl sub_08001FFC
	movs r0, #2
	movs r1, #2
	bl sub_08001FFC
	movs r1, #128
	lsls r1, r1, #2
	adds r0, r1, #0
	bl sub_08001FFC
	movs r1, #128
	lsls r1, r1, #1
	adds r0, r1, #0
	bl sub_08001FFC
	movs r0, #4
	movs r1, #4
	bl sub_08001FFC
	movs r0, #8
	movs r1, #8
	bl sub_08001FFC
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08002094
	.thumb_func
sub_08002094:
	push {r4, lr}
	ldr r2, [pc, #40]
	ldrh r2, [r2, #0]
	ldr r4, [pc, #40]
	adds r3, r4, #0
	eors r3, r2
	adds r2, r3, #0
	ldrh r4, [r0, #0]
	bics r2, r4
	strh r2, [r1, #0]
	strh r3, [r0, #0]
	movs r0, #15
	ands r3, r0
	cmp r3, #15
	bne .L080020B8
	movs r0, #255
	bl SoftResetRom
.L080020B8:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000130
	.4byte 0x000003FF

	.thumb
	.align 1, 0
	.global sub_080020C8
	.thumb_func
sub_080020C8:
	lsls r0, r0, #16
	lsrs r2, r0, #16
	movs r1, #240
	ands r1, r2
	movs r0, #128
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L080020E0
	ldr r0, [pc, #80]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L080020E0:
	movs r0, #128
	lsls r0, r0, #1
	ands r0, r2
	cmp r0, #0
	beq .L080020F0
	ldr r0, [pc, #68]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L080020F0:
	movs r0, #1
	ands r0, r2
	cmp r0, #0
	beq .L080020FE
	ldr r0, [pc, #56]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L080020FE:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq .L0800210C
	ldr r0, [pc, #48]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L0800210C:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq .L0800211A
	ldr r0, [pc, #36]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L0800211A:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq .L08002128
	ldr r0, [pc, #28]
	ldrh r0, [r0, #0]
	orrs r1, r0
.L08002128:
	adds r0, r1, #0
	bx lr
	.4byte 0x03000D24
	.4byte 0x03000D26
	.4byte 0x03000D28
	.4byte 0x03000D2A
	.4byte 0x03000D2C
	.4byte 0x03000D2E

	.thumb
	.align 1, 0
	.global sub_08002144
	.thumb_func
sub_08002144:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r6, #0
	ldr r1, [pc, #104]
	movs r0, #0
	bl SetIntrHandler
	ldr r3, [pc, #100]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r0, [pc, #96]
	ldrb r0, [r0, #0]
	cmp r0, #150
	bne .L08002178
	ldr r0, [pc, #92]
	ldr r1, [pc, #96]
	ldr r2, [r0, #0]
	ldr r0, [r1, #0]
	cmp r2, r0
	bne .L08002178
	ldrh r0, [r3, #0]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #0]
.L08002178:
	ldr r1, [pc, #76]
	movs r0, #8
	strh r0, [r1, #0]
	ldr r1, [pc, #76]
	movs r0, #1
	strh r0, [r1, #0]
	ldr r1, [pc, #72]
	ldr r0, [pc, #76]
	str r0, [r1, #0]
.L0800218A:
	ldr r0, [pc, #76]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L080021DC
	movs r0, #0
	movs r1, #15
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #16
	movs r2, #30
	movs r3, #0
	bl sub_080049D4
	b .L080021F0
	subs r4, #177
	lsrs r0, r0, #32
	lsls r0, r0, #8
	lsls r0, r0, #16
	lsls r2, r6, #2
	lsrs r0, r0, #32
	lsls r4, r5, #2
	lsrs r0, r0, #32
	adds r1, #4
	lsrs r5, r7, #32
	movs r4, r0
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsrs r0, r6, #3
	lsls r0, r0, #12
	lsrs r5, r0, #4
	lsls r0, r0, #12
	ldr r0, [r2, r2]
	lsls r0, r0, #12
.L080021DC:
	ldr r2, [pc, #48]
	movs r0, #0
	movs r1, #15
	bl sub_08004914
	ldr r2, [pc, #44]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
.L080021F0:
	ldr r0, [pc, #36]
	ldr r1, [r0, #0]
	movs r0, #192
	lsls r0, r0, #1
	ands r1, r0
	subs r0, #128
	cmp r1, r0
	bne .L08002208
	ldr r0, [pc, #24]
	ldr r0, [r0, #0]
	cmp r0, #3
	bls .L08002220
.L08002208:
	bl VBlankIntrWait
	b .L08002228
	movs r0, r0
	adds r1, #12
	lsrs r5, r7, #32
	adds r1, #44
	lsrs r5, r7, #32
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
.L08002220:
	movs r0, #1
	movs r1, #128
	bl IntrWait
.L08002228:
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #5
	bls .L08002232
	b .L0800236C
.L08002232:
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	lsrs r4, r2, #4
	lsls r0, r0, #12
	adds r1, #76
	lsrs r5, r7, #32
	ldr r1, [pc, #40]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #40]
	movs r0, #6
	bl SetIntrHandler
	ldr r0, [pc, #28]
	ldr r0, [r0, #0]
	movs r1, #240
	lsls r1, r1, #4
	ands r0, r1
	lsrs r0, r0, #8
	bl sub_08003790
	movs r6, #0
	ldr r1, [pc, #16]
	ldr r0, [r1, #0]
	cmp r0, #0
	bne .L0800227C
	movs r0, #3
	b .L0800236A
	lsrs r0, r3, #4
	lsls r0, r0, #12
	lsls r5, r5, #19
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
.L0800227C:
	movs r0, #2
	b .L0800236A
	ldr r0, [pc, #112]
	ldr r1, [r0, #0]
	movs r0, #16
	ands r0, r1
	cmp r0, #0
	beq .L080022A4
	movs r0, #64
	ands r1, r0
	cmp r1, #0
	beq .L0800229E
	ldr r0, [pc, #96]
	ldr r1, [r0, #0]
	ldrb r0, [r1, #0]
	adds r0, #1
	strb r0, [r1, #0]
.L0800229E:
	ldr r1, [pc, #92]
	movs r0, #3
	str r0, [r1, #0]
.L080022A4:
	bl sub_08003848
	ldr r5, [pc, #72]
	ldr r0, [r5, #0]
	movs r1, #32
	ands r0, r1
	cmp r0, #0
	beq .L080022BA
	ldr r1, [pc, #68]
	movs r0, #4
	str r0, [r1, #0]
.L080022BA:
	ldr r0, [r5, #0]
	movs r1, #16
	ands r0, r1
	cmp r0, #0
	beq .L080022C6
	movs r6, #1
.L080022C6:
	ldr r4, [pc, #56]
	adds r0, r4, #0
	bl sub_080038B0
	str r0, [r5, #0]
	bl sub_08003848
	ldr r2, [pc, #44]
	ldrb r0, [r4, #5]
	ldrb r1, [r2, #0]
	cmp r1, r0
	beq .L080022E6
	strb r0, [r2, #0]
	ldr r1, [pc, #36]
	movs r0, #0
	str r0, [r1, #0]
.L080022E6:
	ldr r1, [pc, #36]
	ldrb r2, [r2, #0]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r4, [r0, #0]
	b .L0800236C
	movs r0, r0
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r0, r6, #3
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	lsrs r0, r4, #4
	lsls r0, r0, #12
	lsrs r0, r4, #5
	lsls r0, r0, #12
	lsrs r4, r4, #5
	lsls r0, r0, #12
	adds r0, #216
	lsrs r5, r7, #32
	bl sub_08003860
	ldr r0, [pc, #12]
	ldrb r0, [r0, #0]
	cmp r0, #11
	bne .L08002328
	movs r0, #6
	bl sub_08001FB4
	b .L080023A8
	lsrs r0, r4, #5
	lsls r0, r0, #12
.L08002328:
	ldr r1, [pc, #24]
	movs r0, #6
	bl SetIntrHandler
	ldr r0, [pc, #20]
	ldr r0, [r0, #0]
	movs r1, #128
	ands r0, r1
	adds r1, r4, #0
	bl sub_080040C8
	ldr r1, [pc, #12]
	movs r0, #5
	b .L0800236A
	lsls r1, r7, #23
	lsls r0, r0, #12
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	ldr r0, [pc, #60]
	bl sub_08004164
	cmp r0, #0
	beq .L0800236C
	ldr r2, [pc, #56]
	ldr r1, [pc, #56]
	ldr r0, [r1, #0]
	str r0, [r2, #0]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #52]
	movs r0, #1
.L0800236A:
	str r0, [r1, #0]
.L0800236C:
	ldr r2, [pc, #48]
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L08002386
	ldr r0, [pc, #32]
	ldr r0, [r0, #0]
	movs r1, #128
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq .L08002386
	movs r0, #1
	strb r0, [r2, #0]
.L08002386:
	ldr r0, [pc, #28]
	adds r1, r6, #0
	bl sub_080039F0
	b .L0800218A
	lsrs r4, r4, #5
	lsls r0, r0, #12
	lsrs r0, r3, #4
	lsls r0, r0, #12
	lsrs r0, r2, #4
	lsls r0, r0, #12
	lsrs r4, r2, #4
	lsls r0, r0, #12
	lsrs r0, r5, #5
	lsls r0, r0, #12
	lsrs r0, r0, #4
	lsls r0, r0, #12
.L080023A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080023B0
	.thumb_func
sub_080023B0:
	adds r2, r0, #0
	movs r1, #0
	strb r1, [r2, #30]
	strb r1, [r2, #24]
	strb r1, [r2, #29]
	adds r3, r2, #0
	adds r3, #74
	movs r0, #15
	strb r0, [r3, #0]
	adds r0, r2, #0
	adds r0, #72
	strb r1, [r0, #0]
	strh r1, [r2, #22]
	ldr r0, [pc, #16]
	strh r1, [r0, #0]
	ldr r2, [pc, #16]
	ldr r3, [pc, #16]
	adds r0, r3, #0
	strh r0, [r2, #0]
	ldr r0, [pc, #16]
	strh r1, [r0, #0]
	bx lr
	.4byte 0x04000134
	.4byte 0x04000128
	.4byte 0x00002003
	.4byte 0x0400012A

	.thumb
	.align 1, 0
	.global sub_080023EC
	.thumb_func
sub_080023EC:
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
	bl sub_080028F4
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

	.thumb
	.align 1, 0
	.global sub_080027D4
	.thumb_func
sub_080027D4:
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #16
	lsrs r1, r1, #16
	ldr r3, [pc, #32]
	ldrh r0, [r3, #0]
	movs r4, #140
	ands r4, r0
	cmp r4, #8
	bne .L0800280C
	ldr r0, [pc, #24]
	strh r1, [r0, #0]
	ldr r1, [pc, #24]
	adds r0, r1, #0
	strh r0, [r3, #0]
	adds r1, r2, #0
	adds r1, #72
	movs r0, #1
	strb r0, [r1, #0]
	movs r0, #0
	b .L08002818
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r2, r5, #4
	lsls r0, r0, #16
	movs r0, #131
	movs r0, r0
.L0800280C:
	adds r0, r2, #0
	bl sub_080023B0
	movs r0, #8
	eors r4, r0
	adds r0, r4, #0
.L08002818:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08002820
	.thumb_func
sub_08002820:
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq .L08002832
	adds r0, r1, #0
	bl sub_080023B0
	b .L0800283E
.L08002832:
	adds r2, r1, #0
	adds r2, #74
	strb r0, [r2, #0]
	strb r0, [r1, #30]
	movs r0, #1
	strb r0, [r1, #24]
.L0800283E:
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08002844
	.thumb_func
sub_08002844:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #20]
	lsls r3, r3, #24
	lsrs r5, r3, #24
	lsls r0, r0, #24
	lsrs r7, r0, #24
	movs r3, #0
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne .L08002880
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq .L08002880
	adds r0, r4, #0
	adds r0, #74
	ldrb r0, [r0, #0]
	cmp r0, #0
	bne .L08002880
	str r6, [r4, #32]
	adds r2, #15
	movs r0, #16
	negs r0, r0
	ands r2, r0
	subs r0, #240
	adds r1, r2, r0
	ldr r0, [pc, #12]
	cmp r1, r0
	bls .L0800288C
.L08002880:
	adds r0, r4, #0
	bl sub_080023B0
	b .L080028DC
	.2byte 0xff00 @ .raw
	movs r3, r0
.L0800288C:
	adds r0, r6, r2
	str r0, [r4, #36]
	lsls r1, r7, #24
	movs r2, #128
	lsls r2, r2, #19
	adds r0, r1, r2
	asrs r0, r0, #24
	adds r2, r1, #0
	cmp r0, #8
	bhi .L080028C8
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	adds r1, #100
	lsrs r5, r7, #32
	lsls r3, r5, #3
	asrs r1, r2, #24
	movs r0, #3
	subs r0, r0, r1
	b .L080028C6
	movs r0, #56
	adds r3, r5, #0
	b .L080028C6
	lsls r3, r5, #3
	asrs r0, r2, #24
	subs r0, #1
.L080028C6:
	orrs r3, r0
.L080028C8:
	movs r0, #63
	ands r3, r0
	lsls r0, r3, #1
	movs r2, #127
	negs r2, r2
	adds r1, r2, #0
	orrs r0, r1
	strb r0, [r4, #28]
	movs r0, #208
	strb r0, [r4, #24]
.L080028DC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080028E4
	.thumb_func
sub_080028E4:
	ldrb r0, [r0, #24]
	cmp r0, #233
	beq .L080028EE
	movs r0, #0
	b .L080028F0
.L080028EE:
	movs r0, #1
.L080028F0:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080028F4
	.thumb_func
sub_080028F4:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrb r0, [r2, #24]
	cmp r0, #224
	beq .L0800290C
	cmp r0, #224
	blt .L0800291C
	cmp r0, #232
	bgt .L0800291C
	cmp r0, #231
	blt .L0800291C
	b .L0800297C
.L0800290C:
	movs r1, #0
	movs r0, #225
	strb r0, [r2, #24]
	str r1, [r2, #4]
	movs r0, #128
	lsls r0, r0, #13
	str r0, [r2, #0]
	b .L0800296E
.L0800291C:
	movs r3, #3
	ldrb r5, [r2, #30]
	movs r6, #1
	ldr r4, [pc, #84]
.L08002924:
	ldrh r0, [r4, #0]
	adds r1, r0, #0
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq .L08002938
	ldr r0, [r2, #4]
	cmp r1, r0
	bne .L0800290C
.L08002938:
	subs r4, #2
	subs r3, #1
	cmp r3, #0
	bne .L08002924
	ldrb r0, [r2, #24]
	adds r0, #1
	strb r0, [r2, #24]
	ldr r1, [r2, #0]
	ldrh r0, [r2, #0]
	str r0, [r2, #4]
	cmp r1, #0
	bne .L08002966
	ldr r0, [r2, #40]
	adds r1, r0, #0
	adds r1, #172
	adds r0, #173
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldrb r1, [r1, #0]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r0, #5
	str r0, [r2, #0]
.L08002966:
	ldr r0, [r2, #0]
	lsrs r0, r0, #5
	str r0, [r2, #0]
.L0800296C:
	ldrh r1, [r2, #0]
.L0800296E:
	adds r0, r2, #0
	bl sub_080027D4
	b .L080029D4
	movs r0, r0
	lsls r6, r4, #4
	lsls r0, r0, #16
.L0800297C:
	movs r3, #3
	ldrb r5, [r2, #30]
	movs r6, #1
	ldr r4, [pc, #64]
.L08002984:
	ldrh r0, [r4, #0]
	adds r1, r0, #0
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq .L08002998
	ldr r0, [r2, #4]
	cmp r1, r0
	bne .L080029C8
.L08002998:
	subs r4, #2
	subs r3, #1
	cmp r3, #0
	bne .L08002984
	ldrb r0, [r2, #24]
	adds r0, #1
	strb r0, [r2, #24]
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #233
	beq .L080029D2
	ldr r0, [r2, #40]
	adds r1, r0, #0
	adds r1, #174
	adds r0, #175
	ldrb r0, [r0, #0]
	lsls r0, r0, #8
	ldrb r1, [r1, #0]
	orrs r0, r1
	str r0, [r2, #0]
	str r0, [r2, #4]
	b .L0800296C
	lsls r6, r4, #4
	lsls r0, r0, #16
.L080029C8:
	adds r0, r2, #0
	bl sub_080023B0
	movs r0, #113
	b .L080029D4
.L080029D2:
	movs r0, #0
.L080029D4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080029DC
	.thumb_func
sub_080029DC:
	mov r2, pc
	lsrs r2, r2, #24
	movs r1, #12
	cmp r2, #2
	beq .L080029EE
	movs r1, #13
	cmp r2, #8
	beq .L080029EE
	movs r1, #4
.L080029EE:
	subs r0, r0, r1
	bgt .L080029EE
	bx lr

	.thumb
	.align 1, 0
	.global sub_080029F4
	.thumb_func
sub_080029F4:
	push {r4, r5, lr}
	movs r2, #0
	ldr r3, [pc, #44]
	ldrh r1, [r3, #0]
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	beq .L08002A18
	ldr r5, [pc, #36]
	movs r4, #128
.L08002A08:
	adds r2, #1
	cmp r2, r5
	bgt .L08002A18
	ldrh r1, [r3, #0]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	bne .L08002A08
.L08002A18:
	movs r0, #150
	lsls r0, r0, #2
	bl sub_080029DC
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000128
	.4byte 0x0000795C

	.thumb
	.align 1, 0
	.global sub_08002A30
	.thumb_func
sub_08002A30:
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r4, [pc, #32]
	movs r0, #150
	lsls r0, r0, #1
	adds r6, r4, r0
.L08002A3C:
	adds r0, r4, #0
	bl sub_0800060C
	adds r4, #100
	cmp r4, r6
	bls .L08002A3C
	cmp r5, #2
	beq .L08002A74
	cmp r5, #2
	bhi .L08002A5C
	cmp r5, #1
	beq .L08002A66
	b .L08002B2E
	movs r0, r0
	subs r2, #52
	lsls r0, r0, #12
.L08002A5C:
	cmp r5, #3
	beq .L08002A94
	cmp r5, #4
	beq .L08002AD8
	b .L08002B2E
.L08002A66:
	ldr r4, [pc, #8]
	adds r0, r4, #0
	movs r1, #120
	b .L08002AC4
	movs r0, r0
	subs r2, #52
	lsls r0, r0, #12
.L08002A74:
	ldr r4, [pc, #24]
	adds r0, r4, #0
	movs r1, #80
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r4, #0
	bl sub_08000604
	adds r4, #100
	adds r0, r4, #0
	movs r1, #160
	b .L08002AC4
	subs r2, #52
	lsls r0, r0, #12
.L08002A94:
	ldr r4, [pc, #60]
	adds r0, r4, #0
	movs r1, #60
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r4, #0
	bl sub_08000604
	adds r5, r4, #0
	adds r5, #100
	adds r0, r5, #0
	movs r1, #120
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r5, #0
	bl sub_08000604
	adds r4, #200
	adds r0, r4, #0
	movs r1, #180
.L08002AC4:
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r4, #0
	bl sub_08000604
	b .L08002B2E
	subs r2, #52
	lsls r0, r0, #12
.L08002AD8:
	ldr r4, [pc, #112]
	adds r0, r4, #0
	movs r1, #48
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r4, #0
	bl sub_08000604
	adds r5, r4, #0
	adds r5, #100
	adds r0, r5, #0
	movs r1, #96
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r5, #0
	bl sub_08000604
	adds r5, #100
	adds r0, r5, #0
	movs r1, #144
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r5, #0
	bl sub_08000604
	movs r0, #150
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r0, r4, #0
	movs r1, #192
	movs r2, #80
	movs r3, #0
	bl sub_08000684
	adds r0, r4, #0
	bl sub_08000604
.L08002B2E:
	ldr r4, [pc, #28]
	movs r0, #150
	lsls r0, r0, #1
	adds r5, r4, r0
.L08002B36:
	adds r0, r4, #0
	bl sub_08000408
	adds r4, #100
	cmp r4, r5
	bls .L08002B36
	bl sub_080043B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03003A34

	.thumb
	.align 1, 0
	.global sub_08002B50
	.thumb_func
sub_08002B50:
	ldr r3, [pc, #68]
	ldr r2, [r3, #0]
	cmp r2, #0
	bne .L08002B94
	ldr r1, [pc, #64]
	adds r0, r1, #0
	adds r0, #20
	str r0, [r1, #12]
	str r0, [r1, #16]
	adds r0, #64
	str r0, [r1, #52]
	adds r0, #16
	str r0, [r1, #56]
	adds r0, #16
	str r0, [r1, #60]
	adds r0, #16
	str r0, [r1, #64]
	adds r0, #16
	str r0, [r1, #68]
	adds r0, #16
	str r0, [r1, #72]
	adds r0, #16
	str r0, [r1, #76]
	adds r0, #16
	str r0, [r1, #80]
	strb r2, [r1, #4]
	str r2, [r1, #8]
	movs r0, #255
	strb r0, [r1, #5]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0]
	movs r0, #1
	str r0, [r3, #0]
.L08002B94:
	bx lr
	.2byte 0x0000
	.4byte 0x03005898
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_08002BA0
	.thumb_func
sub_08002BA0:
	ldr r1, [pc, #4]
	str r0, [r1, #8]
	bx lr
	.2byte 0x0000
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_08002BAC
	.thumb_func
sub_08002BAC:
	push {r4, lr}
	ldr r2, [pc, #68]
	movs r1, #1
	strh r1, [r2, #0]
	subs r2, #212
	movs r1, #0
	strh r1, [r2, #0]
	ldr r4, [pc, #60]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r4, #0]
	ldrh r1, [r4, #0]
	movs r3, #128
	lsls r3, r3, #7
	adds r2, r3, #0
	orrs r1, r2
	orrs r1, r0
	strh r1, [r4, #0]
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldrh r1, [r4, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08002BEE
	ldrh r1, [r4, #0]
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	beq .L08002BFC
.L08002BEE:
	movs r0, #1
	b .L08002BFE
	movs r0, r0
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002BFC:
	movs r0, #0
.L08002BFE:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08002C04
	.thumb_func
sub_08002C04:
	push {r4, r5, lr}
	sub sp, #80
	ldr r2, [pc, #48]
	movs r1, #1
	strh r1, [r2, #0]
	subs r2, #212
	movs r1, #0
	strh r1, [r2, #0]
	ldr r3, [pc, #40]
	movs r2, #128
	lsls r2, r2, #6
	adds r1, r2, #0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r4, #128
	lsls r4, r4, #7
	adds r2, r4, #0
	orrs r1, r2
	orrs r1, r0
	strh r1, [r3, #0]
	ldrh r1, [r3, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08002C44
	ldrh r1, [r3, #0]
	b .L08002C78
	movs r0, r0
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002C44:
	ldr r4, [pc, #116]
	ldr r5, [pc, #120]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002094
	ldr r0, [pc, #112]
	ldr r0, [r0, #8]
	cmp r0, #0
	beq .L08002C62
	bl _call_via_r0
	cmp r0, #0
	bne .L08002C62
	b .L08002E94
.L08002C62:
	ldr r0, [pc, #100]
	ldr r0, [r0, #0]
	bl sub_08002A30
	ldr r2, [pc, #96]
	ldrh r1, [r2, #0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq .L08002C44
	ldrh r1, [r2, #0]
.L08002C78:
	movs r0, #128
	ands r0, r1
	cmp r0, #0
	bne .L08002C44
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r4, [pc, #64]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08002CE8
	ldr r1, [pc, #64]
	movs r0, #6
	bl SetIntrHandler
	movs r0, #6
	bl sub_08001FA0
	ldr r1, [pc, #56]
	ldr r2, [pc, #56]
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	ldr r1, [pc, #48]
	movs r0, #192
	strh r0, [r1, #0]
	b .L08002CF6
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r2, r5, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	adds r1, #105
	lsrs r0, r0, #32
	lsls r4, r1, #4
	lsls r0, r0, #16
	strh r0, [r4, #30]
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08002CE8:
	ldr r1, [pc, #84]
	movs r0, #7
	bl SetIntrHandler
	movs r0, #7
	bl sub_08001FA0
.L08002CF6:
	ldr r2, [pc, #76]
	movs r1, #5
	ldrsb r1, [r2, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq .L08002D06
	b .L08002DFE
.L08002D06:
	adds r4, r2, #0
.L08002D08:
	bl VBlankIntrWait
	ldr r0, [pc, #56]
	ldr r1, [pc, #60]
	bl sub_08002094
	ldr r0, [pc, #56]
	ldr r0, [r0, #0]
	cmp r0, #1
	bhi .L08002D8A
	ldr r0, [r4, #8]
	cmp r0, #0
	beq .L08002DEA
	bl _call_via_r0
	cmp r0, #0
	bne .L08002D7C
	ldr r0, [pc, #40]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L08002D58
	movs r0, #6
	bl ClearIntrHandler
	b .L08002D5E
	movs r0, r0
	adds r1, #105
	lsrs r0, r0, #32
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
.L08002D58:
	movs r0, #7
	bl ClearIntrHandler
.L08002D5E:
	movs r0, #4
	movs r1, #14
	movs r2, #26
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	bl sub_08002A30
	movs r0, #0
	strb r0, [r4, #4]
	movs r0, #255
	strb r0, [r4, #5]
	movs r0, #0
	b .L08002F14
.L08002D7C:
	movs r0, #4
	movs r1, #15
	movs r2, #26
	movs r3, #0
	bl sub_080049D4
	b .L08002DEA
.L08002D8A:
	movs r0, #4
	movs r1, #14
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #12
	movs r1, #19
	movs r2, #6
	movs r3, #0
	bl sub_080049D4
	ldr r0, [pc, #40]
	ldrh r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08002DEA
	ldr r0, [pc, #32]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L08002DD4
	movs r0, #4
	movs r1, #15
	movs r2, #22
	movs r3, #0
	bl sub_080049D4
	b .L08002DDE
	lsls r0, r5, #4
	lsls r0, r0, #16
	ldr r4, [r4, r2]
	lsls r0, r0, #12
.L08002DD4:
	movs r0, #4
	movs r1, #15
	ldr r2, [pc, #68]
	bl sub_08004914
.L08002DDE:
	ldr r1, [pc, #68]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #120
	bhi .L08002EA6
.L08002DEA:
	ldr r0, [pc, #60]
	ldr r0, [r0, #0]
	bl sub_08002A30
	movs r1, #5
	ldrsb r1, [r4, r1]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	beq .L08002D08
.L08002DFE:
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r0, [pc, #32]
	ldrb r0, [r0, #5]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	bne .L08002E34
	ldr r1, [pc, #24]
	movs r0, #6
	bl SetIntrHandler
	b .L08002E3C
	adds r1, #136
	lsrs r5, r7, #32
	ldr r0, [r4, r2]
	lsls r0, r0, #12
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
	adds r2, #153
	lsrs r0, r0, #32
.L08002E34:
	ldr r1, [pc, #80]
	movs r0, #7
	bl SetIntrHandler
.L08002E3C:
	movs r0, #0
	bl sub_08002A30
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r2, [pc, #60]
	movs r0, #1
	negs r0, r0
	str r0, [r2, #0]
	ldr r1, [pc, #56]
	movs r0, #0
	strh r0, [r1, #0]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L08002ED0
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	beq .L08002EF0
	add r4, sp, #64
	movs r5, #111
.L08002E70:
	strh r5, [r4, #0]
	bl VBlankIntrWait
	adds r0, r4, #0
	mov r1, sp
	bl sub_08002F64
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	bne .L08002E70
	b .L08002EF0
	adds r2, #153
	lsrs r0, r0, #32
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
.L08002E94:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #0
	bl sub_08002A30
	movs r0, #0
	b .L08002F14
.L08002EA6:
	movs r0, #0
	bl sub_08002A30
	ldr r0, [pc, #28]
	movs r1, #0
	strb r1, [r0, #4]
	movs r1, #255
	strb r1, [r0, #5]
	bl sub_08002F28
	movs r0, #4
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	b .L08002F14
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L08002ED0:
	mov r0, sp
	ldrh r0, [r0, #0]
	cmp r0, #111
	beq .L08002EF0
	mov r4, sp
.L08002EDA:
	movs r0, #1
	movs r1, #7
	bl IntrWait
	add r0, sp, #64
	mov r1, sp
	bl sub_08002F64
	ldrh r0, [r4, #0]
	cmp r0, #111
	bne .L08002EDA
.L08002EF0:
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	ldr r1, [pc, #28]
	movs r0, #1
	negs r0, r0
	str r0, [r1, #0]
	ldr r1, [pc, #24]
	movs r0, #0
	strh r0, [r1, #0]
	ldr r1, [pc, #24]
	movs r0, #0
	bl SetIntrHandler
	movs r0, #1
.L08002F14:
	add sp, #80
	pop {r4, r5}
	pop {r1}
	bx r1
	.4byte 0x03000D38
	.4byte 0x0400012A
	.4byte 0x080033CD

	.thumb
	.align 1, 0
	.global sub_08002F28
	.thumb_func
sub_08002F28:
	push {lr}
	ldr r0, [pc, #20]
	ldrb r0, [r0, #5]
	lsls r0, r0, #24
	asrs r0, r0, #24
	cmp r0, #0
	bne .L08002F44
	movs r0, #6
	bl ClearIntrHandler
	b .L08002F4A
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L08002F44:
	movs r0, #7
	bl ClearIntrHandler
.L08002F4A:
	movs r0, #0
	bl sub_08002A30
	ldr r0, [pc, #12]
	movs r1, #0
	strb r1, [r0, #4]
	movs r1, #255
	strb r1, [r0, #5]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_08002F64
	.thumb_func
sub_08002F64:
	push {r4, r5, r6, r7, lr}
	adds r6, r1, #0
	ldr r4, [pc, #176]
	ldrb r3, [r4, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #0]
	strh r1, [r2, #0]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #2]
	strh r1, [r2, #2]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #4]
	strh r1, [r2, #4]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #6]
	strh r1, [r2, #6]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #8]
	strh r1, [r2, #8]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #10]
	strh r1, [r2, #10]
	ldr r2, [r4, #16]
	ldrh r1, [r0, #12]
	strh r1, [r2, #12]
	ldr r1, [r4, #16]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	movs r7, #1
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	beq .L08002FF0
	lsls r0, r3, #2
	adds r0, #68
	adds r2, r0, r4
	lsls r0, r3, #4
	adds r1, r0, r6
.L08002FB2:
	ldr r0, [r2, #0]
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #2]
	strh r0, [r1, #2]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #4]
	strh r0, [r1, #4]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #6]
	strh r0, [r1, #6]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #10]
	strh r0, [r1, #10]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #12]
	strh r0, [r1, #12]
	ldr r0, [r2, #0]
	ldrh r0, [r0, #14]
	strh r0, [r1, #14]
	subs r2, #4
	subs r1, #16
	subs r3, #1
	movs r0, #1
	negs r0, r0
	cmp r3, r0
	bne .L08002FB2
.L08002FF0:
	bl sub_0800347C
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08003014
	ldr r0, [pc, #36]
	ldrh r0, [r0, #0]
	movs r4, #4
	ands r4, r0
	bl sub_0800347C
	lsls r0, r0, #24
	lsls r4, r4, #16
	lsrs r4, r4, #16
	lsrs r0, r0, #24
	cmp r4, r0
	beq .L08003014
	movs r7, #0
.L08003014:
	movs r4, #0
	ldr r5, [pc, #12]
	b .L08003058
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	.2byte 0xffff @ .raw
	movs r0, r0
.L08003028:
	cmp r4, #1
	beq .L08003042
	cmp r4, #1
	bcc .L0800303A
	cmp r4, #2
	beq .L08003046
	cmp r4, #3
	beq .L0800304E
	b .L08003056
.L0800303A:
	ldrh r0, [r6, #0]
	cmp r0, r5
	bne .L08003056
	b .L08003054
.L08003042:
	ldrh r2, [r6, #16]
	b .L08003050
.L08003046:
	ldrh r0, [r6, #32]
	cmp r0, r5
	bne .L08003056
	b .L08003054
.L0800304E:
	ldrh r2, [r6, #48]
.L08003050:
	cmp r2, r5
	bne .L08003056
.L08003054:
	movs r7, #0
.L08003056:
	adds r4, #1
.L08003058:
	bl sub_0800314C
	cmp r4, r0
	bcc .L08003028
	cmp r7, #1
	bne .L08003070
	ldr r1, [pc, #4]
	movs r0, #0
	b .L08003076
	movs r0, r0
	ldr r4, [r2, r2]
	lsls r0, r0, #12
.L08003070:
	ldr r1, [pc, #24]
	ldr r0, [r1, #0]
	adds r0, #1
.L08003076:
	str r0, [r1, #0]
	ldr r0, [pc, #16]
	ldr r0, [r0, #0]
	cmp r0, #119
	bls .L0800310C
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L08003094
	ldr r4, [r2, r2]
	lsls r0, r0, #12
.L08003090:
	bl VBlankIntrWait
.L08003094:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08003090
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
	ldr r2, [pc, #40]
	movs r0, #0
	movs r1, #6
	bl sub_08004914
	ldr r2, [pc, #36]
	movs r0, #0
	movs r1, #13
	bl sub_08004914
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #14
	bl sub_08004914
.L080030F2:
	b .L080030F2
	lsls r0, r2, #1
	lsls r0, r0, #16
	movs r0, r1
	lsls r0, r0, #16
	subs r1, r0, #4
	movs r0, r0
	adds r1, #160
	lsrs r5, r7, #32
	adds r1, #192
	lsrs r5, r7, #32
	adds r1, #224
	lsrs r5, r7, #32
.L0800310C:
	ldr r2, [pc, #48]
	ldr r1, [r2, #0]
	movs r0, #1
	negs r0, r0
	cmp r1, r0
	bne .L08003138
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	str r1, [r2, #12]
	str r0, [r2, #16]
	movs r0, #5
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne .L08003138
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
.L08003138:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D38
	.4byte 0x04000128
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_0800314C
	.thumb_func
sub_0800314C:
	ldr r0, [pc, #4]
	ldrb r0, [r0, #4]
	bx lr
	.2byte 0x0000
	.4byte 0x03000D38
	.4byte 0x79404802
	.4byte 0x16000600
	.4byte 0x00004770
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_08003168
	.thumb_func
sub_08003168:
	push {r4, r5, r6, lr}
	ldr r3, [pc, #188]
	movs r1, #0
	str r1, [r3, #0]
	ldr r0, [pc, #184]
	str r1, [r0, #0]
	ldr r4, [pc, #184]
	ldrh r1, [r4, #0]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #16
	lsrs r1, r0, #16
	cmp r1, #0
	bne .L08003188
	ldr r0, [pc, #172]
	strh r1, [r0, #0]
.L08003188:
	ldrh r1, [r4, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	bne .L080031E4
	ldr r2, [pc, #164]
	ldrh r0, [r2, #0]
	ldr r1, [pc, #164]
	cmp r0, r1
	bne .L080031A2
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031A2:
	ldr r0, [pc, #156]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031B0
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031B0:
	ldr r0, [pc, #144]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031BE
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031BE:
	ldr r0, [pc, #136]
	ldrh r0, [r0, #0]
	cmp r0, r1
	bne .L080031CC
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
.L080031CC:
	ldrh r0, [r2, #0]
	cmp r0, #20
	bne .L080031E4
	ldr r2, [pc, #120]
	ldrh r0, [r4, #0]
	lsrs r0, r0, #4
	movs r1, #3
	ands r0, r1
	strb r0, [r2, #5]
	ldrb r0, [r3, #0]
	adds r0, #1
	strb r0, [r2, #4]
.L080031E4:
	ldr r6, [pc, #104]
	ldr r1, [pc, #84]
	adds r0, r1, #0
	strh r0, [r6, #0]
	ldr r0, [pc, #56]
	ldr r0, [r0, #0]
	cmp r0, #1
	bls .L08003270
	ldr r4, [pc, #56]
	ldrh r1, [r4, #0]
	movs r5, #4
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldr r2, [pc, #80]
	movs r0, #5
	movs r1, #15
	bl sub_08004914
	ldr r1, [pc, #72]
	movs r0, #8
	ldrh r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0800325C
	movs r0, #20
	strh r0, [r6, #0]
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	b .L08003284
	movs r0, r0
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	ldr r0, [r4, r2]
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	udf #173
	movs r0, r0
	lsls r2, r4, #4
	lsls r0, r0, #16
	lsls r4, r4, #4
	lsls r0, r0, #16
	lsls r6, r4, #4
	lsls r0, r0, #16
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	adds r2, #0
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0800325C:
	ldrh r1, [r4, #0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldrh r0, [r4, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r4, #0]
	b .L08003284
.L08003270:
	ldr r2, [pc, #28]
	ldrh r1, [r2, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne .L0800328A
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
.L08003284:
	ldr r1, [pc, #12]
	movs r0, #192
	strh r0, [r1, #0]
.L0800328A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x04000128
	.4byte 0x0400010E

	.thumb
	.align 1, 0
	.global sub_08003298
	.thumb_func
sub_08003298:
	push {r4, r5, r6, r7, lr}
	ldr r2, [pc, #104]
	ldrb r4, [r2, #4]
	movs r1, #5
	ldrsb r1, [r2, r1]
	cmp r1, #0
	bne .L080032AA
	ldr r0, [pc, #96]
	strh r1, [r0, #0]
.L080032AA:
	ldr r0, [pc, #96]
	ldrh r1, [r0, #0]
	movs r0, #64
	ands r0, r1
	cmp r0, #0
	beq .L080032C4
	ldr r0, [r2, #8]
	cmp r0, #0
	beq .L080032C4
	bl _call_via_r0
	cmp r0, #0
	beq .L080033B8
.L080032C4:
	ldr r0, [pc, #60]
	ldr r1, [r0, #0]
	movs r2, #1
	negs r2, r2
	adds r3, r0, #0
	cmp r1, r2
	ble .L08003314
	subs r4, #1
	cmp r4, r2
	beq .L08003342
	adds r5, r3, #0
	adds r6, r2, #0
	lsls r0, r4, #1
	ldr r1, [pc, #48]
	adds r3, r0, r1
	lsls r0, r4, #2
	adds r0, #52
	adds r2, r0, r5
.L080032E8:
	ldr r0, [r5, #0]
	ldr r1, [r2, #0]
	subs r2, #4
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	subs r3, #2
	subs r4, #1
	cmp r4, r6
	bne .L080032E8
	ldr r3, [pc, #4]
	b .L08003342
	movs r0, r0
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r6, r1, #4
	lsls r0, r0, #16
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
.L08003314:
	subs r4, #1
	cmp r4, r2
	beq .L08003342
	ldr r7, [pc, #84]
	lsls r0, r4, #1
	ldr r1, [pc, #84]
	adds r5, r0, r1
	adds r6, r2, #0
.L08003324:
	ldrh r0, [r5, #0]
	cmp r0, r7
	beq .L08003338
	ldr r0, [r3, #8]
	cmp r0, #0
	beq .L08003338
	bl _call_via_r0
	cmp r0, #0
	beq .L080033B8
.L08003338:
	subs r5, #2
	subs r4, #1
	ldr r3, [pc, #56]
	cmp r4, r6
	bne .L08003324
.L08003342:
	ldr r0, [r3, #0]
	adds r0, #1
	str r0, [r3, #0]
	cmp r0, #7
	bgt .L08003384
	ldr r2, [pc, #44]
	ldr r1, [r3, #12]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0, #0]
	strh r0, [r2, #0]
	movs r0, #5
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne .L080033B2
	subs r2, #2
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	b .L080033B0
	udf #173
	movs r0, r0
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsrs r0, r7, #20
	lsls r0, r0, #12
	lsls r2, r5, #4
	lsls r0, r0, #16
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08003384:
	movs r0, #1
	negs r0, r0
	str r0, [r3, #0]
	ldr r1, [r3, #52]
	ldr r0, [r3, #68]
	str r0, [r3, #52]
	str r1, [r3, #68]
	ldr r1, [r3, #56]
	ldr r0, [r3, #72]
	str r0, [r3, #56]
	str r1, [r3, #72]
	ldr r1, [r3, #60]
	ldr r0, [r3, #76]
	str r0, [r3, #60]
	str r1, [r3, #76]
	ldr r1, [r3, #64]
	ldr r0, [r3, #80]
	str r0, [r3, #64]
	str r1, [r3, #80]
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	adds r0, r2, #0
.L080033B0:
	strh r0, [r1, #0]
.L080033B2:
	ldr r1, [pc, #20]
	movs r0, #0
	str r0, [r1, #0]
.L080033B8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0400012A
	.4byte 0x0000DEAD
	.4byte 0x030058A0

	.thumb
	.align 1, 0
	.global sub_080033CC
	.thumb_func
sub_080033CC:
	push {lr}
	ldr r1, [pc, #60]
	ldr r0, [r1, #0]
	adds r0, #1
	str r0, [r1, #0]
	cmp r0, #160
	bls .L080033F8
	ldr r2, [pc, #52]
	movs r0, #9
	movs r1, #6
	bl sub_08004914
	ldr r2, [pc, #44]
	movs r0, #1
	movs r1, #13
	bl sub_08004914
	ldr r2, [pc, #40]
	movs r0, #7
	movs r1, #14
	bl sub_08004914
.L080033F8:
	bl GAX_irq
	bl GAX_play
	ldr r1, [pc, #24]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x030058A0
	.4byte 0x083D3218
	.4byte 0x083D3224
	.4byte 0x083D3240
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08003420
	.thumb_func
sub_08003420:
	push {lr}
	ldr r0, [pc, #40]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L08003450
	movs r0, #0
	movs r1, #15
	movs r2, #32
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	b .L08003464
	ldr r0, [r5, r2]
	lsls r0, r0, #12
.L08003450:
	ldr r2, [pc, #28]
	movs r0, #0
	movs r1, #15
	bl sub_08004914
	ldr r2, [pc, #24]
	movs r0, #0
	movs r1, #16
	bl sub_08004914
.L08003464:
	ldr r1, [pc, #16]
	movs r0, #1
	strh r0, [r1, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x083D3250
	.4byte 0x083D3270
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_0800347C
	.thumb_func
sub_0800347C:
	ldr r2, [pc, #12]
	ldrb r0, [r2, #4]
	movs r1, #0
	cmp r0, #0
	beq .L08003488
	ldrb r1, [r2, #5]
.L08003488:
	adds r0, r1, #0
	bx lr
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_08003490
	.thumb_func
sub_08003490:
	movs r1, #0
	ldr r0, [pc, #12]
	ldrb r0, [r0, #4]
	cmp r0, #1
	bls .L0800349C
	movs r1, #1
.L0800349C:
	adds r0, r1, #0
	bx lr
	.4byte 0x03000D38

	.thumb
	.align 1, 0
	.global sub_080034A4
	.thumb_func
sub_080034A4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08002B50
	ldr r4, [pc, #104]
	ldr r0, [pc, #108]
	str r0, [r4, #40]
	adds r1, r4, #0
	adds r1, #75
	movs r0, #1
	strb r0, [r1, #0]
	adds r0, r4, #0
	bl sub_080023B0
	movs r0, #0
	str r0, [sp, #4]
	ldr r7, [pc, #88]
	movs r1, #1
	mov sl, r1
	mov r9, r4
.L080034D4:
	bl VBlankIntrWait
	mov r2, sl
	str r2, [r7, #0]
	movs r1, #1
	mov r3, r9
	ldrb r2, [r3, #29]
.L080034E2:
	adds r0, r2, #0
	asrs r0, r1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq .L08003502
	mov r3, r9
	ldrb r0, [r3, #30]
	asrs r0, r1
	mov r3, sl
	ands r0, r3
	cmp r0, #0
	beq .L08003502
	ldr r0, [r7, #0]
	adds r0, #1
	str r0, [r7, #0]
.L08003502:
	adds r1, #1
	cmp r1, #3
	bls .L080034E2
	ldr r0, [r7, #0]
	bl sub_08002A30
	ldr r0, [r7, #0]
	cmp r0, #1
	bne .L08003530
	movs r0, #4
	movs r1, #14
	ldr r2, [pc, #16]
	bl sub_08004914
	b .L0800353C
	lsrs r4, r1, #24
	lsls r0, r0, #12
	strh r0, [r4, r6]
	lsrs r0, r0, #32
	ldr r4, [r3, r2]
	lsls r0, r0, #12
	adds r2, #144
	lsrs r5, r7, #32
.L08003530:
	movs r0, #4
	movs r1, #14
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
.L0800353C:
	ldr r1, [pc, #20]
	movs r0, #14
	ldrb r2, [r1, #30]
	ands r0, r2
	cmp r0, #0
	beq .L080035C8
	ldrb r0, [r1, #24]
	cmp r0, #0
	beq .L08003558
	cmp r0, #209
	beq .L080035A8
	b .L080035C8
	lsrs r4, r1, #24
	lsls r0, r0, #12
.L08003558:
	ldr r0, [pc, #40]
	ldr r1, [r0, #0]
	adds r1, #1
	str r1, [r0, #0]
	movs r0, #31
	ands r1, r0
	cmp r1, #16
	bls .L08003588
	movs r0, #0
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	b .L080035C8
	movs r0, r0
	ldr r0, [r5, r2]
	lsls r0, r0, #12
.L08003588:
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #16]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #12]
	bl sub_08004914
	b .L080035C8
	movs r0, r0
	adds r2, #168
	lsrs r5, r7, #32
	adds r2, #200
	lsrs r5, r7, #32
.L080035A8:
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #84]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #80]
	bl sub_08004914
.L080035C8:
	ldr r3, [sp, #4]
	cmp r3, #0
	beq .L080035EE
	movs r0, #0
	movs r1, #16
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #0
	movs r1, #15
	ldr r2, [pc, #48]
	bl sub_08004914
	movs r0, #0
	movs r1, #16
	ldr r2, [pc, #40]
	bl sub_08004914
.L080035EE:
	ldr r4, [pc, #40]
	ldr r0, [pc, #40]
	adds r1, r4, #0
	bl sub_08002094
	ldrh r4, [r4, #0]
	movs r0, #2
	mov r8, r0
	movs r6, #2
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq .L08003620
	movs r0, #0
	bl sub_08002A30
	b .L08003742
	adds r2, #80
	lsrs r5, r7, #32
	adds r2, #112
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L08003620:
	movs r5, #8
	adds r0, r5, #0
	ands r0, r4
	cmp r0, #0
	beq .L0800369A
	ldr r4, [pc, #40]
	ldrb r0, [r4, #24]
	cmp r0, #0
	bne .L0800369A
	ldrb r0, [r4, #30]
	cmp r0, #0
	beq .L0800369A
	movs r1, #1
	str r1, [sp, #4]
	bl sub_08316824
	ldrb r1, [r4, #30]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq .L0800365C
	movs r0, #4
	ldr r2, [pc, #8]
	strb r0, [r2, #4]
	b .L0800367E
	movs r0, r0
	lsrs r4, r1, #24
	lsls r0, r0, #12
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L0800365C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08003670
	movs r0, #3
	ldr r3, [pc, #4]
	strb r0, [r3, #4]
	b .L0800367E
	lsrs r0, r7, #20
	lsls r0, r0, #12
.L08003670:
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq .L0800367E
	mov r0, r8
	ldr r1, [pc, #216]
	strb r0, [r1, #4]
.L0800367E:
	movs r0, #0
	movs r1, #15
	movs r2, #25
	movs r3, #0
	bl sub_080049D4
	movs r0, #4
	str r0, [sp, #0]
	ldr r0, [pc, #200]
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	movs r3, #4
	bl sub_08002844
.L0800369A:
	mov r0, r9
	bl sub_080023EC
	mov r0, r9
	bl sub_080028E4
	cmp r0, #0
	bne .L080036AC
	b .L080034D4
.L080036AC:
	bl sub_08002144
	ldr r1, [pc, #176]
	movs r0, #0
	bl SetIntrHandler
	ldr r6, [pc, #172]
	movs r4, #0
	strh r4, [r6, #0]
	ldr r5, [pc, #172]
	strh r4, [r5, #0]
	ldr r1, [pc, #172]
	strh r4, [r1, #0]
	ldr r0, [pc, #172]
	strh r4, [r0, #0]
	strh r4, [r1, #0]
	strh r4, [r0, #0]
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	adds r0, #2
	strh r4, [r0, #0]
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl VBlankIntrWait
	bl sub_08002B50
	ldr r1, [pc, #136]
	movs r0, #1
	strh r0, [r1, #0]
	strh r4, [r6, #0]
	subs r1, #252
	ldr r2, [pc, #132]
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r3, #128
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r5, #0]
	ldrh r0, [r5, #0]
	ldr r2, [pc, #120]
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #0]
	bl VBlankIntrWait
	bl VBlankIntrWait
	movs r0, #6
	bl sub_08001FA0
	ldr r1, [pc, #100]
	movs r0, #6
	bl SetIntrHandler
	ldr r5, [pc, #44]
	movs r1, #0
	strb r4, [r5, #5]
	ldr r0, [pc, #92]
	str r1, [r0, #0]
	movs r0, #0
	bl sub_08002A30
	movs r0, #1
	negs r0, r0
	str r0, [r5, #0]
	ldr r1, [pc, #80]
	movs r0, #0
	bl SetIntrHandler
.L08003742:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000D38
	.4byte 0x03000E0C
	.4byte 0x08005460
	.4byte 0x00013F40
	.4byte 0x08001FF1
	.4byte 0x04000134
	.4byte 0x04000128
	.4byte 0x0400012A
	.4byte 0x04000120
	.4byte 0x04000208
	.4byte 0x000083E0
	.4byte 0x00004003
	.4byte 0x08003299
	.4byte 0x0300589C
	.4byte 0x080033CD

	.thumb
	.align 1, 0
	.global sub_08003790
	.thumb_func
sub_08003790:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [pc, #136]
	movs r2, #0
	strh r2, [r6, #0]
	ldr r5, [pc, #136]
	ldrh r1, [r5, #0]
	ldr r0, [pc, #136]
	ands r0, r1
	strh r0, [r5, #0]
	movs r0, #1
	mov r9, r0
	strh r0, [r6, #0]
	ldr r0, [pc, #128]
	strh r2, [r0, #0]
	ldr r2, [pc, #128]
	movs r1, #128
	lsls r1, r1, #6
	adds r0, r1, #0
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	ldr r3, [pc, #120]
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #0
	mov r8, r0
	str r0, [sp, #0]
	ldr r7, [pc, #108]
	ldr r2, [pc, #112]
	mov r0, sp
	adds r1, r7, #0
	bl CpuSet
	lsls r4, r4, #4
	movs r0, #15
	ldrb r1, [r7, #2]
	ands r0, r1
	orrs r0, r4
	strb r0, [r7, #2]
	movs r0, #12
	str r0, [r7, #20]
	str r0, [r7, #24]
	adds r0, r7, #0
	adds r0, #48
	str r0, [r7, #28]
	adds r0, #24
	str r0, [r7, #32]
	adds r0, #24
	str r0, [r7, #36]
	adds r0, #96
	str r0, [r7, #40]
	movs r3, #144
	lsls r3, r3, #1
	adds r0, r7, r3
	str r0, [r7, #44]
	mov r0, r8
	strh r0, [r6, #0]
	ldrh r0, [r5, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r5, #0]
	mov r1, r9
	strh r1, [r6, #0]
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x04000134
	.4byte 0x04000128
	.4byte 0x00004003
	.4byte 0x03000970
	.4byte 0x05000060

	.thumb
	.align 1, 0
	.global sub_08003848
	.thumb_func
sub_08003848:
	ldr r1, [pc, #16]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08003858
	movs r0, #128
	ldrb r2, [r1, #6]
	orrs r0, r2
	strb r0, [r1, #6]
.L08003858:
	bx lr
	.2byte 0x0000
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_08003860
	.thumb_func
sub_08003860:
	ldr r3, [pc, #48]
	movs r0, #0
	strh r0, [r3, #0]
	ldr r2, [pc, #48]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #48]
	ands r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r1, [pc, #40]
	ldr r2, [pc, #44]
	adds r0, r2, #0
	strh r0, [r1, #0]
	subs r1, #28
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	adds r1, #246
	movs r0, #192
	strh r0, [r1, #0]
	ldr r1, [pc, #32]
	movs r0, #127
	ldrb r2, [r1, #6]
	ands r0, r2
	strb r0, [r1, #6]
	bx lr
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x04000128
	.4byte 0x00002003
	.4byte 0x0000ABFB
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_080038B0
	.thumb_func
sub_080038B0:
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	ldr r5, [pc, #20]
	ldr r7, [r5, #0]
	ldr r6, [pc, #20]
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq .L0800393A
	cmp r0, #1
	bgt .L080038D4
	cmp r0, #0
	beq .L080038DA
	b .L0800397E
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsrs r0, r6, #5
	lsls r0, r0, #12
.L080038D4:
	cmp r0, #2
	beq .L08003978
	b .L0800397E
.L080038DA:
	movs r1, #48
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne .L08003934
	movs r0, #136
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne .L0800397E
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	cmp r1, #0
	bne .L08003934
	ldr r0, [r6, #20]
	cmp r0, #12
	bne .L08003934
	ldr r3, [pc, #88]
	strh r1, [r3, #0]
	ldr r2, [pc, #88]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #88]
	ands r0, r1
	strh r0, [r2, #0]
	ldrh r0, [r2, #0]
	movs r1, #64
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldrb r1, [r5, #1]
	movs r0, #65
	negs r0, r0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, [pc, #64]
	ldr r0, [pc, #64]
	str r0, [r1, #0]
	adds r1, #246
	movs r0, #192
	strh r0, [r1, #0]
	strb r4, [r6, #0]
.L08003934:
	ldr r1, [pc, #56]
	movs r0, #1
	strb r0, [r1, #1]
.L0800393A:
	ldr r1, [pc, #52]
	movs r0, #240
	ldrb r2, [r1, #2]
	ands r0, r2
	cmp r0, #0
	beq .L08003978
	movs r0, #64
	ldrb r2, [r1, #6]
	ands r0, r2
	cmp r0, #0
	bne .L08003978
	ldrb r0, [r1, #8]
	cmp r0, #7
	bhi .L08003974
	adds r0, #1
	strb r0, [r1, #8]
	b .L08003978
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #8
	lsls r0, r0, #16
	.2byte 0xff7f @ .raw
	movs r0, r0
	lsls r4, r1, #4
	lsls r0, r0, #16
	add r3, sp, #1004
	movs r0, r0
	lsrs r0, r6, #5
	lsls r0, r0, #12
.L08003974:
	movs r0, #2
	strb r0, [r1, #1]
.L08003978:
	mov r0, ip
	bl sub_08003A9C
.L0800397E:
	ldr r2, [pc, #48]
	ldrb r0, [r2, #11]
	adds r0, #1
	strb r0, [r2, #11]
	ldrb r1, [r2, #6]
	movs r3, #16
	ands r3, r1
	ldrb r0, [r2, #3]
	orrs r3, r0
	movs r0, #32
	ands r0, r1
	orrs r3, r0
	movs r0, #64
	ands r0, r1
	orrs r3, r0
	ldrb r1, [r2, #2]
	lsrs r0, r1, #4
	lsls r0, r0, #8
	ldrb r2, [r2, #0]
	cmp r2, #8
	bne .L080039B4
	movs r1, #128
	orrs r1, r0
	orrs r1, r3
	b .L080039B8
	lsrs r0, r6, #5
	lsls r0, r0, #12
.L080039B4:
	adds r1, r3, #0
	orrs r1, r0
.L080039B8:
	ldr r2, [pc, #36]
	ldrb r0, [r2, #7]
	cmp r0, #0
	beq .L080039C6
	movs r0, #128
	lsls r0, r0, #5
	orrs r1, r0
.L080039C6:
	ldrb r2, [r2, #8]
	lsrs r0, r2, #3
	lsls r2, r0, #15
	lsls r0, r7, #26
	lsrs r0, r0, #30
	cmp r0, #3
	bls .L080039E4
	movs r0, #128
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b .L080039E8
	movs r0, r0
	lsrs r0, r6, #5
	lsls r0, r0, #12
.L080039E4:
	adds r0, r1, #0
	orrs r0, r2
.L080039E8:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080039F0
	.thumb_func
sub_080039F0:
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r4, [pc, #152]
	ldr r3, [r4, #28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	movs r2, #17
	negs r2, r2
	ldrb r5, [r3, #1]
	ands r2, r5
	orrs r2, r1
	strb r2, [r3, #1]
	ldr r5, [r4, #28]
	ldr r1, [pc, #132]
	movs r3, #1
	adds r2, r3, #0
	ldrb r1, [r1, #3]
	ands r2, r1
	lsls r2, r2, #5
	movs r1, #33
	negs r1, r1
	ldrb r7, [r5, #1]
	ands r1, r7
	orrs r1, r2
	strb r1, [r5, #1]
	ldr r2, [r4, #28]
	ldrb r5, [r4, #6]
	lsls r1, r5, #25
	lsrs r1, r1, #31
	ands r3, r1
	lsls r3, r3, #6
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #1]
	ands r1, r7
	orrs r1, r3
	strb r1, [r2, #1]
	ldr r2, [r4, #28]
	ldrb r1, [r4, #11]
	strb r1, [r2, #0]
	ldr r3, [r4, #28]
	ldrb r2, [r4, #2]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	ldrb r2, [r4, #3]
	eors r2, r1
	movs r1, #15
	ands r2, r1
	movs r1, #16
	negs r1, r1
	ldrb r5, [r3, #1]
	ands r1, r5
	orrs r1, r2
	strb r1, [r3, #1]
	ldr r1, [r4, #28]
	strh r6, [r1, #2]
	ldr r1, [r4, #28]
	adds r1, #4
	ldr r2, [pc, #48]
	bl CpuSet
	movs r2, #0
	ldr r1, [r4, #28]
.L08003A70:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r6, r6, r0
	adds r2, #1
	cmp r2, #9
	bls .L08003A70
	ldr r0, [r4, #28]
	mvns r1, r6
	subs r1, #12
	strh r1, [r0, #2]
	movs r0, #1
	strb r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000970
	.4byte 0x03000AF0
	.4byte 0x04000004

	.thumb
	.align 1, 0
	.global sub_08003A9C
	.thumb_func
sub_08003A9C:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r9, r0
	ldr r0, [pc, #280]
	movs r1, #0
	mov r8, r1
	bl _call_via_r0
	lsls r0, r0, #24
	ldr r2, [pc, #272]
	mov r3, r8
	strb r3, [r2, #3]
	movs r1, #65
	negs r1, r1
	ldrb r7, [r2, #6]
	ands r1, r7
	strb r1, [r2, #6]
	cmp r0, #0
	beq .L08003B4E
	movs r4, #3
	adds r6, r2, #0
	movs r0, #13
	negs r0, r0
	mov sl, r0
.L08003AD4:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [r6, #44]
	adds r1, r1, r0
	mov r8, r1
	movs r3, #0
	movs r2, #0
	subs r1, r4, #1
	str r1, [sp, #4]
	mov r1, r8
.L08003AEA:
	ldrh r0, [r1, #0]
	adds r1, #2
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #9
	bls .L08003AEA
	lsls r0, r3, #16
	asrs r0, r0, #16
	mov r5, r8
	adds r5, #4
	cmp r0, sl
	bne .L08003B3A
	movs r0, #1
	lsls r0, r4
	ldrb r2, [r6, #3]
	orrs r0, r2
	strb r0, [r6, #3]
	ldrb r2, [r6, #6]
	lsls r1, r2, #28
	lsrs r1, r1, #28
	mov r3, r8
	ldrb r3, [r3, #1]
	lsls r0, r3, #26
	lsrs r0, r0, #31
	lsls r0, r4
	orrs r0, r1
	movs r1, #15
	ands r0, r1
	movs r7, #16
	negs r7, r7
	adds r1, r7, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r6, #6]
	lsls r1, r4, #4
	add r1, r9
	adds r0, r5, #0
	ldr r2, [pc, #148]
	bl CpuSet
.L08003B3A:
	movs r0, #0
	str r0, [sp, #0]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, [pc, #140]
	bl CpuSet
	ldr r4, [sp, #4]
	cmp r4, #0
	bge .L08003AD4
.L08003B4E:
	ldr r5, [pc, #120]
	ldrb r2, [r5, #2]
	lsls r0, r2, #28
	lsrs r0, r0, #28
	ldrb r4, [r5, #3]
	orrs r0, r4
	movs r1, #15
	ands r0, r1
	movs r1, #16
	negs r1, r1
	ands r1, r2
	orrs r1, r0
	lsrs r2, r1, #4
	lsls r0, r1, #28
	lsrs r0, r0, #28
	orrs r2, r0
	lsls r2, r2, #4
	movs r3, #15
	ands r3, r1
	orrs r3, r2
	strb r3, [r5, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq .L08003C04
	ldrb r0, [r5, #0]
	cmp r0, #8
	bne .L08003BD4
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq .L08003BA2
	lsls r0, r4, #24
	lsrs r0, r0, #24
	lsrs r1, r3, #4
	cmp r0, r1
	bne .L08003BA2
	movs r0, #16
	ldrb r1, [r5, #6]
	orrs r0, r1
	strb r0, [r5, #6]
.L08003BA2:
	ldr r4, [pc, #36]
	ldrb r5, [r4, #6]
	lsls r2, r5, #28
	lsrs r2, r2, #28
	movs r0, #14
	ldrb r7, [r4, #2]
	lsrs r3, r7, #4
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne .L08003BEC
	movs r0, #64
	orrs r0, r5
	strb r0, [r4, #6]
	b .L08003BEC
	movs r0, r0
	strb r4, [r3, #4]
	lsrs r1, r6, #32
	lsrs r0, r6, #5
	lsls r0, r0, #12
	movs r4, r0
	lsls r0, r0, #16
	movs r4, r0
	lsls r0, r0, #20
.L08003BD4:
	mov r2, r8
	ldrb r2, [r2, #1]
	lsls r0, r2, #25
	lsrs r0, r0, #31
	ands r1, r0
	lsls r1, r1, #6
	movs r0, #65
	negs r0, r0
	ldrb r3, [r5, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r5, #6]
.L08003BEC:
	ldr r2, [pc, #40]
	mov r7, r8
	ldrb r7, [r7, #1]
	lsls r1, r7, #27
	lsrs r1, r1, #31
	lsls r1, r1, #5
	movs r0, #33
	negs r0, r0
	ldrb r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #6]
.L08003C04:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #3]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.4byte 0x03000970

	.thumb
	.align 1, 0
	.global sub_08003C1C
	.thumb_func
sub_08003C1C:
	push {r4, r5, lr}
	ldr r4, [pc, #88]
	ldrb r5, [r4, #0]
	cmp r5, #0
	beq .L08003C88
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq .L08003CA2
	movs r0, #128
	ldrb r1, [r4, #6]
	ands r0, r1
	cmp r0, #0
	beq .L08003CA2
	movs r0, #1
	negs r0, r0
	str r0, [r4, #24]
	ldr r1, [r4, #40]
	ldr r0, [r4, #36]
	str r0, [r4, #40]
	str r1, [r4, #36]
	ldrb r0, [r4, #4]
	cmp r0, #0
	beq .L08003C58
	ldr r1, [r4, #32]
	ldr r0, [r4, #28]
	str r0, [r4, #32]
	str r1, [r4, #28]
	movs r0, #0
	strb r0, [r4, #4]
	str r0, [r4, #20]
.L08003C58:
	ldr r2, [pc, #32]
	ldr r0, [r2, #0]
	lsls r0, r0, #25
	lsrs r0, r0, #31
	strb r0, [r4, #7]
	ldr r0, [pc, #28]
	strh r0, [r2, #2]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #20]
	movs r0, #192
	strh r0, [r1, #0]
	b .L08003CA2
	movs r0, r0
	lsrs r0, r6, #5
	lsls r0, r0, #12
	lsls r0, r5, #4
	lsls r0, r0, #16
	.2byte 0xfefe @ .raw
	movs r0, r0
	lsls r6, r1, #4
	lsls r0, r0, #16
.L08003C88:
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne .L08003CA0
	ldr r3, [pc, #24]
	strh r5, [r3, #0]
	ldr r2, [pc, #24]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L08003CA0:
	strb r5, [r4, #9]
.L08003CA2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x04000208
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08003CB0
	.thumb_func
sub_08003CB0:
	push {lr}
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	movs r1, #128
	ands r0, r1
	cmp r0, #0
	beq .L08003CCC
	ldr r0, [pc, #40]
	ldr r0, [r0, #0]
	subs r0, #2
	cmp r0, #1
	bhi .L08003CCC
	bl sub_08003C1C
.L08003CCC:
	ldr r3, [pc, #28]
	movs r0, #0
	strh r0, [r3, #0]
	ldr r2, [pc, #28]
	ldrh r0, [r2, #0]
	movs r1, #1
	orrs r0, r1
	strh r0, [r2, #0]
	strh r1, [r3, #0]
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000910
	.4byte 0x03000914
	.4byte 0x04000208
	.4byte 0x03007FF8

	.thumb
	.align 1, 0
	.global sub_08003CF4
	.thumb_func
sub_08003CF4:
	push {r4, r5, r6, lr}
	movs r2, #0
	ldr r5, [pc, #28]
	movs r3, #128
	lsls r3, r3, #2
	movs r4, #255
.L08003D00:
	lsls r0, r2, #3
	adds r1, r0, r5
	movs r6, #224
	lsls r6, r6, #19
	adds r0, r0, r6
	strh r3, [r0, #0]
	strh r3, [r1, #0]
	adds r2, #1
	cmp r2, #128
	beq .L08003D1C
	strb r2, [r1, #6]
	b .L08003D22
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003D1C:
	ldrb r0, [r1, #6]
	orrs r0, r4
	strb r0, [r1, #6]
.L08003D22:
	movs r0, #0
	strb r0, [r1, #7]
	lsls r0, r2, #24
	lsrs r2, r0, #24
	cmp r0, #0
	bge .L08003D00
	ldr r0, [pc, #24]
	movs r2, #0
	strb r2, [r0, #0]
	ldr r1, [pc, #20]
	movs r0, #255
	strb r0, [r1, #0]
	ldr r0, [pc, #20]
	strb r2, [r0, #0]
	bl sub_08003F70
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x0300125C
	.4byte 0x03001260
	.4byte 0x03001264

	.thumb
	.align 1, 0
	.global sub_08003D54
	.thumb_func
sub_08003D54:
	push {r4, r5, lr}
	ldr r0, [pc, #92]
	ldrb r4, [r0, #0]
	movs r5, #0
	cmp r4, #255
	beq .L08003D82
.L08003D60:
	lsls r4, r4, #3
	ldr r0, [pc, #84]
	adds r4, r4, r0
	lsls r1, r5, #3
	movs r0, #224
	lsls r0, r0, #19
	adds r1, r1, r0
	adds r0, r4, #0
	movs r2, #3
	bl CpuSet
	ldrb r4, [r4, #6]
	adds r0, r5, #1
	lsls r0, r0, #24
	lsrs r5, r0, #24
	cmp r4, #255
	bne .L08003D60
.L08003D82:
	ldr r2, [pc, #56]
	ldrb r0, [r2, #0]
	cmp r0, r5
	bls .L08003DAA
	adds r1, r5, #0
	cmp r5, r0
	bcs .L08003DAA
	movs r3, #128
	lsls r3, r3, #2
.L08003D94:
	lsls r0, r1, #3
	movs r4, #224
	lsls r4, r4, #19
	adds r0, r0, r4
	strh r3, [r0, #0]
	adds r0, r1, #1
	lsls r0, r0, #24
	lsrs r1, r0, #24
	ldrb r0, [r2, #0]
	cmp r1, r0
	bcc .L08003D94
.L08003DAA:
	ldr r0, [pc, #16]
	strb r5, [r0, #0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x03001260
	.4byte 0x03000E58
	.4byte 0x03001264

	.thumb
	.align 1, 0
	.global sub_08003DC0
	.thumb_func
sub_08003DC0:
	ldr r2, [pc, #28]
	ldrb r3, [r2, #0]
	cmp r3, #255
	beq .L08003DDA
	lsls r1, r3, #3
	ldr r0, [pc, #24]
	adds r1, r1, r0
	ldrb r0, [r1, #6]
	strb r0, [r2, #0]
	ldr r2, [pc, #20]
	ldrb r0, [r2, #0]
	strb r0, [r1, #6]
	strb r3, [r2, #0]
.L08003DDA:
	adds r0, r3, #0
	bx lr
	.2byte 0x0000
	.4byte 0x0300125C
	.4byte 0x03000E58
	.4byte 0x03001260

	.thumb
	.align 1, 0
	.global sub_08003DEC
	.thumb_func
sub_08003DEC:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	lsls r0, r0, #24
	lsrs r4, r0, #24
	lsls r1, r1, #16
	lsrs r1, r1, #16
	mov r9, r1
	lsls r2, r2, #16
	lsrs r2, r2, #16
	mov r8, r2
	ldr r0, [pc, #68]
	ldrb r2, [r0, #0]
	movs r7, #255
	lsls r3, r3, #24
	lsrs r6, r3, #24
	adds r5, r0, #0
	ldr r0, [pc, #60]
	mov ip, r0
	cmp r2, #255
	beq .L08003E2C
	mov r3, ip
.L08003E1A:
	lsls r0, r2, #3
	adds r0, r0, r3
	ldrb r1, [r0, #7]
	cmp r1, r6
	bcs .L08003E2C
	adds r7, r2, #0
	ldrb r2, [r0, #6]
	cmp r2, #255
	bne .L08003E1A
.L08003E2C:
	lsls r3, r4, #3
	mov r0, r8
	lsls r0, r0, #24
	mov r8, r0
	cmp r4, r7
	beq .L08003E92
	cmp r4, r2
	beq .L08003E92
	ldrb r1, [r5, #0]
	cmp r1, r4
	bne .L08003E5E
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldrb r0, [r0, #6]
	strb r0, [r5, #0]
	b .L08003E74
	asrs r0, r4, #9
	lsls r0, r0, #12
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003E54:
	mov r5, ip
	adds r0, r3, r5
	ldrb r0, [r0, #6]
	strb r0, [r1, #6]
	b .L08003E74
.L08003E5E:
	ldrb r0, [r5, #0]
	cmp r0, #255
	beq .L08003E74
	ldr r5, [pc, #28]
.L08003E66:
	lsls r0, r0, #3
	adds r1, r0, r5
	ldrb r0, [r1, #6]
	cmp r0, r4
	beq .L08003E54
	cmp r0, #255
	bne .L08003E66
.L08003E74:
	ldr r1, [pc, #12]
	adds r0, r3, r1
	strb r2, [r0, #6]
	cmp r7, #255
	bne .L08003E8C
	ldr r0, [pc, #8]
	strb r4, [r0, #0]
	b .L08003E92
	lsrs r0, r3, #25
	lsls r0, r0, #12
	asrs r0, r4, #9
	lsls r0, r0, #12
.L08003E8C:
	lsls r0, r7, #3
	adds r0, r0, r1
	strb r4, [r0, #6]
.L08003E92:
	ldr r0, [pc, #92]
	adds r0, r3, r0
	strb r6, [r0, #7]
	movs r4, #0
	movs r1, #0
	ldr r2, [pc, #84]
.L08003E9E:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r6, r0
	bls .L08003EA8
	adds r4, #1
.L08003EA8:
	adds r1, #1
	cmp r1, #3
	bne .L08003E9E
	ldr r2, [pc, #64]
	adds r2, r3, r2
	ldr r0, [pc, #68]
	ldrh r1, [r2, #4]
	ands r0, r1
	lsls r1, r4, #10
	orrs r0, r1
	strh r0, [r2, #4]
	movs r0, #255
	lsls r0, r0, #8
	ldrh r3, [r2, #0]
	ands r0, r3
	mov r5, r8
	lsrs r1, r5, #24
	orrs r0, r1
	strh r0, [r2, #0]
	movs r1, #254
	lsls r1, r1, #8
	ldrh r0, [r2, #2]
	ands r1, r0
	ldr r5, [pc, #36]
	adds r3, r5, #0
	mov r0, r9
	ands r0, r3
	orrs r1, r0
	strh r1, [r2, #2]
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000E58
	.4byte 0x03001258
	.4byte 0x0000F3FF
	.4byte 0x000001FF

	.thumb
	.align 1, 0
	.global sub_08003F00
	.thumb_func
sub_08003F00:
	push {r4, lr}
	lsls r0, r0, #24
	lsrs r3, r0, #24
	ldr r2, [pc, #24]
	ldrb r0, [r2, #0]
	cmp r3, #255
	beq .L08003F60
	cmp r0, r3
	bne .L08003F28
	ldr r0, [pc, #16]
	lsls r1, r3, #3
	adds r0, r1, r0
	ldrb r0, [r0, #6]
	strb r0, [r2, #0]
	b .L08003F4A
	movs r0, r0
	asrs r0, r4, #9
	lsls r0, r0, #12
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003F28:
	ldr r4, [pc, #4]
	lsls r1, r3, #3
	b .L08003F36
	movs r0, r0
	lsrs r0, r3, #25
	lsls r0, r0, #12
.L08003F34:
	ldrb r0, [r2, #6]
.L08003F36:
	cmp r0, #255
	beq .L08003F4A
	lsls r0, r0, #3
	adds r2, r0, r4
	ldrb r0, [r2, #6]
	cmp r0, r3
	bne .L08003F34
	adds r0, r1, r4
	ldrb r0, [r0, #6]
	strb r0, [r2, #6]
.L08003F4A:
	ldr r0, [pc, #28]
	adds r2, r1, r0
	movs r1, #0
	movs r0, #128
	lsls r0, r0, #2
	strh r0, [r2, #0]
	strb r1, [r2, #7]
	ldr r1, [pc, #16]
	ldrb r0, [r1, #0]
	strb r0, [r2, #6]
	strb r3, [r1, #0]
.L08003F60:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03000E58
	.4byte 0x0300125C

	.thumb
	.align 1, 0
	.global sub_08003F70
	.thumb_func
sub_08003F70:
	ldr r1, [pc, #16]
	movs r0, #32
	strb r0, [r1, #0]
	movs r0, #96
	strb r0, [r1, #1]
	movs r0, #160
	strb r0, [r1, #2]
	movs r0, #224
	strb r0, [r1, #3]
	bx lr
	.4byte 0x03001258

	.thumb
	.align 1, 0
	.global sub_08003F88
	.thumb_func
sub_08003F88:
	ldr r2, [pc, #4]
	adds r0, r0, r2
	strb r1, [r0, #0]
	bx lr
	.4byte 0x03001258

	.thumb
	.align 1, 0
	.global sub_08003F94
	.thumb_func
sub_08003F94:
	sub sp, #4
	movs r0, #0
	str r0, [sp, #0]
	ldr r1, [pc, #20]
	mov r0, sp
	str r0, [r1, #0]
	ldr r0, [pc, #16]
	str r0, [r1, #4]
	ldr r0, [pc, #16]
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add sp, #4
	bx lr
	.2byte 0x0000
	.4byte 0x040000D4
	.4byte 0x03001268
	.4byte 0x85000100

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

	.thumb
	.align 1, 0
	.global sub_0800404C
	.thumb_func
sub_0800404C:
	push {r4, lr}
	adds r4, r3, #0
	ldr r3, [sp, #8]
	lsls r0, r0, #16
	lsrs r0, r0, #16
	muls r2, r1
	cmp r3, #0
	beq .L0800405E
	lsls r2, r2, #1
.L0800405E:
	lsls r1, r0, #5
	ldr r0, [pc, #20]
	adds r1, r1, r0
	lsls r2, r2, #3
	ldr r0, [pc, #20]
	ands r2, r0
	adds r0, r4, #0
	bl CpuFastSet
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x06010000
	.4byte 0x001FFFFF

	.thumb
	.align 1, 0
	.global sub_08004080
	.thumb_func
sub_08004080:
	push {r4, lr}
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r2, #0
	ldr r0, [pc, #52]
	cmp r2, r0
	beq .L080040BA
	ldr r3, [pc, #52]
	adds r0, r2, #1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r1, r3
	movs r0, #0
	strb r0, [r1, #0]
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #255
	bne .L080040BA
	movs r4, #0
.L080040A6:
	adds r1, r2, #0
	adds r0, r1, #1
	lsls r0, r0, #16
	lsrs r2, r0, #16
	adds r1, r1, r3
	strb r4, [r1, #0]
	adds r0, r2, r3
	ldrb r0, [r0, #0]
	cmp r0, #255
	beq .L080040A6
.L080040BA:
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x0000FFFF
	.4byte 0x03001268

	.thumb
	.align 1, 0
	.global sub_080040C8
	.thumb_func
sub_080040C8:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r5, #0
	ldr r3, [pc, #108]
	strh r5, [r3, #0]
	ldr r2, [pc, #108]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #108]
	ands r0, r1
	strh r0, [r2, #0]
	movs r4, #1
	strh r4, [r3, #0]
	str r5, [sp, #0]
	ldr r6, [pc, #100]
	ldr r2, [pc, #100]
	mov r0, sp
	adds r1, r6, #0
	bl CpuSet
	ldr r1, [pc, #96]
	ldr r0, [pc, #96]
	str r0, [r1, #0]
	str r7, [r6, #4]
	movs r0, #1
	negs r0, r0
	str r0, [r6, #8]
	mov r0, r8
	cmp r0, #0
	beq .L08004136
	ldr r0, [pc, #84]
	str r5, [r0, #0]
	strb r4, [r6, #0]
	adds r1, r7, #0
	movs r2, #128
	lsls r2, r2, #5
.L08004116:
	ldmia r1!, {r0}
	adds r5, r5, r0
	subs r2, #1
	cmp r2, #0
	bne .L08004116
	ldr r1, [pc, #44]
	mvns r0, r5
	str r0, [r1, #12]
	ldr r1, [pc, #48]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1, #0]
.L08004136:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x04000208
	.4byte 0x04000200
	.4byte 0x0000FF3F
	.4byte 0x03000AF0
	.4byte 0x05000006
	.4byte 0x04000128
	.4byte 0x00002003
	.4byte 0x0400010C

	.thumb
	.align 1, 0
	.global sub_08004164
	.thumb_func
sub_08004164:
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, [pc, #20]
	ldrb r1, [r0, #1]
	adds r3, r0, #0
	cmp r1, #4
	bls .L08004174
	b .L08004356
.L08004174:
	lsls r0, r1, #2
	ldr r1, [pc, #12]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
	adds r3, #32
	lsrs r5, r7, #32
	ldr r2, [pc, #16]
	ldr r0, [r2, #0]
	ldr r1, [pc, #16]
	ands r0, r1
	cmp r0, #0
	bne .L08004196
	b .L08004356
.L08004196:
	movs r0, #1
	strb r0, [r2, #1]
	b .L08004356
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #3
	ldr r0, [pc, #16]
	ldrb r1, [r0, #0]
	cmp r1, #1
	bne .L080041BC
	ldrb r0, [r0, #2]
	cmp r0, #5
	bhi .L080041B4
	b .L08004356
.L080041B4:
	b .L080041C6
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
.L080041BC:
	ldr r1, [pc, #60]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
.L080041C6:
	ldr r0, [pc, #56]
	movs r5, #0
	str r5, [r0, #0]
	ldr r1, [pc, #52]
	movs r0, #192
	strh r0, [r1, #0]
	ldr r0, [pc, #52]
	ldrb r4, [r0, #0]
	cmp r4, #1
	bne .L08004218
	ldr r2, [pc, #32]
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r1, [pc, #36]
	ldr r0, [pc, #40]
	str r0, [r1, #0]
	ldr r3, [pc, #40]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #64
	orrs r0, r1
	strh r0, [r2, #0]
	strh r4, [r3, #0]
	b .L08004238
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	.2byte 0xf318 @ .raw
	lsls r0, r0, #3
	lsls r0, r1, #8
	lsls r0, r0, #16
.L08004218:
	ldr r2, [pc, #40]
	ldrh r0, [r2, #0]
	movs r3, #129
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #0]
	ldr r3, [pc, #32]
	strh r5, [r3, #0]
	adds r2, #216
	ldrh r0, [r2, #0]
	movs r1, #128
	orrs r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
.L08004238:
	ldr r0, [pc, #16]
	movs r1, #0
	strb r1, [r0, #2]
	movs r1, #2
	strb r1, [r0, #1]
	b .L08004356
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	ldr r0, [pc, #16]
	ldr r6, [r0, #8]
	adds r4, r6, #0
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L08004268
	adds r4, r0, #0
	b .L0800426E
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
.L08004268:
	cmp r6, #0
	bge .L0800426E
	movs r4, #0
.L0800426E:
	cmp r2, #0
	beq .L08004274
	str r4, [r2, #0]
.L08004274:
	ldr r1, [pc, #92]
	ldrb r0, [r1, #0]
	cmp r0, #1
	beq .L080042BA
	ldr r0, [r1, #20]
	cmp r0, r4
	bge .L0800429C
	adds r3, r1, #0
	ldr r5, [r3, #4]
.L08004286:
	ldr r2, [r3, #20]
	lsls r0, r2, #2
	adds r0, r0, r5
	ldr r1, [r3, #16]
	ldr r0, [r0, #0]
	adds r1, r1, r0
	str r1, [r3, #16]
	adds r2, #1
	str r2, [r3, #20]
	cmp r2, r4
	blt .L08004286
.L0800429C:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	ble .L080042C2
	ldr r2, [pc, #44]
	ldr r0, [r2, #12]
	ldr r1, [r2, #16]
	adds r0, r0, r1
	str r0, [r2, #12]
	movs r1, #1
	negs r1, r1
	cmp r0, r1
	bne .L080042BA
	movs r0, #1
	strb r0, [r2, #3]
.L080042BA:
	movs r0, #128
	lsls r0, r0, #5
	cmp r6, r0
	bgt .L080042CA
.L080042C2:
	ldr r0, [pc, #16]
	ldrb r0, [r0, #2]
	cmp r0, #74
	bne .L08004356
.L080042CA:
	ldr r1, [pc, #8]
	movs r0, #3
	strb r0, [r1, #1]
	b .L08004356
	movs r0, r0
	lsrs r0, r6, #11
	lsls r0, r0, #12
	ldr r3, [pc, #80]
	movs r4, #0
	strh r4, [r3, #0]
	ldr r2, [pc, #80]
	ldrh r1, [r2, #0]
	ldr r0, [pc, #80]
	ands r0, r1
	strh r0, [r2, #0]
	movs r0, #1
	strh r0, [r3, #0]
	ldr r1, [pc, #72]
	movs r2, #128
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1, #0]
	movs r0, #128
	lsls r0, r0, #6
	str r0, [r1, #0]
	adds r0, #3
	str r0, [r1, #0]
	ldr r2, [pc, #56]
	movs r0, #0
	movs r1, #0
	str r0, [r2, #0]
	str r1, [r2, #4]
	ldr r2, [pc, #52]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08004318
	ldr r1, [pc, #48]
	movs r0, #0
	str r0, [r1, #0]
.L08004318:
	ldr r0, [pc, #44]
	movs r1, #192
	strh r1, [r0, #0]
	ldrb r0, [r2, #0]
	cmp r0, #0
	beq .L08004352
	strb r4, [r2, #2]
	movs r0, #4
	strb r0, [r2, #1]
	b .L08004356
	lsls r0, r1, #8
	lsls r0, r0, #16
	lsls r0, r0, #8
	lsls r0, r0, #16
	.2byte 0xff3f @ .raw
	movs r0, r0
	lsls r0, r5, #4
	lsls r0, r0, #16
	lsls r0, r4, #4
	lsls r0, r0, #16
	lsrs r0, r6, #11
	lsls r0, r0, #12
	lsls r4, r1, #4
	lsls r0, r0, #16
	lsls r2, r0, #8
	lsls r0, r0, #16
	ldrb r3, [r3, #2]
	cmp r3, #2
	bls .L08004356
.L08004352:
	movs r0, #1
	b .L08004360
.L08004356:
	ldr r1, [pc, #16]
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
.L08004360:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x03000AF0

	.thumb
	.align 1, 0
	.global sub_0800436C
	.thumb_func
sub_0800436C:
	push {r4, lr}
	movs r0, #0
	ldr r3, [pc, #12]
	movs r4, #255
.L08004374:
	adds r2, r0, #1
	cmp r2, #128
	beq .L08004384
	adds r0, r0, r3
	strb r2, [r0, #0]
	b .L0800438C
	movs r2, #104
	lsls r0, r0, #12
.L08004384:
	adds r1, r0, r3
	ldrb r0, [r1, #0]
	orrs r0, r4
	strb r0, [r1, #0]
.L0800438C:
	adds r0, r2, #0
	cmp r0, #127
	bls .L08004374
	ldr r1, [pc, #24]
	movs r0, #0
	str r0, [r1, #0]
	ldr r1, [pc, #20]
	movs r0, #255
	str r0, [r1, #0]
	bl sub_08003CF4
	bl sub_08003F94
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030022E8
	.4byte 0x030022EC

	.thumb
	.align 1, 0
	.global sub_080043B4
	.thumb_func
sub_080043B4:
	push {r4, r5, lr}
	ldr r0, [pc, #68]
	ldr r4, [r0, #0]
	cmp r4, #255
	beq .L080043F2
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #56]
	adds r0, r0, r1
	bl sub_080046DC
	ldr r1, [pc, #52]
	adds r0, r4, r1
	ldrb r0, [r0, #0]
	cmp r0, #255
	beq .L080043F2
	adds r5, r1, #0
.L080043D8:
	adds r0, r4, r5
	ldrb r4, [r0, #0]
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #28]
	adds r0, r0, r1
	bl sub_080046DC
	adds r0, r4, r5
	ldrb r0, [r0, #0]
	cmp r0, #255
	bne .L080043D8
.L080043F2:
	bl sub_08003D54
	pop {r4, r5}
	pop {r0}
	bx r0
	.4byte 0x030022EC
	.4byte 0x03001668
	.4byte 0x03002268

	.thumb
	.align 1, 0
	.global sub_08004408
	.thumb_func
sub_08004408:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r7, r2, #0
	mov r8, r3
	bl sub_080045D4
	lsls r0, r0, #24
	lsrs r4, r0, #24
	cmp r4, #255
	bne .L0800442A
	movs r0, #0
	str r0, [r5, #0]
	b .L080044F6
.L0800442A:
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #3
	ldr r1, [pc, #64]
	adds r0, r0, r1
	str r0, [r5, #0]
	bl sub_0800481C
	ldr r0, [r5, #0]
	movs r1, #0
	mov r9, r1
	strb r4, [r0, #0]
	ldr r0, [r5, #0]
	ldr r2, [sp, #28]
	str r2, [r0, #20]
	ldr r0, [r5, #0]
	strb r6, [r0, #9]
	ldr r0, [r5, #0]
	strb r7, [r0, #10]
	ldr r0, [r5, #0]
	mov r1, r8
	strb r1, [r0, #13]
	bl sub_08003DC0
	ldr r1, [r5, #0]
	strb r0, [r1, #1]
	ldr r1, [r5, #0]
	ldrb r0, [r1, #1]
	cmp r0, #255
	bne .L08004478
	ldrb r0, [r1, #0]
	bl sub_080045FC
	mov r2, r9
	str r2, [r5, #0]
	movs r0, #0
	b .L080044F6
	asrs r0, r5, #25
	lsls r0, r0, #12
.L08004478:
	adds r0, r6, #0
	adds r1, r7, #0
	bl sub_08004654
	ldr r1, [r5, #0]
	ldrb r1, [r1, #1]
	lsls r3, r1, #3
	ldr r4, [pc, #64]
	adds r3, r3, r4
	mov r2, r8
	lsls r1, r2, #13
	movs r2, #128
	lsls r2, r2, #2
	orrs r1, r2
	orrs r1, r0
	str r1, [r3, #0]
	adds r0, r6, #0
	adds r1, r7, #0
	ldr r2, [sp, #28]
	mov r3, r8
	bl sub_08003FBC
	ldr r1, [r5, #0]
	strh r0, [r1, #2]
	ldr r1, [r5, #0]
	ldr r0, [pc, #32]
	ldrh r2, [r1, #2]
	cmp r2, r0
	bne .L080044D0
	ldrb r0, [r1, #1]
	bl sub_08003F00
	ldr r0, [r5, #0]
	ldrb r0, [r0, #0]
	bl sub_080045FC
	mov r0, r9
	str r0, [r5, #0]
	movs r0, #0
	b .L080044F6
	lsrs r0, r3, #25
	lsls r0, r0, #12
	.2byte 0xffff @ .raw
	movs r0, r0
.L080044D0:
	ldrb r1, [r1, #1]
	lsls r1, r1, #3
	adds r1, r1, r4
	movs r0, #252
	lsls r0, r0, #8
	ldrh r2, [r1, #4]
	ands r0, r2
	strh r0, [r1, #4]
	ldr r2, [r5, #0]
	ldrb r0, [r2, #1]
	lsls r1, r0, #3
	adds r1, r1, r4
	ldr r0, [pc, #24]
	ldrh r2, [r2, #2]
	ands r0, r2
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	movs r0, #1
.L080044F6:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x000003FF

	.thumb
	.align 1, 0
	.global sub_08004508
	.thumb_func
sub_08004508:
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0]
	cmp r0, #0
	beq .L0800452C
	ldrb r0, [r0, #1]
	bl sub_08003F00
	ldr r0, [r4, #0]
	ldrh r0, [r0, #2]
	bl sub_08004080
	ldr r0, [r4, #0]
	ldrb r0, [r0, #0]
	bl sub_080045FC
	movs r0, #0
	str r0, [r4, #0]
.L0800452C:
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004534
	.thumb_func
sub_08004534:
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [sp, #12]
	ldrb r0, [r4, #9]
	cmp r1, r0
	bne .L0800454C
	ldrb r0, [r4, #10]
	cmp r2, r0
	bne .L0800454C
	ldrb r0, [r4, #13]
	cmp r3, r0
	beq .L08004558
.L0800454C:
	movs r0, #1
	strb r0, [r4, #14]
	strb r1, [r4, #9]
	strb r2, [r4, #10]
	strb r3, [r4, #13]
	b .L08004562
.L08004558:
	ldr r0, [r4, #20]
	cmp r0, r5
	beq .L08004562
	movs r0, #1
	strb r0, [r4, #15]
.L08004562:
	str r5, [r4, #20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0800456C
	.thumb_func
sub_0800456C:
	movs r2, #15
	ands r1, r2
	strb r1, [r0, #12]
	movs r1, #1
	strb r1, [r0, #16]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004578
	.thumb_func
sub_08004578:
	movs r3, #1
	ands r2, r3
	strb r2, [r0, #18]
	ands r1, r3
	strb r1, [r0, #17]
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004584
	.thumb_func
sub_08004584:
	push {r4, lr}
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	strb r3, [r0, #8]
	ldrb r4, [r0, #1]
	movs r2, #4
	ldrsh r1, [r0, r2]
	movs r3, #6
	ldrsh r2, [r0, r3]
	ldrb r3, [r0, #8]
	adds r0, r4, #0
	bl sub_08003DEC
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_080045A4
	.thumb_func
sub_080045A4:
	push {r4, lr}
	lsls r3, r3, #24
	lsrs r3, r3, #24
	ldrh r4, [r0, #4]
	adds r1, r4, r1
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	adds r2, r1, r2
	strh r2, [r0, #6]
	ldrb r4, [r0, #8]
	adds r3, r4, r3
	strb r3, [r0, #8]
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080045C4
	.thumb_func
sub_080045C4:
	movs r1, #1
	strb r1, [r0, #11]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080045CC
	.thumb_func
sub_080045CC:
	movs r1, #0
	strb r1, [r0, #11]
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080045D4
	.thumb_func
sub_080045D4:
	ldr r2, [pc, #24]
	ldrb r3, [r2, #0]
	cmp r3, #255
	beq .L080045EC
	ldr r1, [pc, #20]
	adds r1, r3, r1
	ldrb r0, [r1, #0]
	str r0, [r2, #0]
	ldr r2, [pc, #16]
	ldr r0, [r2, #0]
	strb r0, [r1, #0]
	str r3, [r2, #0]
.L080045EC:
	adds r0, r3, #0
	bx lr
	.4byte 0x030022E8
	.4byte 0x03002268
	.4byte 0x030022EC

	.thumb
	.align 1, 0
	.global sub_080045FC
	.thumb_func
sub_080045FC:
	lsls r0, r0, #24
	lsrs r3, r0, #24
	ldr r1, [pc, #20]
	ldr r2, [r1, #0]
	ldrb r0, [r1, #0]
	cmp r3, #255
	beq .L08004648
	cmp r2, r3
	bne .L08004620
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldrb r0, [r0, #0]
	str r0, [r1, #0]
	b .L0800463C
	movs r2, #236
	lsls r0, r0, #12
	movs r2, #104
	lsls r0, r0, #12
.L08004620:
	ldr r2, [pc, #0]
	b .L0800462A
	movs r2, #104
	lsls r0, r0, #12
.L08004628:
	ldrb r0, [r1, #0]
.L0800462A:
	cmp r0, #255
	beq .L0800463C
	adds r1, r0, r2
	ldrb r0, [r1, #0]
	cmp r0, r3
	bne .L08004628
	adds r0, r3, r2
	ldrb r0, [r0, #0]
	strb r0, [r1, #0]
.L0800463C:
	ldr r0, [pc, #12]
	adds r0, r3, r0
	ldr r2, [pc, #12]
	ldr r1, [r2, #0]
	strb r1, [r0, #0]
	str r3, [r2, #0]
.L08004648:
	bx lr
	.2byte 0x0000
	.4byte 0x03002268
	.4byte 0x030022E8

	.thumb
	.align 1, 0
	.global sub_08004654
	.thumb_func
sub_08004654:
	cmp r0, #2
	beq .L0800467A
	cmp r0, #2
	bhi .L08004662
	cmp r0, #1
	beq .L0800466C
	b .L080046D6
.L08004662:
	cmp r0, #4
	beq .L0800469C
	cmp r0, #8
	beq .L080046C0
	b .L080046D6
.L0800466C:
	cmp r1, #1
	beq .L080046D6
	cmp r1, #2
	bne .L080046D6
	movs r0, #128
	lsls r0, r0, #8
	b .L080046D8
.L0800467A:
	cmp r1, #1
	bne .L08004684
	movs r0, #128
	lsls r0, r0, #7
	b .L080046D8
.L08004684:
	cmp r1, #2
	bne .L0800468E
	movs r0, #128
	lsls r0, r0, #23
	b .L080046D8
.L0800468E:
	cmp r1, #4
	bne .L080046D6
	ldr r0, [pc, #4]
	b .L080046D8
	movs r0, r0
	strh r0, [r0, #0]
	strh r0, [r0, #0]
.L0800469C:
	cmp r1, #2
	bne .L080046A8
	ldr r0, [pc, #0]
	b .L080046D8
	ands r0, r0
	strh r0, [r0, #0]
.L080046A8:
	cmp r1, #4
	bne .L080046B2
	movs r0, #128
	lsls r0, r0, #24
	b .L080046D8
.L080046B2:
	cmp r1, #8
	bne .L080046D6
	ldr r0, [pc, #4]
	b .L080046D8
	movs r0, r0
	strh r0, [r0, #0]
	.2byte 0xc000 @ .raw stmia r0!, {}
.L080046C0:
	cmp r1, #4
	bne .L080046CC
	ldr r0, [pc, #0]
	b .L080046D8
	ands r0, r0
	.2byte 0xc000 @ .raw stmia r0!, {}
.L080046CC:
	cmp r1, #8
	bne .L080046D6
	movs r0, #192
	lsls r0, r0, #24
	b .L080046D8
.L080046D6:
	movs r0, #0
.L080046D8:
	bx lr
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_080046DC
	.thumb_func
sub_080046DC:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldrb r0, [r5, #11]
	cmp r0, #0
	bne .L08004714
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #28]
	adds r1, r1, r2
	ldr r0, [pc, #28]
	ldrh r3, [r1, #0]
	ands r0, r3
	strh r0, [r1, #0]
	ldrb r5, [r5, #1]
	lsls r0, r5, #3
	adds r0, r0, r2
	movs r2, #128
	lsls r2, r2, #2
	adds r1, r2, #0
	ldrh r3, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	b .L08004808
	lsrs r0, r3, #25
	lsls r0, r0, #12
	.2byte 0xfcff @ .raw
	movs r0, r0
.L08004714:
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	ldr r4, [pc, #100]
	adds r2, r2, r4
	ldr r0, [r2, #0]
	ldr r1, [pc, #100]
	ands r0, r1
	str r0, [r2, #0]
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	bl sub_08004654
	ldrb r1, [r5, #1]
	lsls r2, r1, #3
	adds r2, r2, r4
	ldrb r3, [r5, #13]
	lsls r1, r3, #13
	orrs r1, r0
	ldr r0, [r2, #0]
	orrs r0, r1
	str r0, [r2, #0]
	ldrb r6, [r5, #14]
	cmp r6, #0
	beq .L08004788
	ldrh r0, [r5, #2]
	bl sub_08004080
	ldrb r0, [r5, #9]
	ldrb r1, [r5, #10]
	ldr r2, [r5, #20]
	ldrb r3, [r5, #13]
	bl sub_08003FBC
	movs r2, #0
	strh r0, [r5, #2]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r4
	movs r0, #252
	lsls r0, r0, #8
	ldrh r3, [r1, #4]
	ands r0, r3
	strh r0, [r1, #4]
	ldrb r1, [r5, #1]
	lsls r0, r1, #3
	adds r0, r0, r4
	ldrh r1, [r0, #4]
	ldrh r3, [r5, #2]
	orrs r1, r3
	strh r1, [r0, #4]
	strb r2, [r5, #14]
	strb r2, [r5, #15]
	b .L080047A0
	movs r0, r0
	lsrs r0, r3, #25
	lsls r0, r0, #12
	lsls r7, r7, #3
	lsls r7, r7, #7
.L08004788:
	ldrb r0, [r5, #15]
	cmp r0, #0
	beq .L080047A0
	ldrh r0, [r5, #2]
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #10]
	ldr r3, [r5, #20]
	ldrb r4, [r5, #13]
	str r4, [sp, #0]
	bl sub_0800404C
	strb r6, [r5, #15]
.L080047A0:
	ldrb r0, [r5, #16]
	cmp r0, #0
	beq .L080047CA
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	ldr r2, [pc, #100]
	adds r1, r1, r2
	ldr r0, [pc, #100]
	ldrh r3, [r1, #4]
	ands r0, r3
	movs r3, #0
	strh r0, [r1, #4]
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r2
	ldrb r2, [r5, #12]
	lsls r0, r2, #12
	ldrh r2, [r1, #4]
	orrs r0, r2
	strh r0, [r1, #4]
	strb r3, [r5, #16]
.L080047CA:
	ldrb r3, [r5, #1]
	lsls r0, r3, #3
	ldr r3, [pc, #64]
	adds r0, r0, r3
	ldr r1, [pc, #68]
	ldrh r2, [r0, #0]
	ands r1, r2
	strh r1, [r0, #0]
	ldrb r0, [r5, #19]
	cmp r0, #0
	beq .L080047F2
	ldrb r0, [r5, #1]
	lsls r1, r0, #3
	adds r1, r1, r3
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r2, #0
	ldrh r2, [r1, #0]
	orrs r0, r2
	strh r0, [r1, #0]
.L080047F2:
	ldrb r0, [r5, #1]
	lsls r2, r0, #3
	adds r2, r2, r3
	ldrb r1, [r5, #17]
	lsls r0, r1, #12
	ldrb r5, [r5, #18]
	lsls r1, r5, #13
	orrs r0, r1
	ldrh r3, [r2, #2]
	orrs r0, r3
	strh r0, [r2, #2]
.L08004808:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03000E58
	.4byte 0x00000FFF
	.4byte 0x0000F3FF

	.thumb
	.align 1, 0
	.global sub_0800481C
	.thumb_func
sub_0800481C:
	movs r1, #255
	strb r1, [r0, #1]
	ldr r1, [pc, #32]
	strh r1, [r0, #2]
	movs r2, #0
	strb r2, [r0, #11]
	movs r1, #0
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strb r1, [r0, #8]
	strb r1, [r0, #16]
	strb r1, [r0, #15]
	str r2, [r0, #20]
	strb r1, [r0, #9]
	strb r1, [r0, #10]
	strb r1, [r0, #13]
	strb r1, [r0, #12]
	strb r1, [r0, #19]
	bx lr
	.2byte 0x0000
	.4byte 0x0000FFFF

	.thumb
	.align 1, 0
	.global sub_08004848
	.thumb_func
sub_08004848:
	ldr r2, [pc, #20]
	str r0, [r2, #8]
	strb r1, [r2, #12]
	ldr r0, [pc, #20]
	str r0, [r2, #0]
	movs r1, #0
	movs r0, #128
	lsls r0, r0, #2
	strh r0, [r2, #4]
	strb r1, [r2, #13]
	bx lr
	.2byte 0x0000
	.4byte 0x030024F0
	.4byte 0x030022F0
	.4byte 0x60884901
	.4byte 0x00004770
	.4byte 0x030024F0
	.4byte 0x73084901
	.4byte 0x00004770
	.4byte 0x030024F0

	.thumb
	.align 1, 0
	.global sub_08004880
	.thumb_func
sub_08004880:
	ldr r1, [pc, #4]
	strb r0, [r1, #13]
	bx lr
	.2byte 0x0000
	.4byte 0x030024F0

	.thumb
	.align 1, 0
	.global sub_0800488C
	.thumb_func
sub_0800488C:
	push {r4, r5, r6, lr}
	lsls r2, r2, #24
	lsrs r6, r2, #24
	ldr r2, [pc, #44]
	ldrb r2, [r2, #12]
	lsls r3, r2, #11
	movs r2, #192
	lsls r2, r2, #19
	adds r4, r3, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	cmp r4, #0
	beq .L080048CA
	ldrh r0, [r4, #0]
	bl sub_08004BA4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L080048C4
	ldrh r0, [r4, #0]
	bl sub_08004CA0
	b .L080048CA
	movs r0, r0
	movs r4, #240
	lsls r0, r0, #12
.L080048C4:
	ldrh r0, [r4, #0]
	bl sub_0831AE58
.L080048CA:
	ldr r5, [pc, #40]
	ldr r1, [r5, #8]
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne .L080048F8
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_0831A7E8
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl sub_08004BD0
	lsls r0, r0, #16
	lsrs r0, r0, #16
	ldrb r5, [r5, #13]
	lsls r1, r5, #12
	orrs r0, r1
	b .L0800490A
	movs r0, r0
	movs r4, #240
	lsls r0, r0, #12
.L080048F8:
	ldr r1, [r1, #12]
	adds r0, r6, #0
	bl sub_0831A7E8
	ldr r2, [r5, #8]
	ldr r1, [r2, #4]
	ldrh r2, [r2, #2]
	bl sub_0831AE48
.L0800490A:
	strh r0, [r4, #0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004914
	.thumb_func
sub_08004914:
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	str r2, [sp, #0]
.L0800491E:
	adds r6, r4, #1
	b .L0800492A
.L08004922:
	mov r0, sp
	bl sub_08004AE4
	str r0, [sp, #0]
.L0800492A:
	ldr r0, [sp, #0]
	bl sub_08004AC8
	cmp r0, #1
	beq .L08004922
	cmp r4, #0
	blt .L08004950
	cmp r5, #0
	blt .L08004950
	cmp r4, #31
	bgt .L08004950
	cmp r5, #31
	bgt .L08004950
	ldr r0, [sp, #0]
	ldrb r2, [r0, #0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_0800488C
.L08004950:
	adds r4, r6, #0
	ldr r0, [sp, #0]
	adds r1, r0, #1
	str r1, [sp, #0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	bne .L0800491E
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004968
	.thumb_func
sub_08004968:
	push {r2, r3}
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, [sp, #16]
	add r2, sp, #20
	ldr r4, [pc, #24]
	ldr r0, [r4, #0]
	bl sub_08005100
	ldr r2, [r4, #0]
	adds r0, r5, #0
	adds r1, r6, #0
	bl sub_08004914
	pop {r4, r5, r6}
	pop {r3}
	add sp, #8
	bx r3
	.2byte 0x0000
	.4byte 0x030024F0

	.thumb
	.align 1, 0
	.global sub_08004994
	.thumb_func
sub_08004994:
	push {r4, lr}
	ldr r2, [pc, #40]
	ldrb r2, [r2, #12]
	lsls r3, r2, #11
	movs r2, #192
	lsls r2, r2, #19
	adds r4, r3, r2
	lsls r1, r1, #5
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r4, r4, r0
	ldrh r0, [r4, #0]
	bl sub_08004BA4
	lsls r0, r0, #24
	cmp r0, #0
	beq .L080049C4
	ldrh r0, [r4, #0]
	bl sub_08004CA0
	b .L080049CA
	movs r0, r0
	movs r4, #240
	lsls r0, r0, #12
.L080049C4:
	ldrh r0, [r4, #0]
	bl sub_0831AE58
.L080049CA:
	movs r0, #0
	strh r0, [r4, #0]
	pop {r4}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_080049D4
	.thumb_func
sub_080049D4:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r9, r2
	adds r5, r1, #0
	adds r0, r5, r3
	cmp r5, r0
	bhi .L08004A0E
	mov r8, r0
.L080049EC:
	mov r4, sl
	mov r1, r9
	adds r0, r4, r1
	adds r7, r5, #1
	cmp r4, r0
	bhi .L08004A08
	adds r6, r0, #0
.L080049FA:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004994
	adds r4, #1
	cmp r4, r6
	bls .L080049FA
.L08004A08:
	adds r5, r7, #0
	cmp r5, r8
	bls .L080049EC
.L08004A0E:
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08004A1C
	.thumb_func
sub_08004A1C:
	push {r4, r5, r6, lr}
	movs r5, #0
.L08004A20:
	movs r4, #0
	adds r6, r5, #1
.L08004A24:
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08004994
	adds r4, #1
	cmp r4, #31
	bls .L08004A24
	adds r5, r6, #0
	cmp r5, #31
	bls .L08004A20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004A40
	.thumb_func
sub_08004A40:
	adds r1, r0, #0
	movs r2, #0
	b .L08004A4A
.L08004A46:
	adds r2, #1
	adds r1, #1
.L08004A4A:
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08004A46
	adds r0, r2, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004A54
	.thumb_func
sub_08004A54:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r0, r4, #0
	bl sub_08004A40
	adds r2, r0, #0
	cmp r2, #0
	beq .L08004A86
	ldrb r0, [r4, #0]
	adds r3, r5, r2
	cmp r0, #0
	beq .L08004A82
	adds r1, r4, #0
	subs r0, r5, #1
	adds r2, r2, r0
.L08004A74:
	ldrb r0, [r1, #0]
	strb r0, [r2, #0]
	subs r2, #1
	adds r1, #1
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08004A74
.L08004A82:
	movs r0, #0
	strb r0, [r3, #0]
.L08004A86:
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08004A8C
	.thumb_func
sub_08004A8C:
	push {r4, r5, lr}
	sub sp, #12
	adds r1, r0, #0
	movs r4, #1
	movs r5, #0
	mov r0, sp
	bl sub_08004A54
	mov r0, sp
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08004ABC
	mov r1, sp
.L08004AA6:
	ldrb r0, [r1, #0]
	subs r0, #48
	muls r0, r4
	adds r5, r5, r0
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r4, r0, #1
	adds r1, #1
	ldrb r0, [r1, #0]
	cmp r0, #0
	bne .L08004AA6
.L08004ABC:
	adds r0, r5, #0
	add sp, #12
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004AC8
	.thumb_func
sub_08004AC8:
	push {lr}
	ldrb r1, [r0, #0]
	cmp r1, #123
	bne .L08004ADA
	adds r0, #1
	bl sub_08004B14
	cmp r0, #0
	bne .L08004ADE
.L08004ADA:
	movs r0, #0
	b .L08004AE0
.L08004ADE:
	movs r0, #1
.L08004AE0:
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08004AE4
	.thumb_func
sub_08004AE4:
	adds r3, r0, #0
	ldr r1, [r3, #0]
	ldrb r0, [r1, #0]
	cmp r0, #125
	beq .L08004B02
	cmp r0, #0
	beq .L08004B10
.L08004AF2:
	adds r2, r1, #1
	str r2, [r3, #0]
	ldrb r0, [r1, #1]
	cmp r0, #125
	beq .L08004B02
	adds r1, r2, #0
	cmp r0, #0
	bne .L08004AF2
.L08004B02:
	ldr r1, [r3, #0]
	ldrb r0, [r1, #0]
	cmp r0, #0
	beq .L08004B10
	adds r0, r1, #1
	str r0, [r3, #0]
	b .L08004B12
.L08004B10:
	ldr r0, [r3, #0]
.L08004B12:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004B14
	.thumb_func
sub_08004B14:
	push {lr}
	sub sp, #12
	adds r2, r0, #0
	movs r3, #0
	ldrb r0, [r2, #0]
	cmp r0, #80
	beq .L08004B2A
	cmp r0, #112
	beq .L08004B2A
	movs r0, #0
	b .L08004B5E
.L08004B2A:
	ldrb r0, [r2, #0]
	adds r2, #1
	cmp r0, #125
	beq .L08004B48
	mov r0, sp
	adds r1, r3, r0
.L08004B36:
	ldrb r0, [r2, #0]
	strb r0, [r1, #0]
	adds r1, #1
	adds r3, #1
	lsls r0, r0, #24
	lsrs r0, r0, #24
	adds r2, #1
	cmp r0, #125
	bne .L08004B36
.L08004B48:
	subs r3, #1
	mov r0, sp
	adds r1, r0, r3
	movs r0, #0
	strb r0, [r1, #0]
	mov r0, sp
	bl sub_08004A8C
	ldr r1, [pc, #8]
	strb r0, [r1, #13]
	movs r0, #1
.L08004B5E:
	add sp, #12
	pop {r1}
	bx r1
	.4byte 0x030024F0
	.4byte 0x0E010600
	.4byte 0x3A301C0A
	.4byte 0x0E000610
	.4byte 0xD8012809
	.4byte 0xE0121C10
	.4byte 0x38611C08
	.4byte 0x0E000600
	.4byte 0xD8022805
	.4byte 0x38571C08
	.4byte 0x1C08E009
	.4byte 0x06003841
	.4byte 0x28050E00
	.4byte 0x2000D901
	.4byte 0x1C08E001
	.4byte 0x47703837

	.thumb
	.align 1, 0
	.global sub_08004BA4
	.thumb_func
sub_08004BA4:
	ldr r1, [pc, #24]
	ands r0, r1
	ldr r3, [pc, #24]
	ldr r2, [pc, #28]
	lsls r1, r0, #1
	adds r1, r1, r2
	ldrh r1, [r1, #0]
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r1, [r1, #0]
	cmp r1, r0
	beq .L08004BCC
	movs r0, #0
	b .L08004BCE
	lsls r7, r7, #15
	movs r0, r0
	movs r0, #0
	lsls r0, r0, #8
	adds r6, #0
	lsls r0, r0, #8
.L08004BCC:
	movs r0, #1
.L08004BCE:
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004BD0
	.thumb_func
sub_08004BD0:
	push {r4, r5, r6, r7, lr}
	mov r7, r9
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov r9, r1
	lsls r0, r5, #16
	lsrs r0, r0, #16
	mov r8, r0
	adds r5, r5, r2
	cmp r5, #0
	beq .L08004C3C
	ldr r0, [pc, #28]
	lsls r1, r5, #1
	adds r2, r1, r0
	ldrh r3, [r2, #0]
	ldr r0, [pc, #24]
	mov ip, r1
	cmp r3, r0
	beq .L08004C14
	adds r4, r3, #0
	ldr r0, [pc, #20]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	adds r0, #1
	strh r0, [r1, #0]
	b .L08004C84
	movs r0, #0
	lsls r0, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
.L08004C14:
	ldr r6, [pc, #20]
	ldrh r7, [r6, #0]
	adds r0, r7, #0
	cmp r0, r3
	beq .L08004C34
	ldrh r4, [r6, #0]
	ldr r0, [pc, #12]
	lsls r1, r4, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L08004C5A
	movs r5, #4
	lsls r0, r0, #12
	cmp r0, #0
	lsls r0, r0, #8
.L08004C34:
	ldr r1, [pc, #8]
	ldrh r2, [r1, #0]
	cmp r2, r0
	bne .L08004C44
.L08004C3C:
	movs r0, #0
	b .L08004C86
	movs r5, #0
	lsls r0, r0, #12
.L08004C44:
	ldrh r4, [r1, #0]
	ldr r2, [pc, #76]
	lsls r0, r4, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
	adds r1, r4, #1
	lsls r0, r1, #1
	adds r0, r0, r2
	strh r7, [r0, #0]
	strh r1, [r6, #0]
.L08004C5A:
	ldr r0, [pc, #56]
	lsls r2, r4, #1
	adds r0, r2, r0
	movs r1, #1
	strh r1, [r0, #0]
	ldr r0, [pc, #48]
	add r0, ip
	strh r4, [r0, #0]
	ldr r0, [pc, #48]
	adds r2, r2, r0
	strh r5, [r2, #0]
	mov r1, r8
	lsls r0, r1, #5
	add r0, r9
	lsls r1, r4, #5
	movs r2, #192
	lsls r2, r2, #19
	adds r1, r1, r2
	movs r2, #8
	bl CpuFastSet
.L08004C84:
	adds r0, r4, #0
.L08004C86:
	pop {r3, r4}
	mov r8, r3
	mov r9, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0x02002800
	.4byte 0x02002000
	.4byte 0x02003600

	.thumb
	.align 1, 0
	.global sub_08004CA0
	.thumb_func
sub_08004CA0:
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [pc, #108]
	ands r5, r0
	cmp r5, #0
	beq .L08004D64
	ldr r7, [pc, #104]
	lsls r2, r5, #1
	adds r6, r2, r7
	ldrh r0, [r6, #0]
	subs r0, #1
	strh r0, [r6, #0]
	lsls r0, r0, #16
	cmp r0, #0
	bne .L08004D64
	ldr r1, [pc, #92]
	ldr r4, [pc, #92]
	adds r2, r2, r4
	ldrh r3, [r2, #0]
	lsls r0, r3, #1
	adds r0, r0, r1
	ldr r1, [pc, #88]
	adds r3, r1, #0
	ldrh r1, [r0, #0]
	orrs r1, r3
	strh r1, [r0, #0]
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	movs r2, #1
	eors r2, r5
	lsls r0, r2, #1
	adds r0, r0, r4
	ldrh r0, [r0, #0]
	cmp r0, r3
	bne .L08004D5C
	adds r1, r0, #0
	ldr r0, [pc, #60]
	ldrh r3, [r0, #0]
	adds r6, r0, #0
	cmp r3, r2
	beq .L08004D02
	adds r4, r7, #0
.L08004CF6:
	adds r1, r3, #0
	lsls r0, r1, #1
	adds r0, r0, r4
	ldrh r3, [r0, #0]
	cmp r3, r2
	bne .L08004CF6
.L08004D02:
	ldr r0, [pc, #32]
	cmp r1, r0
	bne .L08004D2C
	ldr r0, [pc, #12]
	lsls r1, r3, #1
	adds r1, r1, r0
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	b .L08004D3A
	lsls r7, r7, #15
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
	movs r0, #0
	lsls r0, r0, #8
	adds r6, #0
	lsls r0, r0, #8
	.2byte 0xffff @ .raw
	movs r0, r0
	movs r5, #4
	lsls r0, r0, #12
.L08004D2C:
	ldr r2, [pc, #32]
	lsls r1, r1, #1
	adds r1, r1, r2
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0, #0]
	strh r0, [r1, #0]
.L08004D3A:
	ldr r1, [pc, #20]
	ldr r2, [pc, #20]
	ands r2, r5
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r3, [pc, #16]
	ldrh r1, [r3, #0]
	strh r1, [r0, #0]
	strh r2, [r3, #0]
	b .L08004D64
	movs r0, r0
	cmp r0, #0
	lsls r0, r0, #8
	.2byte 0xfffe @ .raw
	movs r0, r0
	movs r5, #0
	lsls r0, r0, #12
.L08004D5C:
	ldr r1, [pc, #12]
	ldrh r0, [r1, #0]
	strh r0, [r6, #0]
	strh r5, [r1, #0]
.L08004D64:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x03002504

	.thumb
	.align 1, 0
	.global sub_08004D70
	.thumb_func
sub_08004D70:
	push {r4, lr}
	movs r1, #0
	ldr r4, [pc, #156]
	ldr r0, [pc, #160]
	adds r3, r0, #0
	ldr r2, [pc, #160]
.L08004D7C:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004D7C
	movs r1, #0
	ldr r4, [pc, #144]
	ldr r2, [pc, #136]
	adds r3, r2, #0
	ldr r2, [pc, #144]
.L08004D94:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004D94
	movs r1, #0
	ldr r4, [pc, #128]
	ldr r0, [pc, #112]
	adds r3, r0, #0
	ldr r2, [pc, #128]
.L08004DAC:
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	adds r2, #2
	adds r1, #1
	cmp r1, r4
	bls .L08004DAC
	movs r1, #0
	ldr r3, [pc, #104]
	ldr r2, [pc, #112]
.L08004DC0:
	adds r0, r1, #2
	strh r0, [r2, #0]
	adds r2, #4
	adds r1, r0, #0
	cmp r1, r3
	bls .L08004DC0
	ldr r1, [pc, #96]
	ldr r0, [pc, #100]
	adds r2, r1, r0
	ldr r0, [pc, #68]
	adds r3, r0, #0
	ldrh r0, [r2, #0]
	orrs r0, r3
	strh r0, [r2, #0]
	ldr r2, [pc, #88]
	adds r1, r1, r2
	ldrh r0, [r1, #0]
	orrs r0, r3
	strh r0, [r1, #0]
	ldr r1, [pc, #84]
	movs r0, #2
	strh r0, [r1, #0]
	ldr r1, [pc, #80]
	movs r2, #128
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1, #0]
	ldr r0, [pc, #76]
	strh r3, [r0, #0]
	movs r1, #0
	movs r2, #0
	movs r0, #192
	lsls r0, r0, #19
.L08004E02:
	strh r2, [r0, #0]
	adds r0, #2
	adds r1, #1
	cmp r1, #31
	bls .L08004E02
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x00000FFF
	.4byte 0x0000FFFF
	.4byte 0x02000000
	.4byte 0x000003FF
	.4byte 0x02002000
	.4byte 0x000006FF
	.4byte 0x02003600
	.4byte 0x02002800
	.4byte 0x000007FC
	.4byte 0x00000DFC
	.4byte 0x03002500
	.4byte 0x03002502
	.4byte 0x03002504

	.thumb
	.align 1, 0
	.global sub_08004E48
	.thumb_func
sub_08004E48:
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r7, r1, #0
	movs r6, #0
	ldr r0, [pc, #44]
	mov ip, r0
	cmp r2, #0
	bne .L08004EB0
	movs r2, #10
	ldrb r0, [r4, #0]
	cmp r0, #48
	bne .L08004EB0
	movs r2, #8
	adds r4, #1
	ldrb r0, [r4, #0]
	cmp r0, #120
	bne .L08004EB0
	ldrb r1, [r4, #1]
	add r1, ip
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08004EB0
	adds r4, #1
	movs r2, #16
	b .L08004EB0
	movs r0, r0
	lsls r1, r1, #25
	lsrs r6, r7, #32
.L08004E84:
	adds r0, r3, r5
	ldrb r1, [r0, #0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq .L08004E96
	adds r1, r3, #0
	subs r1, #48
	b .L08004EA4
.L08004E96:
	movs r0, #2
	ands r0, r1
	adds r1, r3, #0
	subs r1, #55
	cmp r0, #0
	beq .L08004EA4
	subs r1, #32
.L08004EA4:
	cmp r1, r2
	bcs .L08004EC0
	adds r0, r6, #0
	muls r0, r2
	adds r6, r0, r1
	adds r4, #1
.L08004EB0:
	ldrb r3, [r4, #0]
	mov r5, ip
	adds r1, r3, r5
	movs r0, #68
	ldrb r1, [r1, #0]
	ands r0, r1
	cmp r0, #0
	bne .L08004E84
.L08004EC0:
	cmp r7, #0
	beq .L08004EC6
	str r4, [r7, #0]
.L08004EC6:
	adds r0, r6, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004ED0
	.thumb_func
sub_08004ED0:
	push {lr}
	ldrb r3, [r0, #0]
	cmp r3, #45
	beq .L08004EDE
	bl sub_08004E48
	b .L08004EE6
.L08004EDE:
	adds r0, #1
	bl sub_08004E48
	negs r0, r0
.L08004EE6:
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004EEC
	.thumb_func
sub_08004EEC:
	adds r3, r0, #0
	movs r2, #0
	ldr r1, [r3, #0]
	b .L08004F08
.L08004EF4:
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #1
	ldrb r2, [r1, #0]
	adds r0, r2, r0
	adds r2, r0, #0
	subs r2, #48
	adds r0, r1, #1
	str r0, [r3, #0]
	adds r1, r0, #0
.L08004F08:
	ldrb r0, [r1, #0]
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bls .L08004EF4
	adds r0, r2, #0
	bx lr

	.thumb
	.align 1, 0
	.global sub_08004F18
	.thumb_func
sub_08004F18:
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl strlen
	cmp r0, r4
	bcc .L08004F2A
	adds r0, r4, #0
	b .L08004F30
.L08004F2A:
	adds r0, r5, #0
	bl strlen
.L08004F30:
	pop {r4, r5}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08004F38
	.thumb_func
sub_08004F38:
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, r9
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #88
	adds r5, r0, #0
	mov r8, r1
	mov r9, r2
	adds r6, r3, #0
	ldr r0, [sp, #120]
	mov sl, r0
	ldr r3, [sp, #124]
	ldr r1, [pc, #40]
	str r1, [sp, #72]
	movs r0, #64
	ands r0, r3
	cmp r0, #0
	beq .L08004F62
	ldr r4, [pc, #32]
	str r4, [sp, #72]
.L08004F62:
	movs r0, #16
	ands r0, r3
	cmp r0, #0
	beq .L08004F70
	movs r0, #2
	negs r0, r0
	ands r3, r0
.L08004F70:
	mov r0, r9
	subs r0, #2
	cmp r0, #34
	bls .L08004F84
	movs r0, #0
	b .L080050F0
	adds r3, #52
	lsrs r5, r7, #32
	adds r3, #92
	lsrs r5, r7, #32
.L08004F84:
	movs r0, #1
	ands r0, r3
	movs r1, #32
	str r1, [sp, #76]
	cmp r0, #0
	beq .L08004F94
	movs r4, #48
	str r4, [sp, #76]
.L08004F94:
	movs r0, #0
	str r0, [sp, #68]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L08004FCC
	mov r1, r8
	cmp r1, #0
	bge .L08004FB0
	movs r4, #45
	str r4, [sp, #68]
	negs r1, r1
	mov r8, r1
	b .L08004FCA
.L08004FB0:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	beq .L08004FBE
	movs r0, #43
	str r0, [sp, #68]
	b .L08004FCA
.L08004FBE:
	movs r0, #8
	ands r0, r3
	cmp r0, #0
	beq .L08004FCC
	movs r1, #32
	str r1, [sp, #68]
.L08004FCA:
	subs r6, #1
.L08004FCC:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L08004FE6
	mov r4, r9
	cmp r4, #16
	bne .L08004FDE
	subs r6, #2
	b .L08004FE6
.L08004FDE:
	mov r0, r9
	cmp r0, #8
	bne .L08004FE6
	subs r6, #1
.L08004FE6:
	movs r2, #0
	mov r1, r8
	cmp r1, #0
	bne .L08004FF8
	mov r1, sp
	movs r0, #48
	strb r0, [r1, #0]
	movs r2, #1
	b .L08005028
.L08004FF8:
	mov r7, sp
.L08004FFA:
	mov r0, r8
	mov r1, r9
	str r2, [sp, #80]
	str r3, [sp, #84]
	bl __umodsi3
	adds r4, r0, #0
	mov r0, r8
	mov r1, r9
	bl __udivsi3
	mov r8, r0
	ldr r0, [sp, #72]
	adds r4, r0, r4
	ldrb r0, [r4, #0]
	strb r0, [r7, #0]
	adds r7, #1
	ldr r2, [sp, #80]
	adds r2, #1
	ldr r3, [sp, #84]
	mov r1, r8
	cmp r1, #0
	bne .L08004FFA
.L08005028:
	cmp r2, sl
	ble .L0800502E
	mov sl, r2
.L0800502E:
	mov r4, sl
	subs r6, r6, r4
	movs r0, #17
	ands r0, r3
	subs r4, #1
	subs r7, r2, #1
	cmp r0, #0
	bne .L08005054
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	ble .L08005054
	movs r1, #32
.L08005048:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L08005048
.L08005054:
	ldr r0, [sp, #68]
	cmp r0, #0
	beq .L0800505E
	strb r0, [r5, #0]
	adds r5, #1
.L0800505E:
	movs r0, #32
	ands r0, r3
	cmp r0, #0
	beq .L08005086
	mov r0, r9
	cmp r0, #8
	bne .L08005070
	movs r0, #48
	b .L08005082
.L08005070:
	mov r1, r9
	cmp r1, #16
	bne .L08005086
	movs r0, #48
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #72]
	adds r0, #33
	ldrb r0, [r0, #0]
.L08005082:
	strb r0, [r5, #0]
	adds r5, #1
.L08005086:
	movs r0, #16
	ands r3, r0
	cmp r3, #0
	bne .L080050A0
	b .L08005098
.L08005090:
	add r0, sp, #76
	ldrb r0, [r0, #0]
	strb r0, [r5, #0]
	adds r5, #1
.L08005098:
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L08005090
.L080050A0:
	mov r0, sl
	mov sl, r4
	subs r3, r6, #1
	cmp r2, r0
	bge .L080050BC
	movs r1, #48
.L080050AC:
	strb r1, [r5, #0]
	adds r5, #1
	mov r0, sl
	movs r4, #1
	negs r4, r4
	add sl, r4
	cmp r2, r0
	blt .L080050AC
.L080050BC:
	adds r0, r2, #0
	adds r2, r7, #0
	cmp r0, #0
	ble .L080050D8
	mov r0, sp
	adds r1, r2, r0
.L080050C8:
	ldrb r0, [r1, #0]
	subs r1, #1
	strb r0, [r5, #0]
	adds r5, #1
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bgt .L080050C8
.L080050D8:
	adds r0, r6, #0
	adds r6, r3, #0
	cmp r0, #0
	ble .L080050EE
	movs r1, #32
.L080050E2:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r6, #0
	subs r6, #1
	cmp r0, #0
	bgt .L080050E2
.L080050EE:
	adds r0, r5, #0
.L080050F0:
	add sp, #88
	pop {r3, r4, r5}
	mov r8, r3
	mov r9, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08005100
	.thumb_func
sub_08005100:
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #16
	mov r8, r0
	str r1, [sp, #8]
	adds r6, r2, #0
	mov r5, r8
	adds r2, r1, #0
	ldrb r0, [r2, #0]
	cmp r0, #0
	bne .L0800511A
	b .L0800536E
.L0800511A:
	ldrb r0, [r2, #0]
	cmp r0, #37
	beq .L08005122
	b .L080052F8
.L08005122:
	movs r3, #0
.L08005124:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	ldrb r0, [r1, #1]
	subs r0, #32
	cmp r0, #16
	bhi .L0800515E
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r3, #140
	lsrs r5, r7, #32
	movs r0, #16
	orrs r3, r0
	b .L08005124
	movs r0, #4
	orrs r3, r0
	b .L08005124
	movs r0, #8
	orrs r3, r0
	b .L08005124
	movs r0, #32
	orrs r3, r0
	b .L08005124
	movs r0, #1
	orrs r3, r0
	b .L08005124
.L0800515E:
	movs r7, #1
	negs r7, r7
	ldr r2, [sp, #8]
	ldrb r1, [r2, #0]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08005180
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_08004EEC
	adds r7, r0, #0
	ldr r3, [sp, #12]
	b .L0800519C
.L08005180:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L0800519C
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r7, [r0, #0]
	cmp r7, #0
	bge .L0800519C
	negs r7, r7
	movs r0, #16
	orrs r3, r0
.L0800519C:
	movs r0, #1
	negs r0, r0
	mov ip, r0
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #46
	bne .L080051EA
	adds r2, r0, #1
	str r2, [sp, #8]
	ldrb r1, [r0, #1]
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L080051CA
	add r0, sp, #8
	str r3, [sp, #12]
	bl sub_08004EEC
	mov ip, r0
	ldr r3, [sp, #12]
	b .L080051DE
.L080051CA:
	lsls r0, r1, #24
	lsrs r0, r0, #24
	cmp r0, #42
	bne .L080051DE
	adds r0, r2, #1
	str r0, [sp, #8]
	adds r6, #4
	subs r0, r6, #4
	ldr r0, [r0, #0]
	mov ip, r0
.L080051DE:
	ldr r0, [sp, #8]
	mov r2, ip
	cmp r2, #0
	bge .L080051EA
	movs r1, #0
	mov ip, r1
.L080051EA:
	movs r4, #1
	negs r4, r4
	ldrb r0, [r0, #0]
	cmp r0, #104
	beq .L080051FC
	cmp r0, #108
	beq .L080051FC
	cmp r0, #76
	bne .L08005204
.L080051FC:
	ldr r0, [sp, #8]
	ldrb r4, [r0, #0]
	adds r0, #1
	str r0, [sp, #8]
.L08005204:
	movs r2, #10
	ldr r0, [sp, #8]
	ldrb r0, [r0, #0]
	subs r0, #37
	cmp r0, #83
	bls .L08005212
	b .L08005310
.L08005212:
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	adds r3, #208
	lsrs r5, r7, #32
	movs r0, #16
	ands r3, r0
	adds r2, r6, #4
	cmp r3, #0
	bne .L0800523C
	subs r7, #1
	cmp r7, #0
	ble .L0800523C
	movs r3, #32
.L08005232:
	strb r3, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L08005232
.L0800523C:
	adds r6, r2, #0
	adds r0, r5, #0
	adds r5, #1
	subs r1, r6, #4
	ldr r1, [r1, #0]
	strb r1, [r0, #0]
	subs r7, #1
	cmp r7, #0
	bgt .L08005250
	b .L0800535E
.L08005250:
	movs r0, #32
.L08005252:
	strb r0, [r5, #0]
	adds r5, #1
	subs r7, #1
	cmp r7, #0
	bgt .L08005252
	b .L0800535E
	adds r6, #4
	subs r0, r6, #4
	ldr r4, [r0, #0]
	cmp r4, #0
	bne .L0800526A
	ldr r4, [pc, #88]
.L0800526A:
	adds r0, r4, #0
	mov r1, ip
	str r3, [sp, #12]
	bl sub_08004F18
	adds r2, r0, #0
	movs r0, #16
	ldr r3, [sp, #12]
	ands r3, r0
	cmp r3, #0
	bne .L08005296
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	bge .L08005296
	movs r1, #32
.L0800528A:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L0800528A
.L08005296:
	subs r3, r7, #1
	cmp r2, #0
	ble .L080052AC
	adds r1, r2, #0
.L0800529E:
	ldrb r0, [r4, #0]
	strb r0, [r5, #0]
	adds r4, #1
	adds r5, #1
	subs r1, #1
	cmp r1, #0
	bne .L0800529E
.L080052AC:
	adds r0, r7, #0
	adds r7, r3, #0
	cmp r2, r0
	bge .L0800535E
	movs r1, #32
.L080052B6:
	strb r1, [r5, #0]
	adds r5, #1
	adds r0, r7, #0
	subs r7, #1
	cmp r2, r0
	blt .L080052B6
	b .L0800535E
	adds r3, #132
	lsrs r5, r7, #32
	movs r0, #1
	negs r0, r0
	cmp r7, r0
	bne .L080052D6
	movs r7, #8
	movs r0, #1
	orrs r3, r0
.L080052D6:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, ip
	str r2, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
	movs r2, #16
	b .L08005356
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
	mov r2, r8
	subs r0, r5, r2
	str r0, [r1, #0]
	b .L0800535E
	movs r0, #37
.L080052F8:
	strb r0, [r5, #0]
	adds r5, #1
	b .L0800535E
	movs r2, #8
	b .L0800532A
	movs r0, #64
	orrs r3, r0
	movs r2, #16
	b .L0800532A
	movs r0, #2
	orrs r3, r0
	b .L0800532A
.L08005310:
	movs r0, #37
	strb r0, [r5, #0]
	adds r5, #1
	ldr r0, [sp, #8]
	ldrb r1, [r0, #0]
	cmp r1, #0
	beq .L08005324
	strb r1, [r5, #0]
	adds r5, #1
	b .L0800535E
.L08005324:
	subs r0, #1
	str r0, [sp, #8]
	b .L0800535E
.L0800532A:
	cmp r4, #108
	beq .L08005348
	cmp r4, #104
	bne .L08005346
	adds r6, #4
	subs r0, r6, #4
	ldrh r1, [r0, #0]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq .L0800534E
	lsls r0, r1, #16
	asrs r1, r0, #16
	b .L0800534E
.L08005346:
	movs r0, #2
.L08005348:
	adds r6, #4
	subs r0, r6, #4
	ldr r1, [r0, #0]
.L0800534E:
	mov r0, ip
	str r0, [sp, #0]
	str r3, [sp, #4]
	adds r0, r5, #0
.L08005356:
	adds r3, r7, #0
	bl sub_08004F38
	adds r5, r0, #0
.L0800535E:
	ldr r1, [sp, #8]
	adds r0, r1, #1
	str r0, [sp, #8]
	adds r2, r0, #0
	ldrb r0, [r1, #1]
	cmp r0, #0
	beq .L0800536E
	b .L0800511A
.L0800536E:
	movs r0, #0
	strb r0, [r5, #0]
	mov r1, r8
	subs r0, r5, r1
	add sp, #16
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.2byte 0x0000
	.2byte 0xB40E

	.thumb
	.align 1, 0
	.global sub_08005386
	.thumb_func
sub_08005386:
	push {lr}
	ldr r1, [sp, #4]
	add r2, sp, #8
	bl sub_08005100
	pop {r3}
	add sp, #12
	bx r3
	.2byte 0x0000
	.4byte 0x00FF00FF
	.4byte 0x00FF00FF
	.4byte 0xEA00002E
	.4byte 0x51AEFF24
	.4byte 0x21A29A69
	.4byte 0x0A82843D
	.4byte 0xAD09E484
	.4byte 0x988B2411
	.4byte 0x217F81C0
	.4byte 0x19BE52A3
	.4byte 0x20CE0993
	.4byte 0x4A4A4610
	.4byte 0xEC3127F8
	.4byte 0x33E8C758
	.4byte 0xBFCEE382
	.4byte 0x94DFF485
	.4byte 0xC1094BCE
	.4byte 0xC08A5694
	.4byte 0xFCA77213
	.4byte 0x734D849F
	.4byte 0x619ACAA3
	.4byte 0x27A39758
	.4byte 0x769803FC
	.4byte 0x61C71D23
	.4byte 0x56AE0403
	.4byte 0x008438BF
	.4byte 0xFD0EA740
	.4byte 0x03FE52FF
	.4byte 0xF130956F
	.4byte 0x85C0FB97
	.4byte 0x2580D660
	.4byte 0x03BE63A9
	.4byte 0xE2384E01
	.4byte 0xFF34A2F9
	.4byte 0x44033EBB
	.4byte 0xCB900078
	.4byte 0x943A1188
	.4byte 0x637CC065
	.4byte 0xAF3CF087
	.4byte 0x8BE425D6
	.4byte 0x72AC0A38
	.4byte 0x07F8D421
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00963130
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x0000F000
	.4byte 0xEA000011
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000
	.4byte 0x00000000

	.arm
	.align 2, 0
	.global sub_08005480
sub_08005480:
	ldrh r1, [r0, #8]
	tst r1, #128
	.4byte 0x0afffffc @ beq 0x8005480
.L0800548C:
	ldrh r1, [r0, #8]
	tst r1, #128
	bne .L0800548C
	ldrh r1, [r0, #8]
	tst r1, #64
	bxne lr
	ldrh r1, [r0]
	bx lr
	.4byte 0xE59F0248
	.4byte 0xEBFFFFF2
	.4byte 0x1AFFFFFD
	.4byte 0xE3A02000
	.4byte 0xE1C020BA
	.4byte 0xE3510000
	.4byte 0x1AFFFFF9
	.4byte 0xE3A02902
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xEBFFFFE9
	.4byte 0x1AFFFFF4
	.4byte 0xE1510002
	.4byte 0x1AFFFFF9
	.4byte 0xE1A022A2
	.4byte 0xE3510000
	.4byte 0x1AFFFFF7
	.4byte 0xE59F3208
	.4byte 0xE1D320B0
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFDF
	.4byte 0x1AFFFFFE
	.4byte 0xE1510002
	.4byte 0x1AFFFFFC
	.4byte 0xE1D320B2
	.4byte 0xE1C020BA
	.4byte 0xEBFFFFD9
	.4byte 0x1AFFFFF8
	.4byte 0xE1510002
	.4byte 0x1AFFFFF6
	.4byte 0xE3A01000
	.4byte 0xE1C010BA
	.4byte 0xE3A00012
	.4byte 0xE129F000
	.4byte 0xE59FD1C8
	.4byte 0xE3A0001F
	.4byte 0xE129F000
	.4byte 0xE59FD1C0
	.4byte 0xE28F0001
	.4byte 0xE12FFF10
	.4byte 0xA025490C
	.4byte 0x20036008
	.4byte 0x490B0600
	.4byte 0xF836F000
	.4byte 0x4A0B490A
	.4byte 0xF0004C0B
	.4byte 0x490BF838
	.4byte 0x4C0C4A0B
	.4byte 0xF833F000
	.4byte 0x49024814
	.4byte 0x4700468E
	.4byte 0x46C046C0
	.4byte 0x0200018C
	.4byte 0x03007FFC
	.4byte 0x00007BF0
	.4byte 0x020133BC
	.4byte 0x03006FBC
	.4byte 0x030070B4
	.4byte 0x02012F00
	.4byte 0x03000000
	.4byte 0x030004BC
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x030070B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020134B4
	.4byte 0x020084DD

	.thumb
	.align 1, 0
	.global sub_080055C8
	.thumb_func
sub_080055C8:
	cmp r1, #0
	beq .L080055D4
	movs r2, #0
.L080055CE:
	stmia r0!, {r2}
	subs r1, #4
	bne .L080055CE
.L080055D4:
	bx lr

	.thumb
	.align 1, 0
	.global sub_080055D6
	.thumb_func
sub_080055D6:
	subs r3, r4, r2
	beq .L080055E2
.L080055DA:
	ldmia r1!, {r0}
	stmia r2!, {r0}
	subs r3, #4
	bne .L080055DA
.L080055E2:
	bx lr
	.4byte 0xE3A03301
	.4byte 0xE5B32200
	.4byte 0xE1D310B8
	.4byte 0xE14F0000
	.4byte 0xE92D400F
	.4byte 0xE3A00001
	.4byte 0xE1C300B8
	.4byte 0xE0021822
	.4byte 0xE59FC100
	.4byte 0xE2110001
	.4byte 0x1A000027
	.4byte 0xE28CC004
	.4byte 0xE2110002
	.4byte 0x1A000024
	.4byte 0xE28CC004
	.4byte 0xE2110004
	.4byte 0x1A000021
	.4byte 0xE28CC004
	.4byte 0xE2110008
	.4byte 0x1A00001E
	.4byte 0xE28CC004
	.4byte 0xE2110010
	.4byte 0x1A00001B
	.4byte 0xE28CC004
	.4byte 0xE2110020
	.4byte 0x1A000018
	.4byte 0xE28CC004
	.4byte 0xE2110040
	.4byte 0x1A000015
	.4byte 0xE28CC004
	.4byte 0xE2110080
	.4byte 0x1A000012
	.4byte 0xE2822004
	.4byte 0xE2110C01
	.4byte 0x1A00000F
	.4byte 0xE28CC004
	.4byte 0xE2110C02
	.4byte 0x1A00000C
	.4byte 0xE28CC004
	.4byte 0xE2110B01
	.4byte 0x1A000009
	.4byte 0xE28CC004
	.4byte 0xE2110B02
	.4byte 0x1A000006
	.4byte 0xE28CC004
	.4byte 0xE2110A01
	.4byte 0x1A000003
	.4byte 0xE28CC004
	.4byte 0xE2110A02
	.4byte 0x1543017C
	.4byte 0x1AFFFFFE
	.4byte 0xE1C300B2
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE383301F
	.4byte 0xE129F003
	.4byte 0xE59C0000
	.4byte 0xE92D4000
	.4byte 0xE28FE000
	.4byte 0xE12FFF10
	.4byte 0xE8BD4000
	.4byte 0xE10F3000
	.4byte 0xE3C330DF
	.4byte 0xE3833092
	.4byte 0xE129F003
	.4byte 0xE8BD400F
	.4byte 0xE1C320B0
	.4byte 0xE1C310B8
	.4byte 0xE169F000
	.4byte 0xE12FFF1E
	.4byte 0x04000120
	.4byte 0x020000AC
	.4byte 0x03007FA0
	.4byte 0x03007C00
	.4byte 0x03006FD0

	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_0831683C
	.thumb_func
sub_0831683C:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L0831686C
	movs r0, #0
	b .L0831686E
.L0831686C:
	movs r0, #1
.L0831686E:
	pop {r4}
	pop {r1}
	bx r1

	.thumb
	.align 1, 0
	.global sub_08316874
	.thumb_func
sub_08316874:
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316886
	movs r0, #0
	b .L083168B4
.L08316886:
	movs r0, #1
	bl sub_08318C5C
	cmp r0, r4
	bne .L08316894
	movs r0, #1
	b .L083168B4
.L08316894:
	movs r0, #2
	bl sub_08318C5C
	cmp r0, r4
	bne .L083168A2
	movs r0, #2
	b .L083168B4
.L083168A2:
	movs r0, #3
	bl sub_08318C5C
	cmp r0, r4
	beq .L083168B2
	movs r0, #1
	negs r0, r0
	b .L083168B4
.L083168B2:
	movs r0, #3
.L083168B4:
	pop {r4}
	pop {r1}
	bx r1
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083168BC
	.thumb_func
sub_083168BC:
	push {r4, lr}
	bl sub_08001B7C
	lsls r0, r0, #16
	lsrs r0, r0, #16
	movs r2, #0
	movs r4, #1
	movs r3, #0
	ldr r1, [pc, #8]
.L083168CE:
	cmp r2, r0
	bcs .L083168DC
	strb r4, [r1, #0]
	b .L083168DE
	movs r0, r0
	ldrsb r4, [r3, r4]
	lsls r0, r0, #12
.L083168DC:
	strb r3, [r1, #0]
.L083168DE:
	adds r1, #1
	adds r2, #1
	cmp r2, #255
	bls .L083168CE
	movs r0, #0
	movs r1, #0
	ldr r2, [pc, #16]
.L083168EC:
	stmia r2!, {r1}
	adds r0, #1
	cmp r0, #7
	bls .L083168EC
	pop {r4}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300581C

	.thumb
	.align 1, 0
	.global sub_08316900
	.thumb_func
sub_08316900:
	ldr r2, [pc, #8]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r1, [r0, #0]
	bx lr
	.2byte 0x0000
	.4byte 0x0300581C

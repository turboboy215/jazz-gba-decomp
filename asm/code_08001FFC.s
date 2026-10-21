	.include "asm/macros.inc"
	.syntax unified
	.text

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

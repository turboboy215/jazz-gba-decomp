	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08303190
	.thumb_func
sub_08303190:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
	ldr r6, [pc, #80]
.L08303198:
	bl VBlankIntrWait
	movs r0, #150
	lsls r0, r0, #1
	adds r4, r4, r0
	lsrs r3, r4, #8
	negs r3, r3
	adds r0, r6, #0
	movs r1, #1
	movs r2, #4
	bl sub_08001404
	lsrs r3, r4, #9
	negs r3, r3
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	bl sub_08001404
	lsrs r3, r4, #10
	negs r3, r3
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	bl sub_08001404
	adds r1, r5, #1
	cmp r4, #255
	bls .L083031DA
	ldr r0, [pc, #24]
.L083031D4:
	adds r4, r4, r0
	cmp r4, #255
	bhi .L083031D4
.L083031DA:
	adds r5, r1, #0
	cmp r5, #67
	bls .L08303198
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0xFFFFFF00

	.thumb
	.align 1, 0
	.global sub_083031F0
	.thumb_func
sub_083031F0:
	push {r4, r5, r6, lr}
	movs r4, #0
	movs r5, #0
	ldr r6, [pc, #80]
.L083031F8:
	bl VBlankIntrWait
	movs r0, #150
	lsls r0, r0, #1
	adds r4, r4, r0
	lsrs r3, r4, #8
	adds r0, r6, #0
	movs r1, #1
	movs r2, #4
	negs r2, r2
	bl sub_08001404
	lsrs r3, r4, #9
	adds r0, r6, #0
	movs r1, #2
	movs r2, #2
	negs r2, r2
	bl sub_08001404
	lsrs r3, r4, #10
	adds r0, r6, #0
	movs r1, #3
	movs r2, #1
	negs r2, r2
	bl sub_08001404
	adds r1, r5, #1
	cmp r4, #255
	bls .L0830323A
	ldr r0, [pc, #24]
.L08303234:
	adds r4, r4, r0
	cmp r4, #255
	bhi .L08303234
.L0830323A:
	adds r5, r1, #0
	cmp r5, #67
	bls .L083031F8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.2byte 0x0000
	.4byte 0x0300398C
	.4byte 0xFFFFFF00

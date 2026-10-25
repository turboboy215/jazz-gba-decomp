	.include "asm/macros.inc"
	.syntax unified
	.text

@ Obj_InitAll: [sure] (nonmatching)
	.thumb
	.align 1, 0
	.global sub_0800436C
	.thumb_func
sub_0800436C:
	.global Obj_InitAll
	.thumb_set Obj_InitAll, sub_0800436C
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
	bl Oam_Init
	bl sub_08003F94
	pop {r4}
	pop {r0}
	bx r0
	.4byte 0x030022E8
	.4byte 0x030022EC

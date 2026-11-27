	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_083170E8
	.thumb_func
sub_083170E8:
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08317090
	adds r6, r0, #0
	cmp r4, #0
	beq .L08317112
	cmp r5, #0
	ble .L08317112
	negs r2, r5
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_083170A0
	adds r4, r0, #0
	bl sub_08317090
	cmp r6, r0
	beq .L08317112
	movs r4, #0
.L08317112:
	adds r0, r4, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.2byte 0x0000
	.4byte 0xE92D0F00
	.4byte 0xE3A0C301
	.4byte 0xE59FB02C
	.4byte 0xE28BA028
	.4byte 0xE3A09001
	.4byte 0xE3A08000
	.4byte 0xE5CC8208
	.4byte 0xE89A0003
	.4byte 0xE8AA0002
	.4byte 0xE8AA0001
	.4byte 0xE5DB0005
	.4byte 0xE5CB8005
	.4byte 0xE5CC9208
	.4byte 0xE8BD0F00
	.4byte 0xE12FFF1E
	.4byte 0x03000970

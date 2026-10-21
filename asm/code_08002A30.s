	.include "asm/macros.inc"
	.syntax unified
	.text

@ Sprites_DrawAll: [likely] walks the sprite list at 0x03003A34: show/hide, position, Sprite_Draw, Obj_UpdateAll
	.thumb
	.align 1, 0
	.global sub_08002A30
	.thumb_func
sub_08002A30:
	.global Sprites_DrawAll
	.thumb_set Sprites_DrawAll, sub_08002A30
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
	bl Sprite_Draw
	adds r4, #100
	cmp r4, r5
	bls .L08002B36
	bl sub_080043B4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.4byte 0x03003A34

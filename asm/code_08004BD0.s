	.include "asm/macros.inc"
	.syntax unified
	.text

@ Glyph_Alloc: [likely] reference-counted BG glyph tile cache (0x02002000/0x02002800/0x02003600)
	.thumb
	.align 1, 0
	.global sub_08004BD0
	.thumb_func
sub_08004BD0:
	.global Glyph_Alloc
	.thumb_set Glyph_Alloc, sub_08004BD0
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

@ Glyph_Free: [likely] drops a reference, returns the tile to the free list at 0
	.thumb
	.align 1, 0
	.global sub_08004CA0
	.thumb_func
sub_08004CA0:
	.global Glyph_Free
	.thumb_set Glyph_Free, sub_08004CA0
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

@ Glyph_InitCache: [likely] initialises the glyph tile cache tables at 0x02002000-0x02003600
	.thumb
	.align 1, 0
	.global sub_08004D70
	.thumb_func
sub_08004D70:
	.global Glyph_InitCache
	.thumb_set Glyph_InitCache, sub_08004D70
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

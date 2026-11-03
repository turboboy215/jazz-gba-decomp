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

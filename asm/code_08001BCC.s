	.include "asm/macros.inc"
	.syntax unified
	.text

@ ResBank_GetCell: [likely] cell value from table 16 entry 0, 4/8/16-bit by header byte 8
	.thumb
	.align 1, 0
	.global sub_08001BCC
	.thumb_func
sub_08001BCC:
	.global ResBank_GetCell
	.thumb_set ResBank_GetCell, sub_08001BCC
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

@ Font_CharToGlyph: [sure] A-Z, a-z, 0-9 and punctuation -> glyph index (jump table in rodata)
	.thumb
	.align 1, 0
	.global sub_08001C88
	.thumb_func
sub_08001C88:
	.global Font_CharToGlyph
	.thumb_set Font_CharToGlyph, sub_08001C88
	lsls r0, r0, #24
	lsrs r1, r0, #24
	movs r2, #191
	lsls r2, r2, #24
	adds r0, r0, r2
	lsrs r0, r0, #24
	cmp r0, #25
	bhi .L08001C9E
	adds r0, r1, #0
	subs r0, #64
	b .L08001D0A
.L08001C9E:
	adds r0, r1, #0
	subs r0, #97
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #25
	bhi .L08001CB0
	adds r0, r1, #0
	subs r0, #70
	b .L08001D0A
.L08001CB0:
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08001CC0
	adds r0, r1, #5
	b .L08001D0A
.L08001CC0:
	adds r0, r1, #0
	subs r0, #33
	cmp r0, #61
	bhi .L08001D08
	lsls r0, r0, #2
	ldr r1, [pc, #8]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	movs r0, r0
	adds r0, r2, #7
	lsrs r5, r7, #32
	movs r0, #63
	b .L08001D0A
	movs r0, #64
	b .L08001D0A
	movs r0, #65
	b .L08001D0A
	movs r0, #66
	b .L08001D0A
	movs r0, #67
	b .L08001D0A
	movs r0, #68
	b .L08001D0A
	movs r0, #69
	b .L08001D0A
	movs r0, #70
	b .L08001D0A
	movs r0, #71
	b .L08001D0A
	movs r0, #72
	b .L08001D0A
	movs r0, #73
	b .L08001D0A
	movs r0, #74
	b .L08001D0A
.L08001D08:
	movs r0, #0
.L08001D0A:
	bx lr

@ Font2_CharToGlyph: [sure] second font mapping (jump table in rodata)
	.thumb
	.align 1, 0
	.global sub_08001D0C
	.thumb_func
sub_08001D0C:
	.global Font2_CharToGlyph
	.thumb_set Font2_CharToGlyph, sub_08001D0C
	lsls r0, r0, #24
	lsrs r1, r0, #24
	movs r2, #191
	lsls r2, r2, #24
	adds r0, r0, r2
	lsrs r0, r0, #24
	cmp r0, #25
	bhi .L08001D22
	adds r0, r1, #0
	subs r0, #64
	b .L08001DBA
.L08001D22:
	adds r0, r1, #0
	subs r0, #97
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #25
	bhi .L08001D34
	adds r0, r1, #0
	subs r0, #96
	b .L08001DBA
.L08001D34:
	adds r0, r1, #0
	subs r0, #48
	lsls r0, r0, #24
	lsrs r0, r0, #24
	cmp r0, #9
	bhi .L08001D46
	adds r0, r1, #0
	subs r0, #21
	b .L08001DBA
.L08001D46:
	adds r0, r1, #0
	subs r0, #33
	cmp r0, #91
	bhi .L08001DB8
	lsls r0, r0, #2
	ldr r1, [pc, #4]
	adds r0, r0, r1
	ldr r0, [r0, #0]
	mov pc, r0
	subs r0, r1, #3
	lsrs r5, r7, #32
	movs r0, #38
	b .L08001DBA
	movs r0, #39
	b .L08001DBA
	movs r0, #40
	b .L08001DBA
	movs r0, #41
	b .L08001DBA
	movs r0, #42
	b .L08001DBA
	movs r0, #43
	b .L08001DBA
	movs r0, #44
	b .L08001DBA
	movs r0, #45
	b .L08001DBA
	movs r0, #46
	b .L08001DBA
	movs r0, #47
	b .L08001DBA
	movs r0, #48
	b .L08001DBA
	movs r0, #49
	b .L08001DBA
	movs r0, #50
	b .L08001DBA
	movs r0, #51
	b .L08001DBA
	movs r0, #52
	b .L08001DBA
	movs r0, #53
	b .L08001DBA
	movs r0, #54
	b .L08001DBA
	movs r0, #55
	b .L08001DBA
	movs r0, #56
	b .L08001DBA
	movs r0, #57
	b .L08001DBA
	movs r0, #58
	b .L08001DBA
	movs r0, #59
	b .L08001DBA
	movs r0, #60
	b .L08001DBA
.L08001DB8:
	movs r0, #37
.L08001DBA:
	bx lr

	.include "asm/macros.inc"
	.syntax unified
	.text
	.incbin "baserom.gba", 0x5398, 0xe8

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

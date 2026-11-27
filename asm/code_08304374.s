	.include "asm/macros.inc"
	.syntax unified
	.text

	.thumb
	.align 1, 0
	.global sub_08304374
	.thumb_func
sub_08304374:
	push {r4, r5, lr}
	bl sub_0830423C
	movs r0, #0
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L0830438A
.L08304386:
	bl VBlankIntrWait
.L0830438A:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304386
	movs r4, #0
	ldr r5, [pc, #0]
	b .L0830439E
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830439C:
	adds r4, #1
.L0830439E:
	ldr r0, [pc, #40]
	cmp r4, r0
	bhi .L083043BA
	bl VBlankIntrWait
	ldr r0, [pc, #32]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830439C
.L083043BA:
	movs r0, #1
	movs r1, #192
	movs r2, #10
	bl sub_08316F10
	b .L083043D4
	movs r0, r0
	lsls r7, r4, #5
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
.L083043D0:
	bl VBlankIntrWait
.L083043D4:
	bl sub_08316F50
	cmp r0, #0
	bne .L083043D0
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_083043E4
	.thumb_func
sub_083043E4:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	ldr r4, [pc, #80]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #68]
	strh r0, [r4, #8]
	ldr r0, [pc, #68]
	str r0, [r4, #48]
	ldr r0, [pc, #68]
	str r0, [r4, #44]
	ldr r0, [pc, #68]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #40]
	movs r0, #0
	bl sub_08001FC8
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08304464
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
.L08304460:
	bl VBlankIntrWait
.L08304464:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304460
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830447A
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304478:
	adds r4, #1
.L0830447A:
	cmp r4, #89
	bhi .L08304498
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304478
.L08304498:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083044B2
	b .L08304A6E
.L083044B2:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083044C0
	b .L08304A6E
.L083044C0:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083044E8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	str r1, [sp, #720]
	lsrs r5, r7, #32
.L083044E4:
	bl VBlankIntrWait
.L083044E8:
	bl sub_08316F50
	cmp r0, #0
	bne .L083044E4
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083044FE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083044FC:
	adds r4, #1
.L083044FE:
	cmp r4, #89
	bhi .L0830451C
	bl VBlankIntrWait
	ldr r0, [pc, #208]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083044FC
.L0830451C:
	ldr r4, [pc, #188]
	ldr r1, [pc, #192]
	ldr r2, [pc, #192]
	ldr r3, [pc, #196]
	ldr r0, [pc, #196]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304536
	b .L08304A6E
.L08304536:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304544
	b .L08304A6E
.L08304544:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #156]
	ldr r1, [pc, #160]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830456A
	b .L08304A6E
.L0830456A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304578
	b .L08304A6E
.L08304578:
	ldr r1, [pc, #124]
	ldr r2, [pc, #128]
	ldr r3, [pc, #128]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830458E
	b .L08304A6E
.L0830458E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830459C
	b .L08304A6E
.L0830459C:
	ldr r1, [pc, #100]
	ldr r2, [pc, #104]
	ldr r3, [pc, #104]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083045B4
	b .L08304A6E
.L083045B4:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083045C2
	b .L08304A6E
.L083045C2:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304618
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	str r1, [sp, #832]
	lsrs r5, r7, #32
	str r1, [sp, #944]
	lsrs r5, r7, #32
	str r2, [sp, #32]
	lsrs r5, r7, #32
	str r2, [sp, #128]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r2, [sp, #240]
	lsrs r5, r7, #32
	str r2, [sp, #336]
	lsrs r5, r7, #32
	str r2, [sp, #448]
	lsrs r5, r7, #32
	str r2, [sp, #560]
	lsrs r5, r7, #32
	str r2, [sp, #640]
	lsrs r5, r7, #32
	str r2, [sp, #736]
	lsrs r5, r7, #32
	str r2, [sp, #848]
	lsrs r5, r7, #32
	str r2, [sp, #944]
	lsrs r5, r7, #32
.L08304614:
	bl VBlankIntrWait
.L08304618:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304614
	ldr r5, [pc, #220]
	ldr r1, [pc, #220]
	ldr r2, [pc, #224]
	ldr r3, [pc, #224]
	ldr r0, [pc, #228]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830463C
	b .L08304A6E
.L0830463C:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830464A
	b .L08304A6E
.L0830464A:
	ldr r1, [pc, #200]
	ldr r2, [pc, #200]
	ldr r3, [pc, #204]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304660
	b .L08304A6E
.L08304660:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830466E
	b .L08304A6E
.L0830466E:
	ldr r1, [pc, #176]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304684
	b .L08304A6E
.L08304684:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304692
	b .L08304A6E
.L08304692:
	ldr r1, [pc, #144]
	ldr r2, [pc, #144]
	ldr r3, [pc, #148]
	ldr r0, [pc, #148]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046AA
	b .L08304A6E
.L083046AA:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046B8
	b .L08304A6E
.L083046B8:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046DE
	b .L08304A6E
.L083046DE:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083046EC
	b .L08304A6E
.L083046EC:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L0830474C
	cmp r3, #21
	lsrs r0, r6, #32
	str r3, [sp, #16]
	lsrs r5, r7, #32
	str r3, [sp, #112]
	lsrs r5, r7, #32
	str r3, [sp, #208]
	lsrs r5, r7, #32
	str r3, [sp, #320]
	lsrs r5, r7, #32
	str r3, [sp, #416]
	lsrs r5, r7, #32
	str r3, [sp, #496]
	lsrs r5, r7, #32
	str r3, [sp, #592]
	lsrs r5, r7, #32
	str r3, [sp, #624]
	lsrs r5, r7, #32
	str r3, [sp, #704]
	lsrs r5, r7, #32
	str r3, [sp, #800]
	lsrs r5, r7, #32
	str r3, [sp, #896]
	lsrs r5, r7, #32
	str r3, [sp, #992]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r4, [sp, #64]
	lsrs r5, r7, #32
	str r4, [sp, #112]
	lsrs r5, r7, #32
	str r4, [sp, #224]
	lsrs r5, r7, #32
	str r4, [sp, #336]
	lsrs r5, r7, #32
.L08304748:
	bl VBlankIntrWait
.L0830474C:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304748
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830476E
	b .L08304A6E
.L0830476E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830477C
	b .L08304A6E
.L0830477C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #68]
	ldr r1, [pc, #72]
	ldr r2, [pc, #72]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083047A0
	b .L08304A6E
.L083047A0:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083047AE
	b .L08304A6E
.L083047AE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083047E0
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r4, [sp, #416]
	lsrs r5, r7, #32
	str r4, [sp, #464]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r4, [sp, #512]
	lsrs r5, r7, #32
	str r4, [sp, #608]
	lsrs r5, r7, #32
.L083047DC:
	bl VBlankIntrWait
.L083047E0:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L083047DC
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	ldr r3, [pc, #112]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304804
	b .L08304A6E
.L08304804:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304812
	b .L08304A6E
.L08304812:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #76]
	ldr r1, [pc, #76]
	ldr r2, [pc, #80]
	ldr r3, [pc, #80]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304836
	b .L08304A6E
.L08304836:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304844
	b .L08304A6E
.L08304844:
	bl sub_08317074
	bl sub_08303950
	bl sub_08303AD8
	movs r4, #0
	ldr r5, [pc, #40]
	b .L08304882
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r4, [sp, #704]
	lsrs r5, r7, #32
	str r4, [sp, #784]
	lsrs r5, r7, #32
	str r4, [sp, #880]
	lsrs r5, r7, #32
	str r4, [sp, #976]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r5, [sp, #0]
	lsrs r5, r7, #32
	str r5, [sp, #96]
	lsrs r5, r7, #32
	str r5, [sp, #192]
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304880:
	adds r4, #1
.L08304882:
	cmp r4, #44
	bhi .L083048A0
	bl VBlankIntrWait
	ldr r0, [pc, #156]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303AD8
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304880
.L083048A0:
	ldr r4, [pc, #136]
	ldr r1, [pc, #140]
	ldr r2, [pc, #140]
	ldr r3, [pc, #144]
	ldr r0, [pc, #144]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048BA
	b .L08304A6E
.L083048BA:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048C8
	b .L08304A6E
.L083048C8:
	ldr r1, [pc, #116]
	ldr r2, [pc, #120]
	ldr r3, [pc, #120]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048E0
	b .L08304A6E
.L083048E0:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083048EE
	b .L08304A6E
.L083048EE:
	ldr r1, [pc, #92]
	ldr r2, [pc, #92]
	ldr r3, [pc, #96]
	ldr r0, [pc, #96]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304906
	b .L08304A6E
.L08304906:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304914
	b .L08304A6E
.L08304914:
	bl sub_08317074
	bl sub_08303250
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304960
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r2, #217
	lsrs r0, r6, #32
	str r5, [sp, #256]
	lsrs r5, r7, #32
	str r5, [sp, #352]
	lsrs r5, r7, #32
	str r5, [sp, #448]
	lsrs r5, r7, #32
	str r5, [sp, #544]
	lsrs r5, r7, #32
	str r5, [sp, #624]
	lsrs r5, r7, #32
	str r5, [sp, #704]
	lsrs r5, r7, #32
	str r5, [sp, #784]
	lsrs r5, r7, #32
	str r5, [sp, #864]
	lsrs r5, r7, #32
	str r5, [sp, #960]
	lsrs r5, r7, #32
	str r6, [sp, #32]
	lsrs r5, r7, #32
	str r6, [sp, #144]
	lsrs r5, r7, #32
.L0830495C:
	bl VBlankIntrWait
.L08304960:
	bl sub_08316F50
	cmp r0, #0
	bne .L0830495C
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304976
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304974:
	adds r4, #1
.L08304976:
	cmp r4, #44
	bhi .L08304994
	bl VBlankIntrWait
	ldr r0, [pc, #156]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303390
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304974
.L08304994:
	ldr r4, [pc, #136]
	ldr r1, [pc, #140]
	ldr r2, [pc, #140]
	ldr r3, [pc, #144]
	ldr r0, [pc, #144]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	ldr r1, [pc, #80]
	ldr r2, [pc, #84]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304A48
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r3, #145
	lsrs r0, r6, #32
	str r6, [sp, #224]
	lsrs r5, r7, #32
	str r6, [sp, #320]
	lsrs r5, r7, #32
	str r6, [sp, #432]
	lsrs r5, r7, #32
	str r6, [sp, #528]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r6, [sp, #624]
	lsrs r5, r7, #32
	str r6, [sp, #720]
	lsrs r5, r7, #32
	str r6, [sp, #816]
	lsrs r5, r7, #32
.L08304A44:
	bl VBlankIntrWait
.L08304A48:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304A44
	ldr r4, [pc, #40]
	ldr r1, [pc, #44]
	ldr r2, [pc, #44]
	ldr r3, [pc, #48]
	ldr r0, [pc, #48]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08304A6E
	adds r0, r4, #0
	bl sub_083025FC
.L08304A6E:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L08304A94
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r6, [sp, #896]
	lsrs r5, r7, #32
	str r6, [sp, #976]
	lsrs r5, r7, #32
	str r7, [sp, #48]
	lsrs r5, r7, #32
	str r7, [sp, #160]
	lsrs r5, r7, #32
.L08304A90:
	bl VBlankIntrWait
.L08304A94:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304A90
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08304AAC
	.thumb_func
sub_08304AAC:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08304AC8
.L08304AC4:
	bl VBlankIntrWait
.L08304AC8:
	bl sub_08316F50
	adds r5, r0, #0
	cmp r5, #0
	bne .L08304AC4
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L08304B42
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304B40:
	adds r4, #1
.L08304B42:
	cmp r4, #89
	bhi .L08304B60
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304B40
.L08304B60:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304B7A
	b .L083050A6
.L08304B7A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304B88
	b .L083050A6
.L08304B88:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304BAC
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r7, [sp, #256]
	lsrs r5, r7, #32
.L08304BA8:
	bl VBlankIntrWait
.L08304BAC:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304BA8
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304BC2
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304BC0:
	adds r4, #1
.L08304BC2:
	cmp r4, #89
	bhi .L08304BE0
	bl VBlankIntrWait
	ldr r0, [pc, #168]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304BC0
.L08304BE0:
	ldr r4, [pc, #148]
	ldr r1, [pc, #152]
	ldr r2, [pc, #152]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304BFA
	b .L083050A6
.L08304BFA:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C08
	b .L083050A6
.L08304C08:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #108]
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C2C
	b .L083050A6
.L08304C2C:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C3A
	b .L083050A6
.L08304C3A:
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C50
	b .L083050A6
.L08304C50:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304C5E
	b .L083050A6
.L08304C5E:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304CA4
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	str r7, [sp, #352]
	lsrs r5, r7, #32
	str r7, [sp, #448]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	str r7, [sp, #496]
	lsrs r5, r7, #32
	str r7, [sp, #576]
	lsrs r5, r7, #32
	str r7, [sp, #672]
	lsrs r5, r7, #32
	str r7, [sp, #736]
	lsrs r5, r7, #32
	str r7, [sp, #832]
	lsrs r5, r7, #32
	str r7, [sp, #928]
	lsrs r5, r7, #32
.L08304CA0:
	bl VBlankIntrWait
.L08304CA4:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304CA0
	ldr r5, [pc, #108]
	ldr r1, [pc, #108]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CC6
	b .L083050A6
.L08304CC6:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CD4
	b .L083050A6
.L08304CD4:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #64]
	ldr r1, [pc, #68]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304CF8
	b .L083050A6
.L08304CF8:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D06
	b .L083050A6
.L08304D06:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304D30
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	str r7, [sp, #1008]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r0, [sp, #96]
	lsrs r5, r7, #32
.L08304D2C:
	bl VBlankIntrWait
.L08304D30:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08304D2C
	ldr r5, [pc, #216]
	ldr r1, [pc, #216]
	ldr r2, [pc, #220]
	ldr r3, [pc, #220]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D52
	b .L083050A6
.L08304D52:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D60
	b .L083050A6
.L08304D60:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #180]
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D84
	b .L083050A6
.L08304D84:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304D92
	b .L083050A6
.L08304D92:
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DA8
	b .L083050A6
.L08304DA8:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DB6
	b .L083050A6
.L08304DB6:
	ldr r1, [pc, #132]
	ldr r2, [pc, #132]
	ldr r3, [pc, #136]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DCC
	b .L083050A6
.L08304DCC:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DDA
	b .L083050A6
.L08304DDA:
	ldr r1, [pc, #108]
	ldr r2, [pc, #108]
	ldr r3, [pc, #112]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DF0
	b .L083050A6
.L08304DF0:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304DFE
	b .L083050A6
.L08304DFE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304E58
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r0, [sp, #208]
	lsrs r5, r7, #32
	ldr r0, [sp, #272]
	lsrs r5, r7, #32
	ldr r0, [sp, #368]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r0, [sp, #432]
	lsrs r5, r7, #32
	ldr r0, [sp, #544]
	lsrs r5, r7, #32
	ldr r0, [sp, #640]
	lsrs r5, r7, #32
	ldr r0, [sp, #672]
	lsrs r5, r7, #32
	ldr r0, [sp, #752]
	lsrs r5, r7, #32
	ldr r0, [sp, #864]
	lsrs r5, r7, #32
	ldr r0, [sp, #960]
	lsrs r5, r7, #32
	ldr r1, [sp, #48]
	lsrs r5, r7, #32
	ldr r1, [sp, #160]
	lsrs r5, r7, #32
	ldr r1, [sp, #240]
	lsrs r5, r7, #32
	ldr r1, [sp, #352]
	lsrs r5, r7, #32
.L08304E54:
	bl VBlankIntrWait
.L08304E58:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304E54
	ldr r4, [pc, #52]
	ldr r1, [pc, #56]
	ldr r2, [pc, #56]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304E78
	b .L083050A6
.L08304E78:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304E86
	b .L083050A6
.L08304E86:
	bl sub_08317074
	bl sub_08303B20
	bl sub_08303CA8
	movs r4, #0
	ldr r5, [pc, #12]
	b .L08304EAA
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r1, [sp, #464]
	lsrs r5, r7, #32
	ldr r1, [sp, #544]
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304EA8:
	adds r4, #1
.L08304EAA:
	cmp r4, #44
	bhi .L08304EC8
	bl VBlankIntrWait
	ldr r0, [pc, #228]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303CA8
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304EA8
.L08304EC8:
	ldr r4, [pc, #208]
	ldr r1, [pc, #212]
	ldr r2, [pc, #212]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304EE2
	b .L083050A6
.L08304EE2:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304EF0
	b .L083050A6
.L08304EF0:
	ldr r1, [pc, #180]
	ldr r2, [pc, #184]
	ldr r3, [pc, #184]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F06
	b .L083050A6
.L08304F06:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F14
	b .L083050A6
.L08304F14:
	ldr r1, [pc, #156]
	ldr r2, [pc, #160]
	ldr r3, [pc, #160]
	ldr r0, [pc, #164]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F2C
	b .L083050A6
.L08304F2C:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F3A
	b .L083050A6
.L08304F3A:
	ldr r1, [pc, #136]
	ldr r2, [pc, #136]
	ldr r3, [pc, #140]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F50
	b .L083050A6
.L08304F50:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F5E
	b .L083050A6
.L08304F5E:
	ldr r1, [pc, #112]
	ldr r2, [pc, #112]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F74
	b .L083050A6
.L08304F74:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08304F82
	b .L083050A6
.L08304F82:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08304FE0
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r4, #169
	lsrs r0, r6, #32
	ldr r1, [sp, #656]
	lsrs r5, r7, #32
	ldr r1, [sp, #752]
	lsrs r5, r7, #32
	ldr r1, [sp, #832]
	lsrs r5, r7, #32
	ldr r1, [sp, #928]
	lsrs r5, r7, #32
	ldr r2, [sp, #0]
	lsrs r5, r7, #32
	ldr r2, [sp, #48]
	lsrs r5, r7, #32
	ldr r2, [sp, #144]
	lsrs r5, r7, #32
	ldr r2, [sp, #256]
	lsrs r5, r7, #32
	ldr r2, [sp, #352]
	lsrs r5, r7, #32
	ldr r2, [sp, #400]
	lsrs r5, r7, #32
	ldr r2, [sp, #496]
	lsrs r5, r7, #32
	ldr r2, [sp, #592]
	lsrs r5, r7, #32
	ldr r2, [sp, #624]
	lsrs r5, r7, #32
	ldr r2, [sp, #720]
	lsrs r5, r7, #32
	ldr r2, [sp, #832]
	lsrs r5, r7, #32
.L08304FDC:
	bl VBlankIntrWait
.L08304FE0:
	bl sub_08316F50
	cmp r0, #0
	bne .L08304FDC
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08304FF6
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08304FF4:
	adds r4, #1
.L08304FF6:
	cmp r4, #44
	bhi .L08305014
	bl VBlankIntrWait
	ldr r0, [pc, #180]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08304FF4
.L08305014:
	ldr r4, [pc, #160]
	ldr r1, [pc, #164]
	ldr r2, [pc, #164]
	ldr r3, [pc, #168]
	ldr r0, [pc, #168]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	ldr r0, [pc, #152]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #116]
	ldr r1, [pc, #116]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	ldr r0, [pc, #92]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083050A6
	adds r0, r4, #0
	bl sub_083025FC
.L083050A6:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083050F8
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r2, [sp, #928]
	lsrs r5, r7, #32
	ldr r3, [sp, #0]
	lsrs r5, r7, #32
	ldr r3, [sp, #96]
	lsrs r5, r7, #32
	ldr r3, [sp, #176]
	lsrs r5, r7, #32
	ldr r3, [sp, #256]
	lsrs r5, r7, #32
	ldr r3, [sp, #352]
	lsrs r5, r7, #32
	ldr r3, [sp, #448]
	lsrs r5, r7, #32
	ldr r3, [sp, #544]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r3, [sp, #640]
	lsrs r5, r7, #32
	ldr r3, [sp, #688]
	lsrs r5, r7, #32
	ldr r3, [sp, #768]
	lsrs r5, r7, #32
	ldr r3, [sp, #880]
	lsrs r5, r7, #32
	ldr r3, [sp, #976]
	lsrs r5, r7, #32
.L083050F4:
	bl VBlankIntrWait
.L083050F8:
	bl sub_08316F50
	cmp r0, #0
	bne .L083050F4
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08305110
	.thumb_func
sub_08305110:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L0830512C
.L08305128:
	bl VBlankIntrWait
.L0830512C:
	bl sub_08316F50
	adds r5, r0, #0
	cmp r5, #0
	bne .L08305128
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L083051A6
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083051A4:
	adds r4, #1
.L083051A6:
	cmp r4, #89
	bhi .L083051C4
	bl VBlankIntrWait
	ldr r0, [pc, #84]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083051A4
.L083051C4:
	ldr r4, [pc, #64]
	ldr r1, [pc, #68]
	ldr r2, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083051E0
	bl sub_08305E20
.L083051E0:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083051F0
	bl sub_08305E20
.L083051F0:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305218
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	str r1, [sp, #720]
	lsrs r5, r7, #32
.L08305214:
	bl VBlankIntrWait
.L08305218:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305214
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830522E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830522C:
	adds r4, #1
.L0830522E:
	cmp r4, #89
	bhi .L0830524C
	bl VBlankIntrWait
	ldr r0, [pc, #220]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302B14
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830522C
.L0830524C:
	ldr r4, [pc, #200]
	ldr r1, [pc, #204]
	ldr r2, [pc, #204]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305268
	bl sub_08305E20
.L08305268:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305278
	bl sub_08305E20
.L08305278:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #156]
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830529E
	bl sub_08305E20
.L0830529E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052AE
	bl sub_08305E20
.L083052AE:
	ldr r1, [pc, #128]
	ldr r2, [pc, #128]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052C6
	bl sub_08305E20
.L083052C6:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052D6
	bl sub_08305E20
.L083052D6:
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	ldr r3, [pc, #100]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052EE
	bl sub_08305E20
.L083052EE:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083052FE
	bl sub_08305E20
.L083052FE:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305348
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #0]
	lsrs r5, r7, #32
	ldr r4, [sp, #80]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r4, [sp, #128]
	lsrs r5, r7, #32
	ldr r4, [sp, #208]
	lsrs r5, r7, #32
	ldr r4, [sp, #272]
	lsrs r5, r7, #32
	ldr r4, [sp, #368]
	lsrs r5, r7, #32
	ldr r4, [sp, #448]
	lsrs r5, r7, #32
	ldr r4, [sp, #560]
	lsrs r5, r7, #32
	ldr r4, [sp, #640]
	lsrs r5, r7, #32
.L08305344:
	bl VBlankIntrWait
.L08305348:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305344
	ldr r5, [pc, #116]
	ldr r1, [pc, #116]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830536C
	bl sub_08305E20
.L0830536C:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830537C
	bl sub_08305E20
.L0830537C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #68]
	ldr r1, [pc, #72]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083053A2
	bl sub_08305E20
.L083053A2:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083053B2
	bl sub_08305E20
.L083053B2:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083053DC
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #704]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r4, [sp, #784]
	lsrs r5, r7, #32
.L083053D8:
	bl VBlankIntrWait
.L083053DC:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L083053D8
	ldr r5, [pc, #200]
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	ldr r3, [pc, #204]
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305402
	bl sub_08305E20
.L08305402:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305412
	bl sub_08305E20
.L08305412:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #164]
	ldr r1, [pc, #164]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305438
	bl sub_08305E20
.L08305438:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305448
	bl sub_08305E20
.L08305448:
	ldr r1, [pc, #128]
	ldr r2, [pc, #132]
	ldr r3, [pc, #132]
	ldr r0, [pc, #136]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305462
	bl sub_08305E20
.L08305462:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305472
	bl sub_08305E20
.L08305472:
	ldr r1, [pc, #104]
	ldr r2, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830548A
	bl sub_08305E20
.L0830548A:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830549A
	bl sub_08305E20
.L0830549A:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083054E8
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r4, [sp, #832]
	lsrs r5, r7, #32
	ldr r4, [sp, #896]
	lsrs r5, r7, #32
	ldr r4, [sp, #992]
	lsrs r5, r7, #32
	ldr r5, [sp, #64]
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	ldr r5, [sp, #176]
	lsrs r5, r7, #32
	ldr r5, [sp, #272]
	lsrs r5, r7, #32
	ldr r5, [sp, #368]
	lsrs r5, r7, #32
	ldr r5, [sp, #480]
	lsrs r5, r7, #32
	ldr r5, [sp, #576]
	lsrs r5, r7, #32
	ldr r5, [sp, #640]
	lsrs r5, r7, #32
	ldr r5, [sp, #752]
	lsrs r5, r7, #32
.L083054E4:
	bl VBlankIntrWait
.L083054E8:
	bl sub_08316F50
	cmp r0, #0
	bne .L083054E4
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830550A
	bl sub_08305E20
.L0830550A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830551A
	bl sub_08305E20
.L0830551A:
	bl sub_08317074
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L0830553C
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	ldr r5, [sp, #800]
	lsrs r5, r7, #32
.L08305538:
	bl VBlankIntrWait
.L0830553C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305538
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830555E
	bl sub_08305E20
.L0830555E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830556E
	bl sub_08305E20
.L0830556E:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305598
	movs r0, r0
	cmp r4, #181
	lsrs r0, r6, #32
	ldr r5, [sp, #864]
	lsrs r5, r7, #32
	ldr r5, [sp, #928]
	lsrs r5, r7, #32
	ldr r5, [sp, #1008]
	lsrs r5, r7, #32
.L08305594:
	bl VBlankIntrWait
.L08305598:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305594
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083055AE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083055AC:
	adds r4, #1
.L083055AE:
	cmp r4, #44
	bhi .L083055C8
	bl VBlankIntrWait
	ldr r0, [pc, #636]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083055AC
.L083055C8:
	ldr r1, [pc, #620]
	ldr r2, [pc, #624]
	ldr r3, [pc, #624]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083055E2
	bl sub_08305E20
.L083055E2:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083055F2
	bl sub_08305E20
.L083055F2:
	ldr r1, [pc, #592]
	ldr r2, [pc, #592]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830560A
	bl sub_08305E20
.L0830560A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830561A
	bl sub_08305E20
.L0830561A:
	ldr r1, [pc, #560]
	ldr r2, [pc, #560]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305632
	bl sub_08305E20
.L08305632:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305640
	.2byte 0xe3ef @ b.n 0x8305e20
.L08305640:
	ldr r1, [pc, #528]
	ldr r2, [pc, #532]
	ldr r3, [pc, #532]
	ldr r0, [pc, #536]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305658
	.2byte 0xe3e3 @ b.n 0x8305e20
.L08305658:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305666
	.2byte 0xe3dc @ b.n 0x8305e20
.L08305666:
	ldr r1, [pc, #508]
	ldr r2, [pc, #508]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830567C
	.2byte 0xe3d1 @ b.n 0x8305e20
.L0830567C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830568A
	.2byte 0xe3ca @ b.n 0x8305e20
.L0830568A:
	ldr r1, [pc, #480]
	ldr r2, [pc, #480]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056A0
	.2byte 0xe3bf @ b.n 0x8305e20
.L083056A0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056AE
	.2byte 0xe3b8 @ b.n 0x8305e20
.L083056AE:
	ldr r1, [pc, #452]
	ldr r2, [pc, #452]
	ldr r3, [pc, #456]
	ldr r0, [pc, #456]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056C6
	.2byte 0xe3ac @ b.n 0x8305e20
.L083056C6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056D4
	.2byte 0xe3a5 @ b.n 0x8305e20
.L083056D4:
	ldr r1, [pc, #428]
	ldr r2, [pc, #432]
	ldr r3, [pc, #432]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056EA
	.2byte 0xe39a @ b.n 0x8305e20
.L083056EA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083056F8
	.2byte 0xe393 @ b.n 0x8305e20
.L083056F8:
	ldr r1, [pc, #404]
	ldr r2, [pc, #408]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830570E
	.2byte 0xe388 @ b.n 0x8305e20
.L0830570E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830571C
	.2byte 0xe381 @ b.n 0x8305e20
.L0830571C:
	ldr r1, [pc, #376]
	ldr r2, [pc, #380]
	ldr r3, [pc, #380]
	ldr r0, [pc, #384]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305734
	.2byte 0xe375 @ b.n 0x8305e20
.L08305734:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305742
	.2byte 0xe36e @ b.n 0x8305e20
.L08305742:
	ldr r1, [pc, #356]
	ldr r2, [pc, #356]
	ldr r3, [pc, #360]
	ldr r0, [pc, #360]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830575A
	.2byte 0xe362 @ b.n 0x8305e20
.L0830575A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305768
	.2byte 0xe35b @ b.n 0x8305e20
.L08305768:
	ldr r1, [pc, #332]
	ldr r2, [pc, #336]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830577E
	.2byte 0xe350 @ b.n 0x8305e20
.L0830577E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830578C
	.2byte 0xe349 @ b.n 0x8305e20
.L0830578C:
	ldr r5, [pc, #304]
	str r4, [sp, #0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057A4
	.2byte 0xe33d @ b.n 0x8305e20
.L083057A4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057B2
	.2byte 0xe336 @ b.n 0x8305e20
.L083057B2:
	ldr r1, [pc, #272]
	ldr r2, [pc, #272]
	ldr r3, [pc, #276]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057C8
	.2byte 0xe32b @ b.n 0x8305e20
.L083057C8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057D6
	.2byte 0xe324 @ b.n 0x8305e20
.L083057D6:
	str r4, [sp, #0]
	movs r0, #0
	adds r1, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057EC
	.2byte 0xe319 @ b.n 0x8305e20
.L083057EC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083057FA
	.2byte 0xe312 @ b.n 0x8305e20
.L083057FA:
	ldr r1, [pc, #212]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305810
	.2byte 0xe307 @ b.n 0x8305e20
.L08305810:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830581E
	.2byte 0xe300 @ b.n 0x8305e20
.L0830581E:
	bl sub_08317074
	bl sub_083033A8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083058D8
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	ldr r6, [sp, #64]
	lsrs r5, r7, #32
	ldr r6, [sp, #160]
	lsrs r5, r7, #32
	ldr r6, [sp, #272]
	lsrs r5, r7, #32
	ldr r6, [sp, #304]
	lsrs r5, r7, #32
	ldr r6, [sp, #384]
	lsrs r5, r7, #32
	ldr r6, [sp, #464]
	lsrs r5, r7, #32
	ldr r6, [sp, #560]
	lsrs r5, r7, #32
	ldr r6, [sp, #672]
	lsrs r5, r7, #32
	ldr r6, [sp, #784]
	lsrs r5, r7, #32
	ldr r6, [sp, #864]
	lsrs r5, r7, #32
	ldr r6, [sp, #960]
	lsrs r5, r7, #32
	ldr r7, [sp, #0]
	lsrs r5, r7, #32
	ldr r7, [sp, #112]
	lsrs r5, r7, #32
	ldr r7, [sp, #160]
	lsrs r5, r7, #32
	ldr r7, [sp, #256]
	lsrs r5, r7, #32
	ldr r7, [sp, #320]
	lsrs r5, r7, #32
	ldr r7, [sp, #432]
	lsrs r5, r7, #32
	ldr r7, [sp, #528]
	lsrs r5, r7, #32
	ldr r7, [sp, #640]
	lsrs r5, r7, #32
	ldr r7, [sp, #720]
	lsrs r5, r7, #32
	ldr r7, [sp, #816]
	lsrs r5, r7, #32
	ldr r7, [sp, #912]
	lsrs r5, r7, #32
	ldr r7, [sp, #992]
	lsrs r5, r7, #32
	add r0, pc, #80
	lsrs r5, r7, #32
	add r0, pc, #176
	lsrs r5, r7, #32
	add r0, pc, #288
	lsrs r5, r7, #32
	add r0, pc, #384
	lsrs r5, r7, #32
	add r0, pc, #480
	lsrs r5, r7, #32
	add r0, pc, #528
	lsrs r5, r7, #32
	add r0, pc, #624
	lsrs r5, r7, #32
	add r0, pc, #720
	lsrs r5, r7, #32
	add r0, pc, #816
	lsrs r5, r7, #32
	add r0, pc, #880
	lsrs r5, r7, #32
	add r0, pc, #976
	lsrs r5, r7, #32
	add r1, pc, #32
	lsrs r5, r7, #32
	add r1, pc, #80
	lsrs r5, r7, #32
	add r1, pc, #176
	lsrs r5, r7, #32
	add r1, pc, #272
	lsrs r5, r7, #32
	add r1, pc, #384
	lsrs r5, r7, #32
.L083058D4:
	bl VBlankIntrWait
.L083058D8:
	bl sub_08316F50
	cmp r0, #0
	bne .L083058D4
	movs r4, #0
	ldr r5, [pc, #4]
	b .L083058EE
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083058EC:
	adds r4, #1
.L083058EE:
	cmp r4, #44
	bhi .L0830590C
	bl sub_08303530
	bl VBlankIntrWait
	ldr r0, [pc, #76]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083058EC
.L0830590C:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305926
	.2byte 0xe27c @ b.n 0x8305e20
.L08305926:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305934
	.2byte 0xe275 @ b.n 0x8305e20
.L08305934:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L0830595C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r5, #49
	lsrs r0, r6, #32
	add r1, pc, #496
	lsrs r5, r7, #32
	add r1, pc, #592
	lsrs r5, r7, #32
.L08305958:
	bl VBlankIntrWait
.L0830595C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305958
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305972
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305970:
	adds r4, #1
.L08305972:
	cmp r4, #44
	bhi .L0830598C
	bl VBlankIntrWait
	ldr r0, [pc, #292]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305970
.L0830598C:
	ldr r1, [pc, #276]
	ldr r2, [pc, #280]
	ldr r3, [pc, #280]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059A4
	.2byte 0xe23d @ b.n 0x8305e20
.L083059A4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059B2
	.2byte 0xe236 @ b.n 0x8305e20
.L083059B2:
	ldr r1, [pc, #252]
	ldr r2, [pc, #252]
	ldr r3, [pc, #256]
	ldr r0, [pc, #256]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059CA
	.2byte 0xe22a @ b.n 0x8305e20
.L083059CA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059D8
	.2byte 0xe223 @ b.n 0x8305e20
.L083059D8:
	ldr r1, [pc, #228]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059EE
	.2byte 0xe218 @ b.n 0x8305e20
.L083059EE:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083059FC
	.2byte 0xe211 @ b.n 0x8305e20
.L083059FC:
	ldr r1, [pc, #196]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A12
	.2byte 0xe206 @ b.n 0x8305e20
.L08305A12:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A20
	.2byte 0xe1ff @ b.n 0x8305e20
.L08305A20:
	ldr r1, [pc, #164]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A36
	.2byte 0xe1f4 @ b.n 0x8305e20
.L08305A36:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A44
	.2byte 0xe1ed @ b.n 0x8305e20
.L08305A44:
	ldr r1, [pc, #132]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A5A
	.2byte 0xe1e2 @ b.n 0x8305e20
.L08305A5A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A68
	.2byte 0xe1db @ b.n 0x8305e20
.L08305A68:
	ldr r1, [pc, #100]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A7E
	.2byte 0xe1d0 @ b.n 0x8305e20
.L08305A7E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305A8C
	.2byte 0xe1c9 @ b.n 0x8305e20
.L08305A8C:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305AD8
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r1, pc, #688
	lsrs r5, r7, #32
	add r1, pc, #784
	lsrs r5, r7, #32
	add r1, pc, #896
	lsrs r5, r7, #32
	add r1, pc, #976
	lsrs r5, r7, #32
	add r2, pc, #64
	lsrs r5, r7, #32
	add r2, pc, #144
	lsrs r5, r7, #32
	add r2, pc, #240
	lsrs r5, r7, #32
	add r2, pc, #352
	lsrs r5, r7, #32
	add r2, pc, #400
	lsrs r5, r7, #32
	add r2, pc, #496
	lsrs r5, r7, #32
	add r2, pc, #576
	lsrs r5, r7, #32
	add r2, pc, #656
	lsrs r5, r7, #32
.L08305AD4:
	bl VBlankIntrWait
.L08305AD8:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305AD4
	ldr r5, [pc, #92]
	ldr r1, [pc, #92]
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305AFA
	.2byte 0xe192 @ b.n 0x8305e20
.L08305AFA:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B08
	.2byte 0xe18b @ b.n 0x8305e20
.L08305B08:
	ldr r1, [pc, #64]
	ldr r2, [pc, #68]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B1E
	.2byte 0xe180 @ b.n 0x8305e20
.L08305B1E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B2C
	.2byte 0xe179 @ b.n 0x8305e20
.L08305B2C:
	bl sub_08317074
	bl sub_08303CF0
	bl sub_08303E78
	movs r4, #0
	ldr r5, [pc, #24]
	b .L08305B5A
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	add r2, pc, #768
	lsrs r5, r7, #32
	add r2, pc, #880
	lsrs r5, r7, #32
	add r2, pc, #976
	lsrs r5, r7, #32
	add r3, pc, #48
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305B58:
	adds r4, #1
.L08305B5A:
	cmp r4, #44
	bhi .L08305B78
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303E78
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305B58
.L08305B78:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305B92
	.2byte 0xe146 @ b.n 0x8305e20
.L08305B92:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305BA0
	.2byte 0xe13f @ b.n 0x8305e20
.L08305BA0:
	bl sub_08317074
	bl sub_08302F0C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305BCC
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r6, #121
	lsrs r0, r6, #32
	add r3, pc, #80
	lsrs r5, r7, #32
	add r3, pc, #176
	lsrs r5, r7, #32
	add r3, pc, #272
	lsrs r5, r7, #32
.L08305BC8:
	bl VBlankIntrWait
.L08305BCC:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305BC8
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305BE2
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305BE0:
	adds r4, #1
.L08305BE2:
	cmp r4, #44
	bhi .L08305BFC
	bl VBlankIntrWait
	ldr r0, [pc, #224]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305BE0
.L08305BFC:
	ldr r1, [pc, #208]
	ldr r2, [pc, #212]
	ldr r3, [pc, #212]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C14
	.2byte 0xe105 @ b.n 0x8305e20
.L08305C14:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C22
	.2byte 0xe0fe @ b.n 0x8305e20
.L08305C22:
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C38
	.2byte 0xe0f3 @ b.n 0x8305e20
.L08305C38:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C46
	.2byte 0xe0ec @ b.n 0x8305e20
.L08305C46:
	ldr r1, [pc, #160]
	ldr r2, [pc, #160]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C5C
	.2byte 0xe0e1 @ b.n 0x8305e20
.L08305C5C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C6A
	.2byte 0xe0da @ b.n 0x8305e20
.L08305C6A:
	ldr r1, [pc, #132]
	ldr r2, [pc, #132]
	ldr r3, [pc, #136]
	ldr r0, [pc, #136]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C82
	.2byte 0xe0ce @ b.n 0x8305e20
.L08305C82:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305C90
	.2byte 0xe0c7 @ b.n 0x8305e20
.L08305C90:
	ldr r1, [pc, #108]
	ldr r2, [pc, #112]
	ldr r3, [pc, #112]
	ldr r0, [pc, #116]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305CA8
	.2byte 0xe0bb @ b.n 0x8305e20
.L08305CA8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305CB6
	.2byte 0xe0b4 @ b.n 0x8305e20
.L08305CB6:
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305D14
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r3, pc, #384
	lsrs r5, r7, #32
	add r3, pc, #496
	lsrs r5, r7, #32
	add r3, pc, #592
	lsrs r5, r7, #32
	add r3, pc, #656
	lsrs r5, r7, #32
	add r3, pc, #768
	lsrs r5, r7, #32
	add r3, pc, #864
	lsrs r5, r7, #32
	add r3, pc, #960
	lsrs r5, r7, #32
	add r4, pc, #48
	lsrs r5, r7, #32
	add r4, pc, #160
	lsrs r5, r7, #32
	add r4, pc, #256
	lsrs r5, r7, #32
	add r4, pc, #352
	lsrs r5, r7, #32
	add r4, pc, #448
	lsrs r5, r7, #32
	add r4, pc, #496
	lsrs r5, r7, #32
	add r4, pc, #608
	lsrs r5, r7, #32
	add r4, pc, #704
	lsrs r5, r7, #32
	add r4, pc, #800
	lsrs r5, r7, #32
.L08305D10:
	bl VBlankIntrWait
.L08305D14:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08305D10
	ldr r5, [pc, #164]
	ldr r1, [pc, #164]
	ldr r2, [pc, #168]
	ldr r3, [pc, #168]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd075 @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd06f @ beq.n 0x8305e20
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd065 @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd05f @ beq.n 0x8305e20
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #112]
	ldr r1, [pc, #116]
	ldr r2, [pc, #116]
	ldr r3, [pc, #120]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd04e @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd048 @ beq.n 0x8305e20
	ldr r1, [pc, #96]
	ldr r2, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd03e @ beq.n 0x8305e20
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd038 @ beq.n 0x8305e20
	bl sub_08317074
	bl sub_0830298C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305DFC
	movs r0, r0
	cmp r3, #21
	lsrs r0, r6, #32
	add r4, pc, #864
	lsrs r5, r7, #32
	add r4, pc, #976
	lsrs r5, r7, #32
	add r5, pc, #48
	lsrs r5, r7, #32
	add r5, pc, #96
	lsrs r5, r7, #32
	add r5, pc, #208
	lsrs r5, r7, #32
	add r5, pc, #320
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r5, pc, #384
	lsrs r5, r7, #32
	add r5, pc, #496
	lsrs r5, r7, #32
	add r5, pc, #576
	lsrs r5, r7, #32
	add r5, pc, #624
	lsrs r5, r7, #32
	add r5, pc, #672
	lsrs r5, r7, #32
.L08305DF8:
	bl VBlankIntrWait
.L08305DFC:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305DF8
	ldr r4, [pc, #36]
	ldr r1, [pc, #40]
	ldr r2, [pc, #40]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	.2byte 0xd002 @ beq.n 0x8305e20
	adds r0, r4, #0
	bl sub_083025FC

	.thumb
	.align 1, 0
	.global sub_08305E20
	.thumb_func
sub_08305E20:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L08305E3C
	cmp r3, #21
	lsrs r0, r6, #32
	add r5, pc, #736
	lsrs r5, r7, #32
	add r5, pc, #832
	lsrs r5, r7, #32
.L08305E38:
	bl VBlankIntrWait
.L08305E3C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305E38
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_08305E54
	.thumb_func
sub_08305E54:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08305E70
.L08305E6C:
	bl VBlankIntrWait
.L08305E70:
	bl sub_08316F50
	adds r5, r0, #0
	cmp r5, #0
	bne .L08305E6C
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L08305EEA
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305EE8:
	adds r4, #1
.L08305EEA:
	cmp r4, #89
	bhi .L08305F08
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08302CB4
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305EE8
.L08305F08:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305F22
	b .L08306606
.L08305F22:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305F30
	b .L08306606
.L08305F30:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08305F58
	lsrs r0, r2, #20
	lsls r0, r0, #12
	cmp r4, #181
	lsrs r0, r6, #32
	str r1, [sp, #608]
	lsrs r5, r7, #32
	add r5, pc, #880
	lsrs r5, r7, #32
.L08305F54:
	bl VBlankIntrWait
.L08305F58:
	bl sub_08316F50
	cmp r0, #0
	bne .L08305F54
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08305F6E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08305F6C:
	adds r4, #1
.L08305F6E:
	cmp r4, #89
	bhi .L08305F88
	bl VBlankIntrWait
	ldr r0, [pc, #180]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08305F6C
.L08305F88:
	ldr r1, [pc, #164]
	ldr r2, [pc, #168]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FA0
	b .L08306606
.L08305FA0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FAE
	b .L08306606
.L08305FAE:
	ldr r1, [pc, #136]
	ldr r2, [pc, #136]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FC4
	b .L08306606
.L08305FC4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FD2
	b .L08306606
.L08305FD2:
	ldr r1, [pc, #108]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FE8
	b .L08306606
.L08305FE8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08305FF6
	b .L08306606
.L08305FF6:
	ldr r1, [pc, #76]
	ldr r2, [pc, #76]
	ldr r3, [pc, #80]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830600C
	b .L08306606
.L0830600C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830601A
	b .L08306606
.L0830601A:
	bl sub_08317074
	bl sub_08303EC0
	bl sub_08304050
	ldr r5, [pc, #40]
	b .L08306056
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r5, pc, #992
	lsrs r5, r7, #32
	add r6, pc, #48
	lsrs r5, r7, #32
	add r6, pc, #112
	lsrs r5, r7, #32
	add r6, pc, #208
	lsrs r5, r7, #32
	add r6, pc, #272
	lsrs r5, r7, #32
	add r6, pc, #352
	lsrs r5, r7, #32
	add r6, pc, #464
	lsrs r5, r7, #32
	add r6, pc, #576
	lsrs r5, r7, #32
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306054:
	adds r4, #1
.L08306056:
	cmp r4, #89
	bhi .L08306074
	bl VBlankIntrWait
	ldr r0, [pc, #120]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08304050
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306054
.L08306074:
	ldr r4, [pc, #100]
	ldr r1, [pc, #104]
	ldr r2, [pc, #104]
	ldr r3, [pc, #108]
	ldr r0, [pc, #108]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830608E
	b .L08306606
.L0830608E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830609C
	b .L08306606
.L0830609C:
	ldr r1, [pc, #80]
	ldr r2, [pc, #84]
	ldr r3, [pc, #84]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083060B4
	b .L08306606
.L083060B4:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083060C2
	b .L08306606
.L083060C2:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306100
	movs r0, r0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	eors r1, r2
	lsrs r0, r6, #32
	add r6, pc, #656
	lsrs r5, r7, #32
	add r6, pc, #752
	lsrs r5, r7, #32
	add r6, pc, #864
	lsrs r5, r7, #32
	add r6, pc, #976
	lsrs r5, r7, #32
	add r7, pc, #16
	lsrs r5, r7, #32
	add r7, pc, #112
	lsrs r5, r7, #32
	add r7, pc, #208
	lsrs r5, r7, #32
.L083060FC:
	bl VBlankIntrWait
.L08306100:
	bl sub_08316F50
	cmp r0, #0
	bne .L083060FC
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306116
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306114:
	adds r4, #1
.L08306116:
	cmp r4, #89
	bhi .L08306130
	bl VBlankIntrWait
	ldr r0, [pc, #272]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306114
.L08306130:
	ldr r1, [pc, #256]
	ldr r2, [pc, #260]
	ldr r3, [pc, #260]
	ldr r0, [pc, #264]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306148
	b .L08306606
.L08306148:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306156
	b .L08306606
.L08306156:
	ldr r1, [pc, #236]
	movs r5, #0
	str r5, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830616E
	b .L08306606
.L0830616E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830617C
	b .L08306606
.L0830617C:
	ldr r1, [pc, #200]
	str r5, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306192
	b .L08306606
.L08306192:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061A0
	b .L08306606
.L083061A0:
	ldr r1, [pc, #168]
	ldr r2, [pc, #172]
	ldr r3, [pc, #172]
	str r5, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061B6
	b .L08306606
.L083061B6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061C4
	b .L08306606
.L083061C4:
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	ldr r3, [pc, #148]
	ldr r0, [pc, #152]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061DC
	b .L08306606
.L083061DC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083061EA
	b .L08306606
.L083061EA:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r4, [pc, #112]
	ldr r1, [pc, #112]
	ldr r2, [pc, #116]
	ldr r3, [pc, #116]
	str r5, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830620E
	b .L08306606
.L0830620E:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830621C
	b .L08306606
.L0830621C:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L0830627C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r7, pc, #288
	lsrs r5, r7, #32
	add r7, pc, #400
	lsrs r5, r7, #32
	add r7, pc, #496
	lsrs r5, r7, #32
	add r7, pc, #608
	lsrs r5, r7, #32
	add r7, pc, #656
	lsrs r5, r7, #32
	add r7, pc, #736
	lsrs r5, r7, #32
	add r7, pc, #816
	lsrs r5, r7, #32
	add r7, pc, #912
	lsrs r5, r7, #32
	add r7, pc, #1008
	lsrs r5, r7, #32
	add r0, sp, #16
	lsrs r5, r7, #32
	add r0, sp, #112
	lsrs r5, r7, #32
	add r0, sp, #208
	lsrs r5, r7, #32
	add r0, sp, #304
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r0, sp, #352
	lsrs r5, r7, #32
	add r0, sp, #448
	lsrs r5, r7, #32
	add r0, sp, #544
	lsrs r5, r7, #32
.L08306278:
	bl VBlankIntrWait
.L0830627C:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08306278
	ldr r1, [pc, #252]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830629C
	b .L08306606
.L0830629C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062AA
	b .L08306606
.L083062AA:
	ldr r1, [pc, #220]
	ldr r2, [pc, #220]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062C0
	b .L08306606
.L083062C0:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062CE
	b .L08306606
.L083062CE:
	ldr r1, [pc, #192]
	ldr r2, [pc, #192]
	ldr r3, [pc, #196]
	ldr r0, [pc, #196]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062E6
	b .L08306606
.L083062E6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083062F4
	b .L08306606
.L083062F4:
	ldr r1, [pc, #168]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830630A
	b .L08306606
.L0830630A:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306318
	b .L08306606
.L08306318:
	ldr r1, [pc, #136]
	ldr r2, [pc, #140]
	ldr r3, [pc, #140]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830632E
	b .L08306606
.L0830632E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830633C
	b .L08306606
.L0830633C:
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #100]
	ldr r1, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306360
	b .L08306606
.L08306360:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830636E
	b .L08306606
.L0830636E:
	bl sub_08317074
	bl sub_083040FC
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L083063BC
	movs r0, r0
	add r0, sp, #640
	lsrs r5, r7, #32
	add r0, sp, #688
	lsrs r5, r7, #32
	add r0, sp, #784
	lsrs r5, r7, #32
	add r0, sp, #880
	lsrs r5, r7, #32
	add r0, sp, #992
	lsrs r5, r7, #32
	add r1, sp, #80
	lsrs r5, r7, #32
	add r1, sp, #176
	lsrs r5, r7, #32
	add r1, sp, #208
	lsrs r5, r7, #32
	add r1, sp, #272
	lsrs r5, r7, #32
	add r1, sp, #368
	lsrs r5, r7, #32
	add r1, sp, #480
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r1, sp, #528
	lsrs r5, r7, #32
.L083063B8:
	bl VBlankIntrWait
.L083063BC:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L083063B8
	ldr r1, [pc, #308]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083063DC
	b .L08306606
.L083063DC:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083063EA
	b .L08306606
.L083063EA:
	ldr r1, [pc, #276]
	ldr r2, [pc, #276]
	ldr r3, [pc, #280]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306400
	b .L08306606
.L08306400:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830640E
	b .L08306606
.L0830640E:
	ldr r1, [pc, #252]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306424
	b .L08306606
.L08306424:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306432
	b .L08306606
.L08306432:
	ldr r1, [pc, #220]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306448
	b .L08306606
.L08306448:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306456
	b .L08306606
.L08306456:
	ldr r1, [pc, #188]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830646C
	b .L08306606
.L0830646C:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830647A
	b .L08306606
.L0830647A:
	ldr r1, [pc, #156]
	ldr r2, [pc, #156]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306490
	b .L08306606
.L08306490:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830649E
	b .L08306606
.L0830649E:
	ldr r1, [pc, #128]
	ldr r2, [pc, #128]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064B4
	b .L08306606
.L083064B4:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064C2
	b .L08306606
.L083064C2:
	ldr r1, [pc, #100]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064D8
	b .L08306606
.L083064D8:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083064E6
	b .L08306606
.L083064E6:
	bl sub_08317074
	bl sub_08302B5C
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306530
	movs r0, r0
	add r1, sp, #608
	lsrs r5, r7, #32
	add r1, sp, #672
	lsrs r5, r7, #32
	add r1, sp, #768
	lsrs r5, r7, #32
	add r1, sp, #880
	lsrs r5, r7, #32
	add r1, sp, #944
	lsrs r5, r7, #32
	add r1, sp, #1008
	lsrs r5, r7, #32
	add r2, sp, #16
	lsrs r5, r7, #32
	add r2, sp, #64
	lsrs r5, r7, #32
	add r2, sp, #160
	lsrs r5, r7, #32
	add r2, sp, #208
	lsrs r5, r7, #32
	add r2, sp, #288
	lsrs r5, r7, #32
	add r2, sp, #368
	lsrs r5, r7, #32
.L0830652C:
	bl VBlankIntrWait
.L08306530:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L0830652C
	ldr r5, [pc, #220]
	ldr r1, [pc, #220]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	bl sub_08317074
	bl sub_08302D10
	bl sub_08302E98
	ldr r5, [pc, #180]
	ldr r1, [pc, #184]
	ldr r2, [pc, #184]
	ldr r3, [pc, #188]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #164]
	ldr r2, [pc, #164]
	ldr r3, [pc, #168]
	ldr r0, [pc, #168]
	str r0, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #120]
	ldr r2, [pc, #124]
	ldr r3, [pc, #124]
	str r4, [sp, #0]
	adds r0, r5, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	ldr r1, [pc, #100]
	ldr r2, [pc, #104]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306606
	adds r0, r5, #0
	bl sub_083025FC
.L08306606:
	movs r0, #1
	bl sub_08310110
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306660
	cmp r4, #181
	lsrs r0, r6, #32
	add r2, sp, #464
	lsrs r5, r7, #32
	cmp r6, #153
	lsrs r0, r6, #32
	add r2, sp, #560
	lsrs r5, r7, #32
	add r2, sp, #640
	lsrs r5, r7, #32
	add r2, sp, #720
	lsrs r5, r7, #32
	add r2, sp, #784
	lsrs r5, r7, #32
	add r2, sp, #880
	lsrs r5, r7, #32
	add r2, sp, #992
	lsrs r5, r7, #32
	add r3, sp, #64
	lsrs r5, r7, #32
	add r3, sp, #160
	lsrs r5, r7, #32
	add r3, sp, #272
	lsrs r5, r7, #32
	add r3, sp, #352
	lsrs r5, r7, #32
	add r3, sp, #448
	lsrs r5, r7, #32
	add r3, sp, #512
	lsrs r5, r7, #32
	add r3, sp, #576
	lsrs r5, r7, #32
	add r3, sp, #688
	lsrs r5, r7, #32
.L0830665C:
	bl VBlankIntrWait
.L08306660:
	bl sub_08316F50
	cmp r0, #0
	bne .L0830665C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08306670
	.thumb_func
sub_08306670:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08302798
	ldr r4, [pc, #92]
	adds r0, r4, #0
	bl sub_083177CC
	adds r1, r4, #0
	adds r1, #56
	movs r0, #0
	strb r0, [r1, #0]
	ldr r0, [pc, #80]
	strh r0, [r4, #8]
	ldr r0, [pc, #80]
	str r0, [r4, #48]
	ldr r0, [pc, #80]
	str r0, [r4, #44]
	ldr r0, [pc, #80]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #64]
	ldr r0, [r0, #0]
	bl sub_083167F8
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_08318CA4
	ldr r0, [pc, #52]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #40]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #36]
	b .L08306702
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	lsrs r4, r0, #16
	lsrs r6, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r4, [r6, r6]
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306700:
	adds r4, #1
.L08306702:
	cmp r4, #89
	bhi .L0830671C
	bl VBlankIntrWait
	ldr r0, [pc, #216]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306700
.L0830671C:
	ldr r1, [pc, #200]
	ldr r2, [pc, #204]
	ldr r3, [pc, #204]
	ldr r0, [pc, #208]
	str r0, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306734
	b .L083068EC
.L08306734:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306742
	b .L083068EC
.L08306742:
	bl sub_08302958
	ldr r1, [pc, #176]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830675E
	b .L083068EC
.L0830675E:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L0830676C
	b .L083068EC
.L0830676C:
	ldr r1, [pc, #140]
	ldr r2, [pc, #144]
	ldr r3, [pc, #144]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306782
	b .L083068EC
.L08306782:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306790
	b .L083068EC
.L08306790:
	ldr r1, [pc, #116]
	ldr r2, [pc, #120]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067A6
	b .L083068EC
.L083067A6:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067B4
	b .L083068EC
.L083067B4:
	ldr r1, [pc, #88]
	ldr r2, [pc, #92]
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067CA
	b .L083068EC
.L083067CA:
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L083067D8
	b .L083068EC
.L083067D8:
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L0830681C
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r3, sp, #752
	lsrs r5, r7, #32
	add r3, sp, #864
	lsrs r5, r7, #32
	add r3, sp, #960
	lsrs r5, r7, #32
	add r4, sp, #32
	lsrs r5, r7, #32
	add r4, sp, #96
	lsrs r5, r7, #32
	add r4, sp, #160
	lsrs r5, r7, #32
	add r4, sp, #256
	lsrs r5, r7, #32
	add r4, sp, #352
	lsrs r5, r7, #32
	add r4, sp, #400
	lsrs r5, r7, #32
	add r4, sp, #496
	lsrs r5, r7, #32
	add r4, sp, #576
	lsrs r5, r7, #32
	add r4, sp, #688
	lsrs r5, r7, #32
.L08306818:
	bl VBlankIntrWait
.L0830681C:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306818
	bl sub_08303008
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306838
.L08306834:
	bl VBlankIntrWait
.L08306838:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306834
	movs r4, #0
	ldr r5, [pc, #4]
	b .L0830684E
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L0830684C:
	adds r4, #1
.L0830684E:
	cmp r4, #89
	bhi .L08306868
	bl VBlankIntrWait
	ldr r0, [pc, #160]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L0830684C
.L08306868:
	ldr r1, [pc, #144]
	ldr r2, [pc, #148]
	movs r4, #0
	str r4, [sp, #0]
	movs r0, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	bl sub_08303190
	ldr r1, [pc, #116]
	str r4, [sp, #0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	ldr r1, [pc, #88]
	ldr r2, [pc, #88]
	ldr r3, [pc, #92]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	bl sub_083031F0
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	str r4, [sp, #0]
	movs r0, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L083068EC
	movs r0, #0
	bl sub_083025FC
.L083068EC:
	movs r0, #1
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08306924
	lsrs r0, r2, #20
	lsls r0, r0, #12
	add r4, sp, #800
	lsrs r5, r7, #32
	add r4, sp, #880
	lsrs r5, r7, #32
	add r4, sp, #928
	lsrs r5, r7, #32
	add r4, sp, #992
	lsrs r5, r7, #32
	add r5, sp, #48
	lsrs r5, r7, #32
	add r5, sp, #144
	lsrs r5, r7, #32
	add r5, sp, #224
	lsrs r5, r7, #32
	add r5, sp, #336
	lsrs r5, r7, #32
	add r5, sp, #400
	lsrs r5, r7, #32
.L08306920:
	bl VBlankIntrWait
.L08306924:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306920
	movs r0, #1
	bl sub_08310110
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.2byte 0x0000

	.thumb
	.align 1, 0
	.global sub_0830693C
	.thumb_func
sub_0830693C:
	push {r4, r5, lr}
	sub sp, #4
	bl sub_08316824
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #30
	bl sub_08316F10
	b .L08306958
.L08306954:
	bl VBlankIntrWait
.L08306958:
	bl sub_08316F50
	adds r5, r0, #0
	cmp r5, #0
	bne .L08306954
	ldr r4, [pc, #76]
	adds r0, r4, #0
	bl sub_083177CC
	adds r0, r4, #0
	adds r0, #56
	strb r5, [r0, #0]
	ldr r0, [pc, #64]
	strh r0, [r4, #8]
	ldr r0, [pc, #64]
	str r0, [r4, #48]
	ldr r0, [pc, #64]
	str r0, [r4, #44]
	ldr r0, [pc, #64]
	str r0, [r4, #0]
	movs r0, #128
	lsls r0, r0, #5
	str r0, [r4, #4]
	adds r0, r4, #0
	bl GAX2_init
	movs r4, #1
	negs r4, r4
	ldr r0, [pc, #48]
	ldr r0, [r0, #0]
	bl sub_08316810
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_083191AC
	ldr r1, [pc, #36]
	movs r0, #0
	bl sub_08001FC8
	movs r4, #0
	ldr r5, [pc, #32]
	b .L083069D2
	movs r0, r0
	mov r8, ip
	lsls r0, r0, #12
	strh r1, [r4, r0]
	movs r0, r0
	.2byte 0xf2e4 @ .raw
	lsrs r5, r6, #32
	adds r4, r3, #1
	lsrs r5, r7, #32
	.2byte 0x471c @ .raw bxns r3
	lsls r0, r0, #12
	ldr r0, [r7, r6]
	lsls r0, r0, #12
	lsrs r5, r7, #1
	lsls r0, r0, #12
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L083069D0:
	adds r4, #1
.L083069D2:
	cmp r4, #89
	bhi .L083069F0
	bl sub_08303688
	bl VBlankIntrWait
	ldr r0, [pc, #76]
	adds r1, r5, #0
	bl sub_08002094
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L083069D0
.L083069F0:
	ldr r4, [pc, #60]
	ldr r1, [pc, #64]
	ldr r2, [pc, #64]
	ldr r3, [pc, #68]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A0A
	b .L08306D9A
.L08306A0A:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A18
	b .L08306D9A
.L08306A18:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306A44
	lsrs r0, r2, #20
	lsls r0, r0, #12
	adds r6, #137
	lsrs r0, r6, #32
	add r5, sp, #480
	lsrs r5, r7, #32
	add r5, sp, #560
	lsrs r5, r7, #32
	add r5, sp, #640
	lsrs r5, r7, #32
.L08306A40:
	bl VBlankIntrWait
.L08306A44:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306A40
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306A5A
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306A58:
	adds r4, #1
.L08306A5A:
	cmp r4, #89
	bhi .L08306A78
	bl VBlankIntrWait
	ldr r0, [pc, #116]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303938
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306A58
.L08306A78:
	ldr r4, [pc, #96]
	ldr r1, [pc, #100]
	movs r5, #0
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306A92
	b .L08306D9A
.L08306A92:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AA0
	b .L08306D9A
.L08306AA0:
	ldr r1, [pc, #64]
	ldr r2, [pc, #68]
	str r5, [sp, #0]
	adds r0, r4, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AB6
	b .L08306D9A
.L08306AB6:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306AC4
	b .L08306D9A
.L08306AC4:
	bl sub_08317074
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306AF0
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r1, #57
	lsrs r0, r6, #32
	add r5, sp, #720
	lsrs r5, r7, #32
	add r5, sp, #800
	lsrs r5, r7, #32
	add r5, sp, #880
	lsrs r5, r7, #32
.L08306AEC:
	bl VBlankIntrWait
.L08306AF0:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306AEC
	ldr r4, [pc, #56]
	ldr r1, [pc, #60]
	ldr r2, [pc, #60]
	ldr r3, [pc, #64]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B10
	b .L08306D9A
.L08306B10:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B1E
	b .L08306D9A
.L08306B1E:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306B48
	movs r0, r0
	adds r6, #137
	lsrs r0, r6, #32
	add r5, sp, #960
	lsrs r5, r7, #32
	add r6, sp, #32
	lsrs r5, r7, #32
	add r6, sp, #128
	lsrs r5, r7, #32
.L08306B44:
	bl VBlankIntrWait
.L08306B48:
	bl sub_08316F50
	adds r4, r0, #0
	cmp r4, #0
	bne .L08306B44
	ldr r5, [pc, #128]
	ldr r1, [pc, #128]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B6A
	b .L08306D9A
.L08306B6A:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B78
	b .L08306D9A
.L08306B78:
	ldr r1, [pc, #96]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B8E
	b .L08306D9A
.L08306B8E:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306B9C
	b .L08306D9A
.L08306B9C:
	ldr r1, [pc, #64]
	str r4, [sp, #0]
	adds r0, r5, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306BB2
	b .L08306D9A
.L08306BB2:
	adds r0, r5, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306BC0
	b .L08306D9A
.L08306BC0:
	bl sub_08317074
	bl sub_08303548
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306BE8
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #176
	lsrs r5, r7, #32
	add r6, sp, #224
	lsrs r5, r7, #32
	add r1, sp, #1008
	lsrs r5, r7, #32
.L08306BE4:
	bl VBlankIntrWait
.L08306BE8:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306BE4
	ldr r4, [pc, #48]
	ldr r1, [pc, #52]
	str r0, [sp, #0]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306C08
	b .L08306D9A
.L08306C08:
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	bne .L08306C16
	b .L08306D9A
.L08306C16:
	movs r0, #1
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L08306C30
	movs r0, r0
	adds r6, #137
	lsrs r0, r6, #32
	add r6, sp, #256
	lsrs r5, r7, #32
.L08306C2C:
	bl VBlankIntrWait
.L08306C30:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306C2C
	bl sub_083036A0
	movs r0, #0
	movs r1, #192
	movs r2, #60
	bl sub_08316F10
	b .L08306C50
.L08306C48:
	bl sub_083037E0
	bl VBlankIntrWait
.L08306C50:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306C48
	ldr r4, [pc, #56]
	movs r5, #15
.L08306C5C:
	bl VBlankIntrWait
	ldr r0, [pc, #52]
	adds r1, r4, #0
	bl sub_08002094
	bl sub_083037E0
	adds r0, r5, #0
	ldrh r1, [r4, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306C5C
	ldr r0, [pc, #36]
	ldrb r0, [r0, #0]
	cmp r0, #3
	bls .L08306C80
	b .L08306D9A
.L08306C80:
	bl sub_08317074
	bl sub_083037F8
	movs r0, #0
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306CA4
	lsrs r2, r2, #20
	lsls r0, r0, #12
	lsrs r0, r2, #20
	lsls r0, r0, #12
	strb r4, [r3, #21]
	lsls r0, r0, #8
.L08306CA0:
	bl VBlankIntrWait
.L08306CA4:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306CA0
	movs r4, #0
	ldr r5, [pc, #4]
	b .L08306CBA
	movs r0, r0
	lsrs r2, r2, #20
	lsls r0, r0, #12
.L08306CB8:
	adds r4, #1
.L08306CBA:
	cmp r4, #89
	bhi .L08306CD8
	bl VBlankIntrWait
	ldr r0, [pc, #80]
	adds r1, r5, #0
	bl sub_08002094
	bl sub_08303938
	movs r0, #11
	ldrh r1, [r5, #0]
	ands r0, r1
	cmp r0, #0
	beq .L08306CB8
.L08306CD8:
	movs r0, #17
	bl sub_083189D0
	ldr r4, [pc, #56]
	ldr r1, [pc, #56]
	ldr r2, [pc, #60]
	ldr r3, [pc, #60]
	movs r0, #0
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	ldr r0, [pc, #36]
	ldrb r0, [r0, #0]
	cmp r0, #1
	beq .L08306D4C
	cmp r0, #1
	bgt .L08306D2C
	cmp r0, #0
	beq .L08306D32
	b .L08306D9A
	lsrs r0, r2, #20
	lsls r0, r0, #12
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #320
	lsrs r5, r7, #32
	add r6, sp, #400
	lsrs r5, r7, #32
	add r6, sp, #496
	lsrs r5, r7, #32
	strb r6, [r4, #21]
	lsls r0, r0, #8
.L08306D2C:
	cmp r0, #3
	bgt .L08306D9A
	b .L08306D7C
.L08306D32:
	ldr r1, [pc, #8]
	ldr r2, [pc, #8]
	ldr r3, [pc, #12]
	ldr r0, [pc, #12]
	b .L08306D54
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r6, sp, #736
	lsrs r5, r7, #32
	add r6, sp, #832
	lsrs r5, r7, #32
.L08306D4C:
	ldr r1, [pc, #28]
	ldr r2, [pc, #32]
	ldr r3, [pc, #32]
	ldr r0, [pc, #36]
.L08306D54:
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
	b .L08306D9A
	movs r0, r0
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r6, sp, #928
	lsrs r5, r7, #32
	add r7, sp, #0
	lsrs r5, r7, #32
.L08306D7C:
	ldr r4, [pc, #44]
	ldr r1, [pc, #48]
	ldr r2, [pc, #48]
	ldr r3, [pc, #52]
	ldr r0, [pc, #52]
	str r0, [sp, #0]
	adds r0, r4, #0
	bl sub_083022DC
	lsls r0, r0, #24
	cmp r0, #0
	beq .L08306D9A
	adds r0, r4, #0
	bl sub_083025FC
.L08306D9A:
	movs r0, #1
	bl sub_08310110
	movs r0, #1
	movs r1, #192
	movs r2, #3
	bl sub_08316F10
	b .L08306DC4
	subs r1, #57
	lsrs r0, r6, #32
	add r6, sp, #528
	lsrs r5, r7, #32
	add r6, sp, #624
	lsrs r5, r7, #32
	add r7, sp, #96
	lsrs r5, r7, #32
	add r7, sp, #192
	lsrs r5, r7, #32
.L08306DC0:
	bl VBlankIntrWait
.L08306DC4:
	bl sub_08316F50
	cmp r0, #0
	bne .L08306DC0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	.thumb
	.align 1, 0
	.global sub_08306DD4
	.thumb_func
sub_08306DD4:
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	adds r5, r2, #0
	adds r6, r3, #0
	add r0, sp, #20
	add r1, sp, #24
	ldrb r2, [r0, #0]
	ldrb r3, [r1, #0]
	mov r0, ip
	adds r0, #46
	ldrb r0, [r0, #0]
	cmp r0, #0
	beq .L08306E1A
	mov r1, ip
	adds r1, #230
	movs r0, #1
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #232
	str r4, [r0, #0]
	adds r0, #4
	strh r5, [r0, #0]
	adds r0, #4
	str r6, [r0, #0]
	adds r0, #4
	strb r2, [r0, #0]
	adds r1, #16
	ldr r0, [sp, #16]
	strb r0, [r1, #0]
	mov r0, ip
	adds r0, #245
	strb r3, [r0, #0]
	movs r0, #1
	b .L08306E22
.L08306E1A:
	mov r0, ip
	bl sub_08306E28
	movs r0, #0
.L08306E22:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

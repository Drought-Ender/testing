.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q32og6Screen16CallBack_Message
__vt__Q32og6Screen16CallBack_Message:
	.4byte 0
	.4byte 0
	.4byte __dt__Q32og6Screen16CallBack_MessageFv
	.4byte getChildCount__5CNodeFv
	.4byte update__Q32og6Screen16CallBack_MessageFv
	.4byte draw__Q32og6Screen16CallBack_MessageFR8GraphicsR14J2DGrafContext
	.4byte doInit__Q29P2DScreen4NodeFv
	.4byte 0

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051D670
lbl_8051D670:
	.4byte 0x00000000
.global lbl_8051D674
lbl_8051D674:
	.float 1.0
.global lbl_8051D678
lbl_8051D678:
	.float 0.5
.global lbl_8051D67C
lbl_8051D67C:
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q32og6Screen16CallBack_MessageFv
__ct__Q32og6Screen16CallBack_MessageFv:
/* 80309614 00306554  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309618 00306558  7C 08 02 A6 */	mflr r0
/* 8030961C 0030655C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309620 00306560  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309624 00306564  7C 7F 1B 78 */	mr r31, r3
/* 80309628 00306568  48 10 7D 69 */	bl __ct__5CNodeFv
/* 8030962C 0030656C  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen4Node@ha
/* 80309630 00306570  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 80309634 00306574  38 03 7B 0C */	addi r0, r3, __vt__Q29P2DScreen4Node@l
/* 80309638 00306578  3C 60 80 4E */	lis r3, __vt__Q32og6Screen16CallBack_Message@ha
/* 8030963C 0030657C  90 1F 00 00 */	stw r0, 0(r31)
/* 80309640 00306580  38 A0 00 00 */	li r5, 0
/* 80309644 00306584  38 84 7F 2C */	addi r4, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 80309648 00306588  38 03 81 88 */	addi r0, r3, __vt__Q32og6Screen16CallBack_Message@l
/* 8030964C 0030658C  90 BF 00 18 */	stw r5, 0x18(r31)
/* 80309650 00306590  7F E3 FB 78 */	mr r3, r31
/* 80309654 00306594  C0 22 F3 10 */	lfs f1, lbl_8051D670@sda21(r2)
/* 80309658 00306598  90 9F 00 00 */	stw r4, 0(r31)
/* 8030965C 0030659C  C0 02 F3 14 */	lfs f0, lbl_8051D674@sda21(r2)
/* 80309660 003065A0  90 1F 00 00 */	stw r0, 0(r31)
/* 80309664 003065A4  80 8D 97 C0 */	lwz r4, gLib2D__2og@sda21(r13)
/* 80309668 003065A8  80 04 00 18 */	lwz r0, 0x18(r4)
/* 8030966C 003065AC  90 1F 00 1C */	stw r0, 0x1c(r31)
/* 80309670 003065B0  90 BF 00 24 */	stw r5, 0x24(r31)
/* 80309674 003065B4  90 BF 00 20 */	stw r5, 0x20(r31)
/* 80309678 003065B8  90 BF 00 28 */	stw r5, 0x28(r31)
/* 8030967C 003065BC  90 BF 00 2C */	stw r5, 0x2c(r31)
/* 80309680 003065C0  D0 3F 00 30 */	stfs f1, 0x30(r31)
/* 80309684 003065C4  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 80309688 003065C8  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8030968C 003065CC  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 80309690 003065D0  D0 1F 00 3C */	stfs f0, 0x3c(r31)
/* 80309694 003065D4  D0 1F 00 38 */	stfs f0, 0x38(r31)
/* 80309698 003065D8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8030969C 003065DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803096A0 003065E0  7C 08 03 A6 */	mtlr r0
/* 803096A4 003065E4  38 21 00 10 */	addi r1, r1, 0x10
/* 803096A8 003065E8  4E 80 00 20 */	blr 

.global draw__Q32og6Screen16CallBack_MessageFR8GraphicsR14J2DGrafContext
draw__Q32og6Screen16CallBack_MessageFR8GraphicsR14J2DGrafContext:
/* 803096AC 003065EC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803096B0 003065F0  7C 08 02 A6 */	mflr r0
/* 803096B4 003065F4  90 01 00 54 */	stw r0, 0x54(r1)
/* 803096B8 003065F8  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 803096BC 003065FC  7C 9F 23 78 */	mr r31, r4
/* 803096C0 00306600  93 C1 00 48 */	stw r30, 0x48(r1)
/* 803096C4 00306604  7C 7E 1B 78 */	mr r30, r3
/* 803096C8 00306608  93 A1 00 44 */	stw r29, 0x44(r1)
/* 803096CC 0030660C  7C BD 2B 78 */	mr r29, r5
/* 803096D0 00306610  80 63 00 18 */	lwz r3, 0x18(r3)
/* 803096D4 00306614  48 00 02 0D */	bl checkVisibleGlb__Q22og6ScreenFP7J2DPane
/* 803096D8 00306618  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803096DC 0030661C  41 82 01 68 */	beq .L_80309844
/* 803096E0 00306620  80 7E 00 18 */	lwz r3, 0x18(r30)
/* 803096E4 00306624  80 1E 00 20 */	lwz r0, 0x20(r30)
/* 803096E8 00306628  80 83 00 18 */	lwz r4, 0x18(r3)
/* 803096EC 0030662C  80 A3 00 1C */	lwz r5, 0x1c(r3)
/* 803096F0 00306630  80 7E 00 24 */	lwz r3, 0x24(r30)
/* 803096F4 00306634  7C 80 02 78 */	xor r0, r4, r0
/* 803096F8 00306638  7C A3 1A 78 */	xor r3, r5, r3
/* 803096FC 0030663C  7C 60 03 79 */	or. r0, r3, r0
/* 80309700 00306640  41 82 00 20 */	beq .L_80309720
/* 80309704 00306644  90 BE 00 24 */	stw r5, 0x24(r30)
/* 80309708 00306648  38 BE 00 28 */	addi r5, r30, 0x28
/* 8030970C 0030664C  38 DE 00 2C */	addi r6, r30, 0x2c
/* 80309710 00306650  90 9E 00 20 */	stw r4, 0x20(r30)
/* 80309714 00306654  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 80309718 00306658  80 9E 00 24 */	lwz r4, 0x24(r30)
/* 8030971C 0030665C  48 13 3C 11 */	bl convertU64ToMessageID__5P2JMEFUxPUlPUl
.L_80309720:
/* 80309720 00306660  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80309724 00306664  38 7D 00 80 */	addi r3, r29, 0x80
/* 80309728 00306668  38 A1 00 08 */	addi r5, r1, 8
/* 8030972C 0030666C  38 84 00 80 */	addi r4, r4, 0x80
/* 80309730 00306670  4B DE 0B D1 */	bl PSMTXConcat
/* 80309734 00306674  38 61 00 08 */	addi r3, r1, 8
/* 80309738 00306678  38 80 00 00 */	li r4, 0
/* 8030973C 0030667C  4B DD FE 3D */	bl GXLoadPosMtxImm
/* 80309740 00306680  80 BE 00 18 */	lwz r5, 0x18(r30)
/* 80309744 00306684  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 80309748 00306688  C0 A2 F3 10 */	lfs f5, lbl_8051D670@sda21(r2)
/* 8030974C 0030668C  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 80309750 00306690  88 85 00 B7 */	lbz r4, 0xb7(r5)
/* 80309754 00306694  C0 65 00 28 */	lfs f3, 0x28(r5)
/* 80309758 00306698  FC 80 28 90 */	fmr f4, f5
/* 8030975C 0030669C  7C 60 20 96 */	mulhw r3, r0, r4
/* 80309760 003066A0  C0 45 00 20 */	lfs f2, 0x20(r5)
/* 80309764 003066A4  C0 25 00 2C */	lfs f1, 0x2c(r5)
/* 80309768 003066A8  C0 05 00 24 */	lfs f0, 0x24(r5)
/* 8030976C 003066AC  EC 43 10 28 */	fsubs f2, f3, f2
/* 80309770 003066B0  EC 21 00 28 */	fsubs f1, f1, f0
/* 80309774 003066B4  54 60 0F FE */	srwi r0, r3, 0x1f
/* 80309778 003066B8  7C 03 02 14 */	add r0, r3, r0
/* 8030977C 003066BC  1C 00 00 03 */	mulli r0, r0, 3
/* 80309780 003066C0  7C 00 20 50 */	subf r0, r0, r4
/* 80309784 003066C4  2C 00 00 01 */	cmpwi r0, 1
/* 80309788 003066C8  40 82 00 10 */	bne .L_80309798
/* 8030978C 003066CC  C0 02 F3 18 */	lfs f0, lbl_8051D678@sda21(r2)
/* 80309790 003066D0  EC A2 00 32 */	fmuls f5, f2, f0
/* 80309794 003066D4  48 00 00 10 */	b .L_803097A4
.L_80309798:
/* 80309798 003066D8  2C 00 00 02 */	cmpwi r0, 2
/* 8030979C 003066DC  40 82 00 08 */	bne .L_803097A4
/* 803097A0 003066E0  FC A0 10 90 */	fmr f5, f2
.L_803097A4:
/* 803097A4 003066E4  3C 60 55 55 */	lis r3, 0x55555556@ha
/* 803097A8 003066E8  38 03 55 56 */	addi r0, r3, 0x55555556@l
/* 803097AC 003066EC  7C 60 20 96 */	mulhw r3, r0, r4
/* 803097B0 003066F0  54 60 0F FE */	srwi r0, r3, 0x1f
/* 803097B4 003066F4  7C 03 02 14 */	add r0, r3, r0
/* 803097B8 003066F8  2C 00 00 01 */	cmpwi r0, 1
/* 803097BC 003066FC  40 82 00 10 */	bne .L_803097CC
/* 803097C0 00306700  C0 02 F3 18 */	lfs f0, lbl_8051D678@sda21(r2)
/* 803097C4 00306704  EC 81 00 32 */	fmuls f4, f1, f0
/* 803097C8 00306708  48 00 00 10 */	b .L_803097D8
.L_803097CC:
/* 803097CC 0030670C  2C 00 00 02 */	cmpwi r0, 2
/* 803097D0 00306710  40 82 00 08 */	bne .L_803097D8
/* 803097D4 00306714  FC 80 08 90 */	fmr f4, f1
.L_803097D8:
/* 803097D8 00306718  D0 BE 00 30 */	stfs f5, 0x30(r30)
/* 803097DC 0030671C  D0 9E 00 34 */	stfs f4, 0x34(r30)
/* 803097E0 00306720  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 803097E4 00306724  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 803097E8 00306728  FC 00 00 50 */	fneg f0, f0
/* 803097EC 0030672C  80 63 00 00 */	lwz r3, 0(r3)
/* 803097F0 00306730  D0 03 00 54 */	stfs f0, 0x54(r3)
/* 803097F4 00306734  C0 1E 00 34 */	lfs f0, 0x34(r30)
/* 803097F8 00306738  FC 00 00 50 */	fneg f0, f0
/* 803097FC 0030673C  D0 03 00 58 */	stfs f0, 0x58(r3)
/* 80309800 00306740  80 9E 00 18 */	lwz r4, 0x18(r30)
/* 80309804 00306744  48 13 36 69 */	bl setTextBoxInfo__Q25P2JME19TRenderingProcessorFP7J2DPane
/* 80309808 00306748  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8030980C 0030674C  7F E4 FB 78 */	mr r4, r31
/* 80309810 00306750  C0 7E 00 44 */	lfs f3, 0x44(r30)
/* 80309814 00306754  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80309818 00306758  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 8030981C 0030675C  80 63 00 00 */	lwz r3, 0(r3)
/* 80309820 00306760  C0 1E 00 38 */	lfs f0, 0x38(r30)
/* 80309824 00306764  D0 03 00 7C */	stfs f0, 0x7c(r3)
/* 80309828 00306768  D0 23 00 80 */	stfs f1, 0x80(r3)
/* 8030982C 0030676C  D0 43 00 84 */	stfs f2, 0x84(r3)
/* 80309830 00306770  D0 63 00 88 */	stfs f3, 0x88(r3)
/* 80309834 00306774  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 80309838 00306778  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 8030983C 0030677C  80 DE 00 2C */	lwz r6, 0x2c(r30)
/* 80309840 00306780  48 13 44 1D */	bl drawMessageID__Q25P2JME13SimpleMessageFR8GraphicsUlUl
.L_80309844:
/* 80309844 00306784  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80309848 00306788  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 8030984C 0030678C  83 C1 00 48 */	lwz r30, 0x48(r1)
/* 80309850 00306790  83 A1 00 44 */	lwz r29, 0x44(r1)
/* 80309854 00306794  7C 08 03 A6 */	mtlr r0
/* 80309858 00306798  38 21 00 50 */	addi r1, r1, 0x50
/* 8030985C 0030679C  4E 80 00 20 */	blr 

.global __dt__Q32og6Screen16CallBack_MessageFv
__dt__Q32og6Screen16CallBack_MessageFv:
/* 80309860 003067A0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309864 003067A4  7C 08 02 A6 */	mflr r0
/* 80309868 003067A8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8030986C 003067AC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309870 003067B0  7C 9F 23 78 */	mr r31, r4
/* 80309874 003067B4  93 C1 00 08 */	stw r30, 8(r1)
/* 80309878 003067B8  7C 7E 1B 79 */	or. r30, r3, r3
/* 8030987C 003067BC  41 82 00 48 */	beq .L_803098C4
/* 80309880 003067C0  3C 80 80 4E */	lis r4, __vt__Q32og6Screen16CallBack_Message@ha
/* 80309884 003067C4  38 04 81 88 */	addi r0, r4, __vt__Q32og6Screen16CallBack_Message@l
/* 80309888 003067C8  90 1E 00 00 */	stw r0, 0(r30)
/* 8030988C 003067CC  41 82 00 28 */	beq .L_803098B4
/* 80309890 003067D0  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 80309894 003067D4  38 04 7F 2C */	addi r0, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 80309898 003067D8  90 1E 00 00 */	stw r0, 0(r30)
/* 8030989C 003067DC  41 82 00 18 */	beq .L_803098B4
/* 803098A0 003067E0  3C A0 80 4D */	lis r5, __vt__Q29P2DScreen4Node@ha
/* 803098A4 003067E4  38 80 00 00 */	li r4, 0
/* 803098A8 003067E8  38 05 7B 0C */	addi r0, r5, __vt__Q29P2DScreen4Node@l
/* 803098AC 003067EC  90 1E 00 00 */	stw r0, 0(r30)
/* 803098B0 003067F0  48 10 7C D9 */	bl __dt__5CNodeFv
.L_803098B4:
/* 803098B4 003067F4  7F E0 07 35 */	extsh. r0, r31
/* 803098B8 003067F8  40 81 00 0C */	ble .L_803098C4
/* 803098BC 003067FC  7F C3 F3 78 */	mr r3, r30
/* 803098C0 00306800  4B D1 A7 F5 */	bl __dl__FPv
.L_803098C4:
/* 803098C4 00306804  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803098C8 00306808  7F C3 F3 78 */	mr r3, r30
/* 803098CC 0030680C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803098D0 00306810  83 C1 00 08 */	lwz r30, 8(r1)
/* 803098D4 00306814  7C 08 03 A6 */	mtlr r0
/* 803098D8 00306818  38 21 00 10 */	addi r1, r1, 0x10
/* 803098DC 0030681C  4E 80 00 20 */	blr 

.global checkVisibleGlb__Q22og6ScreenFP7J2DPane
checkVisibleGlb__Q22og6ScreenFP7J2DPane:
/* 803098E0 00306820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803098E4 00306824  7C 08 02 A6 */	mflr r0
/* 803098E8 00306828  90 01 00 14 */	stw r0, 0x14(r1)
/* 803098EC 0030682C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803098F0 00306830  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 803098F4 00306834  28 00 00 00 */	cmplwi r0, 0
/* 803098F8 00306838  41 82 01 64 */	beq .L_80309A5C
/* 803098FC 0030683C  4B D2 F7 E5 */	bl getParentPane__7J2DPaneFv
/* 80309900 00306840  28 03 00 00 */	cmplwi r3, 0
/* 80309904 00306844  41 82 01 50 */	beq .L_80309A54
/* 80309908 00306848  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 8030990C 0030684C  28 00 00 00 */	cmplwi r0, 0
/* 80309910 00306850  41 82 01 3C */	beq .L_80309A4C
/* 80309914 00306854  4B D2 F7 CD */	bl getParentPane__7J2DPaneFv
/* 80309918 00306858  28 03 00 00 */	cmplwi r3, 0
/* 8030991C 0030685C  41 82 01 28 */	beq .L_80309A44
/* 80309920 00306860  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80309924 00306864  28 00 00 00 */	cmplwi r0, 0
/* 80309928 00306868  41 82 01 14 */	beq .L_80309A3C
/* 8030992C 0030686C  4B D2 F7 B5 */	bl getParentPane__7J2DPaneFv
/* 80309930 00306870  28 03 00 00 */	cmplwi r3, 0
/* 80309934 00306874  41 82 01 00 */	beq .L_80309A34
/* 80309938 00306878  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 8030993C 0030687C  28 00 00 00 */	cmplwi r0, 0
/* 80309940 00306880  41 82 00 EC */	beq .L_80309A2C
/* 80309944 00306884  4B D2 F7 9D */	bl getParentPane__7J2DPaneFv
/* 80309948 00306888  28 03 00 00 */	cmplwi r3, 0
/* 8030994C 0030688C  41 82 00 D8 */	beq .L_80309A24
/* 80309950 00306890  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80309954 00306894  28 00 00 00 */	cmplwi r0, 0
/* 80309958 00306898  41 82 00 C4 */	beq .L_80309A1C
/* 8030995C 0030689C  4B D2 F7 85 */	bl getParentPane__7J2DPaneFv
/* 80309960 003068A0  28 03 00 00 */	cmplwi r3, 0
/* 80309964 003068A4  41 82 00 B0 */	beq .L_80309A14
/* 80309968 003068A8  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 8030996C 003068AC  28 00 00 00 */	cmplwi r0, 0
/* 80309970 003068B0  41 82 00 9C */	beq .L_80309A0C
/* 80309974 003068B4  4B D2 F7 6D */	bl getParentPane__7J2DPaneFv
/* 80309978 003068B8  28 03 00 00 */	cmplwi r3, 0
/* 8030997C 003068BC  41 82 00 88 */	beq .L_80309A04
/* 80309980 003068C0  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 80309984 003068C4  28 00 00 00 */	cmplwi r0, 0
/* 80309988 003068C8  41 82 00 74 */	beq .L_803099FC
/* 8030998C 003068CC  4B D2 F7 55 */	bl getParentPane__7J2DPaneFv
/* 80309990 003068D0  28 03 00 00 */	cmplwi r3, 0
/* 80309994 003068D4  41 82 00 60 */	beq .L_803099F4
/* 80309998 003068D8  88 03 00 B0 */	lbz r0, 0xb0(r3)
/* 8030999C 003068DC  28 00 00 00 */	cmplwi r0, 0
/* 803099A0 003068E0  41 82 00 4C */	beq .L_803099EC
/* 803099A4 003068E4  4B D2 F7 3D */	bl getParentPane__7J2DPaneFv
/* 803099A8 003068E8  7C 7F 1B 79 */	or. r31, r3, r3
/* 803099AC 003068EC  41 82 00 38 */	beq .L_803099E4
/* 803099B0 003068F0  48 00 00 C5 */	bl isVisible__7J2DPaneCFv
/* 803099B4 003068F4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 803099B8 003068F8  41 82 00 24 */	beq .L_803099DC
/* 803099BC 003068FC  7F E3 FB 78 */	mr r3, r31
/* 803099C0 00306900  4B D2 F7 21 */	bl getParentPane__7J2DPaneFv
/* 803099C4 00306904  28 03 00 00 */	cmplwi r3, 0
/* 803099C8 00306908  41 82 00 0C */	beq .L_803099D4
/* 803099CC 0030690C  4B FF FF 15 */	bl checkVisibleGlb__Q22og6ScreenFP7J2DPane
/* 803099D0 00306910  48 00 00 90 */	b .L_80309A60
.L_803099D4:
/* 803099D4 00306914  38 60 00 01 */	li r3, 1
/* 803099D8 00306918  48 00 00 88 */	b .L_80309A60
.L_803099DC:
/* 803099DC 0030691C  38 60 00 00 */	li r3, 0
/* 803099E0 00306920  48 00 00 80 */	b .L_80309A60
.L_803099E4:
/* 803099E4 00306924  38 60 00 01 */	li r3, 1
/* 803099E8 00306928  48 00 00 78 */	b .L_80309A60
.L_803099EC:
/* 803099EC 0030692C  38 60 00 00 */	li r3, 0
/* 803099F0 00306930  48 00 00 70 */	b .L_80309A60
.L_803099F4:
/* 803099F4 00306934  38 60 00 01 */	li r3, 1
/* 803099F8 00306938  48 00 00 68 */	b .L_80309A60
.L_803099FC:
/* 803099FC 0030693C  38 60 00 00 */	li r3, 0
/* 80309A00 00306940  48 00 00 60 */	b .L_80309A60
.L_80309A04:
/* 80309A04 00306944  38 60 00 01 */	li r3, 1
/* 80309A08 00306948  48 00 00 58 */	b .L_80309A60
.L_80309A0C:
/* 80309A0C 0030694C  38 60 00 00 */	li r3, 0
/* 80309A10 00306950  48 00 00 50 */	b .L_80309A60
.L_80309A14:
/* 80309A14 00306954  38 60 00 01 */	li r3, 1
/* 80309A18 00306958  48 00 00 48 */	b .L_80309A60
.L_80309A1C:
/* 80309A1C 0030695C  38 60 00 00 */	li r3, 0
/* 80309A20 00306960  48 00 00 40 */	b .L_80309A60
.L_80309A24:
/* 80309A24 00306964  38 60 00 01 */	li r3, 1
/* 80309A28 00306968  48 00 00 38 */	b .L_80309A60
.L_80309A2C:
/* 80309A2C 0030696C  38 60 00 00 */	li r3, 0
/* 80309A30 00306970  48 00 00 30 */	b .L_80309A60
.L_80309A34:
/* 80309A34 00306974  38 60 00 01 */	li r3, 1
/* 80309A38 00306978  48 00 00 28 */	b .L_80309A60
.L_80309A3C:
/* 80309A3C 0030697C  38 60 00 00 */	li r3, 0
/* 80309A40 00306980  48 00 00 20 */	b .L_80309A60
.L_80309A44:
/* 80309A44 00306984  38 60 00 01 */	li r3, 1
/* 80309A48 00306988  48 00 00 18 */	b .L_80309A60
.L_80309A4C:
/* 80309A4C 0030698C  38 60 00 00 */	li r3, 0
/* 80309A50 00306990  48 00 00 10 */	b .L_80309A60
.L_80309A54:
/* 80309A54 00306994  38 60 00 01 */	li r3, 1
/* 80309A58 00306998  48 00 00 08 */	b .L_80309A60
.L_80309A5C:
/* 80309A5C 0030699C  38 60 00 00 */	li r3, 0
.L_80309A60:
/* 80309A60 003069A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309A64 003069A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309A68 003069A8  7C 08 03 A6 */	mtlr r0
/* 80309A6C 003069AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80309A70 003069B0  4E 80 00 20 */	blr 

.global isVisible__7J2DPaneCFv
isVisible__7J2DPaneCFv:
/* 80309A74 003069B4  88 63 00 B0 */	lbz r3, 0xb0(r3)
/* 80309A78 003069B8  4E 80 00 20 */	blr 

.global setCallBackMessageSub__Q22og6ScreenFPQ29P2DScreen3MgrP7J2DPane
setCallBackMessageSub__Q22og6ScreenFPQ29P2DScreen3MgrP7J2DPane:
/* 80309A7C 003069BC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80309A80 003069C0  7C 08 02 A6 */	mflr r0
/* 80309A84 003069C4  90 01 00 34 */	stw r0, 0x34(r1)
/* 80309A88 003069C8  BF 21 00 14 */	stmw r25, 0x14(r1)
/* 80309A8C 003069CC  7C 9C 23 78 */	mr r28, r4
/* 80309A90 003069D0  7C 7F 1B 78 */	mr r31, r3
/* 80309A94 003069D4  7F 83 E3 78 */	mr r3, r28
/* 80309A98 003069D8  81 9C 00 00 */	lwz r12, 0(r28)
/* 80309A9C 003069DC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80309AA0 003069E0  7D 89 03 A6 */	mtctr r12
/* 80309AA4 003069E4  4E 80 04 21 */	bctrl 
/* 80309AA8 003069E8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80309AAC 003069EC  28 00 00 13 */	cmplwi r0, 0x13
/* 80309AB0 003069F0  40 82 00 C8 */	bne .L_80309B78
/* 80309AB4 003069F4  80 1C 00 18 */	lwz r0, 0x18(r28)
/* 80309AB8 003069F8  38 60 00 00 */	li r3, 0
/* 80309ABC 003069FC  80 9C 00 1C */	lwz r4, 0x1c(r28)
/* 80309AC0 00306A00  7C 00 1A 78 */	xor r0, r0, r3
/* 80309AC4 00306A04  7C 83 1A 78 */	xor r3, r4, r3
/* 80309AC8 00306A08  7C 60 03 79 */	or. r0, r3, r0
/* 80309ACC 00306A0C  41 82 00 AC */	beq .L_80309B78
/* 80309AD0 00306A10  83 5C 00 10 */	lwz r26, 0x10(r28)
/* 80309AD4 00306A14  38 60 00 48 */	li r3, 0x48
/* 80309AD8 00306A18  83 7C 00 14 */	lwz r27, 0x14(r28)
/* 80309ADC 00306A1C  4B D1 A3 C9 */	bl __nw__FUl
/* 80309AE0 00306A20  7C 7D 1B 79 */	or. r29, r3, r3
/* 80309AE4 00306A24  41 82 00 70 */	beq .L_80309B54
/* 80309AE8 00306A28  48 10 78 A9 */	bl __ct__5CNodeFv
/* 80309AEC 00306A2C  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen4Node@ha
/* 80309AF0 00306A30  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen12CallBackNode@ha
/* 80309AF4 00306A34  38 03 7B 0C */	addi r0, r3, __vt__Q29P2DScreen4Node@l
/* 80309AF8 00306A38  3C 60 80 4E */	lis r3, __vt__Q32og6Screen16CallBack_Message@ha
/* 80309AFC 00306A3C  90 1D 00 00 */	stw r0, 0(r29)
/* 80309B00 00306A40  38 A0 00 00 */	li r5, 0
/* 80309B04 00306A44  38 84 7F 2C */	addi r4, r4, __vt__Q29P2DScreen12CallBackNode@l
/* 80309B08 00306A48  38 03 81 88 */	addi r0, r3, __vt__Q32og6Screen16CallBack_Message@l
/* 80309B0C 00306A4C  90 BD 00 18 */	stw r5, 0x18(r29)
/* 80309B10 00306A50  C0 22 F3 10 */	lfs f1, lbl_8051D670@sda21(r2)
/* 80309B14 00306A54  90 9D 00 00 */	stw r4, 0(r29)
/* 80309B18 00306A58  C0 02 F3 14 */	lfs f0, lbl_8051D674@sda21(r2)
/* 80309B1C 00306A5C  90 1D 00 00 */	stw r0, 0(r29)
/* 80309B20 00306A60  80 6D 97 C0 */	lwz r3, gLib2D__2og@sda21(r13)
/* 80309B24 00306A64  80 03 00 18 */	lwz r0, 0x18(r3)
/* 80309B28 00306A68  90 1D 00 1C */	stw r0, 0x1c(r29)
/* 80309B2C 00306A6C  90 BD 00 24 */	stw r5, 0x24(r29)
/* 80309B30 00306A70  90 BD 00 20 */	stw r5, 0x20(r29)
/* 80309B34 00306A74  90 BD 00 28 */	stw r5, 0x28(r29)
/* 80309B38 00306A78  90 BD 00 2C */	stw r5, 0x2c(r29)
/* 80309B3C 00306A7C  D0 3D 00 30 */	stfs f1, 0x30(r29)
/* 80309B40 00306A80  D0 3D 00 34 */	stfs f1, 0x34(r29)
/* 80309B44 00306A84  D0 1D 00 44 */	stfs f0, 0x44(r29)
/* 80309B48 00306A88  D0 1D 00 40 */	stfs f0, 0x40(r29)
/* 80309B4C 00306A8C  D0 1D 00 3C */	stfs f0, 0x3c(r29)
/* 80309B50 00306A90  D0 1D 00 38 */	stfs f0, 0x38(r29)
.L_80309B54:
/* 80309B54 00306A94  7F E3 FB 78 */	mr r3, r31
/* 80309B58 00306A98  7F 66 DB 78 */	mr r6, r27
/* 80309B5C 00306A9C  7F 45 D3 78 */	mr r5, r26
/* 80309B60 00306AA0  7F A7 EB 78 */	mr r7, r29
/* 80309B64 00306AA4  48 12 AF C1 */	bl addCallBack__Q29P2DScreen3MgrFUxPQ29P2DScreen4Node
/* 80309B68 00306AA8  7F 83 E3 78 */	mr r3, r28
/* 80309B6C 00306AAC  38 82 F3 1C */	addi r4, r2, lbl_8051D67C@sda21
/* 80309B70 00306AB0  4C C6 31 82 */	crclr 6
/* 80309B74 00306AB4  4B D3 84 01 */	bl setString__10J2DTextBoxFPCce
.L_80309B78:
/* 80309B78 00306AB8  83 DC 00 DC */	lwz r30, 0xdc(r28)
/* 80309B7C 00306ABC  28 1E 00 00 */	cmplwi r30, 0
/* 80309B80 00306AC0  41 82 01 FC */	beq .L_80309D7C
/* 80309B84 00306AC4  3B DE FF F4 */	addi r30, r30, -12
/* 80309B88 00306AC8  48 00 01 F4 */	b .L_80309D7C
.L_80309B8C:
/* 80309B8C 00306ACC  83 5E 00 0C */	lwz r26, 0xc(r30)
/* 80309B90 00306AD0  7F 43 D3 78 */	mr r3, r26
/* 80309B94 00306AD4  81 9A 00 00 */	lwz r12, 0(r26)
/* 80309B98 00306AD8  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80309B9C 00306ADC  7D 89 03 A6 */	mtctr r12
/* 80309BA0 00306AE0  4E 80 04 21 */	bctrl 
/* 80309BA4 00306AE4  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80309BA8 00306AE8  28 00 00 13 */	cmplwi r0, 0x13
/* 80309BAC 00306AEC  40 82 00 AC */	bne .L_80309C58
/* 80309BB0 00306AF0  80 1A 00 18 */	lwz r0, 0x18(r26)
/* 80309BB4 00306AF4  38 60 00 00 */	li r3, 0
/* 80309BB8 00306AF8  80 9A 00 1C */	lwz r4, 0x1c(r26)
/* 80309BBC 00306AFC  7C 00 1A 78 */	xor r0, r0, r3
/* 80309BC0 00306B00  7C 83 1A 78 */	xor r3, r4, r3
/* 80309BC4 00306B04  7C 60 03 79 */	or. r0, r3, r0
/* 80309BC8 00306B08  41 82 00 90 */	beq .L_80309C58
/* 80309BCC 00306B0C  83 7A 00 10 */	lwz r27, 0x10(r26)
/* 80309BD0 00306B10  38 60 00 48 */	li r3, 0x48
/* 80309BD4 00306B14  83 BA 00 14 */	lwz r29, 0x14(r26)
/* 80309BD8 00306B18  4B D1 A2 CD */	bl __nw__FUl
/* 80309BDC 00306B1C  7C 7C 1B 79 */	or. r28, r3, r3
/* 80309BE0 00306B20  41 82 00 54 */	beq .L_80309C34
/* 80309BE4 00306B24  48 00 01 CD */	bl __ct__Q29P2DScreen12CallBackNodeFv
/* 80309BE8 00306B28  3C 60 80 4E */	lis r3, __vt__Q32og6Screen16CallBack_Message@ha
/* 80309BEC 00306B2C  38 03 81 88 */	addi r0, r3, __vt__Q32og6Screen16CallBack_Message@l
/* 80309BF0 00306B30  90 1C 00 00 */	stw r0, 0(r28)
/* 80309BF4 00306B34  80 6D 97 C0 */	lwz r3, gLib2D__2og@sda21(r13)
/* 80309BF8 00306B38  48 00 01 B1 */	bl getMsgPtr__Q22og5Lib2DFv
/* 80309BFC 00306B3C  90 7C 00 1C */	stw r3, 0x1c(r28)
/* 80309C00 00306B40  38 00 00 00 */	li r0, 0
/* 80309C04 00306B44  C0 22 F3 10 */	lfs f1, lbl_8051D670@sda21(r2)
/* 80309C08 00306B48  90 1C 00 24 */	stw r0, 0x24(r28)
/* 80309C0C 00306B4C  C0 02 F3 14 */	lfs f0, lbl_8051D674@sda21(r2)
/* 80309C10 00306B50  90 1C 00 20 */	stw r0, 0x20(r28)
/* 80309C14 00306B54  90 1C 00 28 */	stw r0, 0x28(r28)
/* 80309C18 00306B58  90 1C 00 2C */	stw r0, 0x2c(r28)
/* 80309C1C 00306B5C  D0 3C 00 30 */	stfs f1, 0x30(r28)
/* 80309C20 00306B60  D0 3C 00 34 */	stfs f1, 0x34(r28)
/* 80309C24 00306B64  D0 1C 00 44 */	stfs f0, 0x44(r28)
/* 80309C28 00306B68  D0 1C 00 40 */	stfs f0, 0x40(r28)
/* 80309C2C 00306B6C  D0 1C 00 3C */	stfs f0, 0x3c(r28)
/* 80309C30 00306B70  D0 1C 00 38 */	stfs f0, 0x38(r28)
.L_80309C34:
/* 80309C34 00306B74  7F E3 FB 78 */	mr r3, r31
/* 80309C38 00306B78  7F A6 EB 78 */	mr r6, r29
/* 80309C3C 00306B7C  7F 65 DB 78 */	mr r5, r27
/* 80309C40 00306B80  7F 87 E3 78 */	mr r7, r28
/* 80309C44 00306B84  48 12 AE E1 */	bl addCallBack__Q29P2DScreen3MgrFUxPQ29P2DScreen4Node
/* 80309C48 00306B88  7F 43 D3 78 */	mr r3, r26
/* 80309C4C 00306B8C  38 82 F3 1C */	addi r4, r2, lbl_8051D67C@sda21
/* 80309C50 00306B90  4C C6 31 82 */	crclr 6
/* 80309C54 00306B94  4B D3 83 21 */	bl setString__10J2DTextBoxFPCce
.L_80309C58:
/* 80309C58 00306B98  3B BA 00 DC */	addi r29, r26, 0xdc
/* 80309C5C 00306B9C  7F A3 EB 78 */	mr r3, r29
/* 80309C60 00306BA0  4B D2 EC C9 */	bl "getFirstChild__17JSUTree<7J2DPane>CFv"
/* 80309C64 00306BA4  7C 7C 1B 78 */	mr r28, r3
/* 80309C68 00306BA8  48 00 00 F4 */	b .L_80309D5C
.L_80309C6C:
/* 80309C6C 00306BAC  7F 83 E3 78 */	mr r3, r28
/* 80309C70 00306BB0  4B D2 EC CD */	bl "getObject__17JSUTree<7J2DPane>CFv"
/* 80309C74 00306BB4  81 83 00 00 */	lwz r12, 0(r3)
/* 80309C78 00306BB8  7C 79 1B 78 */	mr r25, r3
/* 80309C7C 00306BBC  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80309C80 00306BC0  7D 89 03 A6 */	mtctr r12
/* 80309C84 00306BC4  4E 80 04 21 */	bctrl 
/* 80309C88 00306BC8  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 80309C8C 00306BCC  28 00 00 13 */	cmplwi r0, 0x13
/* 80309C90 00306BD0  40 82 00 68 */	bne .L_80309CF8
/* 80309C94 00306BD4  7F 23 CB 78 */	mr r3, r25
/* 80309C98 00306BD8  48 00 01 01 */	bl getUserInfo__7J2DPaneCFv
/* 80309C9C 00306BDC  38 00 00 00 */	li r0, 0
/* 80309CA0 00306BE0  7C 84 02 78 */	xor r4, r4, r0
/* 80309CA4 00306BE4  7C 60 02 78 */	xor r0, r3, r0
/* 80309CA8 00306BE8  7C 80 03 79 */	or. r0, r4, r0
/* 80309CAC 00306BEC  41 82 00 4C */	beq .L_80309CF8
/* 80309CB0 00306BF0  7F 23 CB 78 */	mr r3, r25
/* 80309CB4 00306BF4  4B FF 98 49 */	bl getTagName__7J2DPaneCFv
/* 80309CB8 00306BF8  7C 7B 1B 78 */	mr r27, r3
/* 80309CBC 00306BFC  7C 9A 23 78 */	mr r26, r4
/* 80309CC0 00306C00  38 60 00 48 */	li r3, 0x48
/* 80309CC4 00306C04  4B D1 A1 E1 */	bl __nw__FUl
/* 80309CC8 00306C08  7C 67 1B 79 */	or. r7, r3, r3
/* 80309CCC 00306C0C  41 82 00 0C */	beq .L_80309CD8
/* 80309CD0 00306C10  4B FF F9 45 */	bl __ct__Q32og6Screen16CallBack_MessageFv
/* 80309CD4 00306C14  7C 67 1B 78 */	mr r7, r3
.L_80309CD8:
/* 80309CD8 00306C18  7F E3 FB 78 */	mr r3, r31
/* 80309CDC 00306C1C  7F 46 D3 78 */	mr r6, r26
/* 80309CE0 00306C20  7F 65 DB 78 */	mr r5, r27
/* 80309CE4 00306C24  48 12 AE 41 */	bl addCallBack__Q29P2DScreen3MgrFUxPQ29P2DScreen4Node
/* 80309CE8 00306C28  7F 23 CB 78 */	mr r3, r25
/* 80309CEC 00306C2C  38 82 F3 1C */	addi r4, r2, lbl_8051D67C@sda21
/* 80309CF0 00306C30  4C C6 31 82 */	crclr 6
/* 80309CF4 00306C34  4B D3 82 81 */	bl setString__10J2DTextBoxFPCce
.L_80309CF8:
/* 80309CF8 00306C38  7F 23 CB 78 */	mr r3, r25
/* 80309CFC 00306C3C  4B FF 97 F9 */	bl getPaneTree__7J2DPaneFv
/* 80309D00 00306C40  7C 7B 1B 78 */	mr r27, r3
/* 80309D04 00306C44  4B D2 EC 25 */	bl "getFirstChild__17JSUTree<7J2DPane>CFv"
/* 80309D08 00306C48  7C 64 1B 78 */	mr r4, r3
/* 80309D0C 00306C4C  38 61 00 08 */	addi r3, r1, 8
/* 80309D10 00306C50  4B D2 EC 05 */	bl "__ct__25JSUTreeIterator<7J2DPane>FP17JSUTree<7J2DPane>"
/* 80309D14 00306C54  48 00 00 20 */	b .L_80309D34
.L_80309D18:
/* 80309D18 00306C58  38 61 00 08 */	addi r3, r1, 8
/* 80309D1C 00306C5C  4B FF 97 CD */	bl "getObject__25JSUTreeIterator<7J2DPane>CFv"
/* 80309D20 00306C60  7C 64 1B 78 */	mr r4, r3
/* 80309D24 00306C64  7F E3 FB 78 */	mr r3, r31
/* 80309D28 00306C68  4B FF FD 55 */	bl setCallBackMessageSub__Q22og6ScreenFPQ29P2DScreen3MgrP7J2DPane
/* 80309D2C 00306C6C  38 61 00 08 */	addi r3, r1, 8
/* 80309D30 00306C70  4B D2 EB C9 */	bl "__pp__25JSUTreeIterator<7J2DPane>Fv"
.L_80309D34:
/* 80309D34 00306C74  7F 63 DB 78 */	mr r3, r27
/* 80309D38 00306C78  4B D2 EB B9 */	bl "getEndChild__17JSUTree<7J2DPane>CFv"
/* 80309D3C 00306C7C  7C 64 1B 78 */	mr r4, r3
/* 80309D40 00306C80  38 61 00 08 */	addi r3, r1, 8
/* 80309D44 00306C84  4B D2 EB 95 */	bl "__ne__25JSUTreeIterator<7J2DPane>CFPC17JSUTree<7J2DPane>"
/* 80309D48 00306C88  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80309D4C 00306C8C  40 82 FF CC */	bne .L_80309D18
/* 80309D50 00306C90  7F 83 E3 78 */	mr r3, r28
/* 80309D54 00306C94  4B D2 EB 71 */	bl "getNextChild__17JSUTree<7J2DPane>CFv"
/* 80309D58 00306C98  7C 7C 1B 78 */	mr r28, r3
.L_80309D5C:
/* 80309D5C 00306C9C  7F A3 EB 78 */	mr r3, r29
/* 80309D60 00306CA0  4B D2 EB 91 */	bl "getEndChild__17JSUTree<7J2DPane>CFv"
/* 80309D64 00306CA4  7C 1C 18 40 */	cmplw r28, r3
/* 80309D68 00306CA8  40 82 FF 04 */	bne .L_80309C6C
/* 80309D6C 00306CAC  83 DE 00 18 */	lwz r30, 0x18(r30)
/* 80309D70 00306CB0  28 1E 00 00 */	cmplwi r30, 0
/* 80309D74 00306CB4  41 82 00 08 */	beq .L_80309D7C
/* 80309D78 00306CB8  3B DE FF F4 */	addi r30, r30, -12
.L_80309D7C:
/* 80309D7C 00306CBC  28 1E 00 00 */	cmplwi r30, 0
/* 80309D80 00306CC0  40 82 FE 0C */	bne .L_80309B8C
/* 80309D84 00306CC4  BB 21 00 14 */	lmw r25, 0x14(r1)
/* 80309D88 00306CC8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80309D8C 00306CCC  7C 08 03 A6 */	mtlr r0
/* 80309D90 00306CD0  38 21 00 30 */	addi r1, r1, 0x30
/* 80309D94 00306CD4  4E 80 00 20 */	blr 

.global getUserInfo__7J2DPaneCFv
getUserInfo__7J2DPaneCFv:
/* 80309D98 00306CD8  7C 64 1B 78 */	mr r4, r3
/* 80309D9C 00306CDC  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80309DA0 00306CE0  80 84 00 1C */	lwz r4, 0x1c(r4)
/* 80309DA4 00306CE4  4E 80 00 20 */	blr 

.global getMsgPtr__Q22og5Lib2DFv
getMsgPtr__Q22og5Lib2DFv:
/* 80309DA8 00306CE8  80 63 00 18 */	lwz r3, 0x18(r3)
/* 80309DAC 00306CEC  4E 80 00 20 */	blr 

.global __ct__Q29P2DScreen12CallBackNodeFv
__ct__Q29P2DScreen12CallBackNodeFv:
/* 80309DB0 00306CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309DB4 00306CF4  7C 08 02 A6 */	mflr r0
/* 80309DB8 00306CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309DBC 00306CFC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80309DC0 00306D00  7C 7F 1B 78 */	mr r31, r3
/* 80309DC4 00306D04  48 10 75 CD */	bl __ct__5CNodeFv
/* 80309DC8 00306D08  3C 80 80 4D */	lis r4, __vt__Q29P2DScreen4Node@ha
/* 80309DCC 00306D0C  3C 60 80 4D */	lis r3, __vt__Q29P2DScreen12CallBackNode@ha
/* 80309DD0 00306D10  38 04 7B 0C */	addi r0, r4, __vt__Q29P2DScreen4Node@l
/* 80309DD4 00306D14  38 80 00 00 */	li r4, 0
/* 80309DD8 00306D18  90 1F 00 00 */	stw r0, 0(r31)
/* 80309DDC 00306D1C  38 03 7F 2C */	addi r0, r3, __vt__Q29P2DScreen12CallBackNode@l
/* 80309DE0 00306D20  7F E3 FB 78 */	mr r3, r31
/* 80309DE4 00306D24  90 9F 00 18 */	stw r4, 0x18(r31)
/* 80309DE8 00306D28  90 1F 00 00 */	stw r0, 0(r31)
/* 80309DEC 00306D2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80309DF0 00306D30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309DF4 00306D34  7C 08 03 A6 */	mtlr r0
/* 80309DF8 00306D38  38 21 00 10 */	addi r1, r1, 0x10
/* 80309DFC 00306D3C  4E 80 00 20 */	blr 

.global setCallBackMessage__Q22og6ScreenFPQ29P2DScreen3Mgr
setCallBackMessage__Q22og6ScreenFPQ29P2DScreen3Mgr:
/* 80309E00 00306D40  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80309E04 00306D44  7C 08 02 A6 */	mflr r0
/* 80309E08 00306D48  7C 64 1B 78 */	mr r4, r3
/* 80309E0C 00306D4C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80309E10 00306D50  4B FF FC 6D */	bl setCallBackMessageSub__Q22og6ScreenFPQ29P2DScreen3MgrP7J2DPane
/* 80309E14 00306D54  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80309E18 00306D58  7C 08 03 A6 */	mtlr r0
/* 80309E1C 00306D5C  38 21 00 10 */	addi r1, r1, 0x10
/* 80309E20 00306D60  4E 80 00 20 */	blr 

.global update__Q32og6Screen16CallBack_MessageFv
update__Q32og6Screen16CallBack_MessageFv:
/* 80309E24 00306D64  4E 80 00 20 */	blr 

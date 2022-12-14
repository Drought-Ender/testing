.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q34Game5Queen15QueenShadowNode
__vt__Q34Game5Queen15QueenShadowNode:
	.4byte 0
	.4byte 0
	.4byte __dt__Q34Game5Queen15QueenShadowNodeFv
	.4byte getChildCount__5CNodeFv

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_8051B948
lbl_8051B948:
	.4byte 0x00000000
.global lbl_8051B94C
lbl_8051B94C:
	.4byte 0x40400000
.global lbl_8051B950
lbl_8051B950:
	.4byte 0x3FC00000
.global lbl_8051B954
lbl_8051B954:
	.4byte 0x42AA0000
.global lbl_8051B958
lbl_8051B958:
	.4byte 0x428C0000
.global lbl_8051B95C
lbl_8051B95C:
	.4byte 0xBE99999A
.global lbl_8051B960
lbl_8051B960:
	.4byte 0x6E65636B
	.4byte 0x31000000
.global lbl_8051B968
lbl_8051B968:
	.4byte 0x42940000
.global lbl_8051B96C
lbl_8051B96C:
	.4byte 0x426C0000
.global lbl_8051B970
lbl_8051B970:
	.4byte 0xC02CCCCD
.global lbl_8051B974
lbl_8051B974:
	.4byte 0x6E65636B
	.4byte 0x33000000
.global lbl_8051B97C
lbl_8051B97C:
	.4byte 0x42500000
.global lbl_8051B980
lbl_8051B980:
	.4byte 0x42140000
.global lbl_8051B984
lbl_8051B984:
	.4byte 0xC19F3333
.global lbl_8051B988
lbl_8051B988:
	.4byte 0x6E65636B
	.4byte 0x35000000
.global lbl_8051B990
lbl_8051B990:
	.4byte 0x41B00000
.global lbl_8051B994
lbl_8051B994:
	.4byte 0x68656164
	.4byte 0x00000000
.global lbl_8051B99C
lbl_8051B99C:
	.4byte 0x429C0000
.global lbl_8051B9A0
lbl_8051B9A0:
	.4byte 0x427C0000
.global lbl_8051B9A4
lbl_8051B9A4:
	.4byte 0x3FF33333
.global lbl_8051B9A8
lbl_8051B9A8:
	.4byte 0x626F6479
	.4byte 0x33000000
.global lbl_8051B9B0
lbl_8051B9B0:
	.4byte 0x42800000
.global lbl_8051B9B4
lbl_8051B9B4:
	.4byte 0x42440000
.global lbl_8051B9B8
lbl_8051B9B8:
	.4byte 0x419CCCCD
.global lbl_8051B9BC
lbl_8051B9BC:
	.4byte 0x626F6479
	.4byte 0x34000000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global makeShadowSRT__Q34Game5Queen15QueenShadowNodeFv
makeShadowSRT__Q34Game5Queen15QueenShadowNodeFv:
/* 8028EB68 0028BAA8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8028EB6C 0028BAAC  7C 08 02 A6 */	mflr r0
/* 8028EB70 0028BAB0  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028EB74 0028BAB4  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8028EB78 0028BAB8  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8028EB7C 0028BABC  7C 7E 1B 78 */	mr r30, r3
/* 8028EB80 0028BAC0  83 E3 00 1C */	lwz r31, 0x1c(r3)
/* 8028EB84 0028BAC4  80 63 00 24 */	lwz r3, 0x24(r3)
/* 8028EB88 0028BAC8  48 19 AD 19 */	bl getWorldMatrix__Q28SysShape5JointFv
/* 8028EB8C 0028BACC  7F E5 FB 78 */	mr r5, r31
/* 8028EB90 0028BAD0  38 9E 00 28 */	addi r4, r30, 0x28
/* 8028EB94 0028BAD4  4B E5 B7 6D */	bl PSMTXConcat
/* 8028EB98 0028BAD8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8028EB9C 0028BADC  38 81 00 2C */	addi r4, r1, 0x2c
/* 8028EBA0 0028BAE0  C0 22 D5 E8 */	lfs f1, lbl_8051B948@sda21(r2)
/* 8028EBA4 0028BAE4  C0 03 00 00 */	lfs f0, 0(r3)
/* 8028EBA8 0028BAE8  D0 01 00 08 */	stfs f0, 8(r1)
/* 8028EBAC 0028BAEC  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 8028EBB0 0028BAF0  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8028EBB4 0028BAF4  C0 03 00 20 */	lfs f0, 0x20(r3)
/* 8028EBB8 0028BAF8  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8028EBBC 0028BAFC  C0 03 00 04 */	lfs f0, 4(r3)
/* 8028EBC0 0028BB00  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8028EBC4 0028BB04  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 8028EBC8 0028BB08  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8028EBCC 0028BB0C  C0 03 00 24 */	lfs f0, 0x24(r3)
/* 8028EBD0 0028BB10  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8028EBD4 0028BB14  C0 63 00 08 */	lfs f3, 8(r3)
/* 8028EBD8 0028BB18  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028EBDC 0028BB1C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 8028EBE0 0028BB20  C0 43 00 18 */	lfs f2, 0x18(r3)
/* 8028EBE4 0028BB24  D0 41 00 24 */	stfs f2, 0x24(r1)
/* 8028EBE8 0028BB28  EC 82 00 B2 */	fmuls f4, f2, f2
/* 8028EBEC 0028BB2C  C0 43 00 28 */	lfs f2, 0x28(r3)
/* 8028EBF0 0028BB30  EC 00 20 2A */	fadds f0, f0, f4
/* 8028EBF4 0028BB34  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8028EBF8 0028BB38  EC A2 00 B2 */	fmuls f5, f2, f2
/* 8028EBFC 0028BB3C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 8028EC00 0028BB40  EC 05 00 2A */	fadds f0, f5, f0
/* 8028EC04 0028BB44  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8028EC08 0028BB48  C0 43 00 1C */	lfs f2, 0x1c(r3)
/* 8028EC0C 0028BB4C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8028EC10 0028BB50  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8028EC14 0028BB54  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8028EC18 0028BB58  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8028EC1C 0028BB5C  40 81 00 20 */	ble .L_8028EC3C
/* 8028EC20 0028BB60  EC 03 20 FA */	fmadds f0, f3, f3, f4
/* 8028EC24 0028BB64  EC 45 00 2A */	fadds f2, f5, f0
/* 8028EC28 0028BB68  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 8028EC2C 0028BB6C  40 81 00 14 */	ble .L_8028EC40
/* 8028EC30 0028BB70  FC 00 10 34 */	frsqrte f0, f2
/* 8028EC34 0028BB74  EC 40 00 B2 */	fmuls f2, f0, f2
/* 8028EC38 0028BB78  48 00 00 08 */	b .L_8028EC40
.L_8028EC3C:
/* 8028EC3C 0028BB7C  FC 40 08 90 */	fmr f2, f1
.L_8028EC40:
/* 8028EC40 0028BB80  C0 22 D5 E8 */	lfs f1, lbl_8051B948@sda21(r2)
/* 8028EC44 0028BB84  C0 02 D5 EC */	lfs f0, lbl_8051B94C@sda21(r2)
/* 8028EC48 0028BB88  D0 41 00 08 */	stfs f2, 8(r1)
/* 8028EC4C 0028BB8C  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 8028EC50 0028BB90  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8028EC54 0028BB94  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8028EC58 0028BB98  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028EC5C 0028BB9C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8028EC60 0028BBA0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8028EC64 0028BBA4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8028EC68 0028BBA8  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8028EC6C 0028BBAC  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8028EC70 0028BBB0  81 83 00 04 */	lwz r12, 4(r3)
/* 8028EC74 0028BBB4  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 8028EC78 0028BBB8  7D 89 03 A6 */	mtctr r12
/* 8028EC7C 0028BBBC  4E 80 04 21 */	bctrl 
/* 8028EC80 0028BBC0  C0 42 D5 F0 */	lfs f2, lbl_8051B950@sda21(r2)
/* 8028EC84 0028BBC4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8028EC88 0028BBC8  EC 22 08 2A */	fadds f1, f2, f1
/* 8028EC8C 0028BBCC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 8028EC90 0028BBD0  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8028EC94 0028BBD4  D0 03 00 00 */	stfs f0, 0(r3)
/* 8028EC98 0028BBD8  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8028EC9C 0028BBDC  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 8028ECA0 0028BBE0  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8028ECA4 0028BBE4  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 8028ECA8 0028BBE8  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8028ECAC 0028BBEC  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8028ECB0 0028BBF0  D0 03 00 04 */	stfs f0, 4(r3)
/* 8028ECB4 0028BBF4  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8028ECB8 0028BBF8  D0 03 00 14 */	stfs f0, 0x14(r3)
/* 8028ECBC 0028BBFC  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8028ECC0 0028BC00  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 8028ECC4 0028BC04  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8028ECC8 0028BC08  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 8028ECCC 0028BC0C  D0 03 00 08 */	stfs f0, 8(r3)
/* 8028ECD0 0028BC10  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 8028ECD4 0028BC14  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 8028ECD8 0028BC18  C0 01 00 28 */	lfs f0, 0x28(r1)
/* 8028ECDC 0028BC1C  D0 03 00 28 */	stfs f0, 0x28(r3)
/* 8028ECE0 0028BC20  80 7E 00 1C */	lwz r3, 0x1c(r30)
/* 8028ECE4 0028BC24  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 8028ECE8 0028BC28  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 8028ECEC 0028BC2C  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 8028ECF0 0028BC30  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 8028ECF4 0028BC34  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8028ECF8 0028BC38  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 8028ECFC 0028BC3C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8028ED00 0028BC40  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8028ED04 0028BC44  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8028ED08 0028BC48  7C 08 03 A6 */	mtlr r0
/* 8028ED0C 0028BC4C  38 21 00 40 */	addi r1, r1, 0x40
/* 8028ED10 0028BC50  4E 80 00 20 */	blr 

.global __ct__Q34Game5Queen14QueenShadowMgrFPQ34Game5Queen3Obj
__ct__Q34Game5Queen14QueenShadowMgrFPQ34Game5Queen3Obj:
/* 8028ED14 0028BC54  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028ED18 0028BC58  7C 08 02 A6 */	mflr r0
/* 8028ED1C 0028BC5C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028ED20 0028BC60  BF 61 00 0C */	stmw r27, 0xc(r1)
/* 8028ED24 0028BC64  7C 9C 23 78 */	mr r28, r4
/* 8028ED28 0028BC68  7C 7B 1B 78 */	mr r27, r3
/* 8028ED2C 0028BC6C  93 83 00 00 */	stw r28, 0(r3)
/* 8028ED30 0028BC70  38 60 00 20 */	li r3, 0x20
/* 8028ED34 0028BC74  4B D9 51 71 */	bl __nw__FUl
/* 8028ED38 0028BC78  7C 60 1B 79 */	or. r0, r3, r3
/* 8028ED3C 0028BC7C  41 82 00 10 */	beq .L_8028ED4C
/* 8028ED40 0028BC80  7F 84 E3 78 */	mr r4, r28
/* 8028ED44 0028BC84  4B FB 25 39 */	bl __ct__Q24Game19JointShadowRootNodeFPQ24Game8Creature
/* 8028ED48 0028BC88  7C 60 1B 78 */	mr r0, r3
.L_8028ED4C:
/* 8028ED4C 0028BC8C  90 1B 00 04 */	stw r0, 4(r27)
/* 8028ED50 0028BC90  38 60 00 18 */	li r3, 0x18
/* 8028ED54 0028BC94  4B D9 52 59 */	bl __nwa__FUl
/* 8028ED58 0028BC98  3C 80 80 4D */	lis r4, __vt__Q34Game5Queen15QueenShadowNode@ha
/* 8028ED5C 0028BC9C  90 7B 00 08 */	stw r3, 8(r27)
/* 8028ED60 0028BCA0  3B E4 AD 08 */	addi r31, r4, __vt__Q34Game5Queen15QueenShadowNode@l
/* 8028ED64 0028BCA4  3B 80 00 00 */	li r28, 0
/* 8028ED68 0028BCA8  3B A0 00 00 */	li r29, 0
.L_8028ED6C:
/* 8028ED6C 0028BCAC  38 60 00 58 */	li r3, 0x58
/* 8028ED70 0028BCB0  4B D9 51 35 */	bl __nw__FUl
/* 8028ED74 0028BCB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028ED78 0028BCB8  41 82 00 10 */	beq .L_8028ED88
/* 8028ED7C 0028BCBC  38 80 00 02 */	li r4, 2
/* 8028ED80 0028BCC0  4B FB 25 5D */	bl __ct__Q24Game15JointShadowNodeFi
/* 8028ED84 0028BCC4  93 FE 00 00 */	stw r31, 0(r30)
.L_8028ED88:
/* 8028ED88 0028BCC8  80 7B 00 08 */	lwz r3, 8(r27)
/* 8028ED8C 0028BCCC  7F C3 E9 2E */	stwx r30, r3, r29
/* 8028ED90 0028BCD0  80 9B 00 08 */	lwz r4, 8(r27)
/* 8028ED94 0028BCD4  80 7B 00 04 */	lwz r3, 4(r27)
/* 8028ED98 0028BCD8  7C 84 E8 2E */	lwzx r4, r4, r29
/* 8028ED9C 0028BCDC  48 18 26 6D */	bl add__5CNodeFP5CNode
/* 8028EDA0 0028BCE0  3B 9C 00 01 */	addi r28, r28, 1
/* 8028EDA4 0028BCE4  3B BD 00 04 */	addi r29, r29, 4
/* 8028EDA8 0028BCE8  2C 1C 00 06 */	cmpwi r28, 6
/* 8028EDAC 0028BCEC  41 80 FF C0 */	blt .L_8028ED6C
/* 8028EDB0 0028BCF0  7F 63 DB 78 */	mr r3, r27
/* 8028EDB4 0028BCF4  BB 61 00 0C */	lmw r27, 0xc(r1)
/* 8028EDB8 0028BCF8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028EDBC 0028BCFC  7C 08 03 A6 */	mtlr r0
/* 8028EDC0 0028BD00  38 21 00 20 */	addi r1, r1, 0x20
/* 8028EDC4 0028BD04  4E 80 00 20 */	blr 

.global init__Q34Game5Queen14QueenShadowMgrFv
init__Q34Game5Queen14QueenShadowMgrFv:
/* 8028EDC8 0028BD08  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8028EDCC 0028BD0C  7C 08 02 A6 */	mflr r0
/* 8028EDD0 0028BD10  C0 42 D5 E8 */	lfs f2, lbl_8051B948@sda21(r2)
/* 8028EDD4 0028BD14  38 82 D6 00 */	addi r4, r2, lbl_8051B960@sda21
/* 8028EDD8 0028BD18  90 01 00 44 */	stw r0, 0x44(r1)
/* 8028EDDC 0028BD1C  C0 62 D5 F4 */	lfs f3, lbl_8051B954@sda21(r2)
/* 8028EDE0 0028BD20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8028EDE4 0028BD24  7C 7F 1B 78 */	mr r31, r3
/* 8028EDE8 0028BD28  C0 22 D5 F8 */	lfs f1, lbl_8051B958@sda21(r2)
/* 8028EDEC 0028BD2C  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028EDF0 0028BD30  D0 61 00 08 */	stfs f3, 8(r1)
/* 8028EDF4 0028BD34  D0 41 00 18 */	stfs f2, 0x18(r1)
/* 8028EDF8 0028BD38  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 8028EDFC 0028BD3C  D0 41 00 0C */	stfs f2, 0xc(r1)
/* 8028EE00 0028BD40  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8028EE04 0028BD44  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8028EE08 0028BD48  D0 41 00 10 */	stfs f2, 0x10(r1)
/* 8028EE0C 0028BD4C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8028EE10 0028BD50  D0 61 00 30 */	stfs f3, 0x30(r1)
/* 8028EE14 0028BD54  D0 41 00 14 */	stfs f2, 0x14(r1)
/* 8028EE18 0028BD58  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028EE1C 0028BD5C  D0 41 00 34 */	stfs f2, 0x34(r1)
/* 8028EE20 0028BD60  80 63 00 00 */	lwz r3, 0(r3)
/* 8028EE24 0028BD64  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028EE28 0028BD68  48 1B 01 BD */	bl getJoint__Q28SysShape5ModelFPc
/* 8028EE2C 0028BD6C  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EE30 0028BD70  80 84 00 00 */	lwz r4, 0(r4)
/* 8028EE34 0028BD74  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028EE38 0028BD78  38 61 00 08 */	addi r3, r1, 8
/* 8028EE3C 0028BD7C  38 84 00 28 */	addi r4, r4, 0x28
/* 8028EE40 0028BD80  4B E5 B4 8D */	bl PSMTXCopy
/* 8028EE44 0028BD84  C0 62 D5 E8 */	lfs f3, lbl_8051B948@sda21(r2)
/* 8028EE48 0028BD88  38 82 D6 14 */	addi r4, r2, lbl_8051B974@sda21
/* 8028EE4C 0028BD8C  C0 82 D6 08 */	lfs f4, lbl_8051B968@sda21(r2)
/* 8028EE50 0028BD90  C0 42 D6 0C */	lfs f2, lbl_8051B96C@sda21(r2)
/* 8028EE54 0028BD94  C0 22 D6 10 */	lfs f1, lbl_8051B970@sda21(r2)
/* 8028EE58 0028BD98  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028EE5C 0028BD9C  D0 81 00 08 */	stfs f4, 8(r1)
/* 8028EE60 0028BDA0  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8028EE64 0028BDA4  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8028EE68 0028BDA8  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8028EE6C 0028BDAC  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8028EE70 0028BDB0  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8028EE74 0028BDB4  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8028EE78 0028BDB8  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028EE7C 0028BDBC  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8028EE80 0028BDC0  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028EE84 0028BDC4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028EE88 0028BDC8  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8028EE8C 0028BDCC  80 7F 00 00 */	lwz r3, 0(r31)
/* 8028EE90 0028BDD0  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028EE94 0028BDD4  48 1B 01 51 */	bl getJoint__Q28SysShape5ModelFPc
/* 8028EE98 0028BDD8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EE9C 0028BDDC  80 84 00 04 */	lwz r4, 4(r4)
/* 8028EEA0 0028BDE0  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028EEA4 0028BDE4  38 61 00 08 */	addi r3, r1, 8
/* 8028EEA8 0028BDE8  38 84 00 28 */	addi r4, r4, 0x28
/* 8028EEAC 0028BDEC  4B E5 B4 21 */	bl PSMTXCopy
/* 8028EEB0 0028BDF0  C0 62 D5 E8 */	lfs f3, lbl_8051B948@sda21(r2)
/* 8028EEB4 0028BDF4  38 82 D6 28 */	addi r4, r2, lbl_8051B988@sda21
/* 8028EEB8 0028BDF8  C0 82 D6 1C */	lfs f4, lbl_8051B97C@sda21(r2)
/* 8028EEBC 0028BDFC  C0 42 D6 20 */	lfs f2, lbl_8051B980@sda21(r2)
/* 8028EEC0 0028BE00  C0 22 D6 24 */	lfs f1, lbl_8051B984@sda21(r2)
/* 8028EEC4 0028BE04  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028EEC8 0028BE08  D0 81 00 08 */	stfs f4, 8(r1)
/* 8028EECC 0028BE0C  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8028EED0 0028BE10  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8028EED4 0028BE14  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8028EED8 0028BE18  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8028EEDC 0028BE1C  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8028EEE0 0028BE20  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8028EEE4 0028BE24  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028EEE8 0028BE28  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8028EEEC 0028BE2C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028EEF0 0028BE30  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028EEF4 0028BE34  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8028EEF8 0028BE38  80 7F 00 00 */	lwz r3, 0(r31)
/* 8028EEFC 0028BE3C  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028EF00 0028BE40  48 1B 00 E5 */	bl getJoint__Q28SysShape5ModelFPc
/* 8028EF04 0028BE44  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EF08 0028BE48  80 84 00 08 */	lwz r4, 8(r4)
/* 8028EF0C 0028BE4C  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028EF10 0028BE50  38 61 00 08 */	addi r3, r1, 8
/* 8028EF14 0028BE54  38 84 00 28 */	addi r4, r4, 0x28
/* 8028EF18 0028BE58  4B E5 B3 B5 */	bl PSMTXCopy
/* 8028EF1C 0028BE5C  C0 22 D5 E8 */	lfs f1, lbl_8051B948@sda21(r2)
/* 8028EF20 0028BE60  38 82 D6 34 */	addi r4, r2, lbl_8051B994@sda21
/* 8028EF24 0028BE64  C0 42 D6 30 */	lfs f2, lbl_8051B990@sda21(r2)
/* 8028EF28 0028BE68  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028EF2C 0028BE6C  D0 41 00 08 */	stfs f2, 8(r1)
/* 8028EF30 0028BE70  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8028EF34 0028BE74  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8028EF38 0028BE78  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8028EF3C 0028BE7C  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8028EF40 0028BE80  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8028EF44 0028BE84  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8028EF48 0028BE88  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8028EF4C 0028BE8C  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 8028EF50 0028BE90  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028EF54 0028BE94  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028EF58 0028BE98  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8028EF5C 0028BE9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 8028EF60 0028BEA0  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028EF64 0028BEA4  48 1B 00 81 */	bl getJoint__Q28SysShape5ModelFPc
/* 8028EF68 0028BEA8  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EF6C 0028BEAC  80 84 00 0C */	lwz r4, 0xc(r4)
/* 8028EF70 0028BEB0  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028EF74 0028BEB4  38 61 00 08 */	addi r3, r1, 8
/* 8028EF78 0028BEB8  38 84 00 28 */	addi r4, r4, 0x28
/* 8028EF7C 0028BEBC  4B E5 B3 51 */	bl PSMTXCopy
/* 8028EF80 0028BEC0  C0 62 D5 E8 */	lfs f3, lbl_8051B948@sda21(r2)
/* 8028EF84 0028BEC4  38 82 D6 48 */	addi r4, r2, lbl_8051B9A8@sda21
/* 8028EF88 0028BEC8  C0 82 D6 3C */	lfs f4, lbl_8051B99C@sda21(r2)
/* 8028EF8C 0028BECC  C0 42 D6 40 */	lfs f2, lbl_8051B9A0@sda21(r2)
/* 8028EF90 0028BED0  C0 22 D6 44 */	lfs f1, lbl_8051B9A4@sda21(r2)
/* 8028EF94 0028BED4  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028EF98 0028BED8  D0 81 00 08 */	stfs f4, 8(r1)
/* 8028EF9C 0028BEDC  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8028EFA0 0028BEE0  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8028EFA4 0028BEE4  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8028EFA8 0028BEE8  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8028EFAC 0028BEEC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8028EFB0 0028BEF0  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8028EFB4 0028BEF4  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028EFB8 0028BEF8  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8028EFBC 0028BEFC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028EFC0 0028BF00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028EFC4 0028BF04  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8028EFC8 0028BF08  80 7F 00 00 */	lwz r3, 0(r31)
/* 8028EFCC 0028BF0C  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028EFD0 0028BF10  48 1B 00 15 */	bl getJoint__Q28SysShape5ModelFPc
/* 8028EFD4 0028BF14  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028EFD8 0028BF18  80 84 00 10 */	lwz r4, 0x10(r4)
/* 8028EFDC 0028BF1C  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028EFE0 0028BF20  38 61 00 08 */	addi r3, r1, 8
/* 8028EFE4 0028BF24  38 84 00 28 */	addi r4, r4, 0x28
/* 8028EFE8 0028BF28  4B E5 B2 E5 */	bl PSMTXCopy
/* 8028EFEC 0028BF2C  C0 62 D5 E8 */	lfs f3, lbl_8051B948@sda21(r2)
/* 8028EFF0 0028BF30  38 82 D6 5C */	addi r4, r2, lbl_8051B9BC@sda21
/* 8028EFF4 0028BF34  C0 82 D6 50 */	lfs f4, lbl_8051B9B0@sda21(r2)
/* 8028EFF8 0028BF38  C0 42 D6 54 */	lfs f2, lbl_8051B9B4@sda21(r2)
/* 8028EFFC 0028BF3C  C0 22 D6 58 */	lfs f1, lbl_8051B9B8@sda21(r2)
/* 8028F000 0028BF40  C0 02 D5 FC */	lfs f0, lbl_8051B95C@sda21(r2)
/* 8028F004 0028BF44  D0 81 00 08 */	stfs f4, 8(r1)
/* 8028F008 0028BF48  D0 61 00 18 */	stfs f3, 0x18(r1)
/* 8028F00C 0028BF4C  D0 61 00 28 */	stfs f3, 0x28(r1)
/* 8028F010 0028BF50  D0 61 00 0C */	stfs f3, 0xc(r1)
/* 8028F014 0028BF54  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 8028F018 0028BF58  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 8028F01C 0028BF5C  D0 61 00 10 */	stfs f3, 0x10(r1)
/* 8028F020 0028BF60  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 8028F024 0028BF64  D0 81 00 30 */	stfs f4, 0x30(r1)
/* 8028F028 0028BF68  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8028F02C 0028BF6C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8028F030 0028BF70  D0 61 00 34 */	stfs f3, 0x34(r1)
/* 8028F034 0028BF74  80 7F 00 00 */	lwz r3, 0(r31)
/* 8028F038 0028BF78  80 63 01 74 */	lwz r3, 0x174(r3)
/* 8028F03C 0028BF7C  48 1A FF A9 */	bl getJoint__Q28SysShape5ModelFPc
/* 8028F040 0028BF80  80 9F 00 08 */	lwz r4, 8(r31)
/* 8028F044 0028BF84  80 84 00 14 */	lwz r4, 0x14(r4)
/* 8028F048 0028BF88  90 64 00 24 */	stw r3, 0x24(r4)
/* 8028F04C 0028BF8C  38 61 00 08 */	addi r3, r1, 8
/* 8028F050 0028BF90  38 84 00 28 */	addi r4, r4, 0x28
/* 8028F054 0028BF94  4B E5 B2 79 */	bl PSMTXCopy
/* 8028F058 0028BF98  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8028F05C 0028BF9C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8028F060 0028BFA0  7C 08 03 A6 */	mtlr r0
/* 8028F064 0028BFA4  38 21 00 40 */	addi r1, r1, 0x40
/* 8028F068 0028BFA8  4E 80 00 20 */	blr 

.global update__Q34Game5Queen14QueenShadowMgrFv
update__Q34Game5Queen14QueenShadowMgrFv:
/* 8028F06C 0028BFAC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8028F070 0028BFB0  7C 08 02 A6 */	mflr r0
/* 8028F074 0028BFB4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8028F078 0028BFB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8028F07C 0028BFBC  3B E0 00 00 */	li r31, 0
/* 8028F080 0028BFC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8028F084 0028BFC4  3B C0 00 00 */	li r30, 0
/* 8028F088 0028BFC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8028F08C 0028BFCC  7C 7D 1B 78 */	mr r29, r3
.L_8028F090:
/* 8028F090 0028BFD0  80 7D 00 08 */	lwz r3, 8(r29)
/* 8028F094 0028BFD4  7C 63 F8 2E */	lwzx r3, r3, r31
/* 8028F098 0028BFD8  4B FF FA D1 */	bl makeShadowSRT__Q34Game5Queen15QueenShadowNodeFv
/* 8028F09C 0028BFDC  3B DE 00 01 */	addi r30, r30, 1
/* 8028F0A0 0028BFE0  3B FF 00 04 */	addi r31, r31, 4
/* 8028F0A4 0028BFE4  2C 1E 00 06 */	cmpwi r30, 6
/* 8028F0A8 0028BFE8  41 80 FF E8 */	blt .L_8028F090
/* 8028F0AC 0028BFEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8028F0B0 0028BFF0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8028F0B4 0028BFF4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8028F0B8 0028BFF8  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8028F0BC 0028BFFC  7C 08 03 A6 */	mtlr r0
/* 8028F0C0 0028C000  38 21 00 20 */	addi r1, r1, 0x20
/* 8028F0C4 0028C004  4E 80 00 20 */	blr 

.global __dt__Q34Game5Queen15QueenShadowNodeFv
__dt__Q34Game5Queen15QueenShadowNodeFv:
/* 8028F0C8 0028C008  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8028F0CC 0028C00C  7C 08 02 A6 */	mflr r0
/* 8028F0D0 0028C010  90 01 00 14 */	stw r0, 0x14(r1)
/* 8028F0D4 0028C014  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8028F0D8 0028C018  7C 9F 23 78 */	mr r31, r4
/* 8028F0DC 0028C01C  93 C1 00 08 */	stw r30, 8(r1)
/* 8028F0E0 0028C020  7C 7E 1B 79 */	or. r30, r3, r3
/* 8028F0E4 0028C024  41 82 00 38 */	beq .L_8028F11C
/* 8028F0E8 0028C028  3C 80 80 4D */	lis r4, __vt__Q34Game5Queen15QueenShadowNode@ha
/* 8028F0EC 0028C02C  38 04 AD 08 */	addi r0, r4, __vt__Q34Game5Queen15QueenShadowNode@l
/* 8028F0F0 0028C030  90 1E 00 00 */	stw r0, 0(r30)
/* 8028F0F4 0028C034  41 82 00 18 */	beq .L_8028F10C
/* 8028F0F8 0028C038  3C A0 80 4C */	lis r5, __vt__Q24Game15JointShadowNode@ha
/* 8028F0FC 0028C03C  38 80 00 00 */	li r4, 0
/* 8028F100 0028C040  38 05 1A 34 */	addi r0, r5, __vt__Q24Game15JointShadowNode@l
/* 8028F104 0028C044  90 1E 00 00 */	stw r0, 0(r30)
/* 8028F108 0028C048  48 18 24 81 */	bl __dt__5CNodeFv
.L_8028F10C:
/* 8028F10C 0028C04C  7F E0 07 35 */	extsh. r0, r31
/* 8028F110 0028C050  40 81 00 0C */	ble .L_8028F11C
/* 8028F114 0028C054  7F C3 F3 78 */	mr r3, r30
/* 8028F118 0028C058  4B D9 4F 9D */	bl __dl__FPv
.L_8028F11C:
/* 8028F11C 0028C05C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8028F120 0028C060  7F C3 F3 78 */	mr r3, r30
/* 8028F124 0028C064  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8028F128 0028C068  83 C1 00 08 */	lwz r30, 8(r1)
/* 8028F12C 0028C06C  7C 08 03 A6 */	mtlr r0
/* 8028F130 0028C070  38 21 00 10 */	addi r1, r1, 0x10
/* 8028F134 0028C074  4E 80 00 20 */	blr 

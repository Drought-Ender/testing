.include "macros.inc"
.section .sdata, "wa"  # 0x80514680 - 0x80514D80
.balign 8
.global __CARDVendorID
__CARDVendorID:
	.2byte 0xFFFF
.global __CARDPermMask
__CARDPermMask:
	.byte 0x1C

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global CARDGetSerialNo
CARDGetSerialNo:
/* 800DAB00 000D7A40  7C 08 02 A6 */	mflr r0
/* 800DAB04 000D7A44  2C 03 00 00 */	cmpwi r3, 0
/* 800DAB08 000D7A48  90 01 00 04 */	stw r0, 4(r1)
/* 800DAB0C 000D7A4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DAB10 000D7A50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DAB14 000D7A54  3B E4 00 00 */	addi r31, r4, 0
/* 800DAB18 000D7A58  41 80 00 0C */	blt .L_800DAB24
/* 800DAB1C 000D7A5C  2C 03 00 02 */	cmpwi r3, 2
/* 800DAB20 000D7A60  41 80 00 0C */	blt .L_800DAB2C
.L_800DAB24:
/* 800DAB24 000D7A64  38 60 FF 80 */	li r3, -128
/* 800DAB28 000D7A68  48 00 00 88 */	b .L_800DABB0
.L_800DAB2C:
/* 800DAB2C 000D7A6C  38 81 00 10 */	addi r4, r1, 0x10
/* 800DAB30 000D7A70  4B FF AA 9D */	bl __CARDGetControlBlock
/* 800DAB34 000D7A74  2C 03 00 00 */	cmpwi r3, 0
/* 800DAB38 000D7A78  40 80 00 08 */	bge .L_800DAB40
/* 800DAB3C 000D7A7C  48 00 00 74 */	b .L_800DABB0
.L_800DAB40:
/* 800DAB40 000D7A80  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800DAB44 000D7A84  38 E0 00 00 */	li r7, 0
/* 800DAB48 000D7A88  38 C0 00 00 */	li r6, 0
/* 800DAB4C 000D7A8C  80 A3 00 80 */	lwz r5, 0x80(r3)
/* 800DAB50 000D7A90  38 80 00 00 */	li r4, 0
/* 800DAB54 000D7A94  80 65 00 04 */	lwz r3, 4(r5)
/* 800DAB58 000D7A98  80 05 00 00 */	lwz r0, 0(r5)
/* 800DAB5C 000D7A9C  7C E7 1A 78 */	xor r7, r7, r3
/* 800DAB60 000D7AA0  38 65 00 08 */	addi r3, r5, 8
/* 800DAB64 000D7AA4  7C C6 02 78 */	xor r6, r6, r0
/* 800DAB68 000D7AA8  80 05 00 08 */	lwz r0, 8(r5)
/* 800DAB6C 000D7AAC  80 63 00 04 */	lwz r3, 4(r3)
/* 800DAB70 000D7AB0  7C C6 02 78 */	xor r6, r6, r0
/* 800DAB74 000D7AB4  7C E7 1A 78 */	xor r7, r7, r3
/* 800DAB78 000D7AB8  38 65 00 10 */	addi r3, r5, 0x10
/* 800DAB7C 000D7ABC  80 05 00 10 */	lwz r0, 0x10(r5)
/* 800DAB80 000D7AC0  80 63 00 04 */	lwz r3, 4(r3)
/* 800DAB84 000D7AC4  7C C6 02 78 */	xor r6, r6, r0
/* 800DAB88 000D7AC8  7C E7 1A 78 */	xor r7, r7, r3
/* 800DAB8C 000D7ACC  38 65 00 18 */	addi r3, r5, 0x18
/* 800DAB90 000D7AD0  80 05 00 18 */	lwz r0, 0x18(r5)
/* 800DAB94 000D7AD4  80 63 00 04 */	lwz r3, 4(r3)
/* 800DAB98 000D7AD8  7C C6 02 78 */	xor r6, r6, r0
/* 800DAB9C 000D7ADC  7C E7 1A 78 */	xor r7, r7, r3
/* 800DABA0 000D7AE0  90 FF 00 04 */	stw r7, 4(r31)
/* 800DABA4 000D7AE4  90 DF 00 00 */	stw r6, 0(r31)
/* 800DABA8 000D7AE8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 800DABAC 000D7AEC  4B FF AA D9 */	bl __CARDPutControlBlock
.L_800DABB0:
/* 800DABB0 000D7AF0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DABB4 000D7AF4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DABB8 000D7AF8  38 21 00 20 */	addi r1, r1, 0x20
/* 800DABBC 000D7AFC  7C 08 03 A6 */	mtlr r0
/* 800DABC0 000D7B00  4E 80 00 20 */	blr 

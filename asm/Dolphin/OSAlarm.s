.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
ResetFunctionInfo:
	.4byte OnReset
	.4byte 0xFFFFFFFF
	.4byte 0x00000000
	.4byte 0x00000000

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
AlarmQueue:
	.skip 8

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global OSInitAlarm
OSInitAlarm:
/* 800EBAB4 000E89F4  7C 08 02 A6 */	mflr r0
/* 800EBAB8 000E89F8  38 60 00 08 */	li r3, 8
/* 800EBABC 000E89FC  90 01 00 04 */	stw r0, 4(r1)
/* 800EBAC0 000E8A00  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EBAC4 000E8A04  4B FF FE 55 */	bl __OSGetExceptionHandler
/* 800EBAC8 000E8A08  3C 80 80 0F */	lis r4, DecrementerExceptionHandler@ha
/* 800EBACC 000E8A0C  38 84 C1 20 */	addi r4, r4, DecrementerExceptionHandler@l
/* 800EBAD0 000E8A10  7C 03 20 40 */	cmplw r3, r4
/* 800EBAD4 000E8A14  41 82 00 28 */	beq .L_800EBAFC
/* 800EBAD8 000E8A18  38 00 00 00 */	li r0, 0
/* 800EBADC 000E8A1C  38 6D 8F 50 */	addi r3, r13, AlarmQueue@sda21
/* 800EBAE0 000E8A20  90 03 00 04 */	stw r0, 4(r3)
/* 800EBAE4 000E8A24  38 60 00 08 */	li r3, 8
/* 800EBAE8 000E8A28  90 0D 8F 50 */	stw r0, AlarmQueue@sda21(r13)
/* 800EBAEC 000E8A2C  4B FF FE 11 */	bl __OSSetExceptionHandler
/* 800EBAF0 000E8A30  3C 60 80 4B */	lis r3, ResetFunctionInfo@ha
/* 800EBAF4 000E8A34  38 63 8A F8 */	addi r3, r3, ResetFunctionInfo@l
/* 800EBAF8 000E8A38  48 00 47 AD */	bl OSRegisterResetFunction
.L_800EBAFC:
/* 800EBAFC 000E8A3C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800EBB00 000E8A40  38 21 00 08 */	addi r1, r1, 8
/* 800EBB04 000E8A44  7C 08 03 A6 */	mtlr r0
/* 800EBB08 000E8A48  4E 80 00 20 */	blr 

.global OSCreateAlarm
OSCreateAlarm:
/* 800EBB0C 000E8A4C  38 00 00 00 */	li r0, 0
/* 800EBB10 000E8A50  90 03 00 00 */	stw r0, 0(r3)
/* 800EBB14 000E8A54  90 03 00 04 */	stw r0, 4(r3)
/* 800EBB18 000E8A58  4E 80 00 20 */	blr 

InsertAlarm:
/* 800EBB1C 000E8A5C  7C 08 02 A6 */	mflr r0
/* 800EBB20 000E8A60  90 01 00 04 */	stw r0, 4(r1)
/* 800EBB24 000E8A64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800EBB28 000E8A68  BF 21 00 24 */	stmw r25, 0x24(r1)
/* 800EBB2C 000E8A6C  3B 80 00 00 */	li r28, 0
/* 800EBB30 000E8A70  7C 7D 1B 78 */	mr r29, r3
/* 800EBB34 000E8A74  6F 84 80 00 */	xoris r4, r28, 0x8000
/* 800EBB38 000E8A78  3B 25 00 00 */	addi r25, r5, 0
/* 800EBB3C 000E8A7C  3B C6 00 00 */	addi r30, r6, 0
/* 800EBB40 000E8A80  3B E7 00 00 */	addi r31, r7, 0
/* 800EBB44 000E8A84  80 03 00 18 */	lwz r0, 0x18(r3)
/* 800EBB48 000E8A88  81 03 00 1C */	lwz r8, 0x1c(r3)
/* 800EBB4C 000E8A8C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800EBB50 000E8A90  7C 08 E0 10 */	subfc r0, r8, r28
/* 800EBB54 000E8A94  7C 63 21 10 */	subfe r3, r3, r4
/* 800EBB58 000E8A98  7C 64 21 10 */	subfe r3, r4, r4
/* 800EBB5C 000E8A9C  7C 63 00 D1 */	neg. r3, r3
/* 800EBB60 000E8AA0  41 82 00 7C */	beq .L_800EBBDC
/* 800EBB64 000E8AA4  48 00 70 4D */	bl __OSGetSystemTime
/* 800EBB68 000E8AA8  80 FD 00 20 */	lwz r7, 0x20(r29)
/* 800EBB6C 000E8AAC  6C 65 80 00 */	xoris r5, r3, 0x8000
/* 800EBB70 000E8AB0  81 1D 00 24 */	lwz r8, 0x24(r29)
/* 800EBB74 000E8AB4  6C E6 80 00 */	xoris r6, r7, 0x8000
/* 800EBB78 000E8AB8  7C 04 40 10 */	subfc r0, r4, r8
/* 800EBB7C 000E8ABC  7C A5 31 10 */	subfe r5, r5, r6
/* 800EBB80 000E8AC0  7C A6 31 10 */	subfe r5, r6, r6
/* 800EBB84 000E8AC4  7C A5 00 D1 */	neg. r5, r5
/* 800EBB88 000E8AC8  3B C8 00 00 */	addi r30, r8, 0
/* 800EBB8C 000E8ACC  3B 27 00 00 */	addi r25, r7, 0
/* 800EBB90 000E8AD0  41 82 00 4C */	beq .L_800EBBDC
/* 800EBB94 000E8AD4  83 7D 00 18 */	lwz r27, 0x18(r29)
/* 800EBB98 000E8AD8  7C 88 20 10 */	subfc r4, r8, r4
/* 800EBB9C 000E8ADC  83 5D 00 1C */	lwz r26, 0x1c(r29)
/* 800EBBA0 000E8AE0  7C 67 19 10 */	subfe r3, r7, r3
/* 800EBBA4 000E8AE4  38 BB 00 00 */	addi r5, r27, 0
/* 800EBBA8 000E8AE8  38 DA 00 00 */	addi r6, r26, 0
/* 800EBBAC 000E8AEC  4B FD 62 19 */	bl __div2i
/* 800EBBB0 000E8AF0  38 00 00 01 */	li r0, 1
/* 800EBBB4 000E8AF4  7C A4 00 14 */	addc r5, r4, r0
/* 800EBBB8 000E8AF8  7C 9B 29 D6 */	mullw r4, r27, r5
/* 800EBBBC 000E8AFC  7C 1A 28 16 */	mulhwu r0, r26, r5
/* 800EBBC0 000E8B00  7C 63 E1 14 */	adde r3, r3, r28
/* 800EBBC4 000E8B04  7C 84 02 14 */	add r4, r4, r0
/* 800EBBC8 000E8B08  7C 1A 19 D6 */	mullw r0, r26, r3
/* 800EBBCC 000E8B0C  7C 7A 29 D6 */	mullw r3, r26, r5
/* 800EBBD0 000E8B10  7C 04 02 14 */	add r0, r4, r0
/* 800EBBD4 000E8B14  7F DE 18 14 */	addc r30, r30, r3
/* 800EBBD8 000E8B18  7F 39 01 14 */	adde r25, r25, r0
.L_800EBBDC:
/* 800EBBDC 000E8B1C  93 FD 00 00 */	stw r31, 0(r29)
/* 800EBBE0 000E8B20  6F 24 80 00 */	xoris r4, r25, 0x8000
/* 800EBBE4 000E8B24  93 DD 00 0C */	stw r30, 0xc(r29)
/* 800EBBE8 000E8B28  93 3D 00 08 */	stw r25, 8(r29)
/* 800EBBEC 000E8B2C  80 CD 8F 50 */	lwz r6, AlarmQueue@sda21(r13)
/* 800EBBF0 000E8B30  48 00 00 C4 */	b .L_800EBCB4
.L_800EBBF4:
/* 800EBBF4 000E8B34  80 06 00 08 */	lwz r0, 8(r6)
/* 800EBBF8 000E8B38  80 A6 00 0C */	lwz r5, 0xc(r6)
/* 800EBBFC 000E8B3C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800EBC00 000E8B40  7C 05 F0 10 */	subfc r0, r5, r30
/* 800EBC04 000E8B44  7C 63 21 10 */	subfe r3, r3, r4
/* 800EBC08 000E8B48  7C 64 21 10 */	subfe r3, r4, r4
/* 800EBC0C 000E8B4C  7C 63 00 D1 */	neg. r3, r3
/* 800EBC10 000E8B50  41 82 00 A0 */	beq .L_800EBCB0
/* 800EBC14 000E8B54  80 06 00 10 */	lwz r0, 0x10(r6)
/* 800EBC18 000E8B58  90 1D 00 10 */	stw r0, 0x10(r29)
/* 800EBC1C 000E8B5C  93 A6 00 10 */	stw r29, 0x10(r6)
/* 800EBC20 000E8B60  90 DD 00 14 */	stw r6, 0x14(r29)
/* 800EBC24 000E8B64  80 7D 00 10 */	lwz r3, 0x10(r29)
/* 800EBC28 000E8B68  28 03 00 00 */	cmplwi r3, 0
/* 800EBC2C 000E8B6C  41 82 00 0C */	beq .L_800EBC38
/* 800EBC30 000E8B70  93 A3 00 14 */	stw r29, 0x14(r3)
/* 800EBC34 000E8B74  48 00 01 24 */	b .L_800EBD58
.L_800EBC38:
/* 800EBC38 000E8B78  93 AD 8F 50 */	stw r29, AlarmQueue@sda21(r13)
/* 800EBC3C 000E8B7C  48 00 6F 75 */	bl __OSGetSystemTime
/* 800EBC40 000E8B80  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 800EBC44 000E8B84  38 E0 00 00 */	li r7, 0
/* 800EBC48 000E8B88  80 1D 00 08 */	lwz r0, 8(r29)
/* 800EBC4C 000E8B8C  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 800EBC50 000E8B90  7D 04 30 10 */	subfc r8, r4, r6
/* 800EBC54 000E8B94  7C 03 01 10 */	subfe r0, r3, r0
/* 800EBC58 000E8B98  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 800EBC5C 000E8B9C  7C 07 40 10 */	subfc r0, r7, r8
/* 800EBC60 000E8BA0  7C A5 31 10 */	subfe r5, r5, r6
/* 800EBC64 000E8BA4  7C A6 31 10 */	subfe r5, r6, r6
/* 800EBC68 000E8BA8  7C A5 00 D1 */	neg. r5, r5
/* 800EBC6C 000E8BAC  41 82 00 10 */	beq .L_800EBC7C
/* 800EBC70 000E8BB0  38 60 00 00 */	li r3, 0
/* 800EBC74 000E8BB4  4B FE 89 15 */	bl PPCMtdec
/* 800EBC78 000E8BB8  48 00 00 E0 */	b .L_800EBD58
.L_800EBC7C:
/* 800EBC7C 000E8BBC  3C 80 80 00 */	lis r4, 0x8000
/* 800EBC80 000E8BC0  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800EBC84 000E8BC4  7C 04 40 10 */	subfc r0, r4, r8
/* 800EBC88 000E8BC8  7C 63 31 10 */	subfe r3, r3, r6
/* 800EBC8C 000E8BCC  7C 66 31 10 */	subfe r3, r6, r6
/* 800EBC90 000E8BD0  7C 63 00 D1 */	neg. r3, r3
/* 800EBC94 000E8BD4  41 82 00 10 */	beq .L_800EBCA4
/* 800EBC98 000E8BD8  7D 03 43 78 */	mr r3, r8
/* 800EBC9C 000E8BDC  4B FE 88 ED */	bl PPCMtdec
/* 800EBCA0 000E8BE0  48 00 00 B8 */	b .L_800EBD58
.L_800EBCA4:
/* 800EBCA4 000E8BE4  38 64 FF FF */	addi r3, r4, -1
/* 800EBCA8 000E8BE8  4B FE 88 E1 */	bl PPCMtdec
/* 800EBCAC 000E8BEC  48 00 00 AC */	b .L_800EBD58
.L_800EBCB0:
/* 800EBCB0 000E8BF0  80 C6 00 14 */	lwz r6, 0x14(r6)
.L_800EBCB4:
/* 800EBCB4 000E8BF4  28 06 00 00 */	cmplwi r6, 0
/* 800EBCB8 000E8BF8  40 82 FF 3C */	bne .L_800EBBF4
/* 800EBCBC 000E8BFC  3B C0 00 00 */	li r30, 0
/* 800EBCC0 000E8C00  93 DD 00 14 */	stw r30, 0x14(r29)
/* 800EBCC4 000E8C04  38 6D 8F 50 */	addi r3, r13, AlarmQueue@sda21
/* 800EBCC8 000E8C08  80 83 00 04 */	lwz r4, 4(r3)
/* 800EBCCC 000E8C0C  97 A3 00 04 */	stwu r29, 4(r3)
/* 800EBCD0 000E8C10  28 04 00 00 */	cmplwi r4, 0
/* 800EBCD4 000E8C14  90 9D 00 10 */	stw r4, 0x10(r29)
/* 800EBCD8 000E8C18  41 82 00 0C */	beq .L_800EBCE4
/* 800EBCDC 000E8C1C  93 A4 00 14 */	stw r29, 0x14(r4)
/* 800EBCE0 000E8C20  48 00 00 78 */	b .L_800EBD58
.L_800EBCE4:
/* 800EBCE4 000E8C24  93 A3 00 00 */	stw r29, 0(r3)
/* 800EBCE8 000E8C28  93 AD 8F 50 */	stw r29, AlarmQueue@sda21(r13)
/* 800EBCEC 000E8C2C  48 00 6E C5 */	bl __OSGetSystemTime
/* 800EBCF0 000E8C30  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 800EBCF4 000E8C34  6F C5 80 00 */	xoris r5, r30, 0x8000
/* 800EBCF8 000E8C38  80 1D 00 08 */	lwz r0, 8(r29)
/* 800EBCFC 000E8C3C  7C E4 30 10 */	subfc r7, r4, r6
/* 800EBD00 000E8C40  7C 03 01 10 */	subfe r0, r3, r0
/* 800EBD04 000E8C44  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 800EBD08 000E8C48  7C 1E 38 10 */	subfc r0, r30, r7
/* 800EBD0C 000E8C4C  7C A5 31 10 */	subfe r5, r5, r6
/* 800EBD10 000E8C50  7C A6 31 10 */	subfe r5, r6, r6
/* 800EBD14 000E8C54  7C A5 00 D1 */	neg. r5, r5
/* 800EBD18 000E8C58  41 82 00 10 */	beq .L_800EBD28
/* 800EBD1C 000E8C5C  38 60 00 00 */	li r3, 0
/* 800EBD20 000E8C60  4B FE 88 69 */	bl PPCMtdec
/* 800EBD24 000E8C64  48 00 00 34 */	b .L_800EBD58
.L_800EBD28:
/* 800EBD28 000E8C68  3C 80 80 00 */	lis r4, 0x8000
/* 800EBD2C 000E8C6C  6F C3 80 00 */	xoris r3, r30, 0x8000
/* 800EBD30 000E8C70  7C 04 38 10 */	subfc r0, r4, r7
/* 800EBD34 000E8C74  7C 63 31 10 */	subfe r3, r3, r6
/* 800EBD38 000E8C78  7C 66 31 10 */	subfe r3, r6, r6
/* 800EBD3C 000E8C7C  7C 63 00 D1 */	neg. r3, r3
/* 800EBD40 000E8C80  41 82 00 10 */	beq .L_800EBD50
/* 800EBD44 000E8C84  7C E3 3B 78 */	mr r3, r7
/* 800EBD48 000E8C88  4B FE 88 41 */	bl PPCMtdec
/* 800EBD4C 000E8C8C  48 00 00 0C */	b .L_800EBD58
.L_800EBD50:
/* 800EBD50 000E8C90  38 64 FF FF */	addi r3, r4, -1
/* 800EBD54 000E8C94  4B FE 88 35 */	bl PPCMtdec
.L_800EBD58:
/* 800EBD58 000E8C98  BB 21 00 24 */	lmw r25, 0x24(r1)
/* 800EBD5C 000E8C9C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800EBD60 000E8CA0  38 21 00 40 */	addi r1, r1, 0x40
/* 800EBD64 000E8CA4  7C 08 03 A6 */	mtlr r0
/* 800EBD68 000E8CA8  4E 80 00 20 */	blr 

.global OSSetAlarm
OSSetAlarm:
/* 800EBD6C 000E8CAC  7C 08 02 A6 */	mflr r0
/* 800EBD70 000E8CB0  90 01 00 04 */	stw r0, 4(r1)
/* 800EBD74 000E8CB4  94 21 FF C8 */	stwu r1, -0x38(r1)
/* 800EBD78 000E8CB8  BF 61 00 24 */	stmw r27, 0x24(r1)
/* 800EBD7C 000E8CBC  3B 63 00 00 */	addi r27, r3, 0
/* 800EBD80 000E8CC0  3B A5 00 00 */	addi r29, r5, 0
/* 800EBD84 000E8CC4  3B 86 00 00 */	addi r28, r6, 0
/* 800EBD88 000E8CC8  3B C7 00 00 */	addi r30, r7, 0
/* 800EBD8C 000E8CCC  48 00 2E AD */	bl OSDisableInterrupts
/* 800EBD90 000E8CD0  38 00 00 00 */	li r0, 0
/* 800EBD94 000E8CD4  90 1B 00 1C */	stw r0, 0x1c(r27)
/* 800EBD98 000E8CD8  7C 7F 1B 78 */	mr r31, r3
/* 800EBD9C 000E8CDC  90 1B 00 18 */	stw r0, 0x18(r27)
/* 800EBDA0 000E8CE0  48 00 6E 11 */	bl __OSGetSystemTime
/* 800EBDA4 000E8CE4  7C DC 20 14 */	addc r6, r28, r4
/* 800EBDA8 000E8CE8  7C BD 19 14 */	adde r5, r29, r3
/* 800EBDAC 000E8CEC  38 7B 00 00 */	addi r3, r27, 0
/* 800EBDB0 000E8CF0  38 FE 00 00 */	addi r7, r30, 0
/* 800EBDB4 000E8CF4  4B FF FD 69 */	bl InsertAlarm
/* 800EBDB8 000E8CF8  7F E3 FB 78 */	mr r3, r31
/* 800EBDBC 000E8CFC  48 00 2E A5 */	bl OSRestoreInterrupts
/* 800EBDC0 000E8D00  BB 61 00 24 */	lmw r27, 0x24(r1)
/* 800EBDC4 000E8D04  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 800EBDC8 000E8D08  38 21 00 38 */	addi r1, r1, 0x38
/* 800EBDCC 000E8D0C  7C 08 03 A6 */	mtlr r0
/* 800EBDD0 000E8D10  4E 80 00 20 */	blr 

.global OSCancelAlarm
OSCancelAlarm:
/* 800EBDD4 000E8D14  7C 08 02 A6 */	mflr r0
/* 800EBDD8 000E8D18  90 01 00 04 */	stw r0, 4(r1)
/* 800EBDDC 000E8D1C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800EBDE0 000E8D20  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800EBDE4 000E8D24  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800EBDE8 000E8D28  7C 7E 1B 78 */	mr r30, r3
/* 800EBDEC 000E8D2C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800EBDF0 000E8D30  48 00 2E 49 */	bl OSDisableInterrupts
/* 800EBDF4 000E8D34  80 1E 00 00 */	lwz r0, 0(r30)
/* 800EBDF8 000E8D38  3B E3 00 00 */	addi r31, r3, 0
/* 800EBDFC 000E8D3C  28 00 00 00 */	cmplwi r0, 0
/* 800EBE00 000E8D40  40 82 00 10 */	bne .L_800EBE10
/* 800EBE04 000E8D44  7F E3 FB 78 */	mr r3, r31
/* 800EBE08 000E8D48  48 00 2E 59 */	bl OSRestoreInterrupts
/* 800EBE0C 000E8D4C  48 00 00 C8 */	b .L_800EBED4
.L_800EBE10:
/* 800EBE10 000E8D50  83 BE 00 14 */	lwz r29, 0x14(r30)
/* 800EBE14 000E8D54  28 1D 00 00 */	cmplwi r29, 0
/* 800EBE18 000E8D58  40 82 00 14 */	bne .L_800EBE2C
/* 800EBE1C 000E8D5C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800EBE20 000E8D60  38 6D 8F 50 */	addi r3, r13, AlarmQueue@sda21
/* 800EBE24 000E8D64  90 03 00 04 */	stw r0, 4(r3)
/* 800EBE28 000E8D68  48 00 00 0C */	b .L_800EBE34
.L_800EBE2C:
/* 800EBE2C 000E8D6C  80 1E 00 10 */	lwz r0, 0x10(r30)
/* 800EBE30 000E8D70  90 1D 00 10 */	stw r0, 0x10(r29)
.L_800EBE34:
/* 800EBE34 000E8D74  80 7E 00 10 */	lwz r3, 0x10(r30)
/* 800EBE38 000E8D78  28 03 00 00 */	cmplwi r3, 0
/* 800EBE3C 000E8D7C  41 82 00 0C */	beq .L_800EBE48
/* 800EBE40 000E8D80  93 A3 00 14 */	stw r29, 0x14(r3)
/* 800EBE44 000E8D84  48 00 00 80 */	b .L_800EBEC4
.L_800EBE48:
/* 800EBE48 000E8D88  28 1D 00 00 */	cmplwi r29, 0
/* 800EBE4C 000E8D8C  93 AD 8F 50 */	stw r29, AlarmQueue@sda21(r13)
/* 800EBE50 000E8D90  41 82 00 74 */	beq .L_800EBEC4
/* 800EBE54 000E8D94  48 00 6D 5D */	bl __OSGetSystemTime
/* 800EBE58 000E8D98  80 DD 00 0C */	lwz r6, 0xc(r29)
/* 800EBE5C 000E8D9C  38 E0 00 00 */	li r7, 0
/* 800EBE60 000E8DA0  80 1D 00 08 */	lwz r0, 8(r29)
/* 800EBE64 000E8DA4  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 800EBE68 000E8DA8  7D 04 30 10 */	subfc r8, r4, r6
/* 800EBE6C 000E8DAC  7C 03 01 10 */	subfe r0, r3, r0
/* 800EBE70 000E8DB0  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 800EBE74 000E8DB4  7C 07 40 10 */	subfc r0, r7, r8
/* 800EBE78 000E8DB8  7C A5 31 10 */	subfe r5, r5, r6
/* 800EBE7C 000E8DBC  7C A6 31 10 */	subfe r5, r6, r6
/* 800EBE80 000E8DC0  7C A5 00 D1 */	neg. r5, r5
/* 800EBE84 000E8DC4  41 82 00 10 */	beq .L_800EBE94
/* 800EBE88 000E8DC8  38 60 00 00 */	li r3, 0
/* 800EBE8C 000E8DCC  4B FE 86 FD */	bl PPCMtdec
/* 800EBE90 000E8DD0  48 00 00 34 */	b .L_800EBEC4
.L_800EBE94:
/* 800EBE94 000E8DD4  3C 80 80 00 */	lis r4, 0x8000
/* 800EBE98 000E8DD8  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800EBE9C 000E8DDC  7C 04 40 10 */	subfc r0, r4, r8
/* 800EBEA0 000E8DE0  7C 63 31 10 */	subfe r3, r3, r6
/* 800EBEA4 000E8DE4  7C 66 31 10 */	subfe r3, r6, r6
/* 800EBEA8 000E8DE8  7C 63 00 D1 */	neg. r3, r3
/* 800EBEAC 000E8DEC  41 82 00 10 */	beq .L_800EBEBC
/* 800EBEB0 000E8DF0  7D 03 43 78 */	mr r3, r8
/* 800EBEB4 000E8DF4  4B FE 86 D5 */	bl PPCMtdec
/* 800EBEB8 000E8DF8  48 00 00 0C */	b .L_800EBEC4
.L_800EBEBC:
/* 800EBEBC 000E8DFC  38 64 FF FF */	addi r3, r4, -1
/* 800EBEC0 000E8E00  4B FE 86 C9 */	bl PPCMtdec
.L_800EBEC4:
/* 800EBEC4 000E8E04  38 00 00 00 */	li r0, 0
/* 800EBEC8 000E8E08  90 1E 00 00 */	stw r0, 0(r30)
/* 800EBECC 000E8E0C  7F E3 FB 78 */	mr r3, r31
/* 800EBED0 000E8E10  48 00 2D 91 */	bl OSRestoreInterrupts
.L_800EBED4:
/* 800EBED4 000E8E14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800EBED8 000E8E18  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800EBEDC 000E8E1C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800EBEE0 000E8E20  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800EBEE4 000E8E24  38 21 00 20 */	addi r1, r1, 0x20
/* 800EBEE8 000E8E28  7C 08 03 A6 */	mtlr r0
/* 800EBEEC 000E8E2C  4E 80 00 20 */	blr 

DecrementerExceptionCallback:
/* 800EBEF0 000E8E30  7C 08 02 A6 */	mflr r0
/* 800EBEF4 000E8E34  90 01 00 04 */	stw r0, 4(r1)
/* 800EBEF8 000E8E38  94 21 FD 10 */	stwu r1, -0x2f0(r1)
/* 800EBEFC 000E8E3C  93 E1 02 EC */	stw r31, 0x2ec(r1)
/* 800EBF00 000E8E40  93 C1 02 E8 */	stw r30, 0x2e8(r1)
/* 800EBF04 000E8E44  93 A1 02 E4 */	stw r29, 0x2e4(r1)
/* 800EBF08 000E8E48  7C 9D 23 78 */	mr r29, r4
/* 800EBF0C 000E8E4C  93 81 02 E0 */	stw r28, 0x2e0(r1)
/* 800EBF10 000E8E50  48 00 6C A1 */	bl __OSGetSystemTime
/* 800EBF14 000E8E54  80 0D 8F 50 */	lwz r0, AlarmQueue@sda21(r13)
/* 800EBF18 000E8E58  3B 84 00 00 */	addi r28, r4, 0
/* 800EBF1C 000E8E5C  3B C3 00 00 */	addi r30, r3, 0
/* 800EBF20 000E8E60  28 00 00 00 */	cmplwi r0, 0
/* 800EBF24 000E8E64  7C 1F 03 78 */	mr r31, r0
/* 800EBF28 000E8E68  40 82 00 0C */	bne .L_800EBF34
/* 800EBF2C 000E8E6C  7F A3 EB 78 */	mr r3, r29
/* 800EBF30 000E8E70  48 00 11 5D */	bl OSLoadContext
.L_800EBF34:
/* 800EBF34 000E8E74  80 1F 00 08 */	lwz r0, 8(r31)
/* 800EBF38 000E8E78  6F C4 80 00 */	xoris r4, r30, 0x8000
/* 800EBF3C 000E8E7C  80 BF 00 0C */	lwz r5, 0xc(r31)
/* 800EBF40 000E8E80  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800EBF44 000E8E84  7C 05 E0 10 */	subfc r0, r5, r28
/* 800EBF48 000E8E88  7C 63 21 10 */	subfe r3, r3, r4
/* 800EBF4C 000E8E8C  7C 64 21 10 */	subfe r3, r4, r4
/* 800EBF50 000E8E90  7C 63 00 D1 */	neg. r3, r3
/* 800EBF54 000E8E94  41 82 00 7C */	beq .L_800EBFD0
/* 800EBF58 000E8E98  48 00 6C 59 */	bl __OSGetSystemTime
/* 800EBF5C 000E8E9C  80 DF 00 0C */	lwz r6, 0xc(r31)
/* 800EBF60 000E8EA0  38 E0 00 00 */	li r7, 0
/* 800EBF64 000E8EA4  80 1F 00 08 */	lwz r0, 8(r31)
/* 800EBF68 000E8EA8  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 800EBF6C 000E8EAC  7D 04 30 10 */	subfc r8, r4, r6
/* 800EBF70 000E8EB0  7C 03 01 10 */	subfe r0, r3, r0
/* 800EBF74 000E8EB4  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 800EBF78 000E8EB8  7C 07 40 10 */	subfc r0, r7, r8
/* 800EBF7C 000E8EBC  7C A5 31 10 */	subfe r5, r5, r6
/* 800EBF80 000E8EC0  7C A6 31 10 */	subfe r5, r6, r6
/* 800EBF84 000E8EC4  7C A5 00 D1 */	neg. r5, r5
/* 800EBF88 000E8EC8  41 82 00 10 */	beq .L_800EBF98
/* 800EBF8C 000E8ECC  38 60 00 00 */	li r3, 0
/* 800EBF90 000E8ED0  4B FE 85 F9 */	bl PPCMtdec
/* 800EBF94 000E8ED4  48 00 00 34 */	b .L_800EBFC8
.L_800EBF98:
/* 800EBF98 000E8ED8  3C 80 80 00 */	lis r4, 0x8000
/* 800EBF9C 000E8EDC  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800EBFA0 000E8EE0  7C 04 40 10 */	subfc r0, r4, r8
/* 800EBFA4 000E8EE4  7C 63 31 10 */	subfe r3, r3, r6
/* 800EBFA8 000E8EE8  7C 66 31 10 */	subfe r3, r6, r6
/* 800EBFAC 000E8EEC  7C 63 00 D1 */	neg. r3, r3
/* 800EBFB0 000E8EF0  41 82 00 10 */	beq .L_800EBFC0
/* 800EBFB4 000E8EF4  7D 03 43 78 */	mr r3, r8
/* 800EBFB8 000E8EF8  4B FE 85 D1 */	bl PPCMtdec
/* 800EBFBC 000E8EFC  48 00 00 0C */	b .L_800EBFC8
.L_800EBFC0:
/* 800EBFC0 000E8F00  38 64 FF FF */	addi r3, r4, -1
/* 800EBFC4 000E8F04  4B FE 85 C5 */	bl PPCMtdec
.L_800EBFC8:
/* 800EBFC8 000E8F08  7F A3 EB 78 */	mr r3, r29
/* 800EBFCC 000E8F0C  48 00 10 C1 */	bl OSLoadContext
.L_800EBFD0:
/* 800EBFD0 000E8F10  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 800EBFD4 000E8F14  28 03 00 00 */	cmplwi r3, 0
/* 800EBFD8 000E8F18  90 6D 8F 50 */	stw r3, AlarmQueue@sda21(r13)
/* 800EBFDC 000E8F1C  40 82 00 14 */	bne .L_800EBFF0
/* 800EBFE0 000E8F20  38 00 00 00 */	li r0, 0
/* 800EBFE4 000E8F24  38 6D 8F 50 */	addi r3, r13, AlarmQueue@sda21
/* 800EBFE8 000E8F28  90 03 00 04 */	stw r0, 4(r3)
/* 800EBFEC 000E8F2C  48 00 00 0C */	b .L_800EBFF8
.L_800EBFF0:
/* 800EBFF0 000E8F30  38 00 00 00 */	li r0, 0
/* 800EBFF4 000E8F34  90 03 00 10 */	stw r0, 0x10(r3)
.L_800EBFF8:
/* 800EBFF8 000E8F38  83 DF 00 00 */	lwz r30, 0(r31)
/* 800EBFFC 000E8F3C  38 C0 00 00 */	li r6, 0
/* 800EC000 000E8F40  6C C4 80 00 */	xoris r4, r6, 0x8000
/* 800EC004 000E8F44  90 DF 00 00 */	stw r6, 0(r31)
/* 800EC008 000E8F48  80 1F 00 18 */	lwz r0, 0x18(r31)
/* 800EC00C 000E8F4C  80 BF 00 1C */	lwz r5, 0x1c(r31)
/* 800EC010 000E8F50  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 800EC014 000E8F54  7C 05 30 10 */	subfc r0, r5, r6
/* 800EC018 000E8F58  7C 63 21 10 */	subfe r3, r3, r4
/* 800EC01C 000E8F5C  7C 64 21 10 */	subfe r3, r4, r4
/* 800EC020 000E8F60  7C 63 00 D1 */	neg. r3, r3
/* 800EC024 000E8F64  41 82 00 18 */	beq .L_800EC03C
/* 800EC028 000E8F68  38 7F 00 00 */	addi r3, r31, 0
/* 800EC02C 000E8F6C  38 FE 00 00 */	addi r7, r30, 0
/* 800EC030 000E8F70  38 C0 00 00 */	li r6, 0
/* 800EC034 000E8F74  38 A0 00 00 */	li r5, 0
/* 800EC038 000E8F78  4B FF FA E5 */	bl InsertAlarm
.L_800EC03C:
/* 800EC03C 000E8F7C  83 8D 8F 50 */	lwz r28, AlarmQueue@sda21(r13)
/* 800EC040 000E8F80  28 1C 00 00 */	cmplwi r28, 0
/* 800EC044 000E8F84  41 82 00 74 */	beq .L_800EC0B8
/* 800EC048 000E8F88  48 00 6B 69 */	bl __OSGetSystemTime
/* 800EC04C 000E8F8C  80 DC 00 0C */	lwz r6, 0xc(r28)
/* 800EC050 000E8F90  38 E0 00 00 */	li r7, 0
/* 800EC054 000E8F94  80 1C 00 08 */	lwz r0, 8(r28)
/* 800EC058 000E8F98  6C E5 80 00 */	xoris r5, r7, 0x8000
/* 800EC05C 000E8F9C  7D 04 30 10 */	subfc r8, r4, r6
/* 800EC060 000E8FA0  7C 03 01 10 */	subfe r0, r3, r0
/* 800EC064 000E8FA4  6C 06 80 00 */	xoris r6, r0, 0x8000
/* 800EC068 000E8FA8  7C 07 40 10 */	subfc r0, r7, r8
/* 800EC06C 000E8FAC  7C A5 31 10 */	subfe r5, r5, r6
/* 800EC070 000E8FB0  7C A6 31 10 */	subfe r5, r6, r6
/* 800EC074 000E8FB4  7C A5 00 D1 */	neg. r5, r5
/* 800EC078 000E8FB8  41 82 00 10 */	beq .L_800EC088
/* 800EC07C 000E8FBC  38 60 00 00 */	li r3, 0
/* 800EC080 000E8FC0  4B FE 85 09 */	bl PPCMtdec
/* 800EC084 000E8FC4  48 00 00 34 */	b .L_800EC0B8
.L_800EC088:
/* 800EC088 000E8FC8  3C 80 80 00 */	lis r4, 0x8000
/* 800EC08C 000E8FCC  6C E3 80 00 */	xoris r3, r7, 0x8000
/* 800EC090 000E8FD0  7C 04 40 10 */	subfc r0, r4, r8
/* 800EC094 000E8FD4  7C 63 31 10 */	subfe r3, r3, r6
/* 800EC098 000E8FD8  7C 66 31 10 */	subfe r3, r6, r6
/* 800EC09C 000E8FDC  7C 63 00 D1 */	neg. r3, r3
/* 800EC0A0 000E8FE0  41 82 00 10 */	beq .L_800EC0B0
/* 800EC0A4 000E8FE4  7D 03 43 78 */	mr r3, r8
/* 800EC0A8 000E8FE8  4B FE 84 E1 */	bl PPCMtdec
/* 800EC0AC 000E8FEC  48 00 00 0C */	b .L_800EC0B8
.L_800EC0B0:
/* 800EC0B0 000E8FF0  38 64 FF FF */	addi r3, r4, -1
/* 800EC0B4 000E8FF4  4B FE 84 D5 */	bl PPCMtdec
.L_800EC0B8:
/* 800EC0B8 000E8FF8  48 00 59 4D */	bl OSDisableScheduler
/* 800EC0BC 000E8FFC  38 61 00 18 */	addi r3, r1, 0x18
/* 800EC0C0 000E9000  48 00 10 AD */	bl OSClearContext
/* 800EC0C4 000E9004  38 61 00 18 */	addi r3, r1, 0x18
/* 800EC0C8 000E9008  48 00 0E DD */	bl OSSetCurrentContext
/* 800EC0CC 000E900C  39 9E 00 00 */	addi r12, r30, 0
/* 800EC0D0 000E9010  7D 88 03 A6 */	mtlr r12
/* 800EC0D4 000E9014  38 7F 00 00 */	addi r3, r31, 0
/* 800EC0D8 000E9018  38 9D 00 00 */	addi r4, r29, 0
/* 800EC0DC 000E901C  4E 80 00 21 */	blrl 
/* 800EC0E0 000E9020  38 61 00 18 */	addi r3, r1, 0x18
/* 800EC0E4 000E9024  48 00 10 89 */	bl OSClearContext
/* 800EC0E8 000E9028  7F A3 EB 78 */	mr r3, r29
/* 800EC0EC 000E902C  48 00 0E B9 */	bl OSSetCurrentContext
/* 800EC0F0 000E9030  48 00 59 55 */	bl OSEnableScheduler
/* 800EC0F4 000E9034  48 00 5E 6D */	bl __OSReschedule
/* 800EC0F8 000E9038  7F A3 EB 78 */	mr r3, r29
/* 800EC0FC 000E903C  48 00 0F 91 */	bl OSLoadContext
/* 800EC100 000E9040  80 01 02 F4 */	lwz r0, 0x2f4(r1)
/* 800EC104 000E9044  83 E1 02 EC */	lwz r31, 0x2ec(r1)
/* 800EC108 000E9048  83 C1 02 E8 */	lwz r30, 0x2e8(r1)
/* 800EC10C 000E904C  83 A1 02 E4 */	lwz r29, 0x2e4(r1)
/* 800EC110 000E9050  83 81 02 E0 */	lwz r28, 0x2e0(r1)
/* 800EC114 000E9054  38 21 02 F0 */	addi r1, r1, 0x2f0
/* 800EC118 000E9058  7C 08 03 A6 */	mtlr r0
/* 800EC11C 000E905C  4E 80 00 20 */	blr 

DecrementerExceptionHandler:
/* 800EC120 000E9060  90 04 00 00 */	stw r0, 0(r4)
/* 800EC124 000E9064  90 24 00 04 */	stw r1, 4(r4)
/* 800EC128 000E9068  90 44 00 08 */	stw r2, 8(r4)
/* 800EC12C 000E906C  BC C4 00 18 */	stmw r6, 0x18(r4)
/* 800EC130 000E9070  7C 11 E2 A6 */	mfspr r0, 0x391
/* 800EC134 000E9074  90 04 01 A8 */	stw r0, 0x1a8(r4)
/* 800EC138 000E9078  7C 12 E2 A6 */	mfspr r0, 0x392
/* 800EC13C 000E907C  90 04 01 AC */	stw r0, 0x1ac(r4)
/* 800EC140 000E9080  7C 13 E2 A6 */	mfspr r0, 0x393
/* 800EC144 000E9084  90 04 01 B0 */	stw r0, 0x1b0(r4)
/* 800EC148 000E9088  7C 14 E2 A6 */	mfspr r0, 0x394
/* 800EC14C 000E908C  90 04 01 B4 */	stw r0, 0x1b4(r4)
/* 800EC150 000E9090  7C 15 E2 A6 */	mfspr r0, 0x395
/* 800EC154 000E9094  90 04 01 B8 */	stw r0, 0x1b8(r4)
/* 800EC158 000E9098  7C 16 E2 A6 */	mfspr r0, 0x396
/* 800EC15C 000E909C  90 04 01 BC */	stw r0, 0x1bc(r4)
/* 800EC160 000E90A0  7C 17 E2 A6 */	mfspr r0, 0x397
/* 800EC164 000E90A4  90 04 01 C0 */	stw r0, 0x1c0(r4)
/* 800EC168 000E90A8  94 21 FF F8 */	stwu r1, -8(r1)
/* 800EC16C 000E90AC  4B FF FD 84 */	b DecrementerExceptionCallback

OnReset:
/* 800EC170 000E90B0  7C 08 02 A6 */	mflr r0
/* 800EC174 000E90B4  90 01 00 04 */	stw r0, 4(r1)
/* 800EC178 000E90B8  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800EC17C 000E90BC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800EC180 000E90C0  93 C1 00 10 */	stw r30, 0x10(r1)
/* 800EC184 000E90C4  2C 03 00 00 */	cmpwi r3, 0
/* 800EC188 000E90C8  41 82 00 6C */	beq .L_800EC1F4
/* 800EC18C 000E90CC  80 0D 8F 50 */	lwz r0, AlarmQueue@sda21(r13)
/* 800EC190 000E90D0  28 00 00 00 */	cmplwi r0, 0
/* 800EC194 000E90D4  7C 1F 03 78 */	mr r31, r0
/* 800EC198 000E90D8  41 82 00 0C */	beq .L_800EC1A4
/* 800EC19C 000E90DC  80 1F 00 14 */	lwz r0, 0x14(r31)
/* 800EC1A0 000E90E0  48 00 00 08 */	b .L_800EC1A8
.L_800EC1A4:
/* 800EC1A4 000E90E4  38 00 00 00 */	li r0, 0
.L_800EC1A8:
/* 800EC1A8 000E90E8  7C 1E 03 78 */	mr r30, r0
/* 800EC1AC 000E90EC  48 00 00 04 */	b .L_800EC1B0
.L_800EC1B0:
/* 800EC1B0 000E90F0  48 00 00 04 */	b .L_800EC1B4
.L_800EC1B4:
/* 800EC1B4 000E90F4  48 00 00 38 */	b .L_800EC1EC
.L_800EC1B8:
/* 800EC1B8 000E90F8  7F E3 FB 78 */	mr r3, r31
/* 800EC1BC 000E90FC  4B FF 32 69 */	bl __DVDTestAlarm
/* 800EC1C0 000E9100  2C 03 00 00 */	cmpwi r3, 0
/* 800EC1C4 000E9104  40 82 00 0C */	bne .L_800EC1D0
/* 800EC1C8 000E9108  7F E3 FB 78 */	mr r3, r31
/* 800EC1CC 000E910C  4B FF FC 09 */	bl OSCancelAlarm
.L_800EC1D0:
/* 800EC1D0 000E9110  28 1E 00 00 */	cmplwi r30, 0
/* 800EC1D4 000E9114  7F DF F3 78 */	mr r31, r30
/* 800EC1D8 000E9118  41 82 00 0C */	beq .L_800EC1E4
/* 800EC1DC 000E911C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 800EC1E0 000E9120  48 00 00 08 */	b .L_800EC1E8
.L_800EC1E4:
/* 800EC1E4 000E9124  38 00 00 00 */	li r0, 0
.L_800EC1E8:
/* 800EC1E8 000E9128  7C 1E 03 78 */	mr r30, r0
.L_800EC1EC:
/* 800EC1EC 000E912C  28 1F 00 00 */	cmplwi r31, 0
/* 800EC1F0 000E9130  40 82 FF C8 */	bne .L_800EC1B8
.L_800EC1F4:
/* 800EC1F4 000E9134  38 60 00 01 */	li r3, 1
/* 800EC1F8 000E9138  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800EC1FC 000E913C  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800EC200 000E9140  83 C1 00 10 */	lwz r30, 0x10(r1)
/* 800EC204 000E9144  38 21 00 18 */	addi r1, r1, 0x18
/* 800EC208 000E9148  7C 08 03 A6 */	mtlr r0
/* 800EC20C 000E914C  4E 80 00 20 */	blr 

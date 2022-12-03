.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_80473AA8
lbl_80473AA8:
	.asciz "allocFromHead: cannot alloc memory (0x%x byte).\n"
	.skip 3
.global lbl_80473ADC
lbl_80473ADC:
	.asciz "allocFromTail: cannot alloc memory (0x%x byte).\n"
	.skip 3
.global lbl_80473B10
lbl_80473B10:
	.asciz "free: cannot free memory block (%08x)\n"
	.skip 1
.global lbl_80473B38
lbl_80473B38:
	.asciz "resize: cannot resize memory block (%08x: %d)\n"
	.skip 1
.global lbl_80473B68
lbl_80473B68:
	.asciz "getSize: cannot get memory block size (%08x)\n"
	.skip 2
.global lbl_80473B98
lbl_80473B98:
	.asciz "check: bad total memory block size (%08X, %08X)\n"
	.skip 3
	.asciz "head %08x: %08x\n"
	.skip 3
	.asciz "tail %08x: %08x\n"
	.skip 3
	.asciz "%d / %d bytes (%6.2f%%) used\n"
	.skip 2

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__12JKRSolidHeap
__vt__12JKRSolidHeap:
	.4byte 0
	.4byte 0
	.4byte __dt__12JKRSolidHeapFv
	.4byte callAllDisposer__7JKRHeapFv
	.4byte getHeapType__12JKRSolidHeapFv
	.4byte check__12JKRSolidHeapFv
	.4byte dump_sort__7JKRHeapFv
	.4byte dump__12JKRSolidHeapFv
	.4byte do_destroy__12JKRSolidHeapFv
	.4byte do_alloc__12JKRSolidHeapFUli
	.4byte do_free__12JKRSolidHeapFPv
	.4byte do_freeAll__12JKRSolidHeapFv
	.4byte do_freeTail__12JKRSolidHeapFv
	.4byte do_fillFreeArea__12JKRSolidHeapFv
	.4byte do_resize__12JKRSolidHeapFPvUl
	.4byte do_getSize__12JKRSolidHeapFPv
	.4byte do_getFreeSize__12JKRSolidHeapFv
	.4byte do_getMaxFreeBlock__12JKRSolidHeapFv
	.4byte do_getTotalFreeSize__12JKRSolidHeapFv
	.4byte do_changeGroupID__7JKRHeapFUc
	.4byte do_getCurrentGroupId__7JKRHeapFv
	.4byte state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl
	.4byte state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
	.4byte state_dump__7JKRHeapCFRCQ27JKRHeap6TState

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516538
lbl_80516538:
	.4byte 0x42C80000
	.4byte 0x00000000
.global lbl_80516540
lbl_80516540:
	.4byte 0x43300000
	.4byte 0x80000000
.global lbl_80516548
lbl_80516548:
	.4byte 0x43300000
	.4byte 0x00000000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global create__12JKRSolidHeapFUlP7JKRHeapb
create__12JKRSolidHeapFUlP7JKRHeapb:
/* 80024D70 00021CB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024D74 00021CB4  7C 08 02 A6 */	mflr r0
/* 80024D78 00021CB8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024D7C 00021CBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024D80 00021CC0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80024D84 00021CC4  7C BE 2B 78 */	mr r30, r5
/* 80024D88 00021CC8  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80024D8C 00021CCC  7C 9D 23 79 */	or. r29, r4, r4
/* 80024D90 00021CD0  40 82 00 08 */	bne .L_80024D98
/* 80024D94 00021CD4  83 AD 88 30 */	lwz r29, sRootHeap__7JKRHeap@sda21(r13)
.L_80024D98:
/* 80024D98 00021CD8  3C 03 00 01 */	addis r0, r3, 1
/* 80024D9C 00021CDC  28 00 FF FF */	cmplwi r0, 0xffff
/* 80024DA0 00021CE0  40 82 00 10 */	bne .L_80024DB0
/* 80024DA4 00021CE4  7F A3 EB 78 */	mr r3, r29
/* 80024DA8 00021CE8  38 80 00 10 */	li r4, 0x10
/* 80024DAC 00021CEC  4B FF EA C9 */	bl getMaxAllocatableSize__7JKRHeapFi
.L_80024DB0:
/* 80024DB0 00021CF0  54 7F 00 36 */	rlwinm r31, r3, 0, 0, 0x1b
/* 80024DB4 00021CF4  28 1F 00 80 */	cmplwi r31, 0x80
/* 80024DB8 00021CF8  40 80 00 0C */	bge .L_80024DC4
/* 80024DBC 00021CFC  38 60 00 00 */	li r3, 0
/* 80024DC0 00021D00  48 00 00 48 */	b .L_80024E08
.L_80024DC4:
/* 80024DC4 00021D04  7F E3 FB 78 */	mr r3, r31
/* 80024DC8 00021D08  7F A5 EB 78 */	mr r5, r29
/* 80024DCC 00021D0C  38 80 00 10 */	li r4, 0x10
/* 80024DD0 00021D10  4B FF E8 11 */	bl alloc__7JKRHeapFUliP7JKRHeap
/* 80024DD4 00021D14  7C 60 1B 78 */	mr r0, r3
/* 80024DD8 00021D18  7C 05 03 79 */	or. r5, r0, r0
/* 80024DDC 00021D1C  38 85 00 80 */	addi r4, r5, 0x80
/* 80024DE0 00021D20  40 82 00 0C */	bne .L_80024DEC
/* 80024DE4 00021D24  38 60 00 00 */	li r3, 0
/* 80024DE8 00021D28  48 00 00 20 */	b .L_80024E08
.L_80024DEC:
/* 80024DEC 00021D2C  41 82 00 18 */	beq .L_80024E04
/* 80024DF0 00021D30  7F A6 EB 78 */	mr r6, r29
/* 80024DF4 00021D34  7F C7 F3 78 */	mr r7, r30
/* 80024DF8 00021D38  38 BF FF 80 */	addi r5, r31, -128
/* 80024DFC 00021D3C  48 00 00 89 */	bl __ct__12JKRSolidHeapFPvUlP7JKRHeapb
/* 80024E00 00021D40  7C 60 1B 78 */	mr r0, r3
.L_80024E04:
/* 80024E04 00021D44  7C 03 03 78 */	mr r3, r0
.L_80024E08:
/* 80024E08 00021D48  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024E0C 00021D4C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80024E10 00021D50  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80024E14 00021D54  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80024E18 00021D58  7C 08 03 A6 */	mtlr r0
/* 80024E1C 00021D5C  38 21 00 20 */	addi r1, r1, 0x20
/* 80024E20 00021D60  4E 80 00 20 */	blr 

.global do_destroy__12JKRSolidHeapFv
do_destroy__12JKRSolidHeapFv:
/* 80024E24 00021D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024E28 00021D68  7C 08 02 A6 */	mflr r0
/* 80024E2C 00021D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024E30 00021D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024E34 00021D74  93 C1 00 08 */	stw r30, 8(r1)
/* 80024E38 00021D78  7C 7E 1B 78 */	mr r30, r3
/* 80024E3C 00021D7C  80 83 00 50 */	lwz r4, 0x50(r3)
/* 80024E40 00021D80  83 E4 00 0C */	lwz r31, 0xc(r4)
/* 80024E44 00021D84  28 1F 00 00 */	cmplwi r31, 0
/* 80024E48 00021D88  41 82 00 24 */	beq .L_80024E6C
/* 80024E4C 00021D8C  81 83 00 00 */	lwz r12, 0(r3)
/* 80024E50 00021D90  38 80 FF FF */	li r4, -1
/* 80024E54 00021D94  81 8C 00 08 */	lwz r12, 8(r12)
/* 80024E58 00021D98  7D 89 03 A6 */	mtctr r12
/* 80024E5C 00021D9C  4E 80 04 21 */	bctrl 
/* 80024E60 00021DA0  7F C3 F3 78 */	mr r3, r30
/* 80024E64 00021DA4  7F E4 FB 78 */	mr r4, r31
/* 80024E68 00021DA8  4B FF E8 05 */	bl free__7JKRHeapFPvP7JKRHeap
.L_80024E6C:
/* 80024E6C 00021DAC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024E70 00021DB0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024E74 00021DB4  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024E78 00021DB8  7C 08 03 A6 */	mtlr r0
/* 80024E7C 00021DBC  38 21 00 10 */	addi r1, r1, 0x10
/* 80024E80 00021DC0  4E 80 00 20 */	blr 

.global __ct__12JKRSolidHeapFPvUlP7JKRHeapb
__ct__12JKRSolidHeapFPvUlP7JKRHeapb:
/* 80024E84 00021DC4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024E88 00021DC8  7C 08 02 A6 */	mflr r0
/* 80024E8C 00021DCC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024E90 00021DD0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024E94 00021DD4  7C 7F 1B 78 */	mr r31, r3
/* 80024E98 00021DD8  4B FF E4 1D */	bl __ct__7JKRHeapFPvUlP7JKRHeapb
/* 80024E9C 00021DDC  3C 60 80 4A */	lis r3, __vt__12JKRSolidHeap@ha
/* 80024EA0 00021DE0  38 00 00 00 */	li r0, 0
/* 80024EA4 00021DE4  38 83 FF B0 */	addi r4, r3, __vt__12JKRSolidHeap@l
/* 80024EA8 00021DE8  7F E3 FB 78 */	mr r3, r31
/* 80024EAC 00021DEC  90 9F 00 00 */	stw r4, 0(r31)
/* 80024EB0 00021DF0  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 80024EB4 00021DF4  90 9F 00 6C */	stw r4, 0x6c(r31)
/* 80024EB8 00021DF8  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 80024EBC 00021DFC  90 9F 00 70 */	stw r4, 0x70(r31)
/* 80024EC0 00021E00  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80024EC4 00021E04  90 9F 00 74 */	stw r4, 0x74(r31)
/* 80024EC8 00021E08  90 1F 00 78 */	stw r0, 0x78(r31)
/* 80024ECC 00021E0C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024ED0 00021E10  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024ED4 00021E14  7C 08 03 A6 */	mtlr r0
/* 80024ED8 00021E18  38 21 00 10 */	addi r1, r1, 0x10
/* 80024EDC 00021E1C  4E 80 00 20 */	blr 

.global __dt__12JKRSolidHeapFv
__dt__12JKRSolidHeapFv:
/* 80024EE0 00021E20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80024EE4 00021E24  7C 08 02 A6 */	mflr r0
/* 80024EE8 00021E28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80024EEC 00021E2C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80024EF0 00021E30  7C 9F 23 78 */	mr r31, r4
/* 80024EF4 00021E34  93 C1 00 08 */	stw r30, 8(r1)
/* 80024EF8 00021E38  7C 7E 1B 79 */	or. r30, r3, r3
/* 80024EFC 00021E3C  41 82 00 30 */	beq .L_80024F2C
/* 80024F00 00021E40  3C 80 80 4A */	lis r4, __vt__12JKRSolidHeap@ha
/* 80024F04 00021E44  38 04 FF B0 */	addi r0, r4, __vt__12JKRSolidHeap@l
/* 80024F08 00021E48  90 1E 00 00 */	stw r0, 0(r30)
/* 80024F0C 00021E4C  4B FF EE 69 */	bl dispose__7JKRHeapFv
/* 80024F10 00021E50  7F C3 F3 78 */	mr r3, r30
/* 80024F14 00021E54  38 80 00 00 */	li r4, 0
/* 80024F18 00021E58  4B FF E4 C1 */	bl __dt__7JKRHeapFv
/* 80024F1C 00021E5C  7F E0 07 35 */	extsh. r0, r31
/* 80024F20 00021E60  40 81 00 0C */	ble .L_80024F2C
/* 80024F24 00021E64  7F C3 F3 78 */	mr r3, r30
/* 80024F28 00021E68  4B FF F1 8D */	bl __dl__FPv
.L_80024F2C:
/* 80024F2C 00021E6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80024F30 00021E70  7F C3 F3 78 */	mr r3, r30
/* 80024F34 00021E74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80024F38 00021E78  83 C1 00 08 */	lwz r30, 8(r1)
/* 80024F3C 00021E7C  7C 08 03 A6 */	mtlr r0
/* 80024F40 00021E80  38 21 00 10 */	addi r1, r1, 0x10
/* 80024F44 00021E84  4E 80 00 20 */	blr 

.global adjustSize__12JKRSolidHeapFv
adjustSize__12JKRSolidHeapFv:
/* 80024F48 00021E88  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80024F4C 00021E8C  7C 08 02 A6 */	mflr r0
/* 80024F50 00021E90  90 01 00 24 */	stw r0, 0x24(r1)
/* 80024F54 00021E94  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80024F58 00021E98  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80024F5C 00021E9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80024F60 00021EA0  7C 7D 1B 78 */	mr r29, r3
/* 80024F64 00021EA4  80 63 00 50 */	lwz r3, 0x50(r3)
/* 80024F68 00021EA8  83 E3 00 0C */	lwz r31, 0xc(r3)
/* 80024F6C 00021EAC  28 1F 00 00 */	cmplwi r31, 0
/* 80024F70 00021EB0  41 82 00 7C */	beq .L_80024FEC
/* 80024F74 00021EB4  38 7D 00 18 */	addi r3, r29, 0x18
/* 80024F78 00021EB8  48 0C AB F1 */	bl OSLockMutex
/* 80024F7C 00021EBC  80 BD 00 30 */	lwz r5, 0x30(r29)
/* 80024F80 00021EC0  7F E3 FB 78 */	mr r3, r31
/* 80024F84 00021EC4  80 1D 00 70 */	lwz r0, 0x70(r29)
/* 80024F88 00021EC8  7F A4 EB 78 */	mr r4, r29
/* 80024F8C 00021ECC  7C DD 28 50 */	subf r6, r29, r5
/* 80024F90 00021ED0  7C A5 00 50 */	subf r5, r5, r0
/* 80024F94 00021ED4  38 05 00 1F */	addi r0, r5, 0x1f
/* 80024F98 00021ED8  54 1E 00 34 */	rlwinm r30, r0, 0, 0, 0x1a
/* 80024F9C 00021EDC  7F E6 F2 14 */	add r31, r6, r30
/* 80024FA0 00021EE0  7F E5 FB 78 */	mr r5, r31
/* 80024FA4 00021EE4  4B FF E7 E5 */	bl resize__7JKRHeapFPvUl
/* 80024FA8 00021EE8  2C 03 FF FF */	cmpwi r3, -1
/* 80024FAC 00021EEC  41 82 00 30 */	beq .L_80024FDC
/* 80024FB0 00021EF0  38 00 00 00 */	li r0, 0
/* 80024FB4 00021EF4  90 1D 00 6C */	stw r0, 0x6c(r29)
/* 80024FB8 00021EF8  93 DD 00 38 */	stw r30, 0x38(r29)
/* 80024FBC 00021EFC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 80024FC0 00021F00  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 80024FC4 00021F04  7C 03 02 14 */	add r0, r3, r0
/* 80024FC8 00021F08  90 1D 00 34 */	stw r0, 0x34(r29)
/* 80024FCC 00021F0C  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80024FD0 00021F10  90 1D 00 70 */	stw r0, 0x70(r29)
/* 80024FD4 00021F14  80 1D 00 34 */	lwz r0, 0x34(r29)
/* 80024FD8 00021F18  90 1D 00 74 */	stw r0, 0x74(r29)
.L_80024FDC:
/* 80024FDC 00021F1C  38 7D 00 18 */	addi r3, r29, 0x18
/* 80024FE0 00021F20  48 0C AC 65 */	bl OSUnlockMutex
/* 80024FE4 00021F24  7F E3 FB 78 */	mr r3, r31
/* 80024FE8 00021F28  48 00 00 08 */	b .L_80024FF0
.L_80024FEC:
/* 80024FEC 00021F2C  38 60 FF FF */	li r3, -1
.L_80024FF0:
/* 80024FF0 00021F30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80024FF4 00021F34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80024FF8 00021F38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80024FFC 00021F3C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80025000 00021F40  7C 08 03 A6 */	mtlr r0
/* 80025004 00021F44  38 21 00 20 */	addi r1, r1, 0x20
/* 80025008 00021F48  4E 80 00 20 */	blr 

.global do_alloc__12JKRSolidHeapFUli
do_alloc__12JKRSolidHeapFUli:
/* 8002500C 00021F4C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025010 00021F50  7C 08 02 A6 */	mflr r0
/* 80025014 00021F54  90 01 00 24 */	stw r0, 0x24(r1)
/* 80025018 00021F58  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8002501C 00021F5C  7C BF 2B 78 */	mr r31, r5
/* 80025020 00021F60  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80025024 00021F64  7C 9E 23 78 */	mr r30, r4
/* 80025028 00021F68  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8002502C 00021F6C  7C 7D 1B 78 */	mr r29, r3
/* 80025030 00021F70  38 7D 00 18 */	addi r3, r29, 0x18
/* 80025034 00021F74  48 0C AB 35 */	bl OSLockMutex
/* 80025038 00021F78  28 1E 00 04 */	cmplwi r30, 4
/* 8002503C 00021F7C  40 80 00 08 */	bge .L_80025044
/* 80025040 00021F80  3B C0 00 04 */	li r30, 4
.L_80025044:
/* 80025044 00021F84  2C 1F 00 00 */	cmpwi r31, 0
/* 80025048 00021F88  41 80 00 28 */	blt .L_80025070
/* 8002504C 00021F8C  2C 1F 00 04 */	cmpwi r31, 4
/* 80025050 00021F90  7F A3 EB 78 */	mr r3, r29
/* 80025054 00021F94  7F C4 F3 78 */	mr r4, r30
/* 80025058 00021F98  38 A0 00 04 */	li r5, 4
/* 8002505C 00021F9C  41 80 00 08 */	blt .L_80025064
/* 80025060 00021FA0  7F E5 FB 78 */	mr r5, r31
.L_80025064:
/* 80025064 00021FA4  48 00 00 59 */	bl allocFromHead__12JKRSolidHeapFUli
/* 80025068 00021FA8  7C 7F 1B 78 */	mr r31, r3
/* 8002506C 00021FAC  48 00 00 28 */	b .L_80025094
.L_80025070:
/* 80025070 00021FB0  7C 1F 00 D0 */	neg r0, r31
/* 80025074 00021FB4  38 A0 00 04 */	li r5, 4
/* 80025078 00021FB8  2C 00 00 04 */	cmpwi r0, 4
/* 8002507C 00021FBC  41 80 00 08 */	blt .L_80025084
/* 80025080 00021FC0  7C 05 03 78 */	mr r5, r0
.L_80025084:
/* 80025084 00021FC4  7F A3 EB 78 */	mr r3, r29
/* 80025088 00021FC8  7F C4 F3 78 */	mr r4, r30
/* 8002508C 00021FCC  48 00 01 09 */	bl allocFromTail__12JKRSolidHeapFUli
/* 80025090 00021FD0  7C 7F 1B 78 */	mr r31, r3
.L_80025094:
/* 80025094 00021FD4  38 7D 00 18 */	addi r3, r29, 0x18
/* 80025098 00021FD8  48 0C AB AD */	bl OSUnlockMutex
/* 8002509C 00021FDC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800250A0 00021FE0  7F E3 FB 78 */	mr r3, r31
/* 800250A4 00021FE4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800250A8 00021FE8  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 800250AC 00021FEC  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 800250B0 00021FF0  7C 08 03 A6 */	mtlr r0
/* 800250B4 00021FF4  38 21 00 20 */	addi r1, r1, 0x20
/* 800250B8 00021FF8  4E 80 00 20 */	blr 

.global allocFromHead__12JKRSolidHeapFUli
allocFromHead__12JKRSolidHeapFUli:
/* 800250BC 00021FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800250C0 00022000  7C 08 02 A6 */	mflr r0
/* 800250C4 00022004  38 C4 00 03 */	addi r6, r4, 3
/* 800250C8 00022008  90 01 00 24 */	stw r0, 0x24(r1)
/* 800250CC 0002200C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800250D0 00022010  7C 7F 1B 78 */	mr r31, r3
/* 800250D4 00022014  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800250D8 00022018  3B C0 00 00 */	li r30, 0
/* 800250DC 0002201C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800250E0 00022020  7C BD 2B 78 */	mr r29, r5
/* 800250E4 00022024  38 BD FF FF */	addi r5, r29, -1
/* 800250E8 00022028  93 81 00 10 */	stw r28, 0x10(r1)
/* 800250EC 0002202C  7C A4 28 F8 */	nor r4, r5, r5
/* 800250F0 00022030  54 DC 00 3A */	rlwinm r28, r6, 0, 0, 0x1d
/* 800250F4 00022034  80 E3 00 70 */	lwz r7, 0x70(r3)
/* 800250F8 00022038  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 800250FC 0002203C  7C 7D 3A 14 */	add r3, r29, r7
/* 80025100 00022040  38 63 FF FF */	addi r3, r3, -1
/* 80025104 00022044  7C 85 18 38 */	and r5, r4, r3
/* 80025108 00022048  7C 67 28 50 */	subf r3, r7, r5
/* 8002510C 0002204C  7C 9C 1A 14 */	add r4, r28, r3
/* 80025110 00022050  7C 04 00 40 */	cmplw r4, r0
/* 80025114 00022054  41 81 00 20 */	bgt .L_80025134
/* 80025118 00022058  7C 07 22 14 */	add r0, r7, r4
/* 8002511C 0002205C  7C BE 2B 78 */	mr r30, r5
/* 80025120 00022060  90 1F 00 70 */	stw r0, 0x70(r31)
/* 80025124 00022064  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 80025128 00022068  7C 04 00 50 */	subf r0, r4, r0
/* 8002512C 0002206C  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80025130 00022070  48 00 00 40 */	b .L_80025170
.L_80025134:
/* 80025134 00022074  3C 60 80 47 */	lis r3, lbl_80473AA8@ha
/* 80025138 00022078  38 63 3A A8 */	addi r3, r3, lbl_80473AA8@l
/* 8002513C 0002207C  4C C6 31 82 */	crclr 6
/* 80025140 00022080  48 00 42 8D */	bl JUTWarningConsole_f
/* 80025144 00022084  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80025148 00022088  28 00 00 01 */	cmplwi r0, 1
/* 8002514C 0002208C  40 82 00 24 */	bne .L_80025170
/* 80025150 00022090  81 8D 88 34 */	lwz r12, mErrorHandler__7JKRHeap@sda21(r13)
/* 80025154 00022094  28 0C 00 00 */	cmplwi r12, 0
/* 80025158 00022098  41 82 00 18 */	beq .L_80025170
/* 8002515C 0002209C  7F E3 FB 78 */	mr r3, r31
/* 80025160 000220A0  7F 84 E3 78 */	mr r4, r28
/* 80025164 000220A4  7F A5 EB 78 */	mr r5, r29
/* 80025168 000220A8  7D 89 03 A6 */	mtctr r12
/* 8002516C 000220AC  4E 80 04 21 */	bctrl 
.L_80025170:
/* 80025170 000220B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80025174 000220B4  7F C3 F3 78 */	mr r3, r30
/* 80025178 000220B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8002517C 000220BC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80025180 000220C0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80025184 000220C4  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80025188 000220C8  7C 08 03 A6 */	mtlr r0
/* 8002518C 000220CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80025190 000220D0  4E 80 00 20 */	blr 

.global allocFromTail__12JKRSolidHeapFUli
allocFromTail__12JKRSolidHeapFUli:
/* 80025194 000220D4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80025198 000220D8  7C 08 02 A6 */	mflr r0
/* 8002519C 000220DC  90 01 00 24 */	stw r0, 0x24(r1)
/* 800251A0 000220E0  38 04 00 03 */	addi r0, r4, 3
/* 800251A4 000220E4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800251A8 000220E8  7C 7F 1B 78 */	mr r31, r3
/* 800251AC 000220EC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800251B0 000220F0  3B C0 00 00 */	li r30, 0
/* 800251B4 000220F4  93 A1 00 14 */	stw r29, 0x14(r1)
/* 800251B8 000220F8  7C BD 2B 78 */	mr r29, r5
/* 800251BC 000220FC  93 81 00 10 */	stw r28, 0x10(r1)
/* 800251C0 00022100  54 1C 00 3A */	rlwinm r28, r0, 0, 0, 0x1d
/* 800251C4 00022104  38 1D FF FF */	addi r0, r29, -1
/* 800251C8 00022108  80 A3 00 74 */	lwz r5, 0x74(r3)
/* 800251CC 0002210C  7C 04 00 F8 */	nor r4, r0, r0
/* 800251D0 00022110  80 03 00 6C */	lwz r0, 0x6c(r3)
/* 800251D4 00022114  7C 7C 28 50 */	subf r3, r28, r5
/* 800251D8 00022118  7C 83 18 38 */	and r3, r4, r3
/* 800251DC 0002211C  7C 83 28 50 */	subf r4, r3, r5
/* 800251E0 00022120  7C 04 00 40 */	cmplw r4, r0
/* 800251E4 00022124  41 81 00 20 */	bgt .L_80025204
/* 800251E8 00022128  7C 04 28 50 */	subf r0, r4, r5
/* 800251EC 0002212C  7C 7E 1B 78 */	mr r30, r3
/* 800251F0 00022130  90 1F 00 74 */	stw r0, 0x74(r31)
/* 800251F4 00022134  80 1F 00 6C */	lwz r0, 0x6c(r31)
/* 800251F8 00022138  7C 04 00 50 */	subf r0, r4, r0
/* 800251FC 0002213C  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 80025200 00022140  48 00 00 40 */	b .L_80025240
.L_80025204:
/* 80025204 00022144  3C 60 80 47 */	lis r3, lbl_80473ADC@ha
/* 80025208 00022148  38 63 3A DC */	addi r3, r3, lbl_80473ADC@l
/* 8002520C 0002214C  4C C6 31 82 */	crclr 6
/* 80025210 00022150  48 00 41 BD */	bl JUTWarningConsole_f
/* 80025214 00022154  88 1F 00 68 */	lbz r0, 0x68(r31)
/* 80025218 00022158  28 00 00 01 */	cmplwi r0, 1
/* 8002521C 0002215C  40 82 00 24 */	bne .L_80025240
/* 80025220 00022160  81 8D 88 34 */	lwz r12, mErrorHandler__7JKRHeap@sda21(r13)
/* 80025224 00022164  28 0C 00 00 */	cmplwi r12, 0
/* 80025228 00022168  41 82 00 18 */	beq .L_80025240
/* 8002522C 0002216C  7F E3 FB 78 */	mr r3, r31
/* 80025230 00022170  7F 84 E3 78 */	mr r4, r28
/* 80025234 00022174  7F A5 EB 78 */	mr r5, r29
/* 80025238 00022178  7D 89 03 A6 */	mtctr r12
/* 8002523C 0002217C  4E 80 04 21 */	bctrl 
.L_80025240:
/* 80025240 00022180  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80025244 00022184  7F C3 F3 78 */	mr r3, r30
/* 80025248 00022188  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8002524C 0002218C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80025250 00022190  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80025254 00022194  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80025258 00022198  7C 08 03 A6 */	mtlr r0
/* 8002525C 0002219C  38 21 00 20 */	addi r1, r1, 0x20
/* 80025260 000221A0  4E 80 00 20 */	blr 

.global do_free__12JKRSolidHeapFPv
do_free__12JKRSolidHeapFPv:
/* 80025264 000221A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80025268 000221A8  7C 08 02 A6 */	mflr r0
/* 8002526C 000221AC  3C 60 80 47 */	lis r3, lbl_80473B10@ha
/* 80025270 000221B0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80025274 000221B4  38 63 3B 10 */	addi r3, r3, lbl_80473B10@l
/* 80025278 000221B8  4C C6 31 82 */	crclr 6
/* 8002527C 000221BC  48 00 41 51 */	bl JUTWarningConsole_f
/* 80025280 000221C0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80025284 000221C4  7C 08 03 A6 */	mtlr r0
/* 80025288 000221C8  38 21 00 10 */	addi r1, r1, 0x10
/* 8002528C 000221CC  4E 80 00 20 */	blr 

.global do_freeAll__12JKRSolidHeapFv
do_freeAll__12JKRSolidHeapFv:
/* 80025290 000221D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80025294 000221D4  7C 08 02 A6 */	mflr r0
/* 80025298 000221D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002529C 000221DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800252A0 000221E0  7C 7F 1B 78 */	mr r31, r3
/* 800252A4 000221E4  38 7F 00 18 */	addi r3, r31, 0x18
/* 800252A8 000221E8  48 0C A8 C1 */	bl OSLockMutex
/* 800252AC 000221EC  7F E3 FB 78 */	mr r3, r31
/* 800252B0 000221F0  4B FF E4 31 */	bl callAllDisposer__7JKRHeapFv
/* 800252B4 000221F4  80 9F 00 38 */	lwz r4, 0x38(r31)
/* 800252B8 000221F8  38 00 00 00 */	li r0, 0
/* 800252BC 000221FC  38 7F 00 18 */	addi r3, r31, 0x18
/* 800252C0 00022200  90 9F 00 6C */	stw r4, 0x6c(r31)
/* 800252C4 00022204  80 9F 00 30 */	lwz r4, 0x30(r31)
/* 800252C8 00022208  90 9F 00 70 */	stw r4, 0x70(r31)
/* 800252CC 0002220C  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 800252D0 00022210  90 9F 00 74 */	stw r4, 0x74(r31)
/* 800252D4 00022214  90 1F 00 78 */	stw r0, 0x78(r31)
/* 800252D8 00022218  48 0C A9 6D */	bl OSUnlockMutex
/* 800252DC 0002221C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800252E0 00022220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800252E4 00022224  7C 08 03 A6 */	mtlr r0
/* 800252E8 00022228  38 21 00 10 */	addi r1, r1, 0x10
/* 800252EC 0002222C  4E 80 00 20 */	blr 

.global do_freeTail__12JKRSolidHeapFv
do_freeTail__12JKRSolidHeapFv:
/* 800252F0 00022230  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800252F4 00022234  7C 08 02 A6 */	mflr r0
/* 800252F8 00022238  90 01 00 14 */	stw r0, 0x14(r1)
/* 800252FC 0002223C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80025300 00022240  7C 7F 1B 78 */	mr r31, r3
/* 80025304 00022244  38 7F 00 18 */	addi r3, r31, 0x18
/* 80025308 00022248  48 0C A8 61 */	bl OSLockMutex
/* 8002530C 0002224C  80 9F 00 74 */	lwz r4, 0x74(r31)
/* 80025310 00022250  80 BF 00 34 */	lwz r5, 0x34(r31)
/* 80025314 00022254  7C 04 28 40 */	cmplw r4, r5
/* 80025318 00022258  41 82 00 0C */	beq .L_80025324
/* 8002531C 0002225C  7F E3 FB 78 */	mr r3, r31
/* 80025320 00022260  4B FF E9 B1 */	bl dispose__7JKRHeapFPvPv
.L_80025324:
/* 80025324 00022264  80 7F 00 74 */	lwz r3, 0x74(r31)
/* 80025328 00022268  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 8002532C 0002226C  80 9F 00 6C */	lwz r4, 0x6c(r31)
/* 80025330 00022270  7C 03 00 50 */	subf r0, r3, r0
/* 80025334 00022274  7C 04 02 14 */	add r0, r4, r0
/* 80025338 00022278  90 1F 00 6C */	stw r0, 0x6c(r31)
/* 8002533C 0002227C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80025340 00022280  90 1F 00 74 */	stw r0, 0x74(r31)
/* 80025344 00022284  80 7F 00 78 */	lwz r3, 0x78(r31)
/* 80025348 00022288  48 00 00 10 */	b .L_80025358
.L_8002534C:
/* 8002534C 0002228C  80 1F 00 34 */	lwz r0, 0x34(r31)
/* 80025350 00022290  90 03 00 0C */	stw r0, 0xc(r3)
/* 80025354 00022294  80 63 00 10 */	lwz r3, 0x10(r3)
.L_80025358:
/* 80025358 00022298  28 03 00 00 */	cmplwi r3, 0
/* 8002535C 0002229C  40 82 FF F0 */	bne .L_8002534C
/* 80025360 000222A0  38 7F 00 18 */	addi r3, r31, 0x18
/* 80025364 000222A4  48 0C A8 E1 */	bl OSUnlockMutex
/* 80025368 000222A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002536C 000222AC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80025370 000222B0  7C 08 03 A6 */	mtlr r0
/* 80025374 000222B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80025378 000222B8  4E 80 00 20 */	blr 

.global do_fillFreeArea__12JKRSolidHeapFv
do_fillFreeArea__12JKRSolidHeapFv:
/* 8002537C 000222BC  4E 80 00 20 */	blr 

.global do_resize__12JKRSolidHeapFPvUl
do_resize__12JKRSolidHeapFPvUl:
/* 80025380 000222C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80025384 000222C4  7C 08 02 A6 */	mflr r0
/* 80025388 000222C8  3C 60 80 47 */	lis r3, lbl_80473B38@ha
/* 8002538C 000222CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80025390 000222D0  38 63 3B 38 */	addi r3, r3, lbl_80473B38@l
/* 80025394 000222D4  4C C6 31 82 */	crclr 6
/* 80025398 000222D8  48 00 40 35 */	bl JUTWarningConsole_f
/* 8002539C 000222DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800253A0 000222E0  38 60 FF FF */	li r3, -1
/* 800253A4 000222E4  7C 08 03 A6 */	mtlr r0
/* 800253A8 000222E8  38 21 00 10 */	addi r1, r1, 0x10
/* 800253AC 000222EC  4E 80 00 20 */	blr 

.global do_getSize__12JKRSolidHeapFPv
do_getSize__12JKRSolidHeapFPv:
/* 800253B0 000222F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800253B4 000222F4  7C 08 02 A6 */	mflr r0
/* 800253B8 000222F8  3C 60 80 47 */	lis r3, lbl_80473B68@ha
/* 800253BC 000222FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800253C0 00022300  38 63 3B 68 */	addi r3, r3, lbl_80473B68@l
/* 800253C4 00022304  4C C6 31 82 */	crclr 6
/* 800253C8 00022308  48 00 40 05 */	bl JUTWarningConsole_f
/* 800253CC 0002230C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800253D0 00022310  38 60 FF FF */	li r3, -1
/* 800253D4 00022314  7C 08 03 A6 */	mtlr r0
/* 800253D8 00022318  38 21 00 10 */	addi r1, r1, 0x10
/* 800253DC 0002231C  4E 80 00 20 */	blr 

.global check__12JKRSolidHeapFv
check__12JKRSolidHeapFv:
/* 800253E0 00022320  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800253E4 00022324  7C 08 02 A6 */	mflr r0
/* 800253E8 00022328  90 01 00 14 */	stw r0, 0x14(r1)
/* 800253EC 0002232C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800253F0 00022330  93 C1 00 08 */	stw r30, 8(r1)
/* 800253F4 00022334  7C 7E 1B 78 */	mr r30, r3
/* 800253F8 00022338  38 7E 00 18 */	addi r3, r30, 0x18
/* 800253FC 0002233C  48 0C A7 6D */	bl OSLockMutex
/* 80025400 00022340  80 BE 00 30 */	lwz r5, 0x30(r30)
/* 80025404 00022344  3B E0 00 01 */	li r31, 1
/* 80025408 00022348  80 9E 00 70 */	lwz r4, 0x70(r30)
/* 8002540C 0002234C  80 7E 00 74 */	lwz r3, 0x74(r30)
/* 80025410 00022350  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 80025414 00022354  7C A5 20 50 */	subf r5, r5, r4
/* 80025418 00022358  80 DE 00 6C */	lwz r6, 0x6c(r30)
/* 8002541C 0002235C  7C 03 00 50 */	subf r0, r3, r0
/* 80025420 00022360  80 9E 00 38 */	lwz r4, 0x38(r30)
/* 80025424 00022364  7C A5 02 14 */	add r5, r5, r0
/* 80025428 00022368  7C A6 2A 14 */	add r5, r6, r5
/* 8002542C 0002236C  7C 05 20 40 */	cmplw r5, r4
/* 80025430 00022370  41 82 00 18 */	beq .L_80025448
/* 80025434 00022374  3C 60 80 47 */	lis r3, lbl_80473B98@ha
/* 80025438 00022378  3B E0 00 00 */	li r31, 0
/* 8002543C 0002237C  38 63 3B 98 */	addi r3, r3, lbl_80473B98@l
/* 80025440 00022380  4C C6 31 82 */	crclr 6
/* 80025444 00022384  48 00 3F 89 */	bl JUTWarningConsole_f
.L_80025448:
/* 80025448 00022388  38 7E 00 18 */	addi r3, r30, 0x18
/* 8002544C 0002238C  48 0C A7 F9 */	bl OSUnlockMutex
/* 80025450 00022390  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80025454 00022394  7F E3 FB 78 */	mr r3, r31
/* 80025458 00022398  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8002545C 0002239C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80025460 000223A0  7C 08 03 A6 */	mtlr r0
/* 80025464 000223A4  38 21 00 10 */	addi r1, r1, 0x10
/* 80025468 000223A8  4E 80 00 20 */	blr 

.global dump__12JKRSolidHeapFv
dump__12JKRSolidHeapFv:
/* 8002546C 000223AC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80025470 000223B0  7C 08 02 A6 */	mflr r0
/* 80025474 000223B4  3C 80 80 47 */	lis r4, lbl_80473AA8@ha
/* 80025478 000223B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 8002547C 000223BC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80025480 000223C0  3B E4 3A A8 */	addi r31, r4, lbl_80473AA8@l
/* 80025484 000223C4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80025488 000223C8  93 A1 00 24 */	stw r29, 0x24(r1)
/* 8002548C 000223CC  93 81 00 20 */	stw r28, 0x20(r1)
/* 80025490 000223D0  7C 7C 1B 78 */	mr r28, r3
/* 80025494 000223D4  81 83 00 00 */	lwz r12, 0(r3)
/* 80025498 000223D8  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 8002549C 000223DC  7D 89 03 A6 */	mtctr r12
/* 800254A0 000223E0  4E 80 04 21 */	bctrl 
/* 800254A4 000223E4  7C 60 1B 78 */	mr r0, r3
/* 800254A8 000223E8  38 7C 00 18 */	addi r3, r28, 0x18
/* 800254AC 000223EC  7C 1E 03 78 */	mr r30, r0
/* 800254B0 000223F0  48 0C A6 B9 */	bl OSLockMutex
/* 800254B4 000223F4  80 9C 00 30 */	lwz r4, 0x30(r28)
/* 800254B8 000223F8  38 7F 01 24 */	addi r3, r31, 0x124
/* 800254BC 000223FC  80 BC 00 70 */	lwz r5, 0x70(r28)
/* 800254C0 00022400  80 DC 00 74 */	lwz r6, 0x74(r28)
/* 800254C4 00022404  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 800254C8 00022408  7C A4 28 50 */	subf r5, r4, r5
/* 800254CC 0002240C  7C 06 00 50 */	subf r0, r6, r0
/* 800254D0 00022410  7F A5 02 14 */	add r29, r5, r0
/* 800254D4 00022414  4C C6 31 82 */	crclr 6
/* 800254D8 00022418  48 00 3D ED */	bl JUTReportConsole_f
/* 800254DC 0002241C  80 9C 00 74 */	lwz r4, 0x74(r28)
/* 800254E0 00022420  38 7F 01 38 */	addi r3, r31, 0x138
/* 800254E4 00022424  80 1C 00 34 */	lwz r0, 0x34(r28)
/* 800254E8 00022428  7C A4 00 50 */	subf r5, r4, r0
/* 800254EC 0002242C  4C C6 31 82 */	crclr 6
/* 800254F0 00022430  48 00 3D D5 */	bl JUTReportConsole_f
/* 800254F4 00022434  3C 00 43 30 */	lis r0, 0x4330
/* 800254F8 00022438  6F A3 80 00 */	xoris r3, r29, 0x8000
/* 800254FC 0002243C  80 BC 00 38 */	lwz r5, 0x38(r28)
/* 80025500 00022440  7F A4 EB 78 */	mr r4, r29
/* 80025504 00022444  90 61 00 0C */	stw r3, 0xc(r1)
/* 80025508 00022448  38 7F 01 4C */	addi r3, r31, 0x14c
/* 8002550C 0002244C  C8 42 81 E0 */	lfd f2, lbl_80516540@sda21(r2)
/* 80025510 00022450  90 01 00 08 */	stw r0, 8(r1)
/* 80025514 00022454  C8 22 81 E8 */	lfd f1, lbl_80516548@sda21(r2)
/* 80025518 00022458  C8 01 00 08 */	lfd f0, 8(r1)
/* 8002551C 0002245C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80025520 00022460  EC 40 10 28 */	fsubs f2, f0, f2
/* 80025524 00022464  C0 62 81 D8 */	lfs f3, lbl_80516538@sda21(r2)
/* 80025528 00022468  90 01 00 10 */	stw r0, 0x10(r1)
/* 8002552C 0002246C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80025530 00022470  EC 00 08 28 */	fsubs f0, f0, f1
/* 80025534 00022474  EC 02 00 24 */	fdivs f0, f2, f0
/* 80025538 00022478  EC 23 00 32 */	fmuls f1, f3, f0
/* 8002553C 0002247C  4C C6 32 42 */	crset 6
/* 80025540 00022480  48 00 3D 85 */	bl JUTReportConsole_f
/* 80025544 00022484  38 7C 00 18 */	addi r3, r28, 0x18
/* 80025548 00022488  48 0C A6 FD */	bl OSUnlockMutex
/* 8002554C 0002248C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80025550 00022490  7F C3 F3 78 */	mr r3, r30
/* 80025554 00022494  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80025558 00022498  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8002555C 0002249C  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 80025560 000224A0  83 81 00 20 */	lwz r28, 0x20(r1)
/* 80025564 000224A4  7C 08 03 A6 */	mtlr r0
/* 80025568 000224A8  38 21 00 30 */	addi r1, r1, 0x30
/* 8002556C 000224AC  4E 80 00 20 */	blr 

.global state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl
state_register__12JKRSolidHeapCFPQ27JKRHeap6TStateUl:
/* 80025570 000224B0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80025574 000224B4  7C 08 02 A6 */	mflr r0
/* 80025578 000224B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8002557C 000224BC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80025580 000224C0  7C 9F 23 78 */	mr r31, r4
/* 80025584 000224C4  93 C1 00 08 */	stw r30, 8(r1)
/* 80025588 000224C8  7C 7E 1B 78 */	mr r30, r3
/* 8002558C 000224CC  90 A4 00 14 */	stw r5, 0x14(r4)
/* 80025590 000224D0  4B FF E2 51 */	bl getTotalFreeSize__7JKRHeapFv
/* 80025594 000224D4  80 1E 00 38 */	lwz r0, 0x38(r30)
/* 80025598 000224D8  7C 03 00 50 */	subf r0, r3, r0
/* 8002559C 000224DC  90 1F 00 00 */	stw r0, 0(r31)
/* 800255A0 000224E0  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 800255A4 000224E4  80 7E 00 70 */	lwz r3, 0x70(r30)
/* 800255A8 000224E8  1C 00 00 03 */	mulli r0, r0, 3
/* 800255AC 000224EC  7C 63 02 14 */	add r3, r3, r0
/* 800255B0 000224F0  90 7F 00 04 */	stw r3, 4(r31)
/* 800255B4 000224F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800255B8 000224F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 800255BC 000224FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800255C0 00022500  7C 08 03 A6 */	mtlr r0
/* 800255C4 00022504  38 21 00 10 */	addi r1, r1, 0x10
/* 800255C8 00022508  4E 80 00 20 */	blr 

.global state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState
state_compare__12JKRSolidHeapCFRCQ27JKRHeap6TStateRCQ27JKRHeap6TState:
/* 800255CC 0002250C  80 C4 00 04 */	lwz r6, 4(r4)
/* 800255D0 00022510  38 60 00 01 */	li r3, 1
/* 800255D4 00022514  80 05 00 04 */	lwz r0, 4(r5)
/* 800255D8 00022518  7C 06 00 40 */	cmplw r6, r0
/* 800255DC 0002251C  41 82 00 08 */	beq .L_800255E4
/* 800255E0 00022520  38 60 00 00 */	li r3, 0
.L_800255E4:
/* 800255E4 00022524  80 84 00 00 */	lwz r4, 0(r4)
/* 800255E8 00022528  80 05 00 00 */	lwz r0, 0(r5)
/* 800255EC 0002252C  7C 04 00 40 */	cmplw r4, r0
/* 800255F0 00022530  4D 82 00 20 */	beqlr 
/* 800255F4 00022534  38 60 00 00 */	li r3, 0
/* 800255F8 00022538  4E 80 00 20 */	blr 

.global getHeapType__12JKRSolidHeapFv
getHeapType__12JKRSolidHeapFv:
/* 800255FC 0002253C  3C 60 53 4C */	lis r3, 0x534C4944@ha
/* 80025600 00022540  38 63 49 44 */	addi r3, r3, 0x534C4944@l
/* 80025604 00022544  4E 80 00 20 */	blr 

.global do_getFreeSize__12JKRSolidHeapFv
do_getFreeSize__12JKRSolidHeapFv:
/* 80025608 00022548  80 63 00 6C */	lwz r3, 0x6c(r3)
/* 8002560C 0002254C  4E 80 00 20 */	blr 

.global do_getMaxFreeBlock__12JKRSolidHeapFv
do_getMaxFreeBlock__12JKRSolidHeapFv:
/* 80025610 00022550  80 63 00 70 */	lwz r3, 0x70(r3)
/* 80025614 00022554  4E 80 00 20 */	blr 

.global do_getTotalFreeSize__12JKRSolidHeapFv
do_getTotalFreeSize__12JKRSolidHeapFv:
/* 80025618 00022558  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8002561C 0002255C  7C 08 02 A6 */	mflr r0
/* 80025620 00022560  90 01 00 14 */	stw r0, 0x14(r1)
/* 80025624 00022564  4B FF E1 91 */	bl getFreeSize__7JKRHeapFv
/* 80025628 00022568  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8002562C 0002256C  7C 08 03 A6 */	mtlr r0
/* 80025630 00022570  38 21 00 10 */	addi r1, r1, 0x10
/* 80025634 00022574  4E 80 00 20 */	blr 

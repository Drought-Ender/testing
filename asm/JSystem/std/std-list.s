.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global "__ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator<Pv>"
"__ct__Q27JGadget18TList_pointer_voidFRCQ27JGadget14TAllocator<Pv>":
/* 80027484 000243C4  88 04 00 00 */	lbz r0, 0(r4)
/* 80027488 000243C8  38 80 00 00 */	li r4, 0
/* 8002748C 000243CC  98 03 00 00 */	stb r0, 0(r3)
/* 80027490 000243D0  38 03 00 08 */	addi r0, r3, 8
/* 80027494 000243D4  90 83 00 04 */	stw r4, 4(r3)
/* 80027498 000243D8  90 03 00 08 */	stw r0, 8(r3)
/* 8002749C 000243DC  90 03 00 0C */	stw r0, 0xc(r3)
/* 800274A0 000243E0  4E 80 00 20 */	blr 

.global __dt__Q27JGadget18TList_pointer_voidFv
__dt__Q27JGadget18TList_pointer_voidFv:
/* 800274A4 000243E4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800274A8 000243E8  7C 08 02 A6 */	mflr r0
/* 800274AC 000243EC  90 01 00 44 */	stw r0, 0x44(r1)
/* 800274B0 000243F0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 800274B4 000243F4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 800274B8 000243F8  93 A1 00 34 */	stw r29, 0x34(r1)
/* 800274BC 000243FC  7C 9D 23 78 */	mr r29, r4
/* 800274C0 00024400  93 81 00 30 */	stw r28, 0x30(r1)
/* 800274C4 00024404  7C 7C 1B 79 */	or. r28, r3, r3
/* 800274C8 00024408  41 82 00 78 */	beq .L_80027540
/* 800274CC 0002440C  41 82 00 64 */	beq .L_80027530
/* 800274D0 00024410  80 1C 00 08 */	lwz r0, 8(r28)
/* 800274D4 00024414  3B FC 00 08 */	addi r31, r28, 8
/* 800274D8 00024418  93 E1 00 20 */	stw r31, 0x20(r1)
/* 800274DC 0002441C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800274E0 00024420  90 01 00 18 */	stw r0, 0x18(r1)
/* 800274E4 00024424  90 01 00 14 */	stw r0, 0x14(r1)
/* 800274E8 00024428  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800274EC 0002442C  48 00 00 34 */	b .L_80027520
.L_800274F0:
/* 800274F0 00024430  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800274F4 00024434  83 C3 00 00 */	lwz r30, 0(r3)
/* 800274F8 00024438  80 83 00 04 */	lwz r4, 4(r3)
/* 800274FC 0002443C  90 61 00 10 */	stw r3, 0x10(r1)
/* 80027500 00024440  93 C4 00 00 */	stw r30, 0(r4)
/* 80027504 00024444  80 03 00 04 */	lwz r0, 4(r3)
/* 80027508 00024448  90 1E 00 04 */	stw r0, 4(r30)
/* 8002750C 0002444C  4B FF CB A9 */	bl __dl__FPv
/* 80027510 00024450  80 7C 00 04 */	lwz r3, 4(r28)
/* 80027514 00024454  93 C1 00 14 */	stw r30, 0x14(r1)
/* 80027518 00024458  38 03 FF FF */	addi r0, r3, -1
/* 8002751C 0002445C  90 1C 00 04 */	stw r0, 4(r28)
.L_80027520:
/* 80027520 00024460  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80027524 00024464  7C 00 F8 40 */	cmplw r0, r31
/* 80027528 00024468  90 01 00 08 */	stw r0, 8(r1)
/* 8002752C 0002446C  40 82 FF C4 */	bne .L_800274F0
.L_80027530:
/* 80027530 00024470  7F A0 07 35 */	extsh. r0, r29
/* 80027534 00024474  40 81 00 0C */	ble .L_80027540
/* 80027538 00024478  7F 83 E3 78 */	mr r3, r28
/* 8002753C 0002447C  4B FF CB 79 */	bl __dl__FPv
.L_80027540:
/* 80027540 00024480  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80027544 00024484  7F 83 E3 78 */	mr r3, r28
/* 80027548 00024488  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8002754C 0002448C  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80027550 00024490  83 A1 00 34 */	lwz r29, 0x34(r1)
/* 80027554 00024494  83 81 00 30 */	lwz r28, 0x30(r1)
/* 80027558 00024498  7C 08 03 A6 */	mtlr r0
/* 8002755C 0002449C  38 21 00 40 */	addi r1, r1, 0x40
/* 80027560 000244A0  4E 80 00 20 */	blr 

.global "insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList<Pv,Q27JGadget14TAllocator<Pv>>8iteratorRCPv"
"insert__Q27JGadget18TList_pointer_voidFQ37JGadget36TList<Pv,Q27JGadget14TAllocator<Pv>>8iteratorRCPv":
/* 80027564 000244A4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80027568 000244A8  7C 08 02 A6 */	mflr r0
/* 8002756C 000244AC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80027570 000244B0  BF 61 00 1C */	stmw r27, 0x1c(r1)
/* 80027574 000244B4  7C 7B 1B 78 */	mr r27, r3
/* 80027578 000244B8  83 E5 00 00 */	lwz r31, 0(r5)
/* 8002757C 000244BC  7C 9C 23 78 */	mr r28, r4
/* 80027580 000244C0  7C DD 33 78 */	mr r29, r6
/* 80027584 000244C4  38 60 00 0C */	li r3, 0xc
/* 80027588 000244C8  93 E1 00 08 */	stw r31, 8(r1)
/* 8002758C 000244CC  83 DF 00 04 */	lwz r30, 4(r31)
/* 80027590 000244D0  4B FF C9 15 */	bl __nw__FUl
/* 80027594 000244D4  28 03 00 00 */	cmplwi r3, 0
/* 80027598 000244D8  40 82 00 0C */	bne .L_800275A4
/* 8002759C 000244DC  38 60 00 00 */	li r3, 0
/* 800275A0 000244E0  48 00 00 1C */	b .L_800275BC
.L_800275A4:
/* 800275A4 000244E4  93 E3 00 00 */	stw r31, 0(r3)
/* 800275A8 000244E8  34 83 00 08 */	addic. r4, r3, 8
/* 800275AC 000244EC  93 C3 00 04 */	stw r30, 4(r3)
/* 800275B0 000244F0  41 82 00 0C */	beq .L_800275BC
/* 800275B4 000244F4  80 1D 00 00 */	lwz r0, 0(r29)
/* 800275B8 000244F8  90 04 00 00 */	stw r0, 0(r4)
.L_800275BC:
/* 800275BC 000244FC  28 03 00 00 */	cmplwi r3, 0
/* 800275C0 00024500  40 82 00 10 */	bne .L_800275D0
/* 800275C4 00024504  38 1C 00 08 */	addi r0, r28, 8
/* 800275C8 00024508  90 1B 00 00 */	stw r0, 0(r27)
/* 800275CC 0002450C  48 00 00 1C */	b .L_800275E8
.L_800275D0:
/* 800275D0 00024510  90 7F 00 04 */	stw r3, 4(r31)
/* 800275D4 00024514  90 7E 00 00 */	stw r3, 0(r30)
/* 800275D8 00024518  80 9C 00 04 */	lwz r4, 4(r28)
/* 800275DC 0002451C  38 04 00 01 */	addi r0, r4, 1
/* 800275E0 00024520  90 1C 00 04 */	stw r0, 4(r28)
/* 800275E4 00024524  90 7B 00 00 */	stw r3, 0(r27)
.L_800275E8:
/* 800275E8 00024528  BB 61 00 1C */	lmw r27, 0x1c(r1)
/* 800275EC 0002452C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800275F0 00024530  7C 08 03 A6 */	mtlr r0
/* 800275F4 00024534  38 21 00 30 */	addi r1, r1, 0x30
/* 800275F8 00024538  4E 80 00 20 */	blr 

.global "erase__Q27JGadget18TList_pointer_voidFQ37JGadget36TList<Pv,Q27JGadget14TAllocator<Pv>>8iterator"
"erase__Q27JGadget18TList_pointer_voidFQ37JGadget36TList<Pv,Q27JGadget14TAllocator<Pv>>8iterator":
/* 800275FC 0002453C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80027600 00024540  7C 08 02 A6 */	mflr r0
/* 80027604 00024544  80 A5 00 00 */	lwz r5, 0(r5)
/* 80027608 00024548  90 01 00 24 */	stw r0, 0x24(r1)
/* 8002760C 0002454C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80027610 00024550  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80027614 00024554  7C 9E 23 78 */	mr r30, r4
/* 80027618 00024558  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8002761C 0002455C  7C 7D 1B 78 */	mr r29, r3
/* 80027620 00024560  7C A3 2B 78 */	mr r3, r5
/* 80027624 00024564  83 E5 00 00 */	lwz r31, 0(r5)
/* 80027628 00024568  80 85 00 04 */	lwz r4, 4(r5)
/* 8002762C 0002456C  90 A1 00 08 */	stw r5, 8(r1)
/* 80027630 00024570  93 E4 00 00 */	stw r31, 0(r4)
/* 80027634 00024574  80 05 00 04 */	lwz r0, 4(r5)
/* 80027638 00024578  90 1F 00 04 */	stw r0, 4(r31)
/* 8002763C 0002457C  4B FF CA 79 */	bl __dl__FPv
/* 80027640 00024580  80 7E 00 04 */	lwz r3, 4(r30)
/* 80027644 00024584  38 03 FF FF */	addi r0, r3, -1
/* 80027648 00024588  90 1E 00 04 */	stw r0, 4(r30)
/* 8002764C 0002458C  93 FD 00 00 */	stw r31, 0(r29)
/* 80027650 00024590  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80027654 00024594  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80027658 00024598  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8002765C 0002459C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80027660 000245A0  7C 08 03 A6 */	mtlr r0
/* 80027664 000245A4  38 21 00 20 */	addi r1, r1, 0x20
/* 80027668 000245A8  4E 80 00 20 */	blr 

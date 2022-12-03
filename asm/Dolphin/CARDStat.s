.include "macros.inc"

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global UpdateIconOffsets
UpdateIconOffsets:
/* 800DA638 000D7578  81 03 00 2C */	lwz r8, 0x2c(r3)
/* 800DA63C 000D757C  3C 08 00 01 */	addis r0, r8, 1
/* 800DA640 000D7580  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DA644 000D7584  40 82 00 18 */	bne .L_800DA65C
/* 800DA648 000D7588  38 00 00 00 */	li r0, 0
/* 800DA64C 000D758C  98 04 00 2E */	stb r0, 0x2e(r4)
/* 800DA650 000D7590  39 00 00 00 */	li r8, 0
/* 800DA654 000D7594  B0 04 00 34 */	sth r0, 0x34(r4)
/* 800DA658 000D7598  B0 04 00 36 */	sth r0, 0x36(r4)
.L_800DA65C:
/* 800DA65C 000D759C  88 03 00 07 */	lbz r0, 7(r3)
/* 800DA660 000D75A0  39 20 00 00 */	li r9, 0
/* 800DA664 000D75A4  54 00 07 BE */	clrlwi r0, r0, 0x1e
/* 800DA668 000D75A8  2C 00 00 02 */	cmpwi r0, 2
/* 800DA66C 000D75AC  41 82 00 28 */	beq .L_800DA694
/* 800DA670 000D75B0  40 80 00 38 */	bge .L_800DA6A8
/* 800DA674 000D75B4  2C 00 00 01 */	cmpwi r0, 1
/* 800DA678 000D75B8  40 80 00 08 */	bge .L_800DA680
/* 800DA67C 000D75BC  48 00 00 2C */	b .L_800DA6A8
.L_800DA680:
/* 800DA680 000D75C0  91 04 00 3C */	stw r8, 0x3c(r4)
/* 800DA684 000D75C4  38 08 0C 00 */	addi r0, r8, 0xc00
/* 800DA688 000D75C8  39 08 0E 00 */	addi r8, r8, 0xe00
/* 800DA68C 000D75CC  90 04 00 40 */	stw r0, 0x40(r4)
/* 800DA690 000D75D0  48 00 00 24 */	b .L_800DA6B4
.L_800DA694:
/* 800DA694 000D75D4  91 04 00 3C */	stw r8, 0x3c(r4)
/* 800DA698 000D75D8  38 00 FF FF */	li r0, -1
/* 800DA69C 000D75DC  39 08 18 00 */	addi r8, r8, 0x1800
/* 800DA6A0 000D75E0  90 04 00 40 */	stw r0, 0x40(r4)
/* 800DA6A4 000D75E4  48 00 00 10 */	b .L_800DA6B4
.L_800DA6A8:
/* 800DA6A8 000D75E8  38 00 FF FF */	li r0, -1
/* 800DA6AC 000D75EC  90 04 00 3C */	stw r0, 0x3c(r4)
/* 800DA6B0 000D75F0  90 04 00 40 */	stw r0, 0x40(r4)
.L_800DA6B4:
/* 800DA6B4 000D75F4  38 00 00 02 */	li r0, 2
/* 800DA6B8 000D75F8  7C 09 03 A6 */	mtctr r0
/* 800DA6BC 000D75FC  38 E4 00 00 */	addi r7, r4, 0
/* 800DA6C0 000D7600  39 40 00 00 */	li r10, 0
/* 800DA6C4 000D7604  38 C0 00 00 */	li r6, 0
/* 800DA6C8 000D7608  38 00 FF FF */	li r0, -1
.L_800DA6CC:
/* 800DA6CC 000D760C  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 800DA6D0 000D7610  7C A5 36 30 */	sraw r5, r5, r6
/* 800DA6D4 000D7614  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 800DA6D8 000D7618  2C 05 00 02 */	cmpwi r5, 2
/* 800DA6DC 000D761C  41 82 00 24 */	beq .L_800DA700
/* 800DA6E0 000D7620  40 80 00 2C */	bge .L_800DA70C
/* 800DA6E4 000D7624  2C 05 00 01 */	cmpwi r5, 1
/* 800DA6E8 000D7628  40 80 00 08 */	bge .L_800DA6F0
/* 800DA6EC 000D762C  48 00 00 20 */	b .L_800DA70C
.L_800DA6F0:
/* 800DA6F0 000D7630  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA6F4 000D7634  39 20 00 01 */	li r9, 1
/* 800DA6F8 000D7638  39 08 04 00 */	addi r8, r8, 0x400
/* 800DA6FC 000D763C  48 00 00 14 */	b .L_800DA710
.L_800DA700:
/* 800DA700 000D7640  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA704 000D7644  39 08 08 00 */	addi r8, r8, 0x800
/* 800DA708 000D7648  48 00 00 08 */	b .L_800DA710
.L_800DA70C:
/* 800DA70C 000D764C  90 07 00 44 */	stw r0, 0x44(r7)
.L_800DA710:
/* 800DA710 000D7650  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 800DA714 000D7654  38 C6 00 02 */	addi r6, r6, 2
/* 800DA718 000D7658  38 E7 00 04 */	addi r7, r7, 4
/* 800DA71C 000D765C  7C A5 36 30 */	sraw r5, r5, r6
/* 800DA720 000D7660  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 800DA724 000D7664  2C 05 00 02 */	cmpwi r5, 2
/* 800DA728 000D7668  41 82 00 24 */	beq .L_800DA74C
/* 800DA72C 000D766C  40 80 00 2C */	bge .L_800DA758
/* 800DA730 000D7670  2C 05 00 01 */	cmpwi r5, 1
/* 800DA734 000D7674  40 80 00 08 */	bge .L_800DA73C
/* 800DA738 000D7678  48 00 00 20 */	b .L_800DA758
.L_800DA73C:
/* 800DA73C 000D767C  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA740 000D7680  39 20 00 01 */	li r9, 1
/* 800DA744 000D7684  39 08 04 00 */	addi r8, r8, 0x400
/* 800DA748 000D7688  48 00 00 14 */	b .L_800DA75C
.L_800DA74C:
/* 800DA74C 000D768C  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA750 000D7690  39 08 08 00 */	addi r8, r8, 0x800
/* 800DA754 000D7694  48 00 00 08 */	b .L_800DA75C
.L_800DA758:
/* 800DA758 000D7698  90 07 00 44 */	stw r0, 0x44(r7)
.L_800DA75C:
/* 800DA75C 000D769C  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 800DA760 000D76A0  38 C6 00 02 */	addi r6, r6, 2
/* 800DA764 000D76A4  39 4A 00 01 */	addi r10, r10, 1
/* 800DA768 000D76A8  7C A5 36 30 */	sraw r5, r5, r6
/* 800DA76C 000D76AC  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 800DA770 000D76B0  2C 05 00 02 */	cmpwi r5, 2
/* 800DA774 000D76B4  38 E7 00 04 */	addi r7, r7, 4
/* 800DA778 000D76B8  41 82 00 24 */	beq .L_800DA79C
/* 800DA77C 000D76BC  40 80 00 2C */	bge .L_800DA7A8
/* 800DA780 000D76C0  2C 05 00 01 */	cmpwi r5, 1
/* 800DA784 000D76C4  40 80 00 08 */	bge .L_800DA78C
/* 800DA788 000D76C8  48 00 00 20 */	b .L_800DA7A8
.L_800DA78C:
/* 800DA78C 000D76CC  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA790 000D76D0  39 20 00 01 */	li r9, 1
/* 800DA794 000D76D4  39 08 04 00 */	addi r8, r8, 0x400
/* 800DA798 000D76D8  48 00 00 14 */	b .L_800DA7AC
.L_800DA79C:
/* 800DA79C 000D76DC  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA7A0 000D76E0  39 08 08 00 */	addi r8, r8, 0x800
/* 800DA7A4 000D76E4  48 00 00 08 */	b .L_800DA7AC
.L_800DA7A8:
/* 800DA7A8 000D76E8  90 07 00 44 */	stw r0, 0x44(r7)
.L_800DA7AC:
/* 800DA7AC 000D76EC  A0 A3 00 30 */	lhz r5, 0x30(r3)
/* 800DA7B0 000D76F0  38 C6 00 02 */	addi r6, r6, 2
/* 800DA7B4 000D76F4  39 4A 00 01 */	addi r10, r10, 1
/* 800DA7B8 000D76F8  7C A5 36 30 */	sraw r5, r5, r6
/* 800DA7BC 000D76FC  54 A5 07 BE */	clrlwi r5, r5, 0x1e
/* 800DA7C0 000D7700  2C 05 00 02 */	cmpwi r5, 2
/* 800DA7C4 000D7704  38 E7 00 04 */	addi r7, r7, 4
/* 800DA7C8 000D7708  41 82 00 24 */	beq .L_800DA7EC
/* 800DA7CC 000D770C  40 80 00 2C */	bge .L_800DA7F8
/* 800DA7D0 000D7710  2C 05 00 01 */	cmpwi r5, 1
/* 800DA7D4 000D7714  40 80 00 08 */	bge .L_800DA7DC
/* 800DA7D8 000D7718  48 00 00 20 */	b .L_800DA7F8
.L_800DA7DC:
/* 800DA7DC 000D771C  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA7E0 000D7720  39 20 00 01 */	li r9, 1
/* 800DA7E4 000D7724  39 08 04 00 */	addi r8, r8, 0x400
/* 800DA7E8 000D7728  48 00 00 14 */	b .L_800DA7FC
.L_800DA7EC:
/* 800DA7EC 000D772C  91 07 00 44 */	stw r8, 0x44(r7)
/* 800DA7F0 000D7730  39 08 08 00 */	addi r8, r8, 0x800
/* 800DA7F4 000D7734  48 00 00 08 */	b .L_800DA7FC
.L_800DA7F8:
/* 800DA7F8 000D7738  90 07 00 44 */	stw r0, 0x44(r7)
.L_800DA7FC:
/* 800DA7FC 000D773C  38 C6 00 02 */	addi r6, r6, 2
/* 800DA800 000D7740  38 E7 00 04 */	addi r7, r7, 4
/* 800DA804 000D7744  39 4A 00 01 */	addi r10, r10, 1
/* 800DA808 000D7748  42 00 FE C4 */	bdnz .L_800DA6CC
/* 800DA80C 000D774C  2C 09 00 00 */	cmpwi r9, 0
/* 800DA810 000D7750  41 82 00 10 */	beq .L_800DA820
/* 800DA814 000D7754  91 04 00 64 */	stw r8, 0x64(r4)
/* 800DA818 000D7758  39 08 02 00 */	addi r8, r8, 0x200
/* 800DA81C 000D775C  48 00 00 0C */	b .L_800DA828
.L_800DA820:
/* 800DA820 000D7760  38 00 FF FF */	li r0, -1
/* 800DA824 000D7764  90 04 00 64 */	stw r0, 0x64(r4)
.L_800DA828:
/* 800DA828 000D7768  91 04 00 68 */	stw r8, 0x68(r4)
/* 800DA82C 000D776C  4E 80 00 20 */	blr 

.global CARDGetStatus
CARDGetStatus:
/* 800DA830 000D7770  7C 08 02 A6 */	mflr r0
/* 800DA834 000D7774  90 01 00 04 */	stw r0, 4(r1)
/* 800DA838 000D7778  94 21 FF D8 */	stwu r1, -0x28(r1)
/* 800DA83C 000D777C  93 E1 00 24 */	stw r31, 0x24(r1)
/* 800DA840 000D7780  3B E5 00 00 */	addi r31, r5, 0
/* 800DA844 000D7784  93 C1 00 20 */	stw r30, 0x20(r1)
/* 800DA848 000D7788  93 A1 00 1C */	stw r29, 0x1c(r1)
/* 800DA84C 000D778C  7C 9D 23 79 */	or. r29, r4, r4
/* 800DA850 000D7790  41 80 00 0C */	blt .L_800DA85C
/* 800DA854 000D7794  2C 1D 00 7F */	cmpwi r29, 0x7f
/* 800DA858 000D7798  41 80 00 0C */	blt .L_800DA864
.L_800DA85C:
/* 800DA85C 000D779C  38 60 FF 80 */	li r3, -128
/* 800DA860 000D77A0  48 00 00 C8 */	b .L_800DA928
.L_800DA864:
/* 800DA864 000D77A4  38 81 00 14 */	addi r4, r1, 0x14
/* 800DA868 000D77A8  4B FF AD 65 */	bl __CARDGetControlBlock
/* 800DA86C 000D77AC  2C 03 00 00 */	cmpwi r3, 0
/* 800DA870 000D77B0  40 80 00 08 */	bge .L_800DA878
/* 800DA874 000D77B4  48 00 00 B4 */	b .L_800DA928
.L_800DA878:
/* 800DA878 000D77B8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800DA87C 000D77BC  4B FF C8 ED */	bl __CARDGetDirBlock
/* 800DA880 000D77C0  57 A0 30 32 */	slwi r0, r29, 6
/* 800DA884 000D77C4  7F A3 02 14 */	add r29, r3, r0
/* 800DA888 000D77C8  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800DA88C 000D77CC  7F A4 EB 78 */	mr r4, r29
/* 800DA890 000D77D0  4B FF EF BD */	bl __CARDIsReadable
/* 800DA894 000D77D4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800DA898 000D77D8  41 80 00 84 */	blt .L_800DA91C
/* 800DA89C 000D77DC  38 9D 00 00 */	addi r4, r29, 0
/* 800DA8A0 000D77E0  38 7F 00 28 */	addi r3, r31, 0x28
/* 800DA8A4 000D77E4  38 A0 00 04 */	li r5, 4
/* 800DA8A8 000D77E8  4B F2 A8 F5 */	bl memcpy
/* 800DA8AC 000D77EC  38 7F 00 2C */	addi r3, r31, 0x2c
/* 800DA8B0 000D77F0  38 9D 00 04 */	addi r4, r29, 4
/* 800DA8B4 000D77F4  38 A0 00 02 */	li r5, 2
/* 800DA8B8 000D77F8  4B F2 A8 E5 */	bl memcpy
/* 800DA8BC 000D77FC  80 A1 00 14 */	lwz r5, 0x14(r1)
/* 800DA8C0 000D7800  7F E3 FB 78 */	mr r3, r31
/* 800DA8C4 000D7804  A0 DD 00 38 */	lhz r6, 0x38(r29)
/* 800DA8C8 000D7808  38 9D 00 08 */	addi r4, r29, 8
/* 800DA8CC 000D780C  80 05 00 0C */	lwz r0, 0xc(r5)
/* 800DA8D0 000D7810  38 A0 00 20 */	li r5, 0x20
/* 800DA8D4 000D7814  7C 06 01 D6 */	mullw r0, r6, r0
/* 800DA8D8 000D7818  90 1F 00 20 */	stw r0, 0x20(r31)
/* 800DA8DC 000D781C  4B F2 A8 C1 */	bl memcpy
/* 800DA8E0 000D7820  80 1D 00 28 */	lwz r0, 0x28(r29)
/* 800DA8E4 000D7824  38 7D 00 00 */	addi r3, r29, 0
/* 800DA8E8 000D7828  38 9F 00 00 */	addi r4, r31, 0
/* 800DA8EC 000D782C  90 1F 00 24 */	stw r0, 0x24(r31)
/* 800DA8F0 000D7830  88 1D 00 07 */	lbz r0, 7(r29)
/* 800DA8F4 000D7834  98 1F 00 2E */	stb r0, 0x2e(r31)
/* 800DA8F8 000D7838  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 800DA8FC 000D783C  90 1F 00 30 */	stw r0, 0x30(r31)
/* 800DA900 000D7840  A0 1D 00 30 */	lhz r0, 0x30(r29)
/* 800DA904 000D7844  B0 1F 00 34 */	sth r0, 0x34(r31)
/* 800DA908 000D7848  A0 1D 00 32 */	lhz r0, 0x32(r29)
/* 800DA90C 000D784C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 800DA910 000D7850  80 1D 00 3C */	lwz r0, 0x3c(r29)
/* 800DA914 000D7854  90 1F 00 38 */	stw r0, 0x38(r31)
/* 800DA918 000D7858  4B FF FD 21 */	bl UpdateIconOffsets
.L_800DA91C:
/* 800DA91C 000D785C  80 61 00 14 */	lwz r3, 0x14(r1)
/* 800DA920 000D7860  7F C4 F3 78 */	mr r4, r30
/* 800DA924 000D7864  4B FF AD 61 */	bl __CARDPutControlBlock
.L_800DA928:
/* 800DA928 000D7868  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 800DA92C 000D786C  83 E1 00 24 */	lwz r31, 0x24(r1)
/* 800DA930 000D7870  83 C1 00 20 */	lwz r30, 0x20(r1)
/* 800DA934 000D7874  83 A1 00 1C */	lwz r29, 0x1c(r1)
/* 800DA938 000D7878  38 21 00 28 */	addi r1, r1, 0x28
/* 800DA93C 000D787C  7C 08 03 A6 */	mtlr r0
/* 800DA940 000D7880  4E 80 00 20 */	blr 

.global CARDSetStatusAsync
CARDSetStatusAsync:
/* 800DA944 000D7884  7C 08 02 A6 */	mflr r0
/* 800DA948 000D7888  90 01 00 04 */	stw r0, 4(r1)
/* 800DA94C 000D788C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 800DA950 000D7890  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 800DA954 000D7894  7C 9F 23 79 */	or. r31, r4, r4
/* 800DA958 000D7898  93 C1 00 28 */	stw r30, 0x28(r1)
/* 800DA95C 000D789C  3B C6 00 00 */	addi r30, r6, 0
/* 800DA960 000D78A0  93 A1 00 24 */	stw r29, 0x24(r1)
/* 800DA964 000D78A4  3B A5 00 00 */	addi r29, r5, 0
/* 800DA968 000D78A8  93 81 00 20 */	stw r28, 0x20(r1)
/* 800DA96C 000D78AC  3B 83 00 00 */	addi r28, r3, 0
/* 800DA970 000D78B0  41 80 00 40 */	blt .L_800DA9B0
/* 800DA974 000D78B4  2C 1F 00 7F */	cmpwi r31, 0x7f
/* 800DA978 000D78B8  40 80 00 38 */	bge .L_800DA9B0
/* 800DA97C 000D78BC  80 7D 00 30 */	lwz r3, 0x30(r29)
/* 800DA980 000D78C0  3C 03 00 01 */	addis r0, r3, 1
/* 800DA984 000D78C4  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DA988 000D78C8  41 82 00 0C */	beq .L_800DA994
/* 800DA98C 000D78CC  28 03 02 00 */	cmplwi r3, 0x200
/* 800DA990 000D78D0  40 80 00 20 */	bge .L_800DA9B0
.L_800DA994:
/* 800DA994 000D78D4  80 7D 00 38 */	lwz r3, 0x38(r29)
/* 800DA998 000D78D8  3C 03 00 01 */	addis r0, r3, 1
/* 800DA99C 000D78DC  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DA9A0 000D78E0  41 82 00 18 */	beq .L_800DA9B8
/* 800DA9A4 000D78E4  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 800DA9A8 000D78E8  28 00 1F C0 */	cmplwi r0, 0x1fc0
/* 800DA9AC 000D78EC  40 81 00 0C */	ble .L_800DA9B8
.L_800DA9B0:
/* 800DA9B0 000D78F0  38 60 FF 80 */	li r3, -128
/* 800DA9B4 000D78F4  48 00 00 E4 */	b .L_800DAA98
.L_800DA9B8:
/* 800DA9B8 000D78F8  38 7C 00 00 */	addi r3, r28, 0
/* 800DA9BC 000D78FC  38 81 00 18 */	addi r4, r1, 0x18
/* 800DA9C0 000D7900  4B FF AC 0D */	bl __CARDGetControlBlock
/* 800DA9C4 000D7904  2C 03 00 00 */	cmpwi r3, 0
/* 800DA9C8 000D7908  40 80 00 08 */	bge .L_800DA9D0
/* 800DA9CC 000D790C  48 00 00 CC */	b .L_800DAA98
.L_800DA9D0:
/* 800DA9D0 000D7910  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800DA9D4 000D7914  4B FF C7 95 */	bl __CARDGetDirBlock
/* 800DA9D8 000D7918  57 E0 30 32 */	slwi r0, r31, 6
/* 800DA9DC 000D791C  7F E3 02 14 */	add r31, r3, r0
/* 800DA9E0 000D7920  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800DA9E4 000D7924  7F E4 FB 78 */	mr r4, r31
/* 800DA9E8 000D7928  4B FF ED 31 */	bl __CARDIsWritable
/* 800DA9EC 000D792C  7C 64 1B 79 */	or. r4, r3, r3
/* 800DA9F0 000D7930  40 80 00 10 */	bge .L_800DAA00
/* 800DA9F4 000D7934  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800DA9F8 000D7938  4B FF AC 8D */	bl __CARDPutControlBlock
/* 800DA9FC 000D793C  48 00 00 9C */	b .L_800DAA98
.L_800DAA00:
/* 800DAA00 000D7940  88 1D 00 2E */	lbz r0, 0x2e(r29)
/* 800DAA04 000D7944  38 7F 00 00 */	addi r3, r31, 0
/* 800DAA08 000D7948  38 9D 00 00 */	addi r4, r29, 0
/* 800DAA0C 000D794C  98 1F 00 07 */	stb r0, 7(r31)
/* 800DAA10 000D7950  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 800DAA14 000D7954  90 1F 00 2C */	stw r0, 0x2c(r31)
/* 800DAA18 000D7958  A0 1D 00 34 */	lhz r0, 0x34(r29)
/* 800DAA1C 000D795C  B0 1F 00 30 */	sth r0, 0x30(r31)
/* 800DAA20 000D7960  A0 1D 00 36 */	lhz r0, 0x36(r29)
/* 800DAA24 000D7964  B0 1F 00 32 */	sth r0, 0x32(r31)
/* 800DAA28 000D7968  80 1D 00 38 */	lwz r0, 0x38(r29)
/* 800DAA2C 000D796C  90 1F 00 3C */	stw r0, 0x3c(r31)
/* 800DAA30 000D7970  4B FF FC 09 */	bl UpdateIconOffsets
/* 800DAA34 000D7974  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800DAA38 000D7978  3C 03 00 01 */	addis r0, r3, 1
/* 800DAA3C 000D797C  28 00 FF FF */	cmplwi r0, 0xffff
/* 800DAA40 000D7980  40 82 00 14 */	bne .L_800DAA54
/* 800DAA44 000D7984  A0 1F 00 32 */	lhz r0, 0x32(r31)
/* 800DAA48 000D7988  54 00 00 3A */	rlwinm r0, r0, 0, 0, 0x1d
/* 800DAA4C 000D798C  60 00 00 01 */	ori r0, r0, 1
/* 800DAA50 000D7990  B0 1F 00 32 */	sth r0, 0x32(r31)
.L_800DAA54:
/* 800DAA54 000D7994  3C 60 80 00 */	lis r3, 0x800000F8@ha
/* 800DAA58 000D7998  80 03 00 F8 */	lwz r0, 0x800000F8@l(r3)
/* 800DAA5C 000D799C  54 1D F0 BE */	srwi r29, r0, 2
/* 800DAA60 000D79A0  48 01 81 31 */	bl OSGetTime
/* 800DAA64 000D79A4  38 DD 00 00 */	addi r6, r29, 0
/* 800DAA68 000D79A8  38 A0 00 00 */	li r5, 0
/* 800DAA6C 000D79AC  4B FE 73 59 */	bl __div2i
/* 800DAA70 000D79B0  90 9F 00 28 */	stw r4, 0x28(r31)
/* 800DAA74 000D79B4  38 7C 00 00 */	addi r3, r28, 0
/* 800DAA78 000D79B8  38 9E 00 00 */	addi r4, r30, 0
/* 800DAA7C 000D79BC  4B FF C8 8D */	bl __CARDUpdateDir
/* 800DAA80 000D79C0  7C 7C 1B 79 */	or. r28, r3, r3
/* 800DAA84 000D79C4  40 80 00 10 */	bge .L_800DAA94
/* 800DAA88 000D79C8  80 61 00 18 */	lwz r3, 0x18(r1)
/* 800DAA8C 000D79CC  7F 84 E3 78 */	mr r4, r28
/* 800DAA90 000D79D0  4B FF AB F5 */	bl __CARDPutControlBlock
.L_800DAA94:
/* 800DAA94 000D79D4  7F 83 E3 78 */	mr r3, r28
.L_800DAA98:
/* 800DAA98 000D79D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 800DAA9C 000D79DC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 800DAAA0 000D79E0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 800DAAA4 000D79E4  83 A1 00 24 */	lwz r29, 0x24(r1)
/* 800DAAA8 000D79E8  83 81 00 20 */	lwz r28, 0x20(r1)
/* 800DAAAC 000D79EC  38 21 00 30 */	addi r1, r1, 0x30
/* 800DAAB0 000D79F0  7C 08 03 A6 */	mtlr r0
/* 800DAAB4 000D79F4  4E 80 00 20 */	blr 

.global CARDSetStatus
CARDSetStatus:
/* 800DAAB8 000D79F8  7C 08 02 A6 */	mflr r0
/* 800DAABC 000D79FC  3C C0 80 0D */	lis r6, __CARDSyncCallback@ha
/* 800DAAC0 000D7A00  90 01 00 04 */	stw r0, 4(r1)
/* 800DAAC4 000D7A04  38 C6 46 70 */	addi r6, r6, __CARDSyncCallback@l
/* 800DAAC8 000D7A08  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800DAACC 000D7A0C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800DAAD0 000D7A10  3B E3 00 00 */	addi r31, r3, 0
/* 800DAAD4 000D7A14  4B FF FE 71 */	bl CARDSetStatusAsync
/* 800DAAD8 000D7A18  2C 03 00 00 */	cmpwi r3, 0
/* 800DAADC 000D7A1C  40 80 00 08 */	bge .L_800DAAE4
/* 800DAAE0 000D7A20  48 00 00 0C */	b .L_800DAAEC
.L_800DAAE4:
/* 800DAAE4 000D7A24  7F E3 FB 78 */	mr r3, r31
/* 800DAAE8 000D7A28  4B FF AD 51 */	bl __CARDSync
.L_800DAAEC:
/* 800DAAEC 000D7A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 800DAAF0 000D7A30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 800DAAF4 000D7A34  38 21 00 20 */	addi r1, r1, 0x20
/* 800DAAF8 000D7A38  7C 08 03 A6 */	mtlr r0
/* 800DAAFC 000D7A3C  4E 80 00 20 */	blr 

.include "macros.inc"
.section .rodata  # 0x804732E0 - 0x8049E220
.balign 8
.global lbl_804795D8
lbl_804795D8:
	.4byte 0x55504441
	.4byte 0x54452D44
	.4byte 0x41430000
	.4byte 0x00000000

.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__14JASAudioThread
__vt__14JASAudioThread:
	.4byte 0
	.4byte 0
	.4byte __dt__14JASAudioThreadFv
	.4byte run__14JASAudioThreadFv

.section .sbss # 0x80514D80 - 0x80516360
.balign 8
.global sAudioThread__14JASAudioThread
sAudioThread__14JASAudioThread:
	.skip 0x4
.global sThreadQueue__14JASAudioThread
sThreadQueue__14JASAudioThread:
	.skip 0x8
.global sVFrameCounter__14JASAudioThread
sVFrameCounter__14JASAudioThread:
	.skip 0x4
.global snIntCount__14JASAudioThread
snIntCount__14JASAudioThread:
	.skip 0x4
.global sbPauseFlag__14JASAudioThread
sbPauseFlag__14JASAudioThread:
	.skip 0x4

.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_80516E60
lbl_80516E60:
	.4byte 0x5346525F
	.4byte 0x44535000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global create__14JASAudioThreadFl
create__14JASAudioThreadFl:
/* 800A5B88 000A2AC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5B8C 000A2ACC  7C 08 02 A6 */	mflr r0
/* 800A5B90 000A2AD0  38 A0 00 00 */	li r5, 0
/* 800A5B94 000A2AD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5B98 000A2AD8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A5B9C 000A2ADC  93 C1 00 08 */	stw r30, 8(r1)
/* 800A5BA0 000A2AE0  7C 7E 1B 78 */	mr r30, r3
/* 800A5BA4 000A2AE4  38 60 00 7C */	li r3, 0x7c
/* 800A5BA8 000A2AE8  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 800A5BAC 000A2AEC  4B F7 E3 95 */	bl __nw__FUlP7JKRHeapi
/* 800A5BB0 000A2AF0  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A5BB4 000A2AF4  41 82 00 24 */	beq .L_800A5BD8
/* 800A5BB8 000A2AF8  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 800A5BBC 000A2AFC  7F C7 F3 78 */	mr r7, r30
/* 800A5BC0 000A2B00  38 A0 10 00 */	li r5, 0x1000
/* 800A5BC4 000A2B04  38 C0 00 10 */	li r6, 0x10
/* 800A5BC8 000A2B08  4B F7 FB 29 */	bl __ct__9JKRThreadFP7JKRHeapUlii
/* 800A5BCC 000A2B0C  3C 60 80 4A */	lis r3, __vt__14JASAudioThread@ha
/* 800A5BD0 000A2B10  38 03 44 58 */	addi r0, r3, __vt__14JASAudioThread@l
/* 800A5BD4 000A2B14  90 1F 00 00 */	stw r0, 0(r31)
.L_800A5BD8:
/* 800A5BD8 000A2B18  93 ED 8A 98 */	stw r31, sAudioThread__14JASAudioThread@sda21(r13)
/* 800A5BDC 000A2B1C  80 7F 00 2C */	lwz r3, 0x2c(r31)
/* 800A5BE0 000A2B20  48 04 C9 15 */	bl OSResumeThread
/* 800A5BE4 000A2B24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5BE8 000A2B28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A5BEC 000A2B2C  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A5BF0 000A2B30  7C 08 03 A6 */	mtlr r0
/* 800A5BF4 000A2B34  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5BF8 000A2B38  4E 80 00 20 */	blr 

.global stop__14JASAudioThreadFv
stop__14JASAudioThreadFv:
/* 800A5BFC 000A2B3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5C00 000A2B40  7C 08 02 A6 */	mflr r0
/* 800A5C04 000A2B44  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5C08 000A2B48  80 6D 8A 98 */	lwz r3, sAudioThread__14JASAudioThread@sda21(r13)
/* 800A5C0C 000A2B4C  28 03 00 00 */	cmplwi r3, 0
/* 800A5C10 000A2B50  41 82 00 14 */	beq .L_800A5C24
/* 800A5C14 000A2B54  38 63 00 30 */	addi r3, r3, 0x30
/* 800A5C18 000A2B58  38 80 00 02 */	li r4, 2
/* 800A5C1C 000A2B5C  38 A0 00 01 */	li r5, 1
/* 800A5C20 000A2B60  48 04 9A A1 */	bl OSJamMessage
.L_800A5C24:
/* 800A5C24 000A2B64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5C28 000A2B68  7C 08 03 A6 */	mtlr r0
/* 800A5C2C 000A2B6C  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5C30 000A2B70  4E 80 00 20 */	blr 

.global run__14JASAudioThreadFv
run__14JASAudioThreadFv:
/* 800A5C34 000A2B74  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A5C38 000A2B78  7C 08 02 A6 */	mflr r0
/* 800A5C3C 000A2B7C  90 01 00 24 */	stw r0, 0x24(r1)
/* 800A5C40 000A2B80  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 800A5C44 000A2B84  93 C1 00 18 */	stw r30, 0x18(r1)
/* 800A5C48 000A2B88  7C 7E 1B 78 */	mr r30, r3
/* 800A5C4C 000A2B8C  38 60 00 04 */	li r3, 4
/* 800A5C50 000A2B90  64 63 00 04 */	oris r3, r3, 4
/* 800A5C54 000A2B94  7C 72 E3 A6 */	mtspr 0x392, r3
/* 800A5C58 000A2B98  38 60 00 05 */	li r3, 5
/* 800A5C5C 000A2B9C  64 63 00 05 */	oris r3, r3, 5
/* 800A5C60 000A2BA0  7C 73 E3 A6 */	mtspr 0x393, r3
/* 800A5C64 000A2BA4  38 60 00 06 */	li r3, 6
/* 800A5C68 000A2BA8  64 63 00 06 */	oris r3, r3, 6
/* 800A5C6C 000A2BAC  7C 74 E3 A6 */	mtspr 0x394, r3
/* 800A5C70 000A2BB0  38 60 00 07 */	li r3, 7
/* 800A5C74 000A2BB4  64 63 00 07 */	oris r3, r3, 7
/* 800A5C78 000A2BB8  7C 75 E3 A6 */	mtspr 0x395, r3
/* 800A5C7C 000A2BBC  3C 80 80 0A */	lis r4, DMACallback__14JASAudioThreadFv@ha
/* 800A5C80 000A2BC0  38 64 5D B0 */	addi r3, r4, DMACallback__14JASAudioThreadFv@l
/* 800A5C84 000A2BC4  48 00 1C E5 */	bl initAI__9JASDriverFPFv_v
/* 800A5C88 000A2BC8  3C 80 80 0A */	lis r4, DSPCallback__14JASAudioThreadFPv@ha
/* 800A5C8C 000A2BCC  38 64 5D F8 */	addi r3, r4, DSPCallback__14JASAudioThreadFPv@l
/* 800A5C90 000A2BD0  4B FF F6 81 */	bl boot__6JASDspFPFPv_v
/* 800A5C94 000A2BD4  4B FF F7 8D */	bl initBuffer__6JASDspFv
/* 800A5C98 000A2BD8  4B FF EF 85 */	bl initAll__13JASDSPChannelFv
/* 800A5C9C 000A2BDC  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 800A5CA0 000A2BE0  28 00 00 00 */	cmplwi r0, 0
/* 800A5CA4 000A2BE4  40 82 00 40 */	bne .L_800A5CE4
/* 800A5CA8 000A2BE8  48 04 8F 91 */	bl OSDisableInterrupts
/* 800A5CAC 000A2BEC  80 0D 8A 24 */	lwz r0, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 800A5CB0 000A2BF0  90 61 00 08 */	stw r3, 8(r1)
/* 800A5CB4 000A2BF4  28 00 00 00 */	cmplwi r0, 0
/* 800A5CB8 000A2BF8  40 82 00 24 */	bne .L_800A5CDC
/* 800A5CBC 000A2BFC  80 8D 8A B8 */	lwz r4, JASDram@sda21(r13)
/* 800A5CC0 000A2C00  38 60 00 0C */	li r3, 0xc
/* 800A5CC4 000A2C04  38 A0 00 00 */	li r5, 0
/* 800A5CC8 000A2C08  4B F7 E2 79 */	bl __nw__FUlP7JKRHeapi
/* 800A5CCC 000A2C0C  7C 7F 1B 79 */	or. r31, r3, r3
/* 800A5CD0 000A2C10  41 82 00 08 */	beq .L_800A5CD8
/* 800A5CD4 000A2C14  48 00 14 B1 */	bl __ct__17JASGenericMemPoolFv
.L_800A5CD8:
/* 800A5CD8 000A2C18  93 ED 8A 24 */	stw r31, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
.L_800A5CDC:
/* 800A5CDC 000A2C1C  80 61 00 08 */	lwz r3, 8(r1)
/* 800A5CE0 000A2C20  48 04 8F 81 */	bl OSRestoreInterrupts
.L_800A5CE4:
/* 800A5CE4 000A2C24  80 6D 8A 24 */	lwz r3, "sInstance__123JASSingletonHolder<62JASMemPool<10JASChannel,Q217JASThreadingModel14SingleThreaded>,Q217JASCreationPolicy15NewFromRootHeap>"@sda21(r13)
/* 800A5CE8 000A2C28  38 80 01 18 */	li r4, 0x118
/* 800A5CEC 000A2C2C  38 A0 00 48 */	li r5, 0x48
/* 800A5CF0 000A2C30  48 00 14 A9 */	bl newMemPool__17JASGenericMemPoolFUli
/* 800A5CF4 000A2C34  48 00 1D B1 */	bl startDMA__9JASDriverFv
.L_800A5CF8:
/* 800A5CF8 000A2C38  38 7E 00 30 */	addi r3, r30, 0x30
/* 800A5CFC 000A2C3C  38 81 00 0C */	addi r4, r1, 0xc
/* 800A5D00 000A2C40  38 A0 00 01 */	li r5, 1
/* 800A5D04 000A2C44  48 04 98 E1 */	bl OSReceiveMessage
/* 800A5D08 000A2C48  80 01 00 0C */	lwz r0, 0xc(r1)
/* 800A5D0C 000A2C4C  2C 00 00 01 */	cmpwi r0, 1
/* 800A5D10 000A2C50  41 82 00 50 */	beq .L_800A5D60
/* 800A5D14 000A2C54  40 80 00 10 */	bge .L_800A5D24
/* 800A5D18 000A2C58  2C 00 00 00 */	cmpwi r0, 0
/* 800A5D1C 000A2C5C  40 80 00 14 */	bge .L_800A5D30
/* 800A5D20 000A2C60  4B FF FF D8 */	b .L_800A5CF8
.L_800A5D24:
/* 800A5D24 000A2C64  2C 00 00 03 */	cmpwi r0, 3
/* 800A5D28 000A2C68  40 80 FF D0 */	bge .L_800A5CF8
/* 800A5D2C 000A2C6C  48 00 00 78 */	b .L_800A5DA4
.L_800A5D30:
/* 800A5D30 000A2C70  88 0D 8A AC */	lbz r0, sbPauseFlag__14JASAudioThread@sda21(r13)
/* 800A5D34 000A2C74  28 00 00 00 */	cmplwi r0, 0
/* 800A5D38 000A2C78  41 82 00 10 */	beq .L_800A5D48
/* 800A5D3C 000A2C7C  48 00 1D 89 */	bl stopDMA__9JASDriverFv
/* 800A5D40 000A2C80  38 6D 8A 9C */	addi r3, r13, sThreadQueue__14JASAudioThread@sda21
/* 800A5D44 000A2C84  48 04 CB A9 */	bl OSSleepThread
.L_800A5D48:
/* 800A5D48 000A2C88  80 8D 8A A4 */	lwz r4, sVFrameCounter__14JASAudioThread@sda21(r13)
/* 800A5D4C 000A2C8C  38 04 00 01 */	addi r0, r4, 1
/* 800A5D50 000A2C90  90 0D 8A A4 */	stw r0, sVFrameCounter__14JASAudioThread@sda21(r13)
/* 800A5D54 000A2C94  48 00 1D 91 */	bl updateDac__9JASDriverFv
/* 800A5D58 000A2C98  4B FF ED 39 */	bl updateDacCallback__9JASDriverFv
/* 800A5D5C 000A2C9C  4B FF FF 9C */	b .L_800A5CF8
.L_800A5D60:
/* 800A5D60 000A2CA0  80 8D 8A A8 */	lwz r4, snIntCount__14JASAudioThread@sda21(r13)
/* 800A5D64 000A2CA4  38 04 FF FF */	addi r0, r4, -1
/* 800A5D68 000A2CA8  90 0D 8A A8 */	stw r0, snIntCount__14JASAudioThread@sda21(r13)
/* 800A5D6C 000A2CAC  80 0D 8A A8 */	lwz r0, snIntCount__14JASAudioThread@sda21(r13)
/* 800A5D70 000A2CB0  2C 00 00 00 */	cmpwi r0, 0
/* 800A5D74 000A2CB4  40 82 00 14 */	bne .L_800A5D88
/* 800A5D78 000A2CB8  38 60 00 07 */	li r3, 7
/* 800A5D7C 000A2CBC  48 00 17 B9 */	bl probeFinish__9JASKernelFl
/* 800A5D80 000A2CC0  48 00 22 C1 */	bl finishDSPFrame__9JASDriverFv
/* 800A5D84 000A2CC4  4B FF FF 74 */	b .L_800A5CF8
.L_800A5D88:
/* 800A5D88 000A2CC8  38 60 00 02 */	li r3, 2
/* 800A5D8C 000A2CCC  38 82 8B 00 */	addi r4, r2, lbl_80516E60@sda21
/* 800A5D90 000A2CD0  48 00 17 45 */	bl probeStart__9JASKernelFlPc
/* 800A5D94 000A2CD4  48 00 1E AD */	bl updateDSP__9JASDriverFv
/* 800A5D98 000A2CD8  38 60 00 02 */	li r3, 2
/* 800A5D9C 000A2CDC  48 00 17 99 */	bl probeFinish__9JASKernelFl
/* 800A5DA0 000A2CE0  4B FF FF 58 */	b .L_800A5CF8
.L_800A5DA4:
/* 800A5DA4 000A2CE4  38 60 00 00 */	li r3, 0
/* 800A5DA8 000A2CE8  48 04 C4 0D */	bl OSExitThread
/* 800A5DAC 000A2CEC  4B FF FF 4C */	b .L_800A5CF8

.global DMACallback__14JASAudioThreadFv
DMACallback__14JASAudioThreadFv:
/* 800A5DB0 000A2CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5DB4 000A2CF4  7C 08 02 A6 */	mflr r0
/* 800A5DB8 000A2CF8  38 60 00 04 */	li r3, 4
/* 800A5DBC 000A2CFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5DC0 000A2D00  48 00 17 75 */	bl probeFinish__9JASKernelFl
/* 800A5DC4 000A2D04  3C 80 80 48 */	lis r4, lbl_804795D8@ha
/* 800A5DC8 000A2D08  38 60 00 04 */	li r3, 4
/* 800A5DCC 000A2D0C  38 84 95 D8 */	addi r4, r4, lbl_804795D8@l
/* 800A5DD0 000A2D10  48 00 17 05 */	bl probeStart__9JASKernelFlPc
/* 800A5DD4 000A2D14  80 6D 8A 98 */	lwz r3, sAudioThread__14JASAudioThread@sda21(r13)
/* 800A5DD8 000A2D18  38 80 00 00 */	li r4, 0
/* 800A5DDC 000A2D1C  38 A0 00 00 */	li r5, 0
/* 800A5DE0 000A2D20  38 63 00 30 */	addi r3, r3, 0x30
/* 800A5DE4 000A2D24  48 04 97 39 */	bl OSSendMessage
/* 800A5DE8 000A2D28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5DEC 000A2D2C  7C 08 03 A6 */	mtlr r0
/* 800A5DF0 000A2D30  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5DF4 000A2D34  4E 80 00 20 */	blr 

.global DSPCallback__14JASAudioThreadFPv
DSPCallback__14JASAudioThreadFPv:
/* 800A5DF8 000A2D38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5DFC 000A2D3C  7C 08 02 A6 */	mflr r0
/* 800A5E00 000A2D40  90 01 00 14 */	stw r0, 0x14(r1)
.L_800A5E04:
/* 800A5E04 000A2D44  48 03 4E BD */	bl DSPCheckMailFromDSP
/* 800A5E08 000A2D48  28 03 00 00 */	cmplwi r3, 0
/* 800A5E0C 000A2D4C  41 82 FF F8 */	beq .L_800A5E04
/* 800A5E10 000A2D50  48 03 4E C1 */	bl DSPReadMailFromDSP
/* 800A5E14 000A2D54  54 60 84 3E */	srwi r0, r3, 0x10
/* 800A5E18 000A2D58  28 00 F3 55 */	cmplwi r0, 0xf355
/* 800A5E1C 000A2D5C  40 82 00 30 */	bne .L_800A5E4C
/* 800A5E20 000A2D60  54 60 04 2E */	rlwinm r0, r3, 0, 0x10, 0x17
/* 800A5E24 000A2D64  28 00 FF 00 */	cmplwi r0, 0xff00
/* 800A5E28 000A2D68  40 82 00 1C */	bne .L_800A5E44
/* 800A5E2C 000A2D6C  80 6D 8A 98 */	lwz r3, sAudioThread__14JASAudioThread@sda21(r13)
/* 800A5E30 000A2D70  38 80 00 01 */	li r4, 1
/* 800A5E34 000A2D74  38 A0 00 00 */	li r5, 0
/* 800A5E38 000A2D78  38 63 00 30 */	addi r3, r3, 0x30
/* 800A5E3C 000A2D7C  48 04 96 E1 */	bl OSSendMessage
/* 800A5E40 000A2D80  48 00 00 0C */	b .L_800A5E4C
.L_800A5E44:
/* 800A5E44 000A2D84  54 63 04 3E */	clrlwi r3, r3, 0x10
/* 800A5E48 000A2D88  4B FF F5 35 */	bl finishWork__6JASDspFUs
.L_800A5E4C:
/* 800A5E4C 000A2D8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5E50 000A2D90  7C 08 03 A6 */	mtlr r0
/* 800A5E54 000A2D94  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5E58 000A2D98  4E 80 00 20 */	blr 

.global __dt__14JASAudioThreadFv
__dt__14JASAudioThreadFv:
/* 800A5E5C 000A2D9C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800A5E60 000A2DA0  7C 08 02 A6 */	mflr r0
/* 800A5E64 000A2DA4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800A5E68 000A2DA8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 800A5E6C 000A2DAC  7C 9F 23 78 */	mr r31, r4
/* 800A5E70 000A2DB0  93 C1 00 08 */	stw r30, 8(r1)
/* 800A5E74 000A2DB4  7C 7E 1B 79 */	or. r30, r3, r3
/* 800A5E78 000A2DB8  41 82 00 28 */	beq .L_800A5EA0
/* 800A5E7C 000A2DBC  3C A0 80 4A */	lis r5, __vt__14JASAudioThread@ha
/* 800A5E80 000A2DC0  38 80 00 00 */	li r4, 0
/* 800A5E84 000A2DC4  38 05 44 58 */	addi r0, r5, __vt__14JASAudioThread@l
/* 800A5E88 000A2DC8  90 1E 00 00 */	stw r0, 0(r30)
/* 800A5E8C 000A2DCC  4B F7 F9 AD */	bl __dt__9JKRThreadFv
/* 800A5E90 000A2DD0  7F E0 07 35 */	extsh. r0, r31
/* 800A5E94 000A2DD4  40 81 00 0C */	ble .L_800A5EA0
/* 800A5E98 000A2DD8  7F C3 F3 78 */	mr r3, r30
/* 800A5E9C 000A2DDC  4B F7 E2 19 */	bl __dl__FPv
.L_800A5EA0:
/* 800A5EA0 000A2DE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800A5EA4 000A2DE4  7F C3 F3 78 */	mr r3, r30
/* 800A5EA8 000A2DE8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 800A5EAC 000A2DEC  83 C1 00 08 */	lwz r30, 8(r1)
/* 800A5EB0 000A2DF0  7C 08 03 A6 */	mtlr r0
/* 800A5EB4 000A2DF4  38 21 00 10 */	addi r1, r1, 0x10
/* 800A5EB8 000A2DF8  4E 80 00 20 */	blr 

.include "macros.inc"
.section .sbss # 0x80514D80 - 0x80516360
.balign 8
ResetFunctionQueue: # local object
	.skip 0x8
.balign 4
bootThisDol: # local object
	.skip 0x4

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global OSRegisterResetFunction
OSRegisterResetFunction:
/* 800F02A4 000ED1E4  80 AD 8F A8 */	lwz r5, ResetFunctionQueue@sda21(r13)
/* 800F02A8 000ED1E8  48 00 00 08 */	b .L_800F02B0
.L_800F02AC:
/* 800F02AC 000ED1EC  80 A5 00 08 */	lwz r5, 8(r5)
.L_800F02B0:
/* 800F02B0 000ED1F0  28 05 00 00 */	cmplwi r5, 0
/* 800F02B4 000ED1F4  41 82 00 14 */	beq .L_800F02C8
/* 800F02B8 000ED1F8  80 85 00 04 */	lwz r4, 4(r5)
/* 800F02BC 000ED1FC  80 03 00 04 */	lwz r0, 4(r3)
/* 800F02C0 000ED200  7C 04 00 40 */	cmplw r4, r0
/* 800F02C4 000ED204  40 81 FF E8 */	ble .L_800F02AC
.L_800F02C8:
/* 800F02C8 000ED208  28 05 00 00 */	cmplwi r5, 0
/* 800F02CC 000ED20C  40 82 00 34 */	bne .L_800F0300
/* 800F02D0 000ED210  38 AD 8F A8 */	addi r5, r13, ResetFunctionQueue@sda21
/* 800F02D4 000ED214  84 85 00 04 */	lwzu r4, 4(r5)
/* 800F02D8 000ED218  28 04 00 00 */	cmplwi r4, 0
/* 800F02DC 000ED21C  40 82 00 0C */	bne .L_800F02E8
/* 800F02E0 000ED220  90 6D 8F A8 */	stw r3, ResetFunctionQueue@sda21(r13)
/* 800F02E4 000ED224  48 00 00 08 */	b .L_800F02EC
.L_800F02E8:
/* 800F02E8 000ED228  90 64 00 08 */	stw r3, 8(r4)
.L_800F02EC:
/* 800F02EC 000ED22C  90 83 00 0C */	stw r4, 0xc(r3)
/* 800F02F0 000ED230  38 00 00 00 */	li r0, 0
/* 800F02F4 000ED234  90 03 00 08 */	stw r0, 8(r3)
/* 800F02F8 000ED238  90 65 00 00 */	stw r3, 0(r5)
/* 800F02FC 000ED23C  4E 80 00 20 */	blr 
.L_800F0300:
/* 800F0300 000ED240  90 A3 00 08 */	stw r5, 8(r3)
/* 800F0304 000ED244  80 85 00 0C */	lwz r4, 0xc(r5)
/* 800F0308 000ED248  90 65 00 0C */	stw r3, 0xc(r5)
/* 800F030C 000ED24C  28 04 00 00 */	cmplwi r4, 0
/* 800F0310 000ED250  90 83 00 0C */	stw r4, 0xc(r3)
/* 800F0314 000ED254  40 82 00 0C */	bne .L_800F0320
/* 800F0318 000ED258  90 6D 8F A8 */	stw r3, ResetFunctionQueue@sda21(r13)
/* 800F031C 000ED25C  4E 80 00 20 */	blr 
.L_800F0320:
/* 800F0320 000ED260  90 64 00 08 */	stw r3, 8(r4)
/* 800F0324 000ED264  4E 80 00 20 */	blr 

Reset: # local function
/* 800F0328 000ED268  48 00 00 20 */	b .L_800F0348
.L_800F032C:
/* 800F032C 000ED26C  7D 10 FA A6 */	mfspr r8, 0x3f0
/* 800F0330 000ED270  61 08 00 08 */	ori r8, r8, 8
/* 800F0334 000ED274  7D 10 FB A6 */	mtspr 0x3f0, r8
/* 800F0338 000ED278  4C 00 01 2C */	isync 
/* 800F033C 000ED27C  7C 00 04 AC */	sync 0
/* 800F0340 000ED280  60 00 00 00 */	nop 
/* 800F0344 000ED284  48 00 00 08 */	b .L_800F034C
.L_800F0348:
/* 800F0348 000ED288  48 00 00 20 */	b .L_800F0368
.L_800F034C:
/* 800F034C 000ED28C  7C AC 42 E6 */	mftb r5, 0x10c
.L_800F0350:
/* 800F0350 000ED290  7C CC 42 E6 */	mftb r6, 0x10c
/* 800F0354 000ED294  7C E5 30 50 */	subf r7, r5, r6
/* 800F0358 000ED298  28 07 11 24 */	cmplwi r7, 0x1124
/* 800F035C 000ED29C  41 80 FF F4 */	blt .L_800F0350
/* 800F0360 000ED2A0  60 00 00 00 */	nop 
/* 800F0364 000ED2A4  48 00 00 08 */	b .L_800F036C
.L_800F0368:
/* 800F0368 000ED2A8  48 00 00 20 */	b .L_800F0388
.L_800F036C:
/* 800F036C 000ED2AC  3D 00 CC 00 */	lis r8, 0xCC003000@h
/* 800F0370 000ED2B0  61 08 30 00 */	ori r8, r8, 0xCC003000@l
/* 800F0374 000ED2B4  38 80 00 03 */	li r4, 3
/* 800F0378 000ED2B8  90 88 00 24 */	stw r4, 0x24(r8)
/* 800F037C 000ED2BC  90 68 00 24 */	stw r3, 0x24(r8)
/* 800F0380 000ED2C0  60 00 00 00 */	nop 
/* 800F0384 000ED2C4  48 00 00 08 */	b .L_800F038C
.L_800F0388:
/* 800F0388 000ED2C8  48 00 00 0C */	b .L_800F0394
.L_800F038C:
/* 800F038C 000ED2CC  60 00 00 00 */	nop 
/* 800F0390 000ED2D0  4B FF FF FC */	b .L_800F038C
.L_800F0394:
/* 800F0394 000ED2D4  4B FF FF 98 */	b .L_800F032C

.global __OSDoHotReset
__OSDoHotReset:
/* 800F0398 000ED2D8  7C 08 02 A6 */	mflr r0
/* 800F039C 000ED2DC  90 01 00 04 */	stw r0, 4(r1)
/* 800F03A0 000ED2E0  94 21 FF E8 */	stwu r1, -0x18(r1)
/* 800F03A4 000ED2E4  93 E1 00 14 */	stw r31, 0x14(r1)
/* 800F03A8 000ED2E8  7C 7F 1B 78 */	mr r31, r3
/* 800F03AC 000ED2EC  4B FF E8 8D */	bl OSDisableInterrupts
/* 800F03B0 000ED2F0  3C 60 CC 00 */	lis r3, 0xCC002000@ha
/* 800F03B4 000ED2F4  38 63 20 00 */	addi r3, r3, 0xCC002000@l
/* 800F03B8 000ED2F8  38 00 00 00 */	li r0, 0
/* 800F03BC 000ED2FC  B0 03 00 02 */	sth r0, 2(r3)
/* 800F03C0 000ED300  4B FF C4 71 */	bl ICFlashInvalidate
/* 800F03C4 000ED304  57 E3 18 38 */	slwi r3, r31, 3
/* 800F03C8 000ED308  4B FF FF 61 */	bl Reset
/* 800F03CC 000ED30C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 800F03D0 000ED310  83 E1 00 14 */	lwz r31, 0x14(r1)
/* 800F03D4 000ED314  38 21 00 18 */	addi r1, r1, 0x18
/* 800F03D8 000ED318  7C 08 03 A6 */	mtlr r0
/* 800F03DC 000ED31C  4E 80 00 20 */	blr 

.global OSResetSystem
OSResetSystem:
/* 800F03E0 000ED320  7C 08 02 A6 */	mflr r0
/* 800F03E4 000ED324  90 01 00 04 */	stw r0, 4(r1)
/* 800F03E8 000ED328  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 800F03EC 000ED32C  BF 41 00 28 */	stmw r26, 0x28(r1)
/* 800F03F0 000ED330  7C 7C 1B 78 */	mr r28, r3
/* 800F03F4 000ED334  7C 9D 23 78 */	mr r29, r4
/* 800F03F8 000ED338  7C BE 2B 78 */	mr r30, r5
/* 800F03FC 000ED33C  48 00 16 09 */	bl OSDisableScheduler
/* 800F0400 000ED340  4B FF C2 01 */	bl __OSStopAudioSystem
/* 800F0404 000ED344  2C 1C 00 02 */	cmpwi r28, 2
/* 800F0408 000ED348  41 82 00 18 */	beq .L_800F0420
/* 800F040C 000ED34C  2C 1C 00 00 */	cmpwi r28, 0
/* 800F0410 000ED350  40 82 00 1C */	bne .L_800F042C
/* 800F0414 000ED354  80 0D 8F B0 */	lwz r0, bootThisDol@sda21(r13)
/* 800F0418 000ED358  28 00 00 00 */	cmplwi r0, 0
/* 800F041C 000ED35C  41 82 00 10 */	beq .L_800F042C
.L_800F0420:
/* 800F0420 000ED360  38 60 00 01 */	li r3, 1
/* 800F0424 000ED364  48 00 4A 5D */	bl __PADDisableRecalibration
/* 800F0428 000ED368  7C 7F 1B 78 */	mr r31, r3
.L_800F042C:
/* 800F042C 000ED36C  48 00 00 04 */	b .L_800F0430
.L_800F0430:
/* 800F0430 000ED370  48 00 00 04 */	b .L_800F0434
.L_800F0434:
/* 800F0434 000ED374  83 4D 8F A8 */	lwz r26, ResetFunctionQueue@sda21(r13)
/* 800F0438 000ED378  3B 60 00 00 */	li r27, 0
/* 800F043C 000ED37C  48 00 00 04 */	b .L_800F0440
.L_800F0440:
/* 800F0440 000ED380  48 00 00 04 */	b .L_800F0444
.L_800F0444:
/* 800F0444 000ED384  48 00 00 24 */	b .L_800F0468
.L_800F0448:
/* 800F0448 000ED388  38 60 00 00 */	li r3, 0
/* 800F044C 000ED38C  81 9A 00 00 */	lwz r12, 0(r26)
/* 800F0450 000ED390  7D 88 03 A6 */	mtlr r12
/* 800F0454 000ED394  4E 80 00 21 */	blrl 
/* 800F0458 000ED398  7C 60 00 34 */	cntlzw r0, r3
/* 800F045C 000ED39C  83 5A 00 08 */	lwz r26, 8(r26)
/* 800F0460 000ED3A0  54 00 D9 7E */	srwi r0, r0, 5
/* 800F0464 000ED3A4  7F 7B 03 78 */	or r27, r27, r0
.L_800F0468:
/* 800F0468 000ED3A8  28 1A 00 00 */	cmplwi r26, 0
/* 800F046C 000ED3AC  41 82 00 0C */	beq .L_800F0478
/* 800F0470 000ED3B0  2C 1B 00 00 */	cmpwi r27, 0
/* 800F0474 000ED3B4  41 82 FF D4 */	beq .L_800F0448
.L_800F0478:
/* 800F0478 000ED3B8  48 00 0C F5 */	bl __OSSyncSram
/* 800F047C 000ED3BC  7C 60 00 34 */	cntlzw r0, r3
/* 800F0480 000ED3C0  54 00 D9 7E */	srwi r0, r0, 5
/* 800F0484 000ED3C4  7F 7B 03 78 */	or r27, r27, r0
/* 800F0488 000ED3C8  2C 1B 00 00 */	cmpwi r27, 0
/* 800F048C 000ED3CC  41 82 00 0C */	beq .L_800F0498
/* 800F0490 000ED3D0  38 00 00 00 */	li r0, 0
/* 800F0494 000ED3D4  48 00 00 08 */	b .L_800F049C
.L_800F0498:
/* 800F0498 000ED3D8  38 00 00 01 */	li r0, 1
.L_800F049C:
/* 800F049C 000ED3DC  2C 00 00 00 */	cmpwi r0, 0
/* 800F04A0 000ED3E0  41 82 FF 94 */	beq .L_800F0434
/* 800F04A4 000ED3E4  2C 1C 00 01 */	cmpwi r28, 1
/* 800F04A8 000ED3E8  40 82 00 3C */	bne .L_800F04E4
/* 800F04AC 000ED3EC  2C 1E 00 00 */	cmpwi r30, 0
/* 800F04B0 000ED3F0  41 82 00 34 */	beq .L_800F04E4
/* 800F04B4 000ED3F4  48 00 08 7D */	bl __OSLockSram
/* 800F04B8 000ED3F8  88 03 00 13 */	lbz r0, 0x13(r3)
/* 800F04BC 000ED3FC  60 00 00 40 */	ori r0, r0, 0x40
/* 800F04C0 000ED400  98 03 00 13 */	stb r0, 0x13(r3)
/* 800F04C4 000ED404  38 60 00 01 */	li r3, 1
/* 800F04C8 000ED408  48 00 0C 5D */	bl __OSUnlockSram
/* 800F04CC 000ED40C  48 00 00 04 */	b .L_800F04D0
.L_800F04D0:
/* 800F04D0 000ED410  48 00 00 04 */	b .L_800F04D4
.L_800F04D4:
/* 800F04D4 000ED414  48 00 0C 99 */	bl __OSSyncSram
/* 800F04D8 000ED418  2C 03 00 00 */	cmpwi r3, 0
/* 800F04DC 000ED41C  41 82 FF F8 */	beq .L_800F04D4
/* 800F04E0 000ED420  3B A0 00 00 */	li r29, 0
.L_800F04E4:
/* 800F04E4 000ED424  4B FF E7 55 */	bl OSDisableInterrupts
/* 800F04E8 000ED428  83 6D 8F A8 */	lwz r27, ResetFunctionQueue@sda21(r13)
/* 800F04EC 000ED42C  3B 40 00 00 */	li r26, 0
/* 800F04F0 000ED430  48 00 00 04 */	b .L_800F04F4
.L_800F04F4:
/* 800F04F4 000ED434  48 00 00 04 */	b .L_800F04F8
.L_800F04F8:
/* 800F04F8 000ED438  48 00 00 24 */	b .L_800F051C
.L_800F04FC:
/* 800F04FC 000ED43C  38 60 00 01 */	li r3, 1
/* 800F0500 000ED440  81 9B 00 00 */	lwz r12, 0(r27)
/* 800F0504 000ED444  7D 88 03 A6 */	mtlr r12
/* 800F0508 000ED448  4E 80 00 21 */	blrl 
/* 800F050C 000ED44C  7C 60 00 34 */	cntlzw r0, r3
/* 800F0510 000ED450  83 7B 00 08 */	lwz r27, 8(r27)
/* 800F0514 000ED454  54 00 D9 7E */	srwi r0, r0, 5
/* 800F0518 000ED458  7F 5A 03 78 */	or r26, r26, r0
.L_800F051C:
/* 800F051C 000ED45C  28 1B 00 00 */	cmplwi r27, 0
/* 800F0520 000ED460  41 82 00 0C */	beq .L_800F052C
/* 800F0524 000ED464  2C 1A 00 00 */	cmpwi r26, 0
/* 800F0528 000ED468  41 82 FF D4 */	beq .L_800F04FC
.L_800F052C:
/* 800F052C 000ED46C  48 00 0C 41 */	bl __OSSyncSram
/* 800F0530 000ED470  4B FF C4 29 */	bl LCDisable
/* 800F0534 000ED474  2C 1C 00 01 */	cmpwi r28, 1
/* 800F0538 000ED478  40 82 00 28 */	bne .L_800F0560
/* 800F053C 000ED47C  4B FF E6 FD */	bl OSDisableInterrupts
/* 800F0540 000ED480  3C 60 CC 00 */	lis r3, 0xCC002000@ha
/* 800F0544 000ED484  38 63 20 00 */	addi r3, r3, 0xCC002000@l
/* 800F0548 000ED488  38 00 00 00 */	li r0, 0
/* 800F054C 000ED48C  B0 03 00 02 */	sth r0, 2(r3)
/* 800F0550 000ED490  4B FF C2 E1 */	bl ICFlashInvalidate
/* 800F0554 000ED494  57 A3 18 38 */	slwi r3, r29, 3
/* 800F0558 000ED498  4B FF FD D1 */	bl Reset
/* 800F055C 000ED49C  48 00 00 7C */	b .L_800F05D8
.L_800F0560:
/* 800F0560 000ED4A0  2C 1C 00 00 */	cmpwi r28, 0
/* 800F0564 000ED4A4  40 82 00 74 */	bne .L_800F05D8
/* 800F0568 000ED4A8  80 0D 8F B0 */	lwz r0, bootThisDol@sda21(r13)
/* 800F056C 000ED4AC  3C 60 80 00 */	lis r3, 0x800030EC@ha
/* 800F0570 000ED4B0  28 00 00 00 */	cmplwi r0, 0
/* 800F0574 000ED4B4  90 03 30 EC */	stw r0, 0x800030EC@l(r3)
/* 800F0578 000ED4B8  41 82 00 0C */	beq .L_800F0584
/* 800F057C 000ED4BC  7F E3 FB 78 */	mr r3, r31
/* 800F0580 000ED4C0  48 00 49 01 */	bl __PADDisableRecalibration
.L_800F0584:
/* 800F0584 000ED4C4  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 800F0588 000ED4C8  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 800F058C 000ED4CC  48 00 00 04 */	b .L_800F0590
.L_800F0590:
/* 800F0590 000ED4D0  48 00 00 04 */	b .L_800F0594
.L_800F0594:
/* 800F0594 000ED4D4  48 00 00 2C */	b .L_800F05C0
.L_800F0598:
/* 800F0598 000ED4D8  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 800F059C 000ED4DC  83 43 02 FC */	lwz r26, 0x2fc(r3)
/* 800F05A0 000ED4E0  2C 00 00 04 */	cmpwi r0, 4
/* 800F05A4 000ED4E4  41 82 00 14 */	beq .L_800F05B8
/* 800F05A8 000ED4E8  40 80 00 14 */	bge .L_800F05BC
/* 800F05AC 000ED4EC  2C 00 00 01 */	cmpwi r0, 1
/* 800F05B0 000ED4F0  41 82 00 08 */	beq .L_800F05B8
/* 800F05B4 000ED4F4  48 00 00 08 */	b .L_800F05BC
.L_800F05B8:
/* 800F05B8 000ED4F8  48 00 1C E1 */	bl OSCancelThread
.L_800F05BC:
/* 800F05BC 000ED4FC  7F 43 D3 78 */	mr r3, r26
.L_800F05C0:
/* 800F05C0 000ED500  28 03 00 00 */	cmplwi r3, 0
/* 800F05C4 000ED504  40 82 FF D4 */	bne .L_800F0598
/* 800F05C8 000ED508  48 00 14 7D */	bl OSEnableScheduler
/* 800F05CC 000ED50C  7F A3 EB 78 */	mr r3, r29
/* 800F05D0 000ED510  7F C4 F3 78 */	mr r4, r30
/* 800F05D4 000ED514  4B FF F9 95 */	bl __OSReboot
.L_800F05D8:
/* 800F05D8 000ED518  3C 60 80 00 */	lis r3, 0x800000DC@ha
/* 800F05DC 000ED51C  80 63 00 DC */	lwz r3, 0x800000DC@l(r3)
/* 800F05E0 000ED520  48 00 00 04 */	b .L_800F05E4
.L_800F05E4:
/* 800F05E4 000ED524  48 00 00 04 */	b .L_800F05E8
.L_800F05E8:
/* 800F05E8 000ED528  48 00 00 2C */	b .L_800F0614
.L_800F05EC:
/* 800F05EC 000ED52C  A0 03 02 C8 */	lhz r0, 0x2c8(r3)
/* 800F05F0 000ED530  83 43 02 FC */	lwz r26, 0x2fc(r3)
/* 800F05F4 000ED534  2C 00 00 04 */	cmpwi r0, 4
/* 800F05F8 000ED538  41 82 00 14 */	beq .L_800F060C
/* 800F05FC 000ED53C  40 80 00 14 */	bge .L_800F0610
/* 800F0600 000ED540  2C 00 00 01 */	cmpwi r0, 1
/* 800F0604 000ED544  41 82 00 08 */	beq .L_800F060C
/* 800F0608 000ED548  48 00 00 08 */	b .L_800F0610
.L_800F060C:
/* 800F060C 000ED54C  48 00 1C 8D */	bl OSCancelThread
.L_800F0610:
/* 800F0610 000ED550  7F 43 D3 78 */	mr r3, r26
.L_800F0614:
/* 800F0614 000ED554  28 03 00 00 */	cmplwi r3, 0
/* 800F0618 000ED558  40 82 FF D4 */	bne .L_800F05EC
/* 800F061C 000ED55C  3F 80 80 00 */	lis r28, 0x80000040@ha
/* 800F0620 000ED560  38 7C 00 40 */	addi r3, r28, 0x80000040@l
/* 800F0624 000ED564  38 80 00 00 */	li r4, 0
/* 800F0628 000ED568  38 A0 00 8C */	li r5, 0x8c
/* 800F062C 000ED56C  4B F1 4A 89 */	bl memset
/* 800F0630 000ED570  38 7C 00 D4 */	addi r3, r28, 0xd4
/* 800F0634 000ED574  38 80 00 00 */	li r4, 0
/* 800F0638 000ED578  38 A0 00 14 */	li r5, 0x14
/* 800F063C 000ED57C  4B F1 4A 79 */	bl memset
/* 800F0640 000ED580  38 7C 00 F4 */	addi r3, r28, 0xf4
/* 800F0644 000ED584  38 80 00 00 */	li r4, 0
/* 800F0648 000ED588  38 A0 00 04 */	li r5, 4
/* 800F064C 000ED58C  4B F1 4A 69 */	bl memset
/* 800F0650 000ED590  38 7C 30 00 */	addi r3, r28, 0x3000
/* 800F0654 000ED594  38 80 00 00 */	li r4, 0
/* 800F0658 000ED598  38 A0 00 C0 */	li r5, 0xc0
/* 800F065C 000ED59C  4B F1 4A 59 */	bl memset
/* 800F0660 000ED5A0  38 7C 30 C8 */	addi r3, r28, 0x30c8
/* 800F0664 000ED5A4  38 80 00 00 */	li r4, 0
/* 800F0668 000ED5A8  38 A0 00 0C */	li r5, 0xc
/* 800F066C 000ED5AC  4B F1 4A 49 */	bl memset
/* 800F0670 000ED5B0  38 7C 30 E2 */	addi r3, r28, 0x30e2
/* 800F0674 000ED5B4  38 80 00 00 */	li r4, 0
/* 800F0678 000ED5B8  38 A0 00 01 */	li r5, 1
/* 800F067C 000ED5BC  4B F1 4A 39 */	bl memset
/* 800F0680 000ED5C0  7F E3 FB 78 */	mr r3, r31
/* 800F0684 000ED5C4  48 00 47 FD */	bl __PADDisableRecalibration
/* 800F0688 000ED5C8  BB 41 00 28 */	lmw r26, 0x28(r1)
/* 800F068C 000ED5CC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 800F0690 000ED5D0  38 21 00 40 */	addi r1, r1, 0x40
/* 800F0694 000ED5D4  7C 08 03 A6 */	mtlr r0
/* 800F0698 000ED5D8  4E 80 00 20 */	blr 

.global OSGetResetCode
OSGetResetCode:
/* 800F069C 000ED5DC  3C 60 80 00 */	lis r3, 0x800030E2@ha
/* 800F06A0 000ED5E0  88 03 30 E2 */	lbz r0, 0x800030E2@l(r3)
/* 800F06A4 000ED5E4  28 00 00 00 */	cmplwi r0, 0
/* 800F06A8 000ED5E8  41 82 00 10 */	beq .L_800F06B8
/* 800F06AC 000ED5EC  80 03 30 F0 */	lwz r0, 0x30f0(r3)
/* 800F06B0 000ED5F0  64 03 80 00 */	oris r3, r0, 0x8000
/* 800F06B4 000ED5F4  48 00 00 18 */	b .L_800F06CC
.L_800F06B8:
/* 800F06B8 000ED5F8  3C 60 CC 00 */	lis r3, 0xCC003000@ha
/* 800F06BC 000ED5FC  38 63 30 00 */	addi r3, r3, 0xCC003000@l
/* 800F06C0 000ED600  80 03 00 24 */	lwz r0, 0x24(r3)
/* 800F06C4 000ED604  54 00 00 38 */	rlwinm r0, r0, 0, 0, 0x1c
/* 800F06C8 000ED608  54 03 E8 FE */	srwi r3, r0, 3
.L_800F06CC:
/* 800F06CC 000ED60C  4E 80 00 20 */	blr 

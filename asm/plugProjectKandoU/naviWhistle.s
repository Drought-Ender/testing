.include "macros.inc"
.section .sdata2, "a"     # 0x80516360 - 0x80520E40
.balign 8
.global lbl_805188E0
lbl_805188E0:
	.4byte 0x41200000
.global lbl_805188E4
lbl_805188E4:
	.4byte 0x00000000
.global lbl_805188E8
lbl_805188E8:
	.float 0.5
.global lbl_805188EC
lbl_805188EC:
	.4byte 0x43A2F983
.global lbl_805188F0
lbl_805188F0:
	.4byte 0xC3A2F983
.global lbl_805188F4
lbl_805188F4:
	.4byte 0x47FA0000
.global lbl_805188F8
lbl_805188F8:
	.4byte 0xC7FA0000
.global lbl_805188FC
lbl_805188FC:
	.float 1.0
.global lbl_80518900
lbl_80518900:
	.4byte 0x437F0000
.global lbl_80518904
lbl_80518904:
	.4byte 0xC32F0000
.global lbl_80518908
lbl_80518908:
	.4byte 0x42F00000
.global lbl_8051890C
lbl_8051890C:
	.4byte 0xC2DC0000

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global __ct__Q24Game11NaviWhistleFPQ24Game4Navi
__ct__Q24Game11NaviWhistleFPQ24Game4Navi:
/* 80165088 00161FC8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8016508C 00161FCC  7C 08 02 A6 */	mflr r0
/* 80165090 00161FD0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80165094 00161FD4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80165098 00161FD8  7C 7F 1B 78 */	mr r31, r3
/* 8016509C 00161FDC  90 83 00 34 */	stw r4, 0x34(r3)
/* 801650A0 00161FE0  48 00 00 1D */	bl init__Q24Game11NaviWhistleFv
/* 801650A4 00161FE4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801650A8 00161FE8  7F E3 FB 78 */	mr r3, r31
/* 801650AC 00161FEC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801650B0 00161FF0  7C 08 03 A6 */	mtlr r0
/* 801650B4 00161FF4  38 21 00 10 */	addi r1, r1, 0x10
/* 801650B8 00161FF8  4E 80 00 20 */	blr 

.global init__Q24Game11NaviWhistleFv
init__Q24Game11NaviWhistleFv:
/* 801650BC 00161FFC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801650C0 00162000  7C 08 02 A6 */	mflr r0
/* 801650C4 00162004  38 A0 00 00 */	li r5, 0
/* 801650C8 00162008  C0 22 A5 80 */	lfs f1, lbl_805188E0@sda21(r2)
/* 801650CC 0016200C  90 01 00 34 */	stw r0, 0x34(r1)
/* 801650D0 00162010  38 80 00 FF */	li r4, 0xff
/* 801650D4 00162014  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 801650D8 00162018  38 00 00 78 */	li r0, 0x78
/* 801650DC 0016201C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 801650E0 00162020  7C 7F 1B 78 */	mr r31, r3
/* 801650E4 00162024  B0 A3 00 28 */	sth r5, 0x28(r3)
/* 801650E8 00162028  38 60 00 96 */	li r3, 0x96
/* 801650EC 0016202C  D0 3F 00 24 */	stfs f1, 0x24(r31)
/* 801650F0 00162030  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801650F4 00162034  98 9F 00 38 */	stb r4, 0x38(r31)
/* 801650F8 00162038  98 7F 00 39 */	stb r3, 0x39(r31)
/* 801650FC 0016203C  98 BF 00 3A */	stb r5, 0x3a(r31)
/* 80165100 00162040  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 80165104 00162044  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80165108 00162048  81 83 00 00 */	lwz r12, 0(r3)
/* 8016510C 0016204C  81 8C 00 64 */	lwz r12, 0x64(r12)
/* 80165110 00162050  7D 89 03 A6 */	mtctr r12
/* 80165114 00162054  4E 80 04 21 */	bctrl 
/* 80165118 00162058  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 8016511C 0016205C  FC 80 08 90 */	fmr f4, f1
/* 80165120 00162060  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 80165124 00162064  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 80165128 00162068  C0 62 A5 88 */	lfs f3, lbl_805188E8@sda21(r2)
/* 8016512C 0016206C  FC 04 00 40 */	fcmpo cr0, f4, f0
/* 80165130 00162070  C0 43 09 80 */	lfs f2, 0x980(r3)
/* 80165134 00162074  EC A3 00 B2 */	fmuls f5, f3, f2
/* 80165138 00162078  40 80 00 08 */	bge .L_80165140
/* 8016513C 0016207C  FC 80 20 50 */	fneg f4, f4
.L_80165140:
/* 80165140 00162080  C0 62 A5 8C */	lfs f3, lbl_805188EC@sda21(r2)
/* 80165144 00162084  3C 60 80 50 */	lis r3, sincosTable___5JMath@ha
/* 80165148 00162088  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 8016514C 0016208C  38 83 71 A0 */	addi r4, r3, sincosTable___5JMath@l
/* 80165150 00162090  EC 44 00 F2 */	fmuls f2, f4, f3
/* 80165154 00162094  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165158 00162098  FC 00 10 1E */	fctiwz f0, f2
/* 8016515C 0016209C  D8 01 00 08 */	stfd f0, 8(r1)
/* 80165160 001620A0  80 01 00 0C */	lwz r0, 0xc(r1)
/* 80165164 001620A4  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80165168 001620A8  7C 64 02 14 */	add r3, r4, r0
/* 8016516C 001620AC  C0 03 00 04 */	lfs f0, 4(r3)
/* 80165170 001620B0  EC 45 00 32 */	fmuls f2, f5, f0
/* 80165174 001620B4  40 80 00 28 */	bge .L_8016519C
/* 80165178 001620B8  C0 02 A5 90 */	lfs f0, lbl_805188F0@sda21(r2)
/* 8016517C 001620BC  EC 01 00 32 */	fmuls f0, f1, f0
/* 80165180 001620C0  FC 00 00 1E */	fctiwz f0, f0
/* 80165184 001620C4  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80165188 001620C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8016518C 001620CC  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80165190 001620D0  7C 04 04 2E */	lfsx f0, r4, r0
/* 80165194 001620D4  FC 00 00 50 */	fneg f0, f0
/* 80165198 001620D8  48 00 00 1C */	b .L_801651B4
.L_8016519C:
/* 8016519C 001620DC  EC 01 00 F2 */	fmuls f0, f1, f3
/* 801651A0 001620E0  FC 00 00 1E */	fctiwz f0, f0
/* 801651A4 001620E4  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801651A8 001620E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801651AC 001620EC  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 801651B0 001620F0  7C 04 04 2E */	lfsx f0, r4, r0
.L_801651B4:
/* 801651B4 001620F4  EC 25 00 32 */	fmuls f1, f5, f0
/* 801651B8 001620F8  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 801651BC 001620FC  7F E3 FB 78 */	mr r3, r31
/* 801651C0 00162100  D0 3F 00 00 */	stfs f1, 0(r31)
/* 801651C4 00162104  D0 1F 00 04 */	stfs f0, 4(r31)
/* 801651C8 00162108  D0 5F 00 08 */	stfs f2, 8(r31)
/* 801651CC 0016210C  48 00 00 19 */	bl updatePosition__Q24Game11NaviWhistleFv
/* 801651D0 00162110  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801651D4 00162114  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 801651D8 00162118  7C 08 03 A6 */	mtlr r0
/* 801651DC 0016211C  38 21 00 30 */	addi r1, r1, 0x30
/* 801651E0 00162120  4E 80 00 20 */	blr 

.global updatePosition__Q24Game11NaviWhistleFv
updatePosition__Q24Game11NaviWhistleFv:
/* 801651E4 00162124  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 801651E8 00162128  7C 08 02 A6 */	mflr r0
/* 801651EC 0016212C  90 01 00 64 */	stw r0, 0x64(r1)
/* 801651F0 00162130  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 801651F4 00162134  F3 E1 00 58 */	psq_st f31, 88(r1), 0, qr0
/* 801651F8 00162138  93 E1 00 4C */	stw r31, 0x4c(r1)
/* 801651FC 0016213C  7C 7F 1B 78 */	mr r31, r3
/* 80165200 00162140  38 61 00 08 */	addi r3, r1, 8
/* 80165204 00162144  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 80165208 00162148  81 84 00 00 */	lwz r12, 0(r4)
/* 8016520C 0016214C  81 8C 00 08 */	lwz r12, 8(r12)
/* 80165210 00162150  7D 89 03 A6 */	mtctr r12
/* 80165214 00162154  4E 80 04 21 */	bctrl 
/* 80165218 00162158  C0 21 00 08 */	lfs f1, 8(r1)
/* 8016521C 0016215C  38 80 00 00 */	li r4, 0
/* 80165220 00162160  C0 1F 00 00 */	lfs f0, 0(r31)
/* 80165224 00162164  38 00 00 01 */	li r0, 1
/* 80165228 00162168  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 8016522C 0016216C  C0 5F 00 04 */	lfs f2, 4(r31)
/* 80165230 00162170  EC 01 00 2A */	fadds f0, f1, f0
/* 80165234 00162174  C0 A1 00 10 */	lfs f5, 0x10(r1)
/* 80165238 00162178  C0 9F 00 08 */	lfs f4, 8(r31)
/* 8016523C 0016217C  EC 43 10 2A */	fadds f2, f3, f2
/* 80165240 00162180  C0 22 A5 84 */	lfs f1, lbl_805188E4@sda21(r2)
/* 80165244 00162184  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 80165248 00162188  EC 05 20 2A */	fadds f0, f5, f4
/* 8016524C 0016218C  C0 62 A5 94 */	lfs f3, lbl_805188F4@sda21(r2)
/* 80165250 00162190  FF E0 08 90 */	fmr f31, f1
/* 80165254 00162194  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80165258 00162198  C0 42 A5 98 */	lfs f2, lbl_805188F8@sda21(r2)
/* 8016525C 0016219C  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80165260 001621A0  C0 02 A5 9C */	lfs f0, lbl_805188FC@sda21(r2)
/* 80165264 001621A4  90 81 00 28 */	stw r4, 0x28(r1)
/* 80165268 001621A8  80 6D 93 08 */	lwz r3, mapMgr__4Game@sda21(r13)
/* 8016526C 001621AC  D0 61 00 2C */	stfs f3, 0x2c(r1)
/* 80165270 001621B0  28 03 00 00 */	cmplwi r3, 0
/* 80165274 001621B4  D0 41 00 30 */	stfs f2, 0x30(r1)
/* 80165278 001621B8  90 81 00 24 */	stw r4, 0x24(r1)
/* 8016527C 001621BC  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80165280 001621C0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80165284 001621C4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80165288 001621C8  98 01 00 20 */	stb r0, 0x20(r1)
/* 8016528C 001621CC  98 81 00 21 */	stb r4, 0x21(r1)
/* 80165290 001621D0  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80165294 001621D4  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80165298 001621D8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8016529C 001621DC  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 801652A0 001621E0  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 801652A4 001621E4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 801652A8 001621E8  41 82 00 38 */	beq .L_801652E0
/* 801652AC 001621EC  98 81 00 20 */	stb r4, 0x20(r1)
/* 801652B0 001621F0  38 81 00 14 */	addi r4, r1, 0x14
/* 801652B4 001621F4  81 83 00 04 */	lwz r12, 4(r3)
/* 801652B8 001621F8  81 8C 00 2C */	lwz r12, 0x2c(r12)
/* 801652BC 001621FC  7D 89 03 A6 */	mtctr r12
/* 801652C0 00162200  4E 80 04 21 */	bctrl 
/* 801652C4 00162204  C3 E1 00 30 */	lfs f31, 0x30(r1)
/* 801652C8 00162208  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 801652CC 0016220C  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 801652D0 00162210  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 801652D4 00162214  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 801652D8 00162218  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 801652DC 0016221C  D0 1F 00 20 */	stfs f0, 0x20(r31)
.L_801652E0:
/* 801652E0 00162220  80 6D 94 20 */	lwz r3, platMgr__4Game@sda21(r13)
/* 801652E4 00162224  28 03 00 00 */	cmplwi r3, 0
/* 801652E8 00162228  41 82 00 3C */	beq .L_80165324
/* 801652EC 0016222C  C0 02 A5 98 */	lfs f0, lbl_805188F8@sda21(r2)
/* 801652F0 00162230  38 81 00 14 */	addi r4, r1, 0x14
/* 801652F4 00162234  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 801652F8 00162238  48 06 0B B1 */	bl getCurrTri__Q24Game7PlatMgrFRQ24Game11CurrTriInfo
/* 801652FC 0016223C  C0 21 00 30 */	lfs f1, 0x30(r1)
/* 80165300 00162240  FC 01 F8 40 */	fcmpo cr0, f1, f31
/* 80165304 00162244  40 81 00 20 */	ble .L_80165324
/* 80165308 00162248  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 8016530C 0016224C  FF E0 08 90 */	fmr f31, f1
/* 80165310 00162250  D0 1F 00 18 */	stfs f0, 0x18(r31)
/* 80165314 00162254  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80165318 00162258  D0 1F 00 1C */	stfs f0, 0x1c(r31)
/* 8016531C 0016225C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80165320 00162260  D0 1F 00 20 */	stfs f0, 0x20(r31)
.L_80165324:
/* 80165324 00162264  D3 FF 00 10 */	stfs f31, 0x10(r31)
/* 80165328 00162268  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 8016532C 0016226C  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 80165330 00162270  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80165334 00162274  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80165338 00162278  EC 01 00 2A */	fadds f0, f1, f0
/* 8016533C 0016227C  C0 9F 00 14 */	lfs f4, 0x14(r31)
/* 80165340 00162280  C0 3F 00 20 */	lfs f1, 0x20(r31)
/* 80165344 00162284  EC 43 10 2A */	fadds f2, f3, f2
/* 80165348 00162288  D0 1F 00 0C */	stfs f0, 0xc(r31)
/* 8016534C 0016228C  EC 04 08 2A */	fadds f0, f4, f1
/* 80165350 00162290  D0 5F 00 10 */	stfs f2, 0x10(r31)
/* 80165354 00162294  D0 1F 00 14 */	stfs f0, 0x14(r31)
/* 80165358 00162298  E3 E1 00 58 */	psq_l f31, 88(r1), 0, qr0
/* 8016535C 0016229C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80165360 001622A0  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80165364 001622A4  83 E1 00 4C */	lwz r31, 0x4c(r1)
/* 80165368 001622A8  7C 08 03 A6 */	mtlr r0
/* 8016536C 001622AC  38 21 00 60 */	addi r1, r1, 0x60
/* 80165370 001622B0  4E 80 00 20 */	blr 

.global start__Q24Game11NaviWhistleFv
start__Q24Game11NaviWhistleFv:
/* 80165374 001622B4  38 00 00 00 */	li r0, 0
/* 80165378 001622B8  98 03 00 30 */	stb r0, 0x30(r3)
/* 8016537C 001622BC  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 80165380 001622C0  2C 00 00 01 */	cmpwi r0, 1
/* 80165384 001622C4  4D 82 00 20 */	beqlr 
/* 80165388 001622C8  40 80 00 10 */	bge .L_80165398
/* 8016538C 001622CC  2C 00 00 00 */	cmpwi r0, 0
/* 80165390 001622D0  40 80 00 14 */	bge .L_801653A4
/* 80165394 001622D4  4E 80 00 20 */	blr 
.L_80165398:
/* 80165398 001622D8  2C 00 00 03 */	cmpwi r0, 3
/* 8016539C 001622DC  4C 80 00 20 */	bgelr 
/* 801653A0 001622E0  48 00 00 28 */	b .L_801653C8
.L_801653A4:
/* 801653A4 001622E4  38 00 00 01 */	li r0, 1
/* 801653A8 001622E8  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 801653AC 001622EC  B0 03 00 28 */	sth r0, 0x28(r3)
/* 801653B0 001622F0  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801653B4 001622F4  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801653B8 001622F8  80 84 00 C0 */	lwz r4, 0xc0(r4)
/* 801653BC 001622FC  C0 04 03 40 */	lfs f0, 0x340(r4)
/* 801653C0 00162300  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801653C4 00162304  4E 80 00 20 */	blr 
.L_801653C8:
/* 801653C8 00162308  38 00 00 01 */	li r0, 1
/* 801653CC 0016230C  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 801653D0 00162310  B0 03 00 28 */	sth r0, 0x28(r3)
/* 801653D4 00162314  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 801653D8 00162318  80 83 00 34 */	lwz r4, 0x34(r3)
/* 801653DC 0016231C  80 84 00 C0 */	lwz r4, 0xc0(r4)
/* 801653E0 00162320  C0 04 03 40 */	lfs f0, 0x340(r4)
/* 801653E4 00162324  D0 03 00 24 */	stfs f0, 0x24(r3)
/* 801653E8 00162328  4E 80 00 20 */	blr 

.global stop__Q24Game11NaviWhistleFv
stop__Q24Game11NaviWhistleFv:
/* 801653EC 0016232C  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 801653F0 00162330  2C 00 00 01 */	cmpwi r0, 1
/* 801653F4 00162334  41 82 00 10 */	beq .L_80165404
/* 801653F8 00162338  4C 80 00 20 */	bgelr 
/* 801653FC 0016233C  4E 80 00 20 */	blr 
/* 80165400 00162340  4E 80 00 20 */	blr 
.L_80165404:
/* 80165404 00162344  38 00 00 02 */	li r0, 2
/* 80165408 00162348  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 8016540C 0016234C  B0 03 00 28 */	sth r0, 0x28(r3)
/* 80165410 00162350  38 00 00 01 */	li r0, 1
/* 80165414 00162354  D0 03 00 2C */	stfs f0, 0x2c(r3)
/* 80165418 00162358  98 03 00 30 */	stb r0, 0x30(r3)
/* 8016541C 0016235C  4E 80 00 20 */	blr 

.global timeout__Q24Game11NaviWhistleFv
timeout__Q24Game11NaviWhistleFv:
/* 80165420 00162360  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 80165424 00162364  7C 00 00 34 */	cntlzw r0, r0
/* 80165428 00162368  54 03 D9 7E */	srwi r3, r0, 5
/* 8016542C 0016236C  4E 80 00 20 */	blr 

.global setFaceDir__Q24Game11NaviWhistleFf
setFaceDir__Q24Game11NaviWhistleFf:
/* 80165430 00162370  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80165434 00162374  C0 63 00 00 */	lfs f3, 0(r3)
/* 80165438 00162378  C0 43 00 04 */	lfs f2, 4(r3)
/* 8016543C 0016237C  EC 03 00 F2 */	fmuls f0, f3, f3
/* 80165440 00162380  C0 83 00 08 */	lfs f4, 8(r3)
/* 80165444 00162384  EC A2 00 B2 */	fmuls f5, f2, f2
/* 80165448 00162388  C0 42 A5 84 */	lfs f2, lbl_805188E4@sda21(r2)
/* 8016544C 0016238C  EC 84 01 32 */	fmuls f4, f4, f4
/* 80165450 00162390  EC 00 28 2A */	fadds f0, f0, f5
/* 80165454 00162394  EC 04 00 2A */	fadds f0, f4, f0
/* 80165458 00162398  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8016545C 0016239C  40 81 00 20 */	ble .L_8016547C
/* 80165460 001623A0  EC 03 28 FA */	fmadds f0, f3, f3, f5
/* 80165464 001623A4  EC 84 00 2A */	fadds f4, f4, f0
/* 80165468 001623A8  FC 04 10 40 */	fcmpo cr0, f4, f2
/* 8016546C 001623AC  40 81 00 14 */	ble .L_80165480
/* 80165470 001623B0  FC 00 20 34 */	frsqrte f0, f4
/* 80165474 001623B4  EC 80 01 32 */	fmuls f4, f0, f4
/* 80165478 001623B8  48 00 00 08 */	b .L_80165480
.L_8016547C:
/* 8016547C 001623BC  FC 80 10 90 */	fmr f4, f2
.L_80165480:
/* 80165480 001623C0  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 80165484 001623C4  FC 40 08 90 */	fmr f2, f1
/* 80165488 001623C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8016548C 001623CC  40 80 00 08 */	bge .L_80165494
/* 80165490 001623D0  FC 40 08 50 */	fneg f2, f1
.L_80165494:
/* 80165494 001623D4  C0 62 A5 8C */	lfs f3, lbl_805188EC@sda21(r2)
/* 80165498 001623D8  3C 80 80 50 */	lis r4, sincosTable___5JMath@ha
/* 8016549C 001623DC  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 801654A0 001623E0  38 A4 71 A0 */	addi r5, r4, sincosTable___5JMath@l
/* 801654A4 001623E4  EC 42 00 F2 */	fmuls f2, f2, f3
/* 801654A8 001623E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801654AC 001623EC  FC 00 10 1E */	fctiwz f0, f2
/* 801654B0 001623F0  D8 01 00 08 */	stfd f0, 8(r1)
/* 801654B4 001623F4  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801654B8 001623F8  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 801654BC 001623FC  7C 85 02 14 */	add r4, r5, r0
/* 801654C0 00162400  C0 04 00 04 */	lfs f0, 4(r4)
/* 801654C4 00162404  EC 44 00 32 */	fmuls f2, f4, f0
/* 801654C8 00162408  40 80 00 28 */	bge .L_801654F0
/* 801654CC 0016240C  C0 02 A5 90 */	lfs f0, lbl_805188F0@sda21(r2)
/* 801654D0 00162410  EC 01 00 32 */	fmuls f0, f1, f0
/* 801654D4 00162414  FC 00 00 1E */	fctiwz f0, f0
/* 801654D8 00162418  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 801654DC 0016241C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 801654E0 00162420  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 801654E4 00162424  7C 05 04 2E */	lfsx f0, r5, r0
/* 801654E8 00162428  FC 00 00 50 */	fneg f0, f0
/* 801654EC 0016242C  48 00 00 1C */	b .L_80165508
.L_801654F0:
/* 801654F0 00162430  EC 01 00 F2 */	fmuls f0, f1, f3
/* 801654F4 00162434  FC 00 00 1E */	fctiwz f0, f0
/* 801654F8 00162438  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 801654FC 0016243C  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80165500 00162440  54 00 1C B8 */	rlwinm r0, r0, 3, 0x12, 0x1c
/* 80165504 00162444  7C 05 04 2E */	lfsx f0, r5, r0
.L_80165508:
/* 80165508 00162448  EC 24 00 32 */	fmuls f1, f4, f0
/* 8016550C 0016244C  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 80165510 00162450  D0 23 00 00 */	stfs f1, 0(r3)
/* 80165514 00162454  D0 03 00 04 */	stfs f0, 4(r3)
/* 80165518 00162458  D0 43 00 08 */	stfs f2, 8(r3)
/* 8016551C 0016245C  38 21 00 20 */	addi r1, r1, 0x20
/* 80165520 00162460  4E 80 00 20 */	blr 

.global updateWhistle__Q24Game11NaviWhistleFv
updateWhistle__Q24Game11NaviWhistleFv:
/* 80165524 00162464  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80165528 00162468  7C 08 02 A6 */	mflr r0
/* 8016552C 0016246C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80165530 00162470  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80165534 00162474  7C 7F 1B 78 */	mr r31, r3
/* 80165538 00162478  A0 03 00 28 */	lhz r0, 0x28(r3)
/* 8016553C 0016247C  2C 00 00 01 */	cmpwi r0, 1
/* 80165540 00162480  41 82 00 40 */	beq .L_80165580
/* 80165544 00162484  40 80 00 10 */	bge .L_80165554
/* 80165548 00162488  2C 00 00 00 */	cmpwi r0, 0
/* 8016554C 0016248C  40 80 00 14 */	bge .L_80165560
/* 80165550 00162490  48 00 01 B4 */	b .L_80165704
.L_80165554:
/* 80165554 00162494  2C 00 00 03 */	cmpwi r0, 3
/* 80165558 00162498  40 80 01 AC */	bge .L_80165704
/* 8016555C 0016249C  48 00 01 30 */	b .L_8016568C
.L_80165560:
/* 80165560 001624A0  38 00 00 FF */	li r0, 0xff
/* 80165564 001624A4  38 60 00 78 */	li r3, 0x78
/* 80165568 001624A8  98 1F 00 38 */	stb r0, 0x38(r31)
/* 8016556C 001624AC  38 00 00 00 */	li r0, 0
/* 80165570 001624B0  98 7F 00 39 */	stb r3, 0x39(r31)
/* 80165574 001624B4  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 80165578 001624B8  98 7F 00 3B */	stb r3, 0x3b(r31)
/* 8016557C 001624BC  48 00 01 88 */	b .L_80165704
.L_80165580:
/* 80165580 001624C0  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80165584 001624C4  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80165588 001624C8  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 8016558C 001624CC  C0 62 A5 A4 */	lfs f3, lbl_80518904@sda21(r2)
/* 80165590 001624D0  C0 03 03 68 */	lfs f0, 0x368(r3)
/* 80165594 001624D4  C0 22 A5 A0 */	lfs f1, lbl_80518900@sda21(r2)
/* 80165598 001624D8  EC C2 00 24 */	fdivs f6, f2, f0
/* 8016559C 001624DC  C0 42 A5 84 */	lfs f2, lbl_805188E4@sda21(r2)
/* 801655A0 001624E0  C0 82 A5 A8 */	lfs f4, lbl_80518908@sda21(r2)
/* 801655A4 001624E4  C0 02 A5 AC */	lfs f0, lbl_8051890C@sda21(r2)
/* 801655A8 001624E8  EC 66 08 FA */	fmadds f3, f6, f3, f1
/* 801655AC 001624EC  EC 06 20 3A */	fmadds f0, f6, f0, f4
/* 801655B0 001624F0  EC 26 10 7A */	fmadds f1, f6, f1, f2
/* 801655B4 001624F4  FC A0 18 1E */	fctiwz f5, f3
/* 801655B8 001624F8  FC 60 00 1E */	fctiwz f3, f0
/* 801655BC 001624FC  EC 06 20 BA */	fmadds f0, f6, f2, f4
/* 801655C0 00162500  D8 A1 00 08 */	stfd f5, 8(r1)
/* 801655C4 00162504  FC 20 08 1E */	fctiwz f1, f1
/* 801655C8 00162508  D8 61 00 10 */	stfd f3, 0x10(r1)
/* 801655CC 0016250C  FC 00 00 1E */	fctiwz f0, f0
/* 801655D0 00162510  80 01 00 0C */	lwz r0, 0xc(r1)
/* 801655D4 00162514  D8 21 00 18 */	stfd f1, 0x18(r1)
/* 801655D8 00162518  80 61 00 14 */	lwz r3, 0x14(r1)
/* 801655DC 0016251C  98 1F 00 38 */	stb r0, 0x38(r31)
/* 801655E0 00162520  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 801655E4 00162524  98 7F 00 39 */	stb r3, 0x39(r31)
/* 801655E8 00162528  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801655EC 0016252C  98 1F 00 3A */	stb r0, 0x3a(r31)
/* 801655F0 00162530  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801655F4 00162534  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 801655F8 00162538  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801655FC 0016253C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80165600 00162540  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 80165604 00162544  EC 01 00 2A */	fadds f0, f1, f0
/* 80165608 00162548  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 8016560C 0016254C  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80165610 00162550  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80165614 00162554  80 83 00 C0 */	lwz r4, 0xc0(r3)
/* 80165618 00162558  C0 04 03 68 */	lfs f0, 0x368(r4)
/* 8016561C 0016255C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165620 00162560  40 81 00 14 */	ble .L_80165634
/* 80165624 00162564  D0 5F 00 2C */	stfs f2, 0x2c(r31)
/* 80165628 00162568  38 00 00 02 */	li r0, 2
/* 8016562C 0016256C  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 80165630 00162570  48 00 00 D4 */	b .L_80165704
.L_80165634:
/* 80165634 00162574  4B FD BE 71 */	bl getOlimarData__Q24Game4NaviFv
/* 80165638 00162578  38 80 00 02 */	li r4, 2
/* 8016563C 0016257C  48 08 09 95 */	bl hasItem__Q24Game10OlimarDataFi
/* 80165640 00162580  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80165644 00162584  41 82 00 14 */	beq .L_80165658
/* 80165648 00162588  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 8016564C 0016258C  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80165650 00162590  C0 63 0B D8 */	lfs f3, 0xbd8(r3)
/* 80165654 00162594  48 00 00 10 */	b .L_80165664
.L_80165658:
/* 80165658 00162598  80 6D 92 E0 */	lwz r3, naviMgr__4Game@sda21(r13)
/* 8016565C 0016259C  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80165660 001625A0  C0 63 03 18 */	lfs f3, 0x318(r3)
.L_80165664:
/* 80165664 001625A4  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80165668 001625A8  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8016566C 001625AC  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 80165670 001625B0  C0 03 03 68 */	lfs f0, 0x368(r3)
/* 80165674 001625B4  C0 23 03 40 */	lfs f1, 0x340(r3)
/* 80165678 001625B8  EC 42 00 24 */	fdivs f2, f2, f0
/* 8016567C 001625BC  EC 03 08 28 */	fsubs f0, f3, f1
/* 80165680 001625C0  EC 02 08 3A */	fmadds f0, f2, f0, f1
/* 80165684 001625C4  D0 1F 00 24 */	stfs f0, 0x24(r31)
/* 80165688 001625C8  48 00 00 7C */	b .L_80165704
.L_8016568C:
/* 8016568C 001625CC  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 80165690 001625D0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80165694 001625D4  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 80165698 001625D8  C0 42 A5 9C */	lfs f2, lbl_805188FC@sda21(r2)
/* 8016569C 001625DC  C0 03 03 90 */	lfs f0, 0x390(r3)
/* 801656A0 001625E0  C0 62 A5 A8 */	lfs f3, lbl_80518908@sda21(r2)
/* 801656A4 001625E4  EC 01 00 24 */	fdivs f0, f1, f0
/* 801656A8 001625E8  EC 02 00 28 */	fsubs f0, f2, f0
/* 801656AC 001625EC  EC 03 00 32 */	fmuls f0, f3, f0
/* 801656B0 001625F0  FC 00 00 1E */	fctiwz f0, f0
/* 801656B4 001625F4  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 801656B8 001625F8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801656BC 001625FC  98 1F 00 3B */	stb r0, 0x3b(r31)
/* 801656C0 00162600  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801656C4 00162604  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 801656C8 00162608  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 801656CC 0016260C  EC 01 00 2A */	fadds f0, f1, f0
/* 801656D0 00162610  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 801656D4 00162614  80 7F 00 34 */	lwz r3, 0x34(r31)
/* 801656D8 00162618  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 801656DC 0016261C  80 63 00 C0 */	lwz r3, 0xc0(r3)
/* 801656E0 00162620  C0 03 03 90 */	lfs f0, 0x390(r3)
/* 801656E4 00162624  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 801656E8 00162628  40 81 00 1C */	ble .L_80165704
/* 801656EC 0016262C  C0 22 A5 84 */	lfs f1, lbl_805188E4@sda21(r2)
/* 801656F0 00162630  38 00 00 00 */	li r0, 0
/* 801656F4 00162634  C0 02 A5 80 */	lfs f0, lbl_805188E0@sda21(r2)
/* 801656F8 00162638  D0 3F 00 2C */	stfs f1, 0x2c(r31)
/* 801656FC 0016263C  B0 1F 00 28 */	sth r0, 0x28(r31)
/* 80165700 00162640  D0 1F 00 24 */	stfs f0, 0x24(r31)
.L_80165704:
/* 80165704 00162644  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80165708 00162648  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8016570C 0016264C  7C 08 03 A6 */	mtlr r0
/* 80165710 00162650  38 21 00 30 */	addi r1, r1, 0x30
/* 80165714 00162654  4E 80 00 20 */	blr 

.global "update__Q24Game11NaviWhistleFR10Vector3<f>b"
"update__Q24Game11NaviWhistleFR10Vector3<f>b":
/* 80165718 00162658  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8016571C 0016265C  7C 08 02 A6 */	mflr r0
/* 80165720 00162660  90 01 00 24 */	stw r0, 0x24(r1)
/* 80165724 00162664  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 80165728 00162668  F3 E1 00 18 */	psq_st f31, 24(r1), 0, qr0
/* 8016572C 0016266C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80165730 00162670  54 A0 06 3F */	clrlwi. r0, r5, 0x18
/* 80165734 00162674  7C 7F 1B 78 */	mr r31, r3
/* 80165738 00162678  41 82 00 14 */	beq .L_8016574C
/* 8016573C 0016267C  C0 22 A5 84 */	lfs f1, lbl_805188E4@sda21(r2)
/* 80165740 00162680  FC 40 08 90 */	fmr f2, f1
/* 80165744 00162684  FC 60 08 90 */	fmr f3, f1
/* 80165748 00162688  48 00 01 6C */	b .L_801658B4
.L_8016574C:
/* 8016574C 0016268C  C0 64 00 04 */	lfs f3, 4(r4)
/* 80165750 00162690  C1 24 00 08 */	lfs f9, 8(r4)
/* 80165754 00162694  EC 23 00 F2 */	fmuls f1, f3, f3
/* 80165758 00162698  C0 44 00 00 */	lfs f2, 0(r4)
/* 8016575C 0016269C  EC 89 02 72 */	fmuls f4, f9, f9
/* 80165760 001626A0  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 80165764 001626A4  EC 22 08 BA */	fmadds f1, f2, f2, f1
/* 80165768 001626A8  EC 24 08 2A */	fadds f1, f4, f1
/* 8016576C 001626AC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165770 001626B0  40 81 00 14 */	ble .L_80165784
/* 80165774 001626B4  40 81 00 14 */	ble .L_80165788
/* 80165778 001626B8  FC 00 08 34 */	frsqrte f0, f1
/* 8016577C 001626BC  EC 20 00 72 */	fmuls f1, f0, f1
/* 80165780 001626C0  48 00 00 08 */	b .L_80165788
.L_80165784:
/* 80165784 001626C4  FC 20 00 90 */	fmr f1, f0
.L_80165788:
/* 80165788 001626C8  C0 02 A5 84 */	lfs f0, lbl_805188E4@sda21(r2)
/* 8016578C 001626CC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80165790 001626D0  40 81 00 18 */	ble .L_801657A8
/* 80165794 001626D4  C0 02 A5 9C */	lfs f0, lbl_805188FC@sda21(r2)
/* 80165798 001626D8  EC 00 08 24 */	fdivs f0, f0, f1
/* 8016579C 001626DC  EC 42 00 32 */	fmuls f2, f2, f0
/* 801657A0 001626E0  EC 63 00 32 */	fmuls f3, f3, f0
/* 801657A4 001626E4  ED 29 00 32 */	fmuls f9, f9, f0
.L_801657A8:
/* 801657A8 001626E8  80 9F 00 34 */	lwz r4, 0x34(r31)
/* 801657AC 001626EC  80 6D 9A EC */	lwz r3, sys@sda21(r13)
/* 801657B0 001626F0  80 84 00 C0 */	lwz r4, 0xc0(r4)
/* 801657B4 001626F4  C0 03 00 54 */	lfs f0, 0x54(r3)
/* 801657B8 001626F8  C0 24 09 A8 */	lfs f1, 0x9a8(r4)
/* 801657BC 001626FC  C0 BF 00 04 */	lfs f5, 4(r31)
/* 801657C0 00162700  ED 03 00 72 */	fmuls f8, f3, f1
/* 801657C4 00162704  C0 9F 00 08 */	lfs f4, 8(r31)
/* 801657C8 00162708  EC E2 00 72 */	fmuls f7, f2, f1
/* 801657CC 0016270C  C0 DF 00 00 */	lfs f6, 0(r31)
/* 801657D0 00162710  ED 29 00 72 */	fmuls f9, f9, f1
/* 801657D4 00162714  C1 62 A5 84 */	lfs f11, lbl_805188E4@sda21(r2)
/* 801657D8 00162718  EC 48 00 32 */	fmuls f2, f8, f0
/* 801657DC 0016271C  EC 69 00 32 */	fmuls f3, f9, f0
/* 801657E0 00162720  EC 27 00 32 */	fmuls f1, f7, f0
/* 801657E4 00162724  EC 42 28 2A */	fadds f2, f2, f5
/* 801657E8 00162728  EC 63 20 2A */	fadds f3, f3, f4
/* 801657EC 0016272C  EC 21 30 2A */	fadds f1, f1, f6
/* 801657F0 00162730  ED 82 00 B2 */	fmuls f12, f2, f2
/* 801657F4 00162734  ED A3 00 F2 */	fmuls f13, f3, f3
/* 801657F8 00162738  ED 41 60 7A */	fmadds f10, f1, f1, f12
/* 801657FC 0016273C  EF ED 50 2A */	fadds f31, f13, f10
/* 80165800 00162740  FC 1F 58 40 */	fcmpo cr0, f31, f11
/* 80165804 00162744  40 81 00 18 */	ble .L_8016581C
/* 80165808 00162748  40 81 00 10 */	ble .L_80165818
/* 8016580C 0016274C  FD 40 F8 34 */	frsqrte f10, f31
/* 80165810 00162750  ED 6A 07 F2 */	fmuls f11, f10, f31
/* 80165814 00162754  48 00 00 08 */	b .L_8016581C
.L_80165818:
/* 80165818 00162758  FD 60 F8 90 */	fmr f11, f31
.L_8016581C:
/* 8016581C 0016275C  C1 44 09 80 */	lfs f10, 0x980(r4)
/* 80165820 00162760  FC 0B 50 40 */	fcmpo cr0, f11, f10
/* 80165824 00162764  4C 41 13 82 */	cror 2, 1, 2
/* 80165828 00162768  40 82 00 8C */	bne .L_801658B4
/* 8016582C 0016276C  C1 62 A5 84 */	lfs f11, lbl_805188E4@sda21(r2)
/* 80165830 00162770  FC 1F 58 40 */	fcmpo cr0, f31, f11
/* 80165834 00162774  40 81 00 20 */	ble .L_80165854
/* 80165838 00162778  ED 41 60 7A */	fmadds f10, f1, f1, f12
/* 8016583C 0016277C  ED 8D 50 2A */	fadds f12, f13, f10
/* 80165840 00162780  FC 0C 58 40 */	fcmpo cr0, f12, f11
/* 80165844 00162784  40 81 00 14 */	ble .L_80165858
/* 80165848 00162788  FD 40 60 34 */	frsqrte f10, f12
/* 8016584C 0016278C  ED 8A 03 32 */	fmuls f12, f10, f12
/* 80165850 00162790  48 00 00 08 */	b .L_80165858
.L_80165854:
/* 80165854 00162794  FD 80 58 90 */	fmr f12, f11
.L_80165858:
/* 80165858 00162798  C1 42 A5 84 */	lfs f10, lbl_805188E4@sda21(r2)
/* 8016585C 0016279C  FC 0C 50 40 */	fcmpo cr0, f12, f10
/* 80165860 001627A0  40 81 00 18 */	ble .L_80165878
/* 80165864 001627A4  C1 42 A5 9C */	lfs f10, lbl_805188FC@sda21(r2)
/* 80165868 001627A8  ED 4A 60 24 */	fdivs f10, f10, f12
/* 8016586C 001627AC  EC 21 02 B2 */	fmuls f1, f1, f10
/* 80165870 001627B0  EC 42 02 B2 */	fmuls f2, f2, f10
/* 80165874 001627B4  EC 63 02 B2 */	fmuls f3, f3, f10
.L_80165878:
/* 80165878 001627B8  ED 42 02 32 */	fmuls f10, f2, f8
/* 8016587C 001627BC  ED 41 51 FA */	fmadds f10, f1, f7, f10
/* 80165880 001627C0  ED 63 52 7A */	fmadds f11, f3, f9, f10
/* 80165884 001627C4  ED 41 02 F2 */	fmuls f10, f1, f11
/* 80165888 001627C8  EC 42 02 F2 */	fmuls f2, f2, f11
/* 8016588C 001627CC  EC 23 02 F2 */	fmuls f1, f3, f11
/* 80165890 001627D0  EC 67 50 28 */	fsubs f3, f7, f10
/* 80165894 001627D4  EC 48 10 28 */	fsubs f2, f8, f2
/* 80165898 001627D8  EC E9 08 28 */	fsubs f7, f9, f1
/* 8016589C 001627DC  EC 23 00 32 */	fmuls f1, f3, f0
/* 801658A0 001627E0  EC 42 00 32 */	fmuls f2, f2, f0
/* 801658A4 001627E4  EC 07 00 32 */	fmuls f0, f7, f0
/* 801658A8 001627E8  EC 21 30 2A */	fadds f1, f1, f6
/* 801658AC 001627EC  EC 42 28 2A */	fadds f2, f2, f5
/* 801658B0 001627F0  EC 60 20 2A */	fadds f3, f0, f4
.L_801658B4:
/* 801658B4 001627F4  D0 3F 00 00 */	stfs f1, 0(r31)
/* 801658B8 001627F8  7F E3 FB 78 */	mr r3, r31
/* 801658BC 001627FC  D0 5F 00 04 */	stfs f2, 4(r31)
/* 801658C0 00162800  D0 7F 00 08 */	stfs f3, 8(r31)
/* 801658C4 00162804  4B FF F9 21 */	bl updatePosition__Q24Game11NaviWhistleFv
/* 801658C8 00162808  7F E3 FB 78 */	mr r3, r31
/* 801658CC 0016280C  4B FF FC 59 */	bl updateWhistle__Q24Game11NaviWhistleFv
/* 801658D0 00162810  E3 E1 00 18 */	psq_l f31, 24(r1), 0, qr0
/* 801658D4 00162814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 801658D8 00162818  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 801658DC 0016281C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 801658E0 00162820  7C 08 03 A6 */	mtlr r0
/* 801658E4 00162824  38 21 00 20 */	addi r1, r1, 0x20
/* 801658E8 00162828  4E 80 00 20 */	blr 

.include "macros.inc"
.section .data, "wa"  # 0x8049E220 - 0x804EFC20
.balign 8
.global __vt__Q214JStudio_JAudio13TCreateObject
__vt__Q214JStudio_JAudio13TCreateObject:
	.4byte 0
	.4byte 0
	.4byte __dt__Q214JStudio_JAudio13TCreateObjectFv
	.4byte create__Q214JStudio_JAudio13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object

.section .text, "ax"  # 0x800056C0 - 0x80472F00
.global "createObject_SOUND_JAI___Q214JStudio_JAudio21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP8JAIBasicPCQ26JStage7TSystem"
"createObject_SOUND_JAI___Q214JStudio_JAudio21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP8JAIBasicPCQ26JStage7TSystem":
/* 80015C44 00012B84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80015C48 00012B88  7C 08 02 A6 */	mflr r0
/* 80015C4C 00012B8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80015C50 00012B90  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80015C54 00012B94  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80015C58 00012B98  7C BE 2B 78 */	mr r30, r5
/* 80015C5C 00012B9C  93 A1 00 14 */	stw r29, 0x14(r1)
/* 80015C60 00012BA0  7C 9D 23 78 */	mr r29, r4
/* 80015C64 00012BA4  93 81 00 10 */	stw r28, 0x10(r1)
/* 80015C68 00012BA8  7C 7C 1B 78 */	mr r28, r3
/* 80015C6C 00012BAC  38 60 01 08 */	li r3, 0x108
/* 80015C70 00012BB0  48 00 E2 35 */	bl __nw__FUl
/* 80015C74 00012BB4  7C 7F 1B 79 */	or. r31, r3, r3
/* 80015C78 00012BB8  41 82 00 14 */	beq .L_80015C8C
/* 80015C7C 00012BBC  7F A4 EB 78 */	mr r4, r29
/* 80015C80 00012BC0  7F C5 F3 78 */	mr r5, r30
/* 80015C84 00012BC4  4B FF F3 55 */	bl __ct__Q214JStudio_JAudio14TAdaptor_soundFP8JAIBasicPCQ26JStage7TSystem
/* 80015C88 00012BC8  7C 7F 1B 78 */	mr r31, r3
.L_80015C8C:
/* 80015C8C 00012BCC  28 1F 00 00 */	cmplwi r31, 0
/* 80015C90 00012BD0  40 82 00 0C */	bne .L_80015C9C
/* 80015C94 00012BD4  38 60 00 00 */	li r3, 0
/* 80015C98 00012BD8  48 00 00 58 */	b .L_80015CF0
.L_80015C9C:
/* 80015C9C 00012BDC  38 60 00 38 */	li r3, 0x38
/* 80015CA0 00012BE0  48 00 E2 05 */	bl __nw__FUl
/* 80015CA4 00012BE4  7C 7E 1B 79 */	or. r30, r3, r3
/* 80015CA8 00012BE8  41 82 00 14 */	beq .L_80015CBC
/* 80015CAC 00012BEC  7F 84 E3 78 */	mr r4, r28
/* 80015CB0 00012BF0  7F E5 FB 78 */	mr r5, r31
/* 80015CB4 00012BF4  4B FF 95 C9 */	bl __ct__Q27JStudio13TObject_soundFRCQ47JStudio3stb4data20TParse_TBlock_objectPQ27JStudio14TAdaptor_sound
/* 80015CB8 00012BF8  7C 7E 1B 78 */	mr r30, r3
.L_80015CBC:
/* 80015CBC 00012BFC  28 1E 00 00 */	cmplwi r30, 0
/* 80015CC0 00012C00  40 82 00 0C */	bne .L_80015CCC
/* 80015CC4 00012C04  3B C0 00 00 */	li r30, 0
/* 80015CC8 00012C08  48 00 00 24 */	b .L_80015CEC
.L_80015CCC:
/* 80015CCC 00012C0C  80 7E 00 34 */	lwz r3, 0x34(r30)
/* 80015CD0 00012C10  28 03 00 00 */	cmplwi r3, 0
/* 80015CD4 00012C14  41 82 00 18 */	beq .L_80015CEC
/* 80015CD8 00012C18  81 83 00 00 */	lwz r12, 0(r3)
/* 80015CDC 00012C1C  7F C4 F3 78 */	mr r4, r30
/* 80015CE0 00012C20  81 8C 00 0C */	lwz r12, 0xc(r12)
/* 80015CE4 00012C24  7D 89 03 A6 */	mtctr r12
/* 80015CE8 00012C28  4E 80 04 21 */	bctrl 
.L_80015CEC:
/* 80015CEC 00012C2C  7F C3 F3 78 */	mr r3, r30
.L_80015CF0:
/* 80015CF0 00012C30  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80015CF4 00012C34  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80015CF8 00012C38  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80015CFC 00012C3C  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 80015D00 00012C40  83 81 00 10 */	lwz r28, 0x10(r1)
/* 80015D04 00012C44  7C 08 03 A6 */	mtlr r0
/* 80015D08 00012C48  38 21 00 20 */	addi r1, r1, 0x20
/* 80015D0C 00012C4C  4E 80 00 20 */	blr 

.global __dt__Q214JStudio_JAudio13TCreateObjectFv
__dt__Q214JStudio_JAudio13TCreateObjectFv:
/* 80015D10 00012C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015D14 00012C54  7C 08 02 A6 */	mflr r0
/* 80015D18 00012C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015D1C 00012C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015D20 00012C60  7C 9F 23 78 */	mr r31, r4
/* 80015D24 00012C64  93 C1 00 08 */	stw r30, 8(r1)
/* 80015D28 00012C68  7C 7E 1B 79 */	or. r30, r3, r3
/* 80015D2C 00012C6C  41 82 00 28 */	beq .L_80015D54
/* 80015D30 00012C70  3C A0 80 4A */	lis r5, __vt__Q214JStudio_JAudio13TCreateObject@ha
/* 80015D34 00012C74  38 80 00 00 */	li r4, 0
/* 80015D38 00012C78  38 05 F9 F8 */	addi r0, r5, __vt__Q214JStudio_JAudio13TCreateObject@l
/* 80015D3C 00012C7C  90 1E 00 00 */	stw r0, 0(r30)
/* 80015D40 00012C80  4B FF 6F 79 */	bl __dt__Q27JStudio13TCreateObjectFv
/* 80015D44 00012C84  7F E0 07 35 */	extsh. r0, r31
/* 80015D48 00012C88  40 81 00 0C */	ble .L_80015D54
/* 80015D4C 00012C8C  7F C3 F3 78 */	mr r3, r30
/* 80015D50 00012C90  48 00 E3 65 */	bl __dl__FPv
.L_80015D54:
/* 80015D54 00012C94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015D58 00012C98  7F C3 F3 78 */	mr r3, r30
/* 80015D5C 00012C9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015D60 00012CA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 80015D64 00012CA4  7C 08 03 A6 */	mtlr r0
/* 80015D68 00012CA8  38 21 00 10 */	addi r1, r1, 0x10
/* 80015D6C 00012CAC  4E 80 00 20 */	blr 

.global create__Q214JStudio_JAudio13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object
create__Q214JStudio_JAudio13TCreateObjectFPPQ27JStudio7TObjectRCQ47JStudio3stb4data20TParse_TBlock_object:
/* 80015D70 00012CB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80015D74 00012CB4  7C 08 02 A6 */	mflr r0
/* 80015D78 00012CB8  80 E5 00 00 */	lwz r7, 0(r5)
/* 80015D7C 00012CBC  3C C0 4A 53 */	lis r6, 0x4A534E44@ha
/* 80015D80 00012CC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80015D84 00012CC4  38 06 4E 44 */	addi r0, r6, 0x4A534E44@l
/* 80015D88 00012CC8  7C 66 1B 78 */	mr r6, r3
/* 80015D8C 00012CCC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80015D90 00012CD0  7C 9F 23 78 */	mr r31, r4
/* 80015D94 00012CD4  80 67 00 04 */	lwz r3, 4(r7)
/* 80015D98 00012CD8  7C 03 00 00 */	cmpw r3, r0
/* 80015D9C 00012CDC  41 82 00 08 */	beq .L_80015DA4
/* 80015DA0 00012CE0  48 00 00 10 */	b .L_80015DB0
.L_80015DA4:
/* 80015DA4 00012CE4  3C 60 80 01 */	lis r3, "createObject_SOUND_JAI___Q214JStudio_JAudio21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP8JAIBasicPCQ26JStage7TSystem"@ha
/* 80015DA8 00012CE8  39 83 5C 44 */	addi r12, r3, "createObject_SOUND_JAI___Q214JStudio_JAudio21@unnamed@control_cpp@FRCQ47JStudio3stb4data20TParse_TBlock_objectP8JAIBasicPCQ26JStage7TSystem"@l
/* 80015DAC 00012CEC  48 00 00 0C */	b .L_80015DB8
.L_80015DB0:
/* 80015DB0 00012CF0  38 60 00 00 */	li r3, 0
/* 80015DB4 00012CF4  48 00 00 20 */	b .L_80015DD4
.L_80015DB8:
/* 80015DB8 00012CF8  7C A3 2B 78 */	mr r3, r5
/* 80015DBC 00012CFC  80 86 00 0C */	lwz r4, 0xc(r6)
/* 80015DC0 00012D00  80 A6 00 10 */	lwz r5, 0x10(r6)
/* 80015DC4 00012D04  7D 89 03 A6 */	mtctr r12
/* 80015DC8 00012D08  4E 80 04 21 */	bctrl 
/* 80015DCC 00012D0C  90 7F 00 00 */	stw r3, 0(r31)
/* 80015DD0 00012D10  38 60 00 01 */	li r3, 1
.L_80015DD4:
/* 80015DD4 00012D14  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80015DD8 00012D18  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80015DDC 00012D1C  7C 08 03 A6 */	mtlr r0
/* 80015DE0 00012D20  38 21 00 10 */	addi r1, r1, 0x10
/* 80015DE4 00012D24  4E 80 00 20 */	blr 

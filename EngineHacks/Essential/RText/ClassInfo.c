#include "gbafe.h"

void HbPopulate_SSClass(struct HelpBoxProc* proc)
{
	proc->msgId = gStatScreen.unit->pClassData->descTextId;
	
	proc->item = 0xFFEC;
}

#define ClassHasAType (gStatScreen.unit->pClassData->attributes & (CA_MOUNTED | CA_WYVERN | CA_PEGASUS))
#define ClassHasASkill (gStatScreen.unit->pClassData->attributes & (CA_CANTO | CA_STEAL | CA_DANCE | CA_PLAY | CA_CRITBONUS))

void HbSizer_ClassInfo(struct HelpBoxProc* proc, int width, int height)
{
	int hasMagicRank = 0;
	for (int i = ITYPE_STAFF; i <= ITYPE_DARK; i++) {
		hasMagicRank |= gStatScreen.unit->pClassData->baseRanks[i];
	}
	
	if (ClassHasAType || hasMagicRank) 
	{
		height += 0x10;
	}
	
	if (ClassHasASkill)
	{
		height += 0x10;
	}
	
	if (width < 0x80)
		width = 0x80;
	
	proc->wBoxFinal = width;
	proc->hBoxFinal = height;
}

void DrawHelpBoxClassInfo(int item, struct ProcHelpBoxIntro* proc)
{
	int hasMagicRank = 0;
	for (int i = ITYPE_STAFF; i <= ITYPE_DARK; i++) {
		hasMagicRank |= gStatScreen.unit->pClassData->baseRanks[i];
	}
	
	int x = 0, line = 0;
	
	if (ClassHasAType || hasMagicRank)
	{
		Text_InsertDrawString(&gHelpBoxSt.text[line], x, 8, "Type:");
		x += 32;
		
		if (gStatScreen.unit->pClassData->attributes & CA_MOUNTED)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Mounted");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_PEGASUS)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Flier");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_WYVERN)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Dragon, Flier");
		}
		
		if (hasMagicRank)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Magical");
		}
		
		line++;
		proc->pretext_lines++;
	}

	if (ClassHasASkill)
	{
		x = 0;
		Text_InsertDrawString(&gHelpBoxSt.text[line], x, 8, "Skill:");
		x += 32;
		
		if (gStatScreen.unit->pClassData->attributes & CA_CANTO)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Canto");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_STEAL)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Steal");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_DANCE)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Dance");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_PLAY)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Play");
		}
		
		if (gStatScreen.unit->pClassData->attributes & CA_CRITBONUS)
		{
			Text_InsertDrawString(&gHelpBoxSt.text[line], x, 7, "Crit +30");
		}
		
		proc->pretext_lines++;
	}
}

#undef ClassHasAType
#undef ClassHasASkill
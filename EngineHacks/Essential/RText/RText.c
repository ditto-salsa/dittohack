#include "gbafe.h"

extern void HbSizer_WRank(struct HelpBoxProc* proc, int width, int height);
extern void DrawHelpBoxWRanks(int item, struct ProcHelpBoxIntro* proc);

extern void HbSizer_Stats(struct HelpBoxProc* proc, int width, int height);
extern void DrawHelpBoxStatCaps(int item, struct ProcHelpBoxIntro* proc);

extern void HbSizer_ClassInfo(struct HelpBoxProc* proc, int width, int height);
extern void DrawHelpBoxClassInfo(int item, struct ProcHelpBoxIntro* proc);

enum
{
    HB_EXTINFO_WRANK = 5,
    HB_EXTINFO_STATS,
    HB_EXTINFO_CLASS
};

struct HelpBoxSpecialDrawing
{
	void(*sizeSetter)(struct HelpBoxProc* proc, int width, int height);
	void(*draw)(int item, struct ProcHelpBoxIntro* proc);
	u8 pretext_lines;
};

void HbSizer_Weapon(struct HelpBoxProc* proc, int width, int height)
{
	if (width < 0x90)
        width = 0x90;

    if (GetStringTextLen(GetStringFromIndex(proc->msgId)) > 8)
	{
        height += 0x20;
	}
    else
	{
        height += 0x10;
	}
	
	proc->wBoxFinal = width;
    proc->hBoxFinal = height;
}

void HbSizer_Staff(struct HelpBoxProc* proc, int width, int height)
{
	if (width < 0x60)
        width = 0x60;

	height += 0x10;
	
	proc->wBoxFinal = width;
    proc->hBoxFinal = height;
}

void HbSizer_SaveInfo(struct HelpBoxProc* proc, int width, int height)
{
	width = 0x80;
    height += 0x10;
	
	proc->wBoxFinal = width;
    proc->hBoxFinal = height;
}

const struct HelpBoxSpecialDrawing gHelpBoxSpecialDrawing[] = \
{
	[HB_EXTINFO_NONE] = {
		.sizeSetter = NULL,
		.draw = NULL,
		.pretext_lines = 0
	},
	
	[HB_EXTINFO_WEAPON] = {
		.sizeSetter = HbSizer_Weapon,
		.draw = (void(*)(int, struct ProcHelpBoxIntro*))DrawHelpBoxWeaponLabels,
		.pretext_lines = 2
	},
	
	[HB_EXTINFO_STAFF] = {
		.sizeSetter = HbSizer_Staff,
		.draw = (void(*)(int, struct ProcHelpBoxIntro*))DrawHelpBoxStaffLabels,
		.pretext_lines = 2
	},
	
	[HB_EXTINFO_SAVEINFO] = {
		.sizeSetter = HbSizer_SaveInfo,
		.draw = (void(*)(int, struct ProcHelpBoxIntro*))DrawHelpBoxSaveMenuLabels,
		.pretext_lines = 1
	},
	
	[HB_EXTINFO_WRANK] = {
		.sizeSetter = HbSizer_WRank,
		.draw = DrawHelpBoxWRanks,
		.pretext_lines = 1
	},
	
	[HB_EXTINFO_STATS] = {
		.sizeSetter = HbSizer_Stats,
		.draw = DrawHelpBoxStatCaps,
		.pretext_lines = 1
	},
	
	[HB_EXTINFO_CLASS] = {
		.sizeSetter = HbSizer_ClassInfo,
		.draw = DrawHelpBoxClassInfo,
		.pretext_lines = 0
	}
};

int GetHelpBoxItemInfoKind(int item)
{
    if (item == 0xFFFE) return HB_EXTINFO_SAVEINFO;

    if (item <= 0xFFFD && item >= 0xFFF6) return HB_EXTINFO_WRANK;

    if (item <= 0xFFF5 && item >= 0xFFED) return HB_EXTINFO_STATS;

	if (item == 0xFFEC) return HB_EXTINFO_CLASS;

    if (GetItemAttributes(item) & IA_WEAPON) return HB_EXTINFO_WEAPON;

    if (GetItemAttributes(item) & IA_STAFF) return HB_EXTINFO_STAFF;

    return HB_EXTINFO_NONE;
}

void ApplyHelpBoxContentSize(struct HelpBoxProc* proc, int width, int height)
{
    width = 0xF0 & (width + 15); // align to 16 pixel multiple
	
	if (gHelpBoxSpecialDrawing[GetHelpBoxItemInfoKind(proc->item)].sizeSetter != NULL)
	{
		gHelpBoxSpecialDrawing[GetHelpBoxItemInfoKind(proc->item)].sizeSetter(proc, width, height);
	}
	else
	{
		proc->wBoxFinal = width;
		proc->hBoxFinal = height;
	}
}

void HelpBoxSetupstringLines(struct ProcHelpBoxIntro* proc) {
    int item = proc->item;

    SetTextFont(&gHelpBoxSt.font);
    SetTextFontGlyphs(TEXT_GLYPHS_SYSTEM);
	
	proc->pretext_lines = gHelpBoxSpecialDrawing[GetHelpBoxItemInfoKind(item)].pretext_lines;
	
	if (gHelpBoxSpecialDrawing[GetHelpBoxItemInfoKind(item)].draw != NULL)
		gHelpBoxSpecialDrawing[GetHelpBoxItemInfoKind(item)].draw(item, proc);
	
    SetTextFont(0);

    Proc_Break(proc);
}
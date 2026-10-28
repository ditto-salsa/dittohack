#include "gbafe.h"

extern void DrawHelpBoxWRankLabels(void);
extern void DrawHelpBoxWRankStats(int item);
extern void DrawHelpBoxStatCapLabels(int item);
extern void DrawHelpBoxStatCapStats(int item);

enum
{
    HB_EXTINFO_WRANK = 5,
    HB_EXTINFO_STATS,
    HB_EXTINFO_CLASS
};

int GetHelpBoxItemInfoKind(int item)
{
    if (item == 0xFFFE)
        return HB_EXTINFO_SAVEINFO;

    if (item <= 0xFFFD && item >= 0xFFF6)
        return HB_EXTINFO_WRANK;

    if (item <= 0xFFF5 && item >= 0xFFED)
        return HB_EXTINFO_STATS;

    if (GetItemAttributes(item) & IA_WEAPON)
        return HB_EXTINFO_WEAPON;

    if (GetItemAttributes(item) & IA_STAFF)
        return HB_EXTINFO_STAFF;

    return HB_EXTINFO_NONE;
}

void ApplyHelpBoxContentSize(struct HelpBoxProc* proc, int width, int height)
{
    width = 0xF0 & (width + 15); // align to 16 pixel multiple

    switch (GetHelpBoxItemInfoKind(proc->item))
    {

    case HB_EXTINFO_WEAPON: // weapon
        if (width < 0x90)
            width = 0x90;

        if (GetStringTextLen(GetStringFromIndex(proc->msgId)) > 8)
            height += 0x20;
        else
            height += 0x10;

        break;
    
    case HB_EXTINFO_STAFF: // staff
        if (width < 0x60)
            width = 0x60;

        height += 0x10;

        break;

    case HB_EXTINFO_SAVEINFO: // save stuff
        width = 0x80;
        height += 0x10;

        break;

    case HB_EXTINFO_WRANK:
        if (width < 0x80) 
            width = 0x80;
        
        height += 0x10;
        break;

    case HB_EXTINFO_STATS:
        height += 0x10;
        break;

    } // switch (GetHelpBoxItemInfoKind(proc->item))

    proc->wBoxFinal = width;
    proc->hBoxFinal = height;
}

void HelpBoxSetupstringLines(struct ProcHelpBoxIntro* proc) {
    int item = proc->item;

    SetTextFont(&gHelpBoxSt.font);
    SetTextFontGlyphs(TEXT_GLYPHS_SYSTEM);

    switch (GetHelpBoxItemInfoKind(item)) {
        case HB_EXTINFO_NONE:
            proc->pretext_lines = 0;
            break;

        case HB_EXTINFO_WEAPON:
            DrawHelpBoxWeaponLabels(item);
            proc->pretext_lines = 2;
            break;

        case HB_EXTINFO_STAFF:
            DrawHelpBoxStaffLabels(item);
            proc->pretext_lines = 1;
            break;

        case HB_EXTINFO_SAVEINFO:
            DrawHelpBoxSaveMenuLabels();
            proc->pretext_lines = 1;
            break;

        case HB_EXTINFO_WRANK:
            DrawHelpBoxWRankLabels();
            proc->pretext_lines = 1;
            break;
        
        case HB_EXTINFO_STATS:
            DrawHelpBoxStatCapLabels(item);
            proc->pretext_lines = 1;
            break;
    }

    SetTextFont(0);

    Proc_Break(proc);
}

void HelpBoxDrawstring(struct ProcHelpBoxIntro* proc) {
    int item = proc->item;

    SetTextFont(&gHelpBoxSt.font);

    switch (GetHelpBoxItemInfoKind(item)) {
        case HB_EXTINFO_WEAPON:
            DrawHelpBoxWeaponStats(item);
            break;

        case HB_EXTINFO_SAVEINFO:
            DrawHelpBoxSaveMenuStats();
            break;
        
        case HB_EXTINFO_WRANK:
            DrawHelpBoxWRankStats(item);
            break;
        
        case HB_EXTINFO_STATS:
            DrawHelpBoxStatCapStats(item);
            break;
    }

    SetTextFont(0);

    Proc_Break(proc);
}
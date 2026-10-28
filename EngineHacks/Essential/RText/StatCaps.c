#include "gbafe.h"

void HbPopulate_SSStatCaps(struct HelpBoxProc* proc)
{
    proc->msgId = proc->info->msgId;

    proc->item = 0xFFED + (((u32)proc->info - 0x08A00BA8) / sizeof (struct HelpBoxInfo));
}

void DrawHelpBoxStatCapLabels(int item)
{
    char* str;
    switch (item)
    {
        case 0xFFF1: // Luck
        case 0xFFF4: // Mov
            str = "Universal Cap";
            break;
        default:
            str = "Class Cap";
            break;
    }
    
    Text_InsertDrawString(&gHelpBoxSt.text[0], 0, 8, str);
}

void DrawHelpBoxStatCapStats(int item)
{   
    int x = 64, cap = 0;
    switch (item)
    {
        case 0xFFED: // HP
            cap = gStatScreen.unit->pClassData->maxHP;
            break;
        case 0xFFEE:
            cap = gStatScreen.unit->pClassData->maxPow;
            break;
        case 0xFFEF:
            cap = gStatScreen.unit->pClassData->maxSkl;
            break;
        case 0xFFF0:
            cap = gStatScreen.unit->pClassData->maxSpd;
            break;
        case 0xFFF1: // Luck
            cap = 30;
            x += 16;
            break;
        case 0xFFF2:
            cap = gStatScreen.unit->pClassData->maxDef;
            break;
        case 0xFFF3:
            cap = gStatScreen.unit->pClassData->maxRes;
            break;
        case 0xFFF4: // Mov
            cap = 15;
            x += 16;
            break;
        case 0xFFF5:
            cap = gStatScreen.unit->pClassData->maxCon;
            break;
    }

    Text_InsertDrawNumberOrBlank(&gHelpBoxSt.text[0], x, 7, cap);
}
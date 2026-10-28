#include "gbafe.h"

void HbPopulate_SSWExp(struct HelpBoxProc* proc)
{
    proc->msgId = 0x561 + proc->info->msgId; // 0x561 is the first WEXP help message text.
    // 0xFFFE is used as a special item index by the save info box, so we're gonna count down from that.
    proc->item = 0xFFF6 + proc->info->msgId;
}

void DrawHelpBoxWRankLabels()
{
    Text_InsertDrawString(&gHelpBoxSt.text[0], 0, 8, "W. Exp");
    Text_InsertDrawString(&gHelpBoxSt.text[0], 64, 8, "To Next");
}

void DrawHelpBoxWRankStats(int item)
{
    int rankIndex;
    switch (item) 
    {
        case 0xFFFD:
            rankIndex = 4;
            break;
        case 0xFFFC:
        case 0xFFFB:
        case 0xFFFA:
            rankIndex = item - 0xFFF5;
            break;
        default:
            rankIndex = item - 0xFFF6;
            break;
    }

    u8 wexp = gStatScreen.unit->ranks[rankIndex];

    u8 toNext = 0xFF;
    if (wexp < WPN_EXP_E) {
    } else if (wexp < WPN_EXP_D) {
        toNext = WPN_EXP_D - wexp;
    } else if (wexp < WPN_EXP_C) {
        toNext = WPN_EXP_C - wexp;
    } else if (wexp < WPN_EXP_B) {
        toNext = WPN_EXP_B - wexp;
    } else if (wexp < WPN_EXP_A) {
        toNext = WPN_EXP_A - wexp;
    } else if (wexp < WPN_EXP_S) {
        toNext = WPN_EXP_S - wexp;
    }
    
    Text_InsertDrawNumberOrBlank(&gHelpBoxSt.text[0], wexp > 99 ? 50 : 44, 7, wexp == 0 ? 0xFF : wexp);
    Text_InsertDrawNumberOrBlank(&gHelpBoxSt.text[0], 116, 7, toNext);
}
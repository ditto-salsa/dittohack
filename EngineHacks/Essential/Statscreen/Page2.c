#include "gbafe.h"

void DisplayPage2(void)
{
    const struct Vec2 posLut[] = { {1, 1}, {1, 3}, {9, 1}, {9, 3}, {9, 7}, {1, 5}, {9, 5}, {1, 7} };

    for (int i = 0; i < 8; i++)
    {
        DisplayWeaponExp(i, posLut[i].x, posLut[i].y, i);
    }

    DisplaySupportList();
}
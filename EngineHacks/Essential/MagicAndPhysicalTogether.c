#include "gbafe.h"

s8 UnitHasMagicRank(struct Unit* unit)
{
    int weapon = GetUnitEquippedWeapon(unit);
    
    if (weapon) return (GetItemAttributes(weapon) & IA_MAGIC) >> 1;

    return unit->ranks[ITYPE_STAFF] > 0;
}
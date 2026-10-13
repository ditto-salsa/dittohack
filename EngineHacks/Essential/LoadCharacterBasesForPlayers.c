#include "gbafe.h"

void UnitLoadStatsFromChracter(struct Unit* unit, const struct CharacterData* character) {
    int i;

    unit->maxHP = character->baseHP + unit->pClassData->baseHP * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->pow   = character->basePow + unit->pClassData->basePow * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->skl   = character->baseSkl + unit->pClassData->baseSkl * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->spd   = character->baseSpd + unit->pClassData->baseSpd * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->def   = character->baseDef + unit->pClassData->baseDef * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->res   = character->baseRes + unit->pClassData->baseRes * (UNIT_FACTION(unit) != FACTION_BLUE);
    unit->lck   = character->baseLck;

    unit->conBonus = 0;

    for (i = 0; i < 8; ++i) {
        unit->ranks[i] = unit->pClassData->baseRanks[i];

        if (unit->pCharacterData->baseRanks[i])
            unit->ranks[i] = unit->pCharacterData->baseRanks[i];
    }

    if (UNIT_FACTION(unit) == FACTION_BLUE && (unit->level != UNIT_LEVEL_MAX))
        unit->exp = 0;
    else
        unit->exp = UNIT_EXP_DISABLED;
}
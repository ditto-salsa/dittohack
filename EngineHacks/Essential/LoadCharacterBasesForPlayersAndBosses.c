#include "gbafe.h"

void UnitLoadStatsFromChracter(struct Unit* unit, const struct CharacterData* character) {
    int i;

    #define PlayerOrBoss (UNIT_FACTION(unit) != FACTION_BLUE && !(UNIT_CATTRIBUTES(unit) & CA_BOSS))

    unit->maxHP = character->baseHP + unit->pClassData->baseHP * PlayerOrBoss;
    unit->pow   = character->basePow + unit->pClassData->basePow * PlayerOrBoss;
    unit->skl   = character->baseSkl + unit->pClassData->baseSkl * PlayerOrBoss;
    unit->spd   = character->baseSpd + unit->pClassData->baseSpd * PlayerOrBoss;
    unit->def   = character->baseDef + unit->pClassData->baseDef * PlayerOrBoss;
    unit->res   = character->baseRes + unit->pClassData->baseRes * PlayerOrBoss;
    unit->lck   = character->baseLck;

    #undef PlayerOrBoss

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
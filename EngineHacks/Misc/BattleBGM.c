#include "gbafe.h"
void EkrPlayMainBGM(void)
{
    int ret, songid, songid2, pid;
    struct BattleUnit * bul, * bur, ** pbul, ** pbur;

    pbul = &gpEkrBattleUnitLeft;
    pbur = &gpEkrBattleUnitRight;

    bul = *pbul;
    bur = *pbur;

    if (gBmSt.gameStateBits & BM_FLAG_5)
    {
        gEkrMainBgmPlaying = 0;
        return;
    }

    gEkrMainBgmPlaying = 1;

    switch (gBanimFactionPal[gEkrInitialHitSide])
    {
        case FACTION_ID_BLUE:
            songid = GetROMChapterStruct(gPlaySt.chapterIndex)->mapBgmIds[3];
        case FACTION_ID_GREEN:
            songid = GetROMChapterStruct(gPlaySt.chapterIndex)->mapBgmIds[5];
        case FACTION_ID_RED:
        default:
            songid = GetROMChapterStruct(gPlaySt.chapterIndex)->mapBgmIds[4];
    }

    if (GetBattleAnimArenaFlag() == 1)
    {
        Sound_SetDefaultMaxNumChannels();
        EfxOverrideBgm(SONG_IN_THE_COLOSSEUM, 0x100);
        return;
    }

    if (GetBanimLinkArenaFlag() == 1)
    {
        EfxOverrideBgm(SONG_IN_THE_COLOSSEUM, 0x100);
        return;
    }

    if (gEkrDistanceType == EKR_DISTANCE_PROMOTION)
    {
        EfxOverrideBgm(SONG_TO_A_HIGHER_PLACE, 0x100);
        return;
    }

    ret = false;
    if (EkrCheckWeaponSieglindeSiegmund(bur->weaponBefore) == true)
        ret = true;

    if (!EkrCheckAttackRound(1))
        ret = false;

    if (gBanimValid[POS_L] == false)
        ret = false;

    pid = UNIT_CHAR_ID(&bul->unit);
    if (pid == CHARACTER_LYON)
        ret = false;

    if (pid == CHARACTER_LYON_FINAL)
        ret = false;

    if (pid == CHARACTER_FOMORTIIS)
        ret = false;

    if (ret == true)
    {
        EfxOverrideBgm(SONG_SACRED_STRENGTH, 0x100);
        return;
    }

    songid2 = GetBanimBossBGM(&bul->unit);

    if (UNIT_FACTION(GetUnitFromCharId(UNIT_CHAR_ID(&bul->unit))) == FACTION_BLUE)
        songid2 = -1;

    if (gBanimValid[POS_L] == false)
        songid2 = -1;

    if (songid2 != -1)
    {
        EfxOverrideBgm(songid2, 0x100);
        return;
    }

    ret = false;
    if (UNIT_CLASS_ID(&bur->unit) == CLASS_DANCER)
    {
        if (gBattleStats.config & 0x40)
            ret = true;

        if (gBattleStats.config & 0x200)
            ret = true;
    }

    if (ret == true)
    {
        EfxOverrideBgm(SONG_TETHYS, 0x100);
        return;
    }

    if (songid == 0xFFFF) return;

    if (songid != -1)
    {
        EfxOverrideBgm(songid, 0x100);
        return;
    }
    gEkrMainBgmPlaying = false;
}

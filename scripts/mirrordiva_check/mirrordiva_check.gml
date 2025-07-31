// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mirrordiva_check(){
if charchoose=0
{mirrorscript=animsetup_viva
name="VIVA?"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=0

DeathCry=snd_viva2

DamageVoice1=snd_viva9
DamageVoice2=snd_viva10
DamageVoice3=snd_viva11

StandSpr=spr_viva_stand
MoveSpr=spr_viva_move
RunSpr=spr_viva_run
AtkSpr=spr_viva_attack
AtkSpr2=spr_viva_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack
JumpSpr=spr_viva_stand
JumpSpr2=spr_viva_stand
ThrownSpr=spr_viva_hit
FlatSpr=spr_viva_flat
ShockSpr=spr_viva_elec
BurnSpr=spr_viva_burned
FrozenSpr=spr_viva_frozen
DizzySpr=spr_viva_dizzy
cutSpr1=spr_viva_cut1
cutSpr2=spr_viva_cut2

}
	
if charchoose=1
{mirrorscript=animsetup_hina
name="HINA?"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=1

DeathCry=snd_hina2

DamageVoice1=snd_hina12
DamageVoice2=snd_hina11
DamageVoice3=snd_hina10

StandSpr=spr_hina_stand
MoveSpr=spr_hina_move
RunSpr=spr_hina_run
AtkSpr=spr_viva_attack
AtkSpr2=spr_viva_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack
JumpSpr=spr_hina_stand
JumpSpr2=spr_hina_stand
ThrownSpr=spr_hina_hit
FlatSpr=spr_hina_flat
ShockSpr=spr_hina_elec
BurnSpr=spr_hina_burned
FrozenSpr=spr_hina_frozen
DizzySpr=spr_hina_dizzy

cutSpr1=spr_hina_cut1
cutSpr2=spr_hina_cut2
}

if charchoose=2
{mask_index=spr_shadow mirrorscript=animsetup_bahati

name="BAHATI?"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=2

DeathCry=snd_bahati2

DamageVoice1=snd_bahati10
DamageVoice2=snd_bahati9
DamageVoice3=snd_bahati8

StandSpr=spr_bahati_stand
MoveSpr=spr_bahati_move
RunSpr=spr_bahati_run
AtkSpr=spr_bahati_attack
AtkSpr2=spr_bahati_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack
JumpSpr=spr_bahati_stand
JumpSpr2=spr_bahati_stand
ThrownSpr=spr_bahati_hit
FlatSpr=spr_bahati_flat
ShockSpr=spr_bahati_elec
BurnSpr=spr_bahati_burned
FrozenSpr=spr_bahati_frozen
DizzySpr=spr_bahati_dizzy

cutSpr1=spr_bahati_cut1
cutSpr2=spr_bahati_cut2
}

if charchoose=3
{
name="SOFIA?"
enemyPortraitSpr=spr_playerface mirrorscript=animsetup_sofia
enemyPortraitIndex=3

DeathCry=snd_sofia2
ReturnVoice=snd_sofia7

DamageVoice1=snd_sofia10
DamageVoice2=snd_sofia9
DamageVoice3=snd_sofia8

StandSpr=spr_sofia_stand
MoveSpr=spr_sofia_move
RunSpr=spr_sofia_run
AtkSpr=spr_viva_attack
AtkSpr2=spr_viva_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack
JumpSpr=spr_sofia_stand
JumpSpr2=spr_sofia_stand
ThrownSpr=spr_sofia_hit
FlatSpr=spr_sofia_flat
ShockSpr=spr_sofia_elec
BurnSpr=spr_sofia_burned
FrozenSpr=spr_sofia_frozen
DizzySpr=spr_sofia_dizzy

cutSpr1=spr_sofia_cut1
cutSpr2=spr_sofia_cut2
}
}
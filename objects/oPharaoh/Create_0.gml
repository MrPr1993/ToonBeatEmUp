enemy_data()
specialFX=0

pointshit=10
points=100

name="HATHOR"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=11

DamageVoice1=snd_pharaoh12
DamageVoice2=snd_pharaoh12
DamageVoice3=snd_pharaoh12

DeathCry=snd_pharaoh1
HitGround=snd_hitground

idlestyle=1
coffinRecharge=0
summonRecharge=0
atkChoices=0

rangeAtk=400

hp=2
maxhp=2

StandSpr=spr_pharaoh_stand
MoveSpr=spr_pharaoh_move
RunSpr=spr_pharaoh_move

overwriteAttack=1
AtkSpr=spr_pharaoh_whip
AtkSpr2=spr_wolfita_attack2
AtkSpr3=spr_wolfita_attack
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack

JumpSpr=spr_pharaoh_stand
JumpSpr2=spr_pharaoh_stand
ThrownSpr=spr_pharaoh_hit
FlatSpr=spr_pharaoh_flat
ShockSpr=spr_pharaoh_elec
BurnSpr=spr_pharaoh_burned
FrozenSpr=spr_pharaoh_frozen
DizzySpr=spr_pharaoh_hit

DizzySpr=spr_pharaoh_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_pharaoh_panic

isBoss=1
specialBossState=1

offScreen=0
offScreenMode=1

isHeavy=1

height=100

animLock=0

enemyID=156

//isIdle=1
//canAttack=6

spritepos_setup(1,24,-13,62)

spritepos_setup(2,6,23,0)
spritepos_setup(2,24,12,79)

//oControl.BossHPID=self

specialtaunt=function()
{
sprite_index=spr_pharaoh_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=2.9 AnimFrame=0
}


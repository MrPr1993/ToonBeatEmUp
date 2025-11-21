enemy_data()
specialFX=0

pointshit=10
points=100

superarmor=1

name="C.ROSY"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=10

shadow=spr_bigshadow
hasShadow=1

grabRecharge=0

DamageVoice1=snd_franki2
DamageVoice2=snd_franki2
DamageVoice3=snd_franki2

	walkSpeed=0.5
	walkSpeedY=0.5
	walkMulX=0.5
	walkMulY=0.5


DeathCry=snd_franki3
HitGround=snd_hitground

rangeAtk=400

hp=2
maxhp=2


StandSpr=spr_franki_stand
MoveSpr=spr_franki_move
RunSpr=spr_franki_move

overwriteAttack=1
AtkSpr=spr_franki_quake
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1
AtkSpr2=spr_wolfita_attack2
AtkSpr3=spr_franki_quake
AtkSpr4=spr_wolfita_attack
AtkSpr5=spr_wolfita_attack
JumpAtkSpr=spr_wolfita_attack
JumpAtkSpr2=spr_wolfita_attack

hasscaredSpr=1 scaredSpr=spr_franki_panic

JumpSpr=spr_franki_stand
JumpSpr2=spr_franki_stand
ThrownSpr=spr_franki_hit
FlatSpr=spr_franki_flat
ShockSpr=spr_franki_elec
BurnSpr=spr_franki_burned
FrozenSpr=spr_franki_frozen
DizzySpr=spr_franki_dizzy hasDizzy=1

isBoss=1 isBossCheck=1
specialBossState=1

offScreen=0
offScreenMode=1

isHeavy=1
throwHeavy=1

height=110

animLock=0

overwriteMove=1

enemyID=153

//isIdle=1
//canAttack=6

spritepos_setup(1,24,-13,62)

spritepos_setup(2,6,23,0)
spritepos_setup(2,24,12,79)

//oControl.BossHPID=self

specialtaunt=function()
{
sprite_index=spr_franki_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}

enemy_data()

enemyscript=animsetup_boxer

name="MS.PUNCH"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=8

pointshit=10
points=100

isHeavy=1
throwHeavy=1
HitGround=snd_hitgroundheavy

DamageVoice1=snd_femenemy8
DamageVoice2=snd_femenemy8
DamageVoice3=snd_femenemy8

DeathCry=snd_femenemy3

specialFX=0

height=114

rangeAtk=240

StandSpr=spr_boxer_stand
MoveSpr=spr_boxer_move
RunSpr=spr_boxer_move

AtkSpr=spr_boxer_attack
AtkSpr2=spr_boxer_attack2
AtkSpr3=spr_femburglar_attack
AtkSpr4=spr_femburglar_attack
AtkSpr5=spr_femburglar_attack
JumpAtkSpr=spr_femburglar_attack
JumpAtkSpr2=spr_femburglar_attack

JumpSpr=spr_boxer_stand
JumpSpr2=spr_boxer_stand
ThrownSpr=spr_boxer_hit
FlatSpr=spr_boxer_flat
ShockSpr=spr_boxer_elec
BurnSpr=spr_boxer_burned
FrozenSpr=spr_boxer_frozen
DizzySpr=spr_boxer_dizzy hasDizzy=1


	hasFront=1
	FrontSpr=spr_boxer_front

hasCut=1
cutSpr1=spr_boxer_cut1
cutSpr2=spr_boxer_cut2

current_pal=2;
my_pal_sprite=spr_boxerpal
spritepos_setup(1,24,3,53)
spritepos_setup(2,24,-12,93)

//isIdle=1
//canAttack=6

specialtaunt=function()
{
sprite_index=spr_boxer_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if animFrame>1.9 animFrame=0
}



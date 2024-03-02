enemy_data()

dizzyPercentageMax=25

name="MR.LARGE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=3

DamageVoice1=snd_enemy4
DamageVoice2=snd_enemy4
DamageVoice3=snd_enemy4

pointshit=10
points=100

enemyscript=animsetup_fatburglar

DeathCry=choose(snd_deathcry3)

HitGround=snd_hitgroundheavy
isHeavy=1
throwHeavy=1
rangeAtk=320

OneAttack=2



hp=0.6
maxhp=0.6

height=80

specialFX=0



StandSpr=spr_fatburglar_stand
MoveSpr=spr_fatburglar_move
RunSpr=spr_fatburglar_move
	hasFront=1
	FrontSpr=spr_fatburglar_front

AtkSpr=spr_fatburglar_attack
AtkSpr2=spr_fatburglar_attack2
AtkSpr3=spr_fatburglar_charge
AtkSpr4=spr_fatburglar_attack
AtkSpr5=spr_fatburglar_attack
JumpAtkSpr=spr_fatburglar_attack
JumpAtkSpr2=spr_fatburglar_attack

JumpSpr=spr_fatburglar_stand
JumpSpr2=spr_fatburglar_stand
ThrownSpr=spr_fatburglar_hit
FlatSpr=spr_fatburglar_flat
ShockSpr=spr_fatburglar_elec
BurnSpr=spr_fatburglar_burned
FrozenSpr=spr_fatburglar_frozen
DizzySpr=spr_fatburglar_dizzy hasDizzy=1

hasCut=1
cutSpr1=spr_fatburglar_cut1
cutSpr2=spr_fatburglar_cut2

	enemyIdle2=spr_fatburglar_move
	enemyIdle3=spr_fatburglar_idle3
	enemyIdle3Spd=0.25

spritepos_setup(1,24,5,43)

spritepos_setup(2,6,10,-4)
spritepos_setup(2,24,-10,77)

 enemyID=25

specialtaunt=function()
{
sprite_index=spr_fatburglar_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if animFrame>2.9 animFrame=0
}

enemy_data()

dizzyPercentageMax=25

name="MS.SPICE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=2

DamageVoice1=snd_femenemy6
DamageVoice2=snd_femenemy6
DamageVoice3=snd_femenemy6

DeathCry=snd_femenemy1
HitGround=snd_hitground

enemyID=15

rangeAtk=200

pointshit=10
points=100

enemyscript=animsetup_femburglar

OneAttack=2

hp=0.2
maxhp=0.2

height=90

specialFX=0



StandSpr=spr_femburglar_stand
MoveSpr=spr_femburglar_move
RunSpr=spr_femburglar_move
	hasFront=1
	FrontSpr=spr_femburglar_front

AtkSpr=spr_femburglar_attack
AtkSpr2=spr_femburglar_attack2
AtkSpr3=spr_femburglar_attack
AtkSpr4=spr_femburglar_attack
AtkSpr5=spr_femburglar_attack
JumpAtkSpr=spr_femburglar_attack
JumpAtkSpr2=spr_femburglar_attack

JumpSpr=spr_femburglar_stand
JumpSpr2=spr_femburglar_stand
ThrownSpr=spr_femburglar_hit
FlatSpr=spr_femburglar_flat
ShockSpr=spr_femburglar_elec
BurnSpr=spr_femburglar_burned
FrozenSpr=spr_femburglar_frozen
DizzySpr=spr_femburglar_dizzy hasDizzy=1

hasCut=1
cutSpr1=spr_femburglar_cut1
cutSpr2=spr_femburglar_cut2

	enemyIdle2=spr_femburglar_move
	enemyIdle3=spr_femburglar_idle3
	enemyIdle3Spd=0.1


spritepos_setup(1,6,0,18)
spritepos_setup(1,24,1,49)

spritepos_setup(2,6,4,-1)
spritepos_setup(2,24,5,72)




specialtaunt=function()
{
sprite_index=spr_femburglar_idle1
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}

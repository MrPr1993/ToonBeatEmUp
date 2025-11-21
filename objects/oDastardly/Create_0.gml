enemy_data()

name="VAN BAD"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=18

enemyscript=animsetup_enemy

pointshit=10
points=100
isBossCheck=1
rangeAtk=300

OneAttack=2

hp=3
maxhp=3

height=110

isHeavy=1


specialFX=0

DamageVoice1=snd_dastardly28
DamageVoice2=snd_dastardly28
DamageVoice3=snd_dastardly28

DeathCry=snd_dastardly29

StandSpr=spr_dastardly_stand
MoveSpr=spr_dastardly_move
RunSpr=spr_dastardly_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_dastardly_stand
JumpSpr2=spr_dastardly_stand
ThrownSpr=spr_dastardly_hit
FlatSpr=spr_dastardly_flat
ShockSpr=spr_dastardly_elec
BurnSpr=spr_dastardly_burned
FrozenSpr=spr_dastardly_frozen
DizzySpr=spr_dastardly_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_dastardly_panic

isBoss=1
specialBossState=1

shadowSpr=spr_midshadow

enemyID=176

spritepos_setup(1,24,4,39)
spritepos_setup(2,24,37,69)

if oControl.betatest=1
{if keyboard_check(vk_control) {canmove=0 anim=100 specialanim=0}
	
	if keyboard_check(vk_shift) {canmove=0 anim=101 specialanim=0}
	}
	
	
	
	
specialtaunt=function()
{
sprite_index=spr_dastardly_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>2.9 AnimFrame=0
}
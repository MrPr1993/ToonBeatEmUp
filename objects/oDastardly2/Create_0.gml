enemy_data()

name="VAN BAD"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=58

DamageVoice1=snd_fdas1
DamageVoice2=snd_fdas1
DamageVoice3=snd_fdas1

DeathCry=snd_fdas2

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=300

OneAttack=2

isHeavy=1

hp=3
maxhp=3

height=110

specialFX=0

idlestyle=1

StandSpr=spr_dastardly2_stand
MoveSpr=spr_dastardly2_move
RunSpr=spr_dastardly2_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_dastardly2_stand
JumpSpr2=spr_dastardly_stand
ThrownSpr=spr_dastardly2_hit
FlatSpr=spr_dastardly2_flat
ShockSpr=spr_dastardly2_elec
BurnSpr=spr_dastardly2_burned
FrozenSpr=spr_dastardly2_frozen
DizzySpr = spr_dastardly2_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_dastardly2_panic

enemyID=177

spritepos_setup(1,24,13,52)
spritepos_setup(2,24,11,79)

isBoss=1
specialBossState=1

if oControl.betatest=1
{if keyboard_check(vk_control) {canmove=0 anim=100 specialanim=0 z=-200 ground=0}
	
	}
	
	
specialtaunt=function()
{
sprite_index=spr_dastardly2_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>2.9 AnimFrame=0
}
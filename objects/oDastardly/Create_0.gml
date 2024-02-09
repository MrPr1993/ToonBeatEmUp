enemy_data()

name="VAN BAD"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=18

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=2
maxhp=2

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



if oControl.betatest=1
{if keyboard_check(vk_control) {canmove=0 anim=100 specialtaunt=0}
	
	if keyboard_check(vk_shift) {canmove=0 anim=101 specialtaunt=0}
	}
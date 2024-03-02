enemy_data()

name="DR.FRAN"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=60//36

	DeathCry=snd_scientist13//snd_deathcry2
	DamageVoice1=snd_scientist12
	DamageVoice2=snd_scientist12
	DamageVoice3=snd_scientist12

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=200

OneAttack=2

hp=2
maxhp=2

height=100

specialFX=0

StandSpr=spr_scientistm_stand
MoveSpr=spr_scientistm_move
RunSpr=spr_scientistm_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_burglar_stand
JumpSpr2=spr_burglar_stand
ThrownSpr=spr_scientistm_hit
FlatSpr=spr_scientistm_flat
ShockSpr=spr_scientistm_elec
BurnSpr=spr_scientistm_burned
FrozenSpr=spr_scientistm_frozen

isHeavy=1

current_pal=0;
my_pal_sprite=spr_zombiepal

isBoss=1
specialBossState=1

enemyID=175

spritepos_setup(1,24,2,48)
spritepos_setup(2,24,42,82)

if oControl.betatest if keyboard_check(vk_control) {canmove=0 anim=100
	
	if keyboard_check(vk_shift) specialtaunt=3
	
	}
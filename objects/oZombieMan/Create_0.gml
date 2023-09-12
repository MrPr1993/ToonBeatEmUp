enemy_data()

name="ZOMBILLY"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=13

enemyscript=animsetup_zombie

	walkSpeed=0.5
	walkSpeedY=0.5
	
	DeathCry=snd_mzombie1//snd_deathcry2
	DamageVoice1=snd_mzombie2
	DamageVoice2=snd_mzombie2
	DamageVoice3=snd_mzombie2

pointshit=10
points=100

rangeAtk=300

OneAttack=2

hp=0.25
maxhp=0.25

//walkSpeed=

height=86

specialFX=0

StandSpr=spr_zombiem_stand
MoveSpr=spr_zombiem_move
RunSpr=spr_zombiem_move
	hasFront=1
	FrontSpr=spr_zombiem_front

AtkSpr=spr_zombiem_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_zombiem_stand
JumpSpr2=spr_zombiem_stand
ThrownSpr=spr_zombiem_hit
FlatSpr=spr_zombiem_flat
ShockSpr=spr_zombiem_elec
BurnSpr=spr_zombiem_burned
FrozenSpr=spr_zombiem_frozen
DizzySpr=spr_zombiem_dizzy hasDizzy=1


current_pal=0;
my_pal_sprite=spr_zombiepal

spritepos_setup(1,24,3,40)

spritepos_setup(2,0,17,70)
spritepos_setup(2,24,18,67)

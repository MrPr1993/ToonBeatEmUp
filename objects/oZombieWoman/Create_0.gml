enemy_data()

name="ZOMBETTY"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=14

enemyscript=animsetup_zombie

pointshit=10
points=100

	DeathCry=snd_fzombie1//snd_deathcry2
	DamageVoice1=snd_fzombie2
	DamageVoice2=snd_fzombie2
	DamageVoice3=snd_fzombie2

rangeAtk=300

	walkSpeed=0.5
	walkSpeedY=0.5
	

OneAttack=2

hp=0.25
maxhp=0.25

height=86

specialFX=0

StandSpr=spr_zombiew_stand
MoveSpr=spr_zombiew_move
RunSpr=spr_zombiew_move
	hasFront=1
	FrontSpr=spr_zombiew_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_zombiew_stand
JumpSpr2=spr_zombiew_stand
ThrownSpr=spr_zombiew_hit
FlatSpr=spr_zombiew_flat
ShockSpr=spr_zombiew_elec
BurnSpr=spr_zombiew_burned
FrozenSpr=spr_zombiew_frozen
DizzySpr=spr_zombiew_dizzy hasDizzy=1

hasCut=1
cutSpr1=spr_zombiew_cut1
cutSpr2=spr_zombiew_cut2

hasscaredSpr=1 scaredSpr=spr_zombiew_panic

current_pal=0;
my_pal_sprite=spr_zombiepal

enemyID=42

spritepos_setup(1,24,-4,47)

spritepos_setup(2,0,15,72)
spritepos_setup(2,24,13,72)

enemy_data()

bub=-1

name="SIRENA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=26

DamageVoice1=snd_femenemy6
DamageVoice2=snd_femenemy6
DamageVoice3=snd_femenemy6

DeathCry=snd_femenemy1

enemyscript=animsetup_enemy

idlestyle=1

	walkSpeed=0.5
	walkSpeedY=0.5

pointshit=10
points=100

rangeAtk=300

OneAttack=2

hp=0.2
maxhp=0.2

height=84

specialFX=0

StandSpr=spr_siren_stand
MoveSpr=spr_siren_move
RunSpr=spr_siren_move
	hasFront=1
	FrontSpr=spr_siren_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_siren_stand
JumpSpr2=spr_siren_stand
ThrownSpr=spr_siren_hit
FlatSpr=spr_siren_flat
ShockSpr=spr_siren_elec
BurnSpr=spr_siren_burned
FrozenSpr=spr_siren_frozen
hasDizzy=1 DizzySpr=spr_siren_dizzy

current_pal=0;
my_pal_sprite=spr_zombiepal


spritepos_setup(1,24,0,51)
spritepos_setup(2,24,12,71)
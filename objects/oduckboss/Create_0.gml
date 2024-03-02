enemy_data()

name="QUACKI"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=39

enemyscript=animsetup_enemy

	DeathCry=snd_duck12//snd_deathcry2
	DamageVoice1=snd_duck11
	DamageVoice2=snd_duck11
	DamageVoice3=snd_duck11

pointshit=10
points=100

rangeAtk=360

OneAttack=2

isBoss=1

hp=2
maxhp=2

height=90
isHeavy=1

specialFX=0

StandSpr=spr_duck_stand
MoveSpr=spr_duck_move
RunSpr=spr_duck_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_duck_stand
JumpSpr2=spr_duck_stand
ThrownSpr=spr_duck_hit
FlatSpr=spr_duck_flat
ShockSpr=spr_duck_elec
BurnSpr=spr_duck_burned
FrozenSpr=spr_duck_frozen

enemyID=160

current_pal=0;
my_pal_sprite=spr_zombiepal

spritepos_setup(1,24,3,58)
spritepos_setup(2,24,21,86)

if oControl.betatest=1
{if keyboard_check(vk_control) canmove=0 anim=100}
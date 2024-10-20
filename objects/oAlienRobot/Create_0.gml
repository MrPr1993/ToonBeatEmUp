enemy_data()

name="ELECTRON"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=28

enemyscript=animsetup_enemy

DamageVoice1=snd_metalhit
DamageVoice2=snd_metalhit
DamageVoice3=snd_metalhit
DeathCry=snd_deathcryrobot
HitGround=snd_hitgroundmetal

pointshit=10
points=100

rangeAtk=180

OneAttack=2

isNoBlood=1

hp=0.2
maxhp=0.2

height=70

specialFX=0

StandSpr=spr_alienrobot_stand
MoveSpr=spr_alienrobot_move
RunSpr=spr_alienrobot_move
	hasFront=1
	FrontSpr=spr_alienrobot_front

AtkSpr=spr_alienrobot_attack
AtkSpr2=spr_alienrobot_attack
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_alienrobot_stand
JumpSpr2=spr_alienrobot_stand
ThrownSpr=spr_alienrobot_hit
FlatSpr=spr_alienrobot_flat
ShockSpr=spr_alienrobot_elec
BurnSpr=spr_alienrobot_burned
FrozenSpr=spr_alienrobot_frozen
hasDizzy=1 DizzySpr=spr_alienrobot_dizzy

hasscaredSpr=1 scaredSpr=spr_alienrobot_panic

hasCut=1
cutSpr1=spr_alienrobot_cut1
cutSpr2=spr_alienrobot_cut2

current_pal=0;
my_pal_sprite=spr_robotpal


enemyID=91

spritepos_setup(1,24,7,30)
spritepos_setup(2,24,12,49)
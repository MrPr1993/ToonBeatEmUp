enemy_data()

name="ROOSEVELT"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=49

isNoBlood=1

enemyscript=animsetup_enemy
chardraw=draw_swing;

pointshit=10
points=100

rangeAtk=100

idlestyle=1

OneAttack=2

hp=0.2
maxhp=0.2

height=70

specialFX=0

DeathCry=snd_bear2

DamageVoice1=snd_bear1
DamageVoice2=snd_bear1
DamageVoice3=snd_bear1

HitGround=snd_bear4


StandSpr=spr_bear_stand
MoveSpr=spr_bear_move
RunSpr=spr_bear_move

AtkSpr=spr_bear_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_bear_stand
JumpSpr2=spr_bear_stand
ThrownSpr=spr_bear_hit
FlatSpr=spr_bear_flat
ShockSpr=spr_bear_elec
BurnSpr=spr_bear_burned
FrozenSpr=spr_bear_frozen
FrontSpr=spr_bear_front hasFront=1
DizzySpr=spr_bear_dizzy hasDizzy=1

current_pal=0;
my_pal_sprite=spr_bearpal

spritepos_setup(1,24,4,20)
spritepos_setup(1,24,4,44)

enemyID=63

if oControl.betatest if keyboard_check(vk_control)
weapon_add("TOYHAMMER")
enemy_data()

name="MARTIA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=23

enemyscript=animsetup_enemy
chardraw=draw_swing;

rangeAtk=200

if oControl.betatest=1
{if keyboard_check(vk_shift)
weapon_add("TASER")
}

pointshit=10
points=100


OneAttack=2

DamageVoice1=snd_martian1
DamageVoice2=snd_martian1
DamageVoice3=snd_martian1

DeathCry=snd_martian2


idlestyle=1

hp=0.2
maxhp=0.2

height=90

specialFX=0

StandSpr=spr_martian_stand
MoveSpr=spr_martian_move
RunSpr=spr_martian_move
	hasFront=1
	FrontSpr=spr_martian_front

AtkSpr=spr_martian_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_martian_stand
JumpSpr2=spr_martian_stand
ThrownSpr=spr_martian_hit
FlatSpr=spr_martian_flat
ShockSpr=spr_martian_elec
BurnSpr=spr_martian_burned
FrozenSpr=spr_martian_burned


current_pal=0;
my_pal_sprite=spr_zombiepal

spritepos_setup(1,24,2,40)
spritepos_setup(2,6,1,0)
spritepos_setup(2,24,2,64)
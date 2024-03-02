enemy_data()

name="MR.DIVE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=45

chardraw=draw_swing;
enemyscript=animsetup_enemy

DeathCry=snd_deathcry1

DamageVoice1=snd_enemy3
DamageVoice2=snd_enemy3
DamageVoice3=snd_enemy3

pointshit=10
points=100

rangeAtk=160

OneAttack=2

idlestyle=1

hp=0.25
maxhp=0.25

height=80

specialFX=0

StandSpr=spr_diver_stand
MoveSpr=spr_diver_move
RunSpr=spr_diver_move

AtkSpr=spr_diver_attack
AtkSpr2=spr_diver_attack
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_diver_stand
JumpSpr2=spr_diver_stand
ThrownSpr=spr_diver_hit
FlatSpr=spr_diver_flat
ShockSpr=spr_diver_elec
BurnSpr=spr_diver_burned
FrozenSpr=spr_diver_frozen
hasDizzy=1 DizzySpr=spr_diver_dizzy

enemyIdle1=spr_diver_idle1
enemyIdle2=spr_diver_front

	hasFront=1
	FrontSpr=spr_diver_front


current_pal=0;
my_pal_sprite=spr_ninjapal

spritepos_setup(1,24,6,38)
spritepos_setup(2,24,13,63)

if oControl.betatest if keyboard_check(vk_control)
weapon_add("HARPOONGUN")
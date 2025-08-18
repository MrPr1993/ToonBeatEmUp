enemy_data()

name="GARETH"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=65

enemyscript=animsetup_enemy
chardraw=draw_swing;


pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.8
maxhp=0.8

height=80

specialFX=0

DeathCry=snd_merman2
DamageVoice1=snd_merman1
DamageVoice2=snd_merman1
DamageVoice3=snd_merman1

StandSpr=spr_knight_stand
MoveSpr=spr_knight_move
RunSpr=spr_knight_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_knight_move
JumpSpr2=spr_knight_move
ThrownSpr=spr_knight_hit
FlatSpr=spr_knight_flat
ShockSpr=spr_knight_elec
BurnSpr=spr_knight_burned
FrozenSpr=spr_knight_frozen
scaredSpr=spr_knight_panic hasscaredSpr=1
DizzySpr=spr_knight_dizzy hasDizzy=1
hasCut=1 cutSpr1=spr_knight_cut1 cutSpr2=spr_knight_cut2

enemyID=133

idlestyle=1

current_pal=0;
my_pal_sprite=spr_robotpal

weapon_add("SWORD")

if oControl.betatest=1
{if keyboard_check(vk_shift)
weapon_add("CLUB") //if keyboard_check(vk_control) weapon_add("LASERGUN")
}

specialtaunt=function()
{
sprite_index=spr_knight_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}

idlestyle=1

spritepos_setup(1,24,2,42)
spritepos_setup(2,24,16,75)

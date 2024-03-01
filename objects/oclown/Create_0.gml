enemy_data()

name="ANETTE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=38

enemyscript=animsetup_enemy
chardraw=draw_swing_2

DamageVoice1=snd_femenemy8
DamageVoice2=snd_femenemy8
DamageVoice3=snd_femenemy8
DeathCry=snd_femenemy3

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.4
maxhp=0.4

height=100

specialFX=0

StandSpr=spr_clown_stand
MoveSpr=spr_clown_move
RunSpr=spr_clown_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_clown_stand
JumpSpr2=spr_clown_stand
ThrownSpr=spr_clown_hit
FlatSpr=spr_clown_flat
ShockSpr=spr_clown_elec
BurnSpr=spr_clown_burned
FrozenSpr=spr_clown_frozen
FrontSpr=spr_clown_front hasFront=1
hasDizzy=1 DizzySpr=spr_clown_dizzy

current_pal=0;
my_pal_sprite=spr_bearpal

dropweapon=0

weaponanim_2(mask_none,0,0,0,0,0)
weaponBack2=0

weapon_add_double("JUGGLE")

if oControl.betatest
{
if keyboard_check(vk_shift) weapon_add_double("TWIRL")
if keyboard_check(vk_control) weapon_add_double("WHIP")
}

spritepos_setup(1,24,5,61) ///Waist, Frame 24
spritepos_setup(2,24,12,85) ///Head, Frame 24
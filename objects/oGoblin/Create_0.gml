enemy_data()

name="GOBERT"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=27

enemyscript=animsetup_enemy
chardraw=draw_swing;

if oControl.betatest=1
{if keyboard_check(vk_shift)
weapon_add("PICKAXE")
}

	DeathCry=snd_mzombie1//snd_deathcry2
	DamageVoice1=snd_mzombie2
	DamageVoice2=snd_mzombie2
	DamageVoice3=snd_mzombie2

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.3
maxhp=0.3

height=70

specialFX=0

StandSpr=spr_goblin_stand
MoveSpr=spr_goblin_move
RunSpr=spr_goblin_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_goblin_stand
JumpSpr2=spr_goblin_stand
ThrownSpr=spr_goblin_hit
FlatSpr=spr_goblin_flat
ShockSpr=spr_goblin_elec
BurnSpr=spr_goblin_burned
FrozenSpr=spr_goblin_frozen


spritepos_setup(1,24,-5,25)
spritepos_setup(2,6,0,2)
spritepos_setup(2,24,-4,56)


current_pal=0;
my_pal_sprite=spr_zombiepal

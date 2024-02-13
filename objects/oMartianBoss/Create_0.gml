enemy_data()

name="KUINN"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=54

	DeathCry=snd_martianb11//snd_deathcry2
	DamageVoice1=snd_martianb10
	DamageVoice2=snd_martianb10
	DamageVoice3=snd_martianb10

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=300

OneAttack=2

hp=2
maxhp=2

isHeavy=1

height=110

specialFX=0

StandSpr=spr_martianb_stand
MoveSpr=spr_martianb_move
RunSpr=spr_martianb_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_martianb_move
JumpSpr2=spr_martianb_move
ThrownSpr=spr_martianb_hit
FlatSpr=spr_martianb_flat
ShockSpr=spr_martianb_elec
BurnSpr=spr_martianb_burned
FrozenSpr=spr_martianb_frozen


current_pal=0;
my_pal_sprite=spr_zombiepal

if oControl.betatest=1
if keyboard_check(vk_control)
{
canmove=0 anim=100 animFrame=0;
}
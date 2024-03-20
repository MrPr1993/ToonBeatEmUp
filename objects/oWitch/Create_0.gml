enemy_data()

name="KIANDRA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=32

	DeathCry=snd_witch10//snd_deathcry2
	DamageVoice1=snd_witch9
	DamageVoice2=snd_witch9
	DamageVoice3=snd_witch9

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=300

idlestyle=1

OneAttack=2

hp=2
maxhp=2

height=90

isHeavy=1

specialFX=0

StandSpr=spr_witch_stand
MoveSpr=spr_witch_move
RunSpr=spr_witch_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_witch_jump
JumpSpr2=spr_witch_jump
ThrownSpr=spr_witch_hit
FlatSpr=spr_witch_flat
ShockSpr=spr_witch_elec
BurnSpr=spr_witch_burned
FrozenSpr=spr_witch_frozen


current_pal=0;
my_pal_sprite=spr_zombiepal

enemyID=159

isBoss=1
specialBossState=1

bombRecharge=0
bombRecharge2=0

spritepos_setup(1,24,5,53)
spritepos_setup(2,24,14,81)

if oControl.betatest=1
if keyboard_check(vk_shift)
{
canmove=0 anim=100 animFrame=0;
}
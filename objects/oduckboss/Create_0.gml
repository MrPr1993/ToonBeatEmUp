enemy_data()

name="DIXIE"
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

height=110
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
DizzySpr=spr_duck_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_duck_panic

enemyID=160

runCharge=0

isBoss=1
specialBossState=1

fakeducks=2
fakeduckbuffer=360

piebuffer=360

current_pal=0;
my_pal_sprite=spr_zombiepal

spritepos_setup(1,24,3,58)
spritepos_setup(2,24,21,86)

specialtaunt=function()
{
sprite_index=spr_duck_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}

if oControl.betatest=1
{if keyboard_check(vk_control) {canmove=0 anim=100 z=-200 ground=0}}
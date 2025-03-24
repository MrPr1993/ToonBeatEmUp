enemy_data()

name="CIRCE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=41

	DeathCry=snd_seaweed10//snd_deathcry2
	DamageVoice1=snd_seaweed9
	DamageVoice2=snd_seaweed9
	DamageVoice3=snd_seaweed9

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=200

OneAttack=2

hp=2
maxhp=2

isHeavy=1
throwHeavy=1

idlestyle=1

height=110

specialFX=0



StandSpr=spr_seaweed_stand
MoveSpr=spr_seaweed_move
RunSpr=spr_seaweed_move

AtkSpr=spr_seaweed_attack1
AtkSpr2=spr_seaweed_attack2
AtkSpr3=spr_seaweed_attack3
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_seaweed_move
JumpAtkSpr2=spr_seaweed_move

JumpSpr=spr_seaweed_move
JumpSpr2=spr_seaweed_move
ThrownSpr=spr_seaweed_hit
FlatSpr=spr_seaweed_flat
ShockSpr=spr_seaweed_elec
BurnSpr=spr_seaweed_burned
FrozenSpr=spr_seaweed_frozen
DizzySpr=spr_seaweed_dizzy hasDizzy=1
hasscaredSpr=1 scaredSpr=spr_seaweed_panic
isBoss=1
specialBossState=1


spritepos_setup(1,24,17,53)
spritepos_setup(2,24,5,95)

enemyID=162

bombRecharge=0

idlestyle=1;

current_pal=0;
my_pal_sprite=spr_zombiepal

if oControl.betatest if keyboard_check(vk_control)
{
canmove=0 anim=100
}

specialtaunt=function()
{
sprite_index=spr_seaweed_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=2.9 AnimFrame=0
}
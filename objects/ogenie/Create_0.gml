enemy_data()

name="HAIFA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=47

	DeathCry=snd_genie14//snd_deathcry2
	DamageVoice1=snd_genie13
	DamageVoice2=snd_genie13
	DamageVoice3=snd_genie13

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=100

OneAttack=2

superarmor=1



isHeavy=1
throwHeavy=1
isBossCheck=1
hp=2
maxhp=2

height=100

idlestyle=1

specialFX=0

HitGround=snd_hitground

rangeAtk=400

hp=2
maxhp=2

StandSpr=spr_genie_stand
MoveSpr=spr_genie_move
RunSpr=spr_genie_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_burglar_stand
JumpSpr2=spr_burglar_stand
ThrownSpr=spr_genie_hit
FlatSpr=spr_genie_flat
ShockSpr=spr_genie_elec
BurnSpr=spr_genie_burned
FrozenSpr=spr_genie_frozen
DizzySpr=spr_genie_dizzy hasDizzy=1

spritepos_setup(1,24,10,47)
spritepos_setup(2,24,-3,88)

enemyID=167

isHeavy=1
throwHeavy=1

hasscaredSpr=1 scaredSpr=spr_genie_panic

isBoss=1
specialBossState=1


current_pal=0;
my_pal_sprite=spr_zombiepal

if oControl.betatest if keyboard_check(vk_control) {canmove=0 anim=100
	if keyboard_check(vk_shift) {instance_create_depth(x,y,-1,oGenieMaster); instance_destroy();}
	}


specialtaunt=function()
{
sprite_index=spr_genie_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=2.9 AnimFrame=0
}
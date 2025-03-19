enemy_data()

dizzyPercentageMax=25

name="MR.SNEAK"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=6
chardraw=draw_sneak;
weaponBack=1;

enterAnim=14 
//leaveAnim=12

enemyID=10

drawarms=1;

walkSpeed=0.5
rangeY=4
RunMoveSpeedDecrease=0.2



hasIdle=1
IdleSpr=spr_sneak_idle

enemyIdle1=spr_sneak_idle
enemyIdle2=spr_sneak_front
enemyIdle3=spr_burglar_idle
enemyIdle4=spr_burglar_idle
enemyIdle5=spr_burglar_idle

grabTest=0

DeathCry=snd_deathcry1

DamageVoice1=snd_enemy3
DamageVoice2=snd_enemy3
DamageVoice3=snd_enemy3

pointshit=10
points=100

enemyscript=animsetup_enemy

overwriteAttack=1
overwriteAttack2=1
overwriteAttack3=1
overwriteAttack4=1
overwriteAttack5=1

bombRecharge=0

rangeAtk=320

OneAttack=2

willGrab=0
grabAttempt=0
grabSave=0

hp=0.3
maxhp=0.3

height=78

specialFX=0

slideCharge=0

carryMax=0

StandSpr=spr_sneak_stand
MoveSpr=spr_sneak_move
RunSpr=spr_sneak_move

AtkSpr=spr_sneak_attack
AtkSpr2=spr_sneak_slide
AtkSpr3=spr_sneak_attack
AtkSpr4=spr_sneak_attack
AtkSpr5=spr_sneak_attack
JumpAtkSpr=spr_sneak_attack
JumpAtkSpr2=spr_sneak_attack
hasFront=1
FrontSpr=spr_sneak_front

JumpSpr=spr_sneak_stand
JumpSpr2=spr_sneak_stand
ThrownSpr=spr_sneak_hit
FlatSpr=spr_sneak_flat
ShockSpr=spr_sneak_elec
BurnSpr=spr_sneak_burned
FrozenSpr=spr_sneak_frozen
DizzySpr=spr_sneak_dizzy hasDizzy=1

	enemyIdle2=spr_sneak_move
	enemyIdle3=spr_sneak_idle3
	enemyIdle3Spd=0.1

hasCut=1
cutSpr1=spr_sneak_cut1
cutSpr2=spr_sneak_cut2

hasscaredSpr=1 scaredSpr=spr_sneak_panic

spritepos_setup(1,24,2,40)
spritepos_setup(2,6,1,0)
spritepos_setup(2,24,2,64)

my_pal_sprite=spr_sneakpal

current_pal=0

grabMax=0

specialtaunt=function()
{
if weaponspr!=-1
sprite_index=spr_sneak_tauntgun
else
sprite_index=spr_sneak_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>2.9 AnimFrame=0
}

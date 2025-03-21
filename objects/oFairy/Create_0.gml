enemy_data()

name="BELLE"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=53

DamageVoice1=snd_femenemy6
DamageVoice2=snd_femenemy6
DamageVoice3=snd_femenemy6

DeathCry=snd_femenemy1

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=160

OneAttack=2

hp=0.25
maxhp=0.25

height=70

specialFX=0

StandSpr=spr_fairy_stand
MoveSpr=spr_fairy_move
RunSpr=spr_fairy_move
	hasFront=1
	FrontSpr=spr_fairy_front

AtkSpr=spr_fairy_attack
AtkSpr2=spr_fairy_attack2
AtkSpr3=spr_fairy_attack
AtkSpr4=spr_fairy_attack
AtkSpr5=spr_fairy_attack
JumpAtkSpr=spr_fairy_attack
JumpAtkSpr2=spr_fairy_attack

JumpSpr=spr_fairy_stand
JumpSpr2=spr_fairy_stand
ThrownSpr=spr_fairy_hit
FlatSpr=spr_fairy_flat
ShockSpr=spr_fairy_elec
BurnSpr=spr_fairy_burned
FrozenSpr=spr_fairy_frozen
hasDizzy=1 DizzySpr=spr_fairy_dizzy

hasscaredSpr=1 scaredSpr=spr_fairy_panic

hasCut=1
cutSpr1=spr_fairy_cut1
cutSpr2=spr_fairy_cut2

enemyIdle1=spr_fairy_idle1
enemyIdle2=spr_fairy_front

current_pal=0;
my_pal_sprite=spr_fairypal

enemyID=69

spritepos_setup(1,24,-1,47)
spritepos_setup(2,24,-2,65)

specialtaunt=function()
{
sprite_index=spr_monk_taunt
frame_set(0,0,0.05)
frame_set(1,1,0.05)
if AnimFrame>1.9 AnimFrame=0
}
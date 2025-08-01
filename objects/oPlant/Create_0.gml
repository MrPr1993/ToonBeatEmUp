enemy_data()

name="FLORA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=29

enemyscript=animsetup_zombie



pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.6
maxhp=0.6

height=90

specialFX=0

isHeavy=0
throwHeavy=0

DeathCry=snd_plant2
DamageVoice1=snd_plant1
DamageVoice2=snd_plant1
DamageVoice3=snd_plant1

StandSpr=spr_plant_stand
MoveSpr=spr_plant_move
RunSpr=spr_plant_move
	hasFront=1
	FrontSpr=spr_plant_front

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_burglar_stand
JumpSpr2=spr_burglar_stand
ThrownSpr=spr_plant_hit
FlatSpr=spr_plant_flat
ShockSpr=spr_plant_elec
BurnSpr=spr_plant_burned
FrozenSpr=spr_plant_frozen
hasDizzy=1 DizzySpr=spr_plant_dizzy

hasCut=1
cutSpr1=spr_plant_cut1
cutSpr2=spr_plant_cut2

hasscaredSpr=1 scaredSpr=spr_plant_panic

current_pal=0;
my_pal_sprite=spr_plantpal

enemyID=72

spritepos_setup(1,24,4,37)
spritepos_setup(2,6,0,2)
spritepos_setup(2,24,10,70)

specialtaunt=function()
{
sprite_index=spr_plant_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
frame_set(2,2,0.1)
if AnimFrame>=2.9 AnimFrame=0
}
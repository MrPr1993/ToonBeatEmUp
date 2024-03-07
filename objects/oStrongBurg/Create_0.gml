enemy_data()

name="MR.CHIP"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=37

enemyscript=animsetup_enemy

pointshit=10
points=100

idlestyle=1

OneAttack=2

hp=1
maxhp=1

DamageVoice1=snd_buffenemy2
DamageVoice2=snd_buffenemy2
DamageVoice3=snd_buffenemy2

DeathCry=choose(snd_buffenemy3)

HitGround=snd_hitgroundheavy
isHeavy=1
throwHeavy=1
rangeAtk=200
rangeY=2

height=114

specialFX=0

StandSpr=spr_strongburg_stand
MoveSpr=spr_strongburg_move
RunSpr=spr_strongburg_move
	hasFront=1
	FrontSpr=spr_strongburg_front

AtkSpr=spr_strongburg_stand
AtkSpr2=spr_strongburg_stand
AtkSpr3=spr_strongburg_stand
AtkSpr4=spr_strongburg_stand
AtkSpr5=spr_strongburg_stand
JumpAtkSpr=spr_strongburg_stand
JumpAtkSpr2=spr_strongburg_stand

JumpSpr=spr_strongburg_stand
JumpSpr2=spr_strongburg_stand
ThrownSpr=spr_strongburg_hit
FlatSpr=spr_strongburg_flat
ShockSpr=spr_strongburg_elec
BurnSpr=spr_strongburg_burned
FrozenSpr=spr_strongburg_frozen

DizzySpr=spr_strongburg_dizzy hasDizzy=1

 enemyID=32
 
 my_pal_sprite=spr_boxerpal

specialtaunt=function()
{
sprite_index=spr_strongburg_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if animFrame>1.9 animFrame=0
}

spritepos_setup(1,24,7,40)
spritepos_setup(2,24,19,97)
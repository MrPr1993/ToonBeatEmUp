enemy_data()

name="PRIMA"///FERA, NEANNA
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=51

enemyscript=animsetup_enemy

DamageVoice1=snd_femenemy8
DamageVoice2=snd_femenemy8
DamageVoice3=snd_femenemy8
DeathCry=snd_femenemy3

pointshit=10
points=100

rangeAtk=100

OneAttack=2

idlestyle=1

hp=1
maxhp=1

HitGround=snd_hitgroundheavy
isHeavy=1
throwHeavy=1
rangeAtk=320


defMask=spr_shadow2

height=100

specialFX=0

StandSpr=spr_snowgirl_stand
MoveSpr=spr_snowgirl_move
RunSpr=spr_snowgirl_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_snowgirl_stand
JumpSpr2=spr_snowgirl_stand
ThrownSpr=spr_snowgirl_hit
FlatSpr=spr_snowgirl_flat
ShockSpr=spr_snowgirl_elec
BurnSpr=spr_snowgirl_burned
FrozenSpr=spr_snowgirl_frozen

hasCut=1
cutSpr1=spr_snowgirl_cut1
cutSpr2=spr_snowgirl_cut2

hasFront=1
FrontSpr=spr_snowgirl_front

hasscaredSpr=1 scaredSpr=spr_snowgirl_panic

enemyID=107

current_pal=0;
my_pal_sprite=spr_zombiepal

specialtaunt=function()
{
sprite_index=spr_snowgirl_taunt
frame_set(0,0,0.1)
frame_set(1,1,0.1)
if AnimFrame>1.9 AnimFrame=0
}

spritepos_setup(1,24,1,37)
spritepos_setup(2,24,12,79)
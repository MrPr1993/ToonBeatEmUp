enemy_data()

name="SKELLA"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=21

enemyscript=animsetup_enemy

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.2
maxhp=0.2

height=86

specialFX=0

rangeAtk=320

StandSpr=spr_skeleton_stand
MoveSpr=spr_skeleton_move
RunSpr=spr_skeleton_move
	hasFront=1
	FrontSpr=spr_skeleton_front

AtkSpr=spr_skeleton_kick
AtkSpr2=spr_skeleton_kick
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_skeleton_stand
JumpSpr2=spr_skeleton_stand
ThrownSpr=spr_skeleton_hit
FlatSpr=spr_skeleton_flat
ShockSpr=spr_skeleton_elec
BurnSpr=spr_skeleton_burned
FrozenSpr=spr_skeleton_frozen
DizzySpr=spr_skeleton_dizzy hasDizzy=1

hasscaredSpr=1 scaredSpr=spr_skeleton_panic

spritepos_setup(1,24,1,44)

spritepos_setup(2,0,-1,73)
spritepos_setup(2,24,2,73)

current_pal=0;
my_pal_sprite=spr_mummypal

enemyID=45

idlestyle=1
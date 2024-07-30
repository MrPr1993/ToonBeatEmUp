enemy_data()

name="???"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=59

enemyscript=animsetup_enemy

pointshit=0
points=0

rangeAtk=360

OneAttack=2

hp=4
maxhp=4

height=100

specialFX=0

StandSpr=spr_painter_stand
MoveSpr=spr_painter_move
RunSpr=spr_painter_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_painter_move
JumpAtkSpr2=spr_painter_move

JumpSpr=spr_painter_move
JumpSpr2=spr_painter_move
ThrownSpr=spr_painter_hit
FlatSpr=spr_painter_flat
ShockSpr=spr_painter_elec
BurnSpr=spr_painter_burned
FrozenSpr=spr_painter_frozen
DizzySpr=spr_painter_dizzy hasDizzy=1

enemyID=200

runCharge=0

isBoss=1
specialBossState=1

fakeducks=2
fakeduckbuffer=360

spritepos_setup(1,24,-2,64)
spritepos_setup(2,24,2,91)

if oControl.betatest=1
{if keyboard_check(vk_control) {canmove=0 anim=100}}
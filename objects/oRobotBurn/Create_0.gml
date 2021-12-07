enemy_data()
///This enemy has a pretty different moveset. You can change their settings here

specialFX=0
name="MR.BURNS"
enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=4
chardraw=draw_robot;


pointshit=10
points=100

GrabFrame=16

DamageVoice1=snd_metalhit
DamageVoice2=snd_metalhit
DamageVoice3=snd_metalhit

DeathCry=snd_deathcryrobot
HitGround=snd_metalhit

hp=1
maxhp=1
hplayer=0
walkSpeed=0.5
rangeAtk=128
RunMoveSpeedDecrease=0.2

isHeavy=1

height=114



losepartL=0.5
robotArmL=1
robotArmLsprite=spr_robot_arm
robotArmLIndex=0
robotArmLX=-14
robotArmLY=-64
robotArmLAngle=0
robotArmLobject=oRobotArm
robotArmLXscale=1
robotArmLYscale=1

losepartR=0.25
robotArmR=1
robotArmRsprite=spr_robot_flame
robotArmRIndex=0
robotArmRX=14
robotArmRY=-64
robotArmRAngle=0
robotArmRobject=oFlameArm
robotArmRXscale=1
robotArmRYscale=1

enemyscript=animsetup_robot

StandSpr=spr_robot_stand
MoveSpr=spr_robot_stand
RunSpr=spr_robot_stand

AtkSpr=spr_robot_stand
AtkSpr2=spr_robot_stand
AtkSpr3=spr_robot_stand
AtkSpr4=spr_robot_stand
AtkSpr5=spr_robot_stand
JumpAtkSpr=spr_robot_stand
JumpAtkSpr2=spr_robot_stand

JumpSpr=spr_robot_stand
JumpSpr2=spr_robot_stand
ThrownSpr=spr_robot_hit
FlatSpr=spr_robot_flat
ShockSpr=spr_robot_elec
BurnSpr=spr_robot_burned
FrozenSpr=spr_robot_frozen
DizzySpr=spr_robot_hit



my_pal_sprite=spr_robotpal
current_pal=2;

spritepos_setup(1,16,5,50)

spritepos_setup(2,6,-6,-4)
spritepos_setup(2,16,-5,87)


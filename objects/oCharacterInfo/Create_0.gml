character_setup()
enemy_data()

infoname=0

name="VIVA"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=0

descleft=""
descright=""

enemyscript=animsetup_viva
specialscript=-1

canControl=1

x+=8

ghostSet=100
ghostAlpha=1
hasHead=1
GheadX=10
GheadY=-90
headSpr=spr_ghost_head
headInd=0
headAngle=0

headRespawn=0

pointshit=10
points=100

rangeAtk=100

OneAttack=2

hp=0.2
maxhp=0.2

height=70

specialFX=0

StandSpr=spr_burglar_stand
MoveSpr=spr_burglar_move
RunSpr=spr_burglar_move

AtkSpr=spr_burglar_attack
AtkSpr2=spr_burglar_attack2
AtkSpr3=spr_burglar_attack
AtkSpr4=spr_burglar_attack
AtkSpr5=spr_burglar_attack
JumpAtkSpr=spr_burglar_attack
JumpAtkSpr2=spr_burglar_attack

JumpSpr=spr_burglar_stand
JumpSpr2=spr_burglar_stand
ThrownSpr=spr_burglar_hit
FlatSpr=spr_burglar_hit
ShockSpr=spr_burglar_hit
BurnSpr=spr_burglar_hit
FrozenSpr=spr_burglar_hit

dataSelect=1
dataRow=1
animSave=0
desc=
"AAAAAAAAAAA SSAS AA"

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
robotArmRsprite=spr_robot_arm
robotArmRIndex=0
robotArmRX=14
robotArmRY=-64
robotArmRAngle=0
robotArmRobject=oRobotArm
robotArmRXscale=1
robotArmRYscale=1

isArmed=0

spawnID=oHammer
weaponspr=spr_hammer
weaponIndex=0
weaponX=14
weaponY=-69
weaponangle=180
weaponcolor=c_white
weaponBack=1
weaponRange=100
weaponDamage=0.2
weapontargetHeight=2
weapontype=0
weaponHitType=1
WswingSound=snd_swing3

unlockedChar[50]=0
setunlock=1
repeat(50)
{
unlockedChar[setunlock]=c_white
setunlock+=1
}

charNO=1

showBlend=1

setunlock=5
repeat(0)
{
unlockedChar[setunlock]=0
setunlock+=1
}

dataPal=1
dataPalMax=3
canControl=1
controlNO=9
character_setup()
enemy_data()

hasback=0

infoname=0

armsX=0
armsY=0
armspr=spr_merman_arms

name="VIVA"
enemyPortraitSpr=spr_playerface
enemyPortraitIndex=0

frameSpr=spr_painting_base
frameSprElec=spr_painting_elec
frameInd=0
frameTotal=0

paintingSpr=spr_painting1
paintingInd=0
paintingScale=1

frameParts=spr_painting_part

descleft=""
descright=""

OwnDescTest=0
OwnDesc=""

enemyscript=animsetup_viva
specialscript=-1

canControl=1

hasVariants=0

x+=8

headFront=1
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

hp=1
maxhp=1

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

weapon_add_double("JUGGLE")

unlockedChar[200]=0
setunlock=0

unlockedChar[0]=1

//enemydeathinit()

charNO=1

showBlend=1

weaponanim_2(mask_none,0,0,0,0,0)

setunlock=5
repeat(0)
{
unlockedChar[setunlock]=0
setunlock+=1
}

dataPal=1
dataPalMax=3

dataSet=0

arrowSel1=0
arrowSel2=0
arrowSel3=0
arrowSel4=0

dataabilities="ELECTRICITY,SINGING,\nCOOKING,CHESS,FILMS"

dataRowMax=4

categoryNames="DIVAS"

weaponBack2=0

customText=-1
customText2=-1
customText3=-1
customText4=-1

languagetext[40]=0; ///First 10 will be for the setting stuff
language_check();

cRed=0.0;
cBlue=0.0;
cGreen=0.0;

eyeReaction=0 eyeX=0 eyeY=0
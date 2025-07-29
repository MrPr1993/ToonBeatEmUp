canControl=0 
controller_setup()

character_setup()

soldout=0;

screamset=0 key_scream=0

specialanimscript=-1;

current_pal=global.p1Pal;
my_pal_sprite=global.p1Pals;//spr_playerpal

areaEntry=1 ///For the player to start
x=-64 key_right=1 
alarm[0]=90 ///Time to stop

selfatk.isPlayer=1
isEnemy=0
enemyID=0

autoYMOVE=-10000

playerIcon=spr_p1

altresult2Text=-1
altresult2=-1

playerGet=1

	isIdle=1

///To show which player is which
playerNO=1
playerSpawnNO=instance_number(oPlayer);
chardraw=draw_player;

enemyai=player_ai
enemycontrol=enemy_control

showp1=0;
showmash=0;
showmashI=0;

///Player Default Setup - their stats changes from their end step scripts instead
name="VIVA"
defMask=mask_index
DeathCry=snd_deathcryviva
DeathCryOnce=0
HitGround=snd_hitground
DamageVoice1=snd_viva9
DamageVoice2=snd_viva10
DamageVoice3=snd_viva11
ReturnVoice=snd_viva8
ScreamSnd=snd_VivaScream



HitReactionScript=viva_hitreaction
AtkTime=0

PlayerLife=0//global.P1Life
PlayerScore=0//global.P1Score



hp=1

///Characters affiliation tag
isPlayer=1

aff=instance_create(x,y,oAffTag0)
aff.aff=0 aff.affID=id

//PlayerLife=0 ///For testing the continue screen
//hp=0.01 ///For testing the continue screen
pow=0
powcheck=0
powlock=0
powhp = 0.1 ///HP to lose if using the special moves to avoid overusing it
points=0
GrabFrame=24
damage=0.05
damageFall=0

///For purpose for the gameplay if you want to have more moves
hasUppercut=1
commandDown=0
commandUp=0

hasSideAtk=1
commandLeft=0
commandRight=0

hasCharge=1
commandCharge=0
commandChargeFrame=0
commandChargeColor=c_white
commandChargeAlpha=1



///recoveryTime=0
charScript=animsetup_viva

///Set Up Default Animation Sprites - these will changed by the end step script
StandSpr=spr_viva_stand
overwriteStand=0
overwriteMove=0
MoveSpr=spr_viva_move
RunSpr=spr_viva_run
overwriteAttack=0
OneAttack=0///Of only one animation of the attack's used
AtkSpr=spr_viva_attack
overwriteAttack2=0
AtkSpr=spr_viva_attack2
overwriteAttack3=0
AtkSpr=spr_viva_attack3
overwriteAttack4=0
AtkSpr=spr_viva_attack4
overwriteAttack5=0
AtkSpr=spr_viva_attack5
overwriteJumpAtk=0
AtkSpr=spr_viva_attackair
overwriteJumpAtk2=0
AtkSpr=spr_viva_attackair2
overwriteRollBack=0
overwriteHitGetup=0
overwriteHitAir=0
overwriteHitStand=0
overwriteJump=0
AtkSpr=spr_viva_jump1
overwriteJump2=0
JumpSpr2=spr_viva_jump1
overwriteThrown=0
ThrownSpr=spr_viva_hit
GrabbedSpr=spr_viva_grabbed
overwriteFlat=0
FlatSpr=spr_viva_flat
overwriteShock=0
ShockSpr=spr_viva_elec
overwriteBurn=0
BurnSpr=spr_viva_burned
overwriteFrozen=0
FrozenSpr=spr_viva_frozen
DizzySpr=spr_viva_dizzy
overwriteDizzy=0
hasDizzy=1
SuperSpr=spr_viva_super
CarSpr=spr_viva_car
PointSpr=spr_viva_point
PointDialouge1=snd_viva20
PointDialouge2=snd_viva21
WildTakeSpr=spr_viva_wildtake
WildTakeSpr2=spr_viva_wildtake2
WildTakeSpr3=spr_viva_wildtake3
WildTakeSpr4=spr_viva_wildtake4
PlaneOutSpr=spr_viva_planeout
HeartSpr=spr_viva_heart
BDanceSpr=spr_viva_bdance
ScreenHitSpr=spr_viva_hitscreen
WinSpr=spr_viva_win
WinSnd=snd_viva13
hasCut=1
cutSpr1B=spr_viva_cutB1
cutSpr2B=spr_viva_cutB2
qSandSpr=spr_viva_quicksand

controlNO=1

//global.multiMode=1
if instance_number(oPlayer)=1
{
}
//(floorPosX+waistPosX+headPosX)*SpritePos
//(floorPosY+waistPosY+headPosY)*SpritePos

hasAI=0

//spawnplayericon()

if instance_number(oPlayer)=99999 ///NOT THIS ONE
with oControl
{
p2=instance_create(160,p1.y+16,oPlayer) p2.playerNO=2 p2.character=1 p2.controlNO=2
p3=instance_create(160,p1.y+32,oPlayer) p3.playerNO=3 p3.character=2 p3.controlNO=3
p4=instance_create(160,p1.y+48,oPlayer) p4.playerNO=4 p4.character=3 p4.controlNO=4
}

sourcee=0
ContinueMode=0
CountdownMode=0
ContinueCountdown=9
ContinueCTime=90
ContinueGameOver=0
ContinueRestart=0
ActivePlayer=0
continueScreen=0
ContinueSelect=0

continueFlash=0 characterSelect=global.P1Char
characterTimer=9 hiScoreInputNum=3
HiScoreCheck=0
HiScoreLevel=0
HiCharLevel=0

HiScoreCheckDone=0
hiScoreInputNum=1
HiInput1=0
HiScoreAlarm1=0
HiScoreAlarm2=0
finalStageScoreMark=0
hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"

my_pal_sprite=global.p1Pals

vehSpr=spr_car
vehWSpr=spr_car_wheels

extraheal=0

fishingmode=0
fishtime=0
fishpull=0
fishspr=spr_gun
fishind=0
fishname=""
fishscore=0
fishstr=0

if character=-1 character=0;

if global.Cheat[7]=1000000 if global.NoCheat=1
{
var randomweapon=choose("HAMMER","TASER","SCIMITAR","PIPE","SHOVEL","PICKAXE","KNIFE","ONI CLUB","SPEAR","TRIDENT","TOMMYGUN","HARPOONGUN","DYNAMITE","KNIFE","PIE","WHIP")
weapon_add(randomweapon)
}


difficulty_check=function()
{maxhp=1
if global.Difficulty=0 {maxhp=1.5 }
if global.Difficulty=1 {maxhp=1.25 }
if global.Difficulty=3 {maxhp=0.75 }
if global.Difficulty=4 {maxhp=0.5 }
if global.Difficulty=5 {maxhp=0.25 } ///MANIA
maxhp+=maxhp*global.Cheat[1]*global.NoCheat
hp=maxhp
hpD=0;
}

hpD=hp;
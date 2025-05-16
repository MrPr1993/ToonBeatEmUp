/// @description Insert description here
// You can write your code in this editor
canControl=0
controller_setup()
isReady=0
charadded=0
character_setup()
	hasShadow=0;
	shadowSpr=mask_none
current_pal=global.p1Pal;
my_pal_sprite=spr_playerpal
carMode=0
areaEntry=1 ///For the player to start
x=-64 key_right=1
alarm[0]=90 ///Time to stop
specialanimscript=-1;
selfatk.isPlayer=1
isEnemy=0
enemyID=0

foodhp=50

GoldGet=0

altresult2Text=-1
altresult2=-1

playerGet=0

	isIdle=1

///To show which player is which
playerNO=1
chardraw=draw_player;

enemyai=player_ai
enemycontrol=enemy_control

showp1=0;


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

character=global.P1Char
HitReactionScript=viva_hitreaction
AtkTime=0

PlayerLife=0
PlayerScore=0


hp=0

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
ScreenHitSpr=spr_viva_hit
WinSpr=spr_viva_win
WinSnd=snd_viva13
hasCut=1
cutSpr1B=spr_viva_cutB1
cutSpr2B=spr_viva_cutB2

controlNO=1

GameOver=1

//(floorPosX+waistPosX+headPosX)*SpritePos
//(floorPosY+waistPosY+headPosY)*SpritePos

hasAI=0

//spawnplayericon()




ActivePlayer=0

ContinueCountdown=9
ContinueCTime=90
CountdownMode=1
ContinueMode=1

canControl=1

character=-1;

triggerspawn=function()
{
if global.P1Only=0
if oControl.nopleasewait=1
{
if key_A or key_B or key_X or key_Y
//if global.Continues!=0
{
//if global.Continues>0 global.Continues-=1;
var _playerno=playerNO;
var _costcontinue=0;
oControl.carMode=carMode;
with oControl
{
	if _playerno=1 and global.P1available=0
{playerleader+=1; p1=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p1.playerNO=1 p1.controlNO=1 p1.character=0
	global.P1available=1 p1.ContinueMode=0 p1.playerGet=0 p1.visible=0; p1.alarm[0]=0; _costcontinue=1; p1.carMode=carMode;
	p1.PlayerLife=global.P1Life
p1.PlayerScore=global.P1Score p1.my_pal_sprite=global.p1Pals

with p1 {ContinueMode=0 continueScreen=2 ContinueSelect=1 
	continueFlash=0 characterSelect=global.P1Char canControl=1 dead=1 canmove=0 visible=1;
characterTimer=9 hiScoreInputNum=3 disappearTime=0;
hiScoreInputNum=1
HiInput1=0
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
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0}

}
	if _playerno=2 and global.P2available=0
{playerleader+=1; p2=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p2.playerNO=2 p2.controlNO=2 p2.character=1
	global.P2available=01 p2.ContinueMode=0 p2.playerGet=0 p2.visible=0; p2.alarm[0]=0; _costcontinue=1; p2.carMode=carMode;
	p2.PlayerLife=global.P2Life
p2.PlayerScore=global.P2Score p2.my_pal_sprite=global.p2Pals
with p2 {ContinueMode=0 continueScreen=2 ContinueSelect=1 canControl=1 dead=1 canmove=0 visible=1;
	continueFlash=0 characterSelect=global.P2Char disappearTime=0; 
characterTimer=9 hiScoreInputNum=3
hiScoreInputNum=1
HiInput1=0
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
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0}
	}
	if _playerno=3 and global.P3available=0
{playerleader+=1; p3=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p3.playerNO=3 p3.controlNO=3 p3.character=2
		global.P3available=1 p3.ContinueMode=0 p3.playerGet=0 p3.visible=0; p3.alarm[0]=0; _costcontinue=1; p3.carMode=carMode;
		p3.PlayerLife=global.P3Life
p3.PlayerScore=global.P3Score p3.my_pal_sprite=global.p3Pals
with p3 {ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=global.P3Char canControl=1 dead=1 canmove=0 visible=1;
characterTimer=9 hiScoreInputNum=3 disappearTime=0;
hiScoreInputNum=1
HiInput1=0
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
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0}

		} 
	if _playerno=4 and global.P4available=0
{playerleader+=1; p4=instance_create_depth(160,208+16*instance_number(oPlayer),-1,oPlayer) p4.playerNO=4 p4.controlNO=4 p4.character=3
		global.P4available=1 p4.ContinueMode=0 p4.playerGet=0 p4.visible=0; p4.alarm[0]=0; _costcontinue=1; p4.carMode=carMode;
		p4.PlayerLife=global.P4Life
p4.PlayerScore=global.P4Score p4.my_pal_sprite=global.p4Pals
with p4 {ContinueMode=0 continueScreen=2 ContinueSelect=1 dead=1 canmove=0 visible=1;
	continueFlash=0 characterSelect=global.P4Char canControl=1
characterTimer=9 hiScoreInputNum=3 disappearTime=0; 
hiScoreInputNum=1
HiInput1=0
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
ContinueCountdown=9
ContinueCTime=90
CountdownMode=0}

		}

//if global.Continues!=0 and _costcontinue=1 {global.Continues-=1;}
}
}

}

}
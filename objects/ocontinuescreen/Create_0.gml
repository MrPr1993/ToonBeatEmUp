/// @description Insert description here
// You can write your code in this editor

/// @description Insert description here
// You can write your code in this editor
filmY=0 mapXFilm=0

check1up=1

shade=shd_television

isStageClear=0
StageClearCheck=0
stageClearMode=0

continueStageScore=0
cheatpenalty=0;
playerGet=1

controlset[12]=0;
bonusstage=0
finalStageEnd=0
if instance_exists(oControl)
{
finalStageEnd=oControl.finalStageEnd
bonusstage=oControl.bonusstage
}
finalStage=0
finalStageHi=0
finalStageMono=1

TVfx=oControl.TVfx
stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss="BOSS NAME"
stageScore=0
stageCspr=spr_stageclear
scoreClearSet=0
bossScore=10000
bossID=-1
bossMaxHP=2
stageclearMusic=1
stageclearfade=0
resulttext1="BOSS NAME"
altresult1=-1
resulttext2="VITALITY"
altresult2=-1
altresult2a=-1
altresult2b=-1
altresult2c=-1
altresult2d=-1
altresult2Ta=-1
altresult2Tb=-1
altresult2Tc=-1
altresult2Td=-1

resulttext3="TIME"
altresult3=-1
AltScore1=0
AltScore2=0
AltScore3=0
stageClearDelay=0
stagePose=1
specialTimer=-1
timeClear=0
stageNext=rm_training
stagecheck=0

menuSelect=0
menuX=0
StarY=0
StarSpace=0
selectStar=0
canControl=0
AreYouSure=0
Sure=0
controlNO=9
controller_setup()
canControl=1
quakeFX=0
quakeFXTime=0

continueChar=0
playNO=1
CharSpr=spr_viva_train
CharFrame=0
stagePause=oControl.stagePause
HiScoreCheck=0
keyToGameOver=0
hiScoreMode=0

//global.P1Score=p1.PlayerScore
//global.P1Life=p1.PlayerLife

oControl.continueMusic=global.CurrentMusic
stagecheck=oControl.stagecheck

PlayerLife1=-1
PlayerLife1=0
PlayerLife2=-1
PlayerLife2=0
PlayerLife3=-1
PlayerLife3=0
PlayerLife4=-1
PlayerLife4=0
hp1=0
hp2=0
hp3=0
hp4=0

s1=0
s2=0
s3=0
s4=0
actP1=1
actP2=1
actP3=1
actP4=1


stageclearblack=0

actPTotal=0
actPTotal1=0
actPTotal2=0
actPTotal3=0
actPTotal4=0

pP1=0
pP2=0
pP3=0
pP4=0

pGet1=0
pGet2=0
pGet3=0
pGet4=0

cheatpenalty=0

var cheatp1=1000*global.Cheat[1]
var cheatp2=1000*global.Cheat[2]
var cheatp3=1000*global.Cheat[3]
var cheatp4=0*global.Cheat[4]
var cheatp5=1000*global.Cheat[5]
var cheatp6=1000*global.Cheat[6]
var cheatp7=2000*global.Cheat[7]
var cheatp8=2000*global.Cheat[8]
var cheatp9=2000*global.Cheat[9]
var cheatp10=2000*global.Cheat[10]
var cheatp11=5000*global.Cheat[11]
var cheatp12=5000*global.Cheat[12]
var cheatp13=10000*global.Cheat[13]
var cheatp14=10000*global.Cheat[14]
var cheatp15=10000*global.Cheat[15]
var cheatp16=999999*global.Cheat[16]

cheatpenalty+=cheatp1+cheatp2+cheatp3+cheatp4+cheatp5+cheatp6+cheatp7+cheatp8+cheatp9+cheatp10+cheatp11+cheatp12+cheatp13+cheatp14+cheatp15+cheatp16





if instance_exists(oControl.p1)
{
oControl.p1.PlayerScore-=cheatpenalty oControl.p1.PlayerScore=clamp(oControl.p1.PlayerScore,0,9999999999)

PlayerLife1=oControl.p1.PlayerLife
PlayerScore1=oControl.p1.PlayerScore
hp1=oControl.p1.hp
PlayerScore=oControl.p1.PlayerScore
actP1=oControl.p1.ContinueMode 
pP1=1 pGet1=oControl.p1.playerGet
altresult2Ta=oControl.p1.altresult2Text
}
else {PlayerLife1=-1 PlayerScore1=0}
if instance_exists(oControl.p2)
{
oControl.p2.PlayerScore-=cheatpenalty oControl.p2.PlayerScore=clamp(oControl.p2.PlayerScore,0,9999999999)


PlayerLife2=oControl.p2.PlayerLife
PlayerScore2=oControl.p2.PlayerScore
hp2=oControl.p2.hp
PlayerScore=oControl.p2.PlayerScore
actP2=oControl.p2.ContinueMode 
pP2=1 pGet2=oControl.p2.playerGet
altresult2Tb=oControl.p2.altresult2Text
}
else {PlayerLife2=-1 PlayerScore2=0}
if instance_exists(oControl.p3)
{
oControl.p3.PlayerScore-=cheatpenalty oControl.p3.PlayerScore=clamp(oControl.p3.PlayerScore,0,9999999999)

PlayerLife3=oControl.p3.PlayerLife
PlayerScore3=oControl.p3.PlayerScore
hp3=oControl.p3.hp
PlayerScore=oControl.p3.PlayerScore
actP3=oControl.p3.ContinueMode 
pP3=1 pGet3=oControl.p3.playerGet
altresult2Tc=oControl.p3.altresult2Text
}
else {PlayerLife3=-1 PlayerScore3=0}
if instance_exists(oControl.p4)
{
oControl.p4.PlayerScore-=cheatpenalty oControl.p4.PlayerScore=clamp(oControl.p4.PlayerScore,0,9999999999)

PlayerLife4=oControl.p4.PlayerLife
PlayerScore4=oControl.p4.PlayerScore
hp4=oControl.p4.hp
PlayerScore=oControl.p4.PlayerScore
actP4=oControl.p4.ContinueMode
pP4=1 pGet4=oControl.p4.playerGet
altresult2Td=oControl.p4.altresult2Text
}
else {PlayerLife4=-1 PlayerScore4=0}


numPlayers=0

tvshade_set()

stageClear=oControl.stageClear
stageClearIndex=oControl.stageClearIndex
stageClearY=oControl.stageClearY
stageBoss=oControl.stageBoss
stageScore=oControl.stageScore
stageCspr=oControl.stageCspr
scoreClearSet=oControl.scoreClearSet
bossScore=oControl.bossScore
bossID=oControl.bossID
bossMaxHP=oControl.bossMaxHP
stageclearMusic=oControl.stageclearMusic
stageclearfade=oControl.stageclearfade
resulttext1=oControl.resulttext1
altresult1=oControl.altresult1
resulttext2=oControl.resulttext2
altresult2=oControl.altresult2
altresult2a=oControl.p1.altresult2
altresult2b=oControl.p2.altresult2
altresult2c=oControl.p3.altresult2
altresult2d=oControl.p4.altresult2
resulttext3=oControl.resulttext3
altresult3=oControl.altresult3
AltScore1=oControl.AltScore1
AltScore2=oControl.AltScore2
AltScore3=oControl.AltScore3
stageClearDelay=oControl.stageClearDelay
stagePose=oControl.stagePose
specialTimer=oControl.specialTimer
timeClear=oControl.timeClear
//time=oControl.time
time=(oControl.stagetime/oControl.stagetimemax)*100
stageNext=oControl.stageNext
CutsceneStage=oControl.CutsceneStage
finalStage=oControl.finalStage



stageClearCheck=0

actPorg=0
actPorgT=0



instance_deactivate_all(true)

instance_activate_object(input_controller_object)

if PlayerLife1!=-1{
	
if global.GlobalBeta=1
if keyboard_check(vk_shift)
{	
	actP1=0
	actP2=1
	actP3=1
	actP4=1
	
	if keyboard_check(vk_space)
	{
	actP1=get_string("see score",actP1)
	actP2=get_string("see score",actP2)
	actP3=get_string("see score",actP3)
	actP4=get_string("see score",actP4)
	}
}

if actP1=0
continueStageScore+=PlayerScore1-global.P1Score-cheatpenalty
if actP2=0
continueStageScore+=PlayerScore2-global.P2Score-cheatpenalty
if actP3=0
continueStageScore+=PlayerScore3-global.P3Score-cheatpenalty
if actP4=0
continueStageScore+=PlayerScore4-global.P4Score-cheatpenalty



if global.MenuGlobal!=0
{
if actP1=0
continueStageScore+=global.P1Score-cheatpenalty
if actP2=0
continueStageScore+=global.P2Score-cheatpenalty
if actP3=0
continueStageScore+=global.P3Score-cheatpenalty
if actP4=0
continueStageScore+=global.P4Score-cheatpenalty


}



brickgamenum=0
	
p1=instance_create_depth(-99999,0,-1,oPlayerDisembodied) with p1 {canControl=1 controlNO=1 playNO=1
	PlayerLife=oContinueScreen.PlayerLife1 PlayerScore=oContinueScreen.PlayerScore1
	characterSelect=global.P1Char 
	global.P1Score=PlayerScore 	altresult2Text=oContinueScreen.altresult2Ta
	}p1.hp=hp1 p1.isInctive=actP1 p1.playerNO=1 p1.playerGet=pGet1 p1.altresult2=altresult2a
	
		if p1.isInctive=0 {brickgamenum+=1 p1.x=0}
	
	//if p1.isInctive=0 actPTotal1+=80 else actPTotal1=9999
	} else actPTotal1=9999
if PlayerLife2!=-1{
p2=instance_create_depth(-9999,0,-1,oPlayerDisembodied) with p2 {canControl=1 controlNO=2 playNO=2
		PlayerLife=oContinueScreen.PlayerLife2 PlayerScore=oContinueScreen.PlayerScore2
		characterSelect=global.P2Char 	altresult2Text=oContinueScreen.altresult2Tb
		global.P2Score=PlayerScore
		}p2.hp=hp2  p2.isInctive=actP2 p2.playerNO=2 p2.playerGet=pGet2 p2.altresult2=altresult2b
		
	if p2.isInctive=0
	{brickgamenum+=1 p2.x=80*(brickgamenum-1)
	if p1.isInctive=0 {actPTotal1+=80 actPTotal+=0.25} else {actPTotal1=9999 }
	//if p2.isInctive=0 actPTotal2+=80 else actPTotal2=9999
	} else {actPTotal2=9999 }
		} else {actPTotal2=9999 }
if PlayerLife3!=-1{
p3=instance_create_depth(-9999,0,-1,oPlayerDisembodied) with p3 {canControl=1 controlNO=3 playNO=3
		PlayerLife=oContinueScreen.PlayerLife3 PlayerScore=oContinueScreen.PlayerScore3
		characterSelect=global.P3Char	altresult2Text=oContinueScreen.altresult2Tc
		global.P3Score=PlayerScore
		}p3.hp=hp3  p3.isInctive=actP3 p3.playerNO=3 p3.playerGet=pGet3 p3.altresult2=altresult2c
		
	if p3.isInctive=0
	{brickgamenum+=1 p3.x=80*(brickgamenum-1)
	if p1.isInctive=0 {actPTotal1+=80 actPTotal+=0.25} else {actPTotal1=9999 }
	if p2.isInctive=0 {actPTotal2+=80 actPTotal+=0.25} else {actPTotal2=9999 }
	//if p3.isInctive=0 actPTotal3+=80 else actPTotal3=9999
	} else {actPTotal3=9999 }
		} else {actPTotal3=9999 }
if PlayerLife4!=-1
{
p4=instance_create_depth(-9999,0,-1,oPlayerDisembodied) with p4 {canControl=1 controlNO=4 playNO=4
		PlayerLife=oContinueScreen.PlayerLife4 PlayerScore=oContinueScreen.PlayerScore4
		characterSelect=global.P4Char 	altresult2Text=oContinueScreen.altresult2Td
		global.P4Score=PlayerScore
		}p4.hp=hp4  p4.isInctive=actP4 p4.playerNO=4 p4.playerGet=pGet4 p4.altresult2=altresult2d
		
		if p4.isInctive=0
		{brickgamenum+=1 p4.x=80*(brickgamenum-1)
	if p1.isInctive=0 {actPTotal1+=80 actPTotal+=0.25} else {actPTotal1=9999 }
	if p2.isInctive=0 {actPTotal2+=80 actPTotal+=0.25} else {actPTotal2=9999 }
	if p3.isInctive=0 {actPTotal3+=80 actPTotal+=0.25} else {actPTotal3=9999 }
	//if p4.isInctive=0 actPTotal4+=80 else actPTotal4=9999
		} else {actPTotal4=9999 }
		} else {actPTotal4=9999 }

continueStageScore+=bossScore//-global.P1Score-global.P2Score-global.P3Score-global.P4Score
with oPlayerDisembodied if isInctive=0 oContinueScreen.continueStageScore+=round(hp*20000)
continueStageScore+=round(time*200)
newrecord=0 newrecordframe=0
if continueStageScore>global.LevelHiScore[stagecheck]
{global.LevelHiScore[stagecheck]=continueStageScore 
	
	newrecord=1
}

continueStageScore-=cheatpenalty

continueStageScore=clamp(continueStageScore,0,99999999999)

if global.Difficulty>=global.LevelDif[stagecheck] global.LevelDif[stagecheck]=global.Difficulty

global.UnlockStage[stagecheck]=1





if global.MenuGlobal!=0
if global.StageClear=1
{
}

if brickgamenum=1 with oPlayerDisembodied x+=160-40
if brickgamenum=2 with oPlayerDisembodied x+=160-80
if brickgamenum=3 with oPlayerDisembodied x+=160-120
if brickgamenum=4 with oPlayerDisembodied x+=0

p5=instance_create_depth(0,0,-1,oPlayerDisembodied) with p5 {canControl=1 controlNO=9}

continuePlayer=1

fadetoblack=0
faderec=320

alarm[2]=90
continueScreen=1
continueCountdown=9

pauseBuffer=10
blackFX=10


keyToGameOver=0



hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
countdownTrain=0.0001
countdownTrainSpd=0
countdownTrainLerp=0
trainFrame=0
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"

continueFlash=0 characterSelect=global.P1Char
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

GoldShow=0
GoldGet=0
GoldY=32

isGameOver=0

deathGameOver=0

isPaused=0

isGameOverDark=0
gameOverSpin=0
gameOverFlash=1
gameOverYAdd=0

finalStageScoreMark=241 
stageEndFX=0
stageEnd=0

trainRan=0

setGameOver=0




if global.StageClear=0
{
if global.Continues=0
{audio_stop_all() gameOverFlash=0 deathGameOver=1
alarm[2]=0
alarm[3]=0
alarm[4]=2
}
else
musicplayonce(msc_countdown)
}
else
{


surface_resize(application_surface,320,240)
surface_save(application_surface,"screenshot")
surface_resize(application_surface,320,240)
surface_free(application_surface)
sprite_replace(spr_photoplaceholder,"screenshot",0,false,false,0,0)
//musicplayonce(msc_stageclear)
stageClear=1
GoldShow=global.GoldShow
}


global.P5Score=global.P1Score+PlayerScore1+global.P2Score+PlayerScore2+global.P3Score+PlayerScore3+global.P4Score+PlayerScore4

if global.StageClear=1
{
stagedata_save()
enemydata_save()
unlock_save()
arcade_saving(global.StageSave)
feats_stageunlock()
feats_check()
feats_save()
}
global.StageClear=0;

colorshade_setup()

optionSelect=0
optionPick=0
optionSelectA=0
optionSelectX=200

languagetext[40]=0; ///First 10 will be for the setting stuff
language_check();


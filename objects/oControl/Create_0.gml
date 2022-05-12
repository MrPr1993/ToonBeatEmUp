canControl=1
controller_setup()

instance_create(0,0,oBlackFX)
//instance_create(0,0,oTVfx)

alarm[10]=640+160

BGmove=0

iconSel=spr_mrpr1993
noIcon=0

continueMusic=-1

global.MusicFade=0

introScene=1
introPart=0
introTime=0

GoldShow=0
GoldGet=0
GoldY=32

StageNumber=0



if !variable_global_exists("CurrentMusic")
{global.StageSelect=0
global.StageGoing=rm_opening

global.UnlockCharacterData=0
global.UnlockFeats=0

global.UnlockStage[20]=0

global.UnlockEnemy[60]=0

global.UnlockEnemy[1]=c_white
global.UnlockEnemy[2]=c_white
global.UnlockEnemy[3]=c_white
global.UnlockEnemy[4]=c_white

global.MenuGlobal=0
global.MenuSkip=0

global.HiscoreSkip=0
	
global.StageSelX=0
global.StageSelY=0
	
global.SetIntro=0
	
global.CurrentMusic=-1
global.MenuSkip=0
global.IntroSkip=0
global.CRTfx=1

global.BGMvolume=100
global.SFXvolume=100

global.Screenshake=1
global.Screenflash=1

global.ContinueStart=-1
global.Continues=-1

global.LifeStart=2

global.DisplayFeats=1

global.Gold=0
global.GoldShow=1

global.enemytest=0
global.enemytestB=0
}

featicon[99]=0
featsel=1
featsellerp=1
featY=0

shopsel=0
shopselX=0
shopselY=0
shopFrame0=0
shopFrame0b=0
shopFrame1=0
shopFrame1b=0
shopFrame2=0
shopFrame2b=0
shopSet=0
shopName="LOCKED"
shopDesc=""
shopCost=""

stagePause=0
isCutscene=0
isPaused=0
PauseBuffer=0

TVfx=global.CRTfx
shade=shd_television
tvshade_set()

pressStart=0
menuSelect=global.MenuGlobal
menuLocked=0
selectStar=0
StarSpace=0
StarY=0

MusicAdd=1
MusicFade=0
MusicFadeAdd=1

stageNext=rm_titlescreen

showHUD=1

MusicSet=-1

enemyID=0

instance_create(x,y,oViewTarget)

selectScreen=0

ignore=0
fightEachOther=0

p1Flicker=0
p1Select=0
p2Flicker=0
p2Select=0

p1selFrame=0
p2selFrame=0
p3selFrame=0
p4selFrame=0


////Screen Effect for Intro
stageIntro=1
stageEnd=0
stageEndFX=0

P1SpawnX=32
P1SpawnY=208
P1SpawnXadd=32
P1SpawnYadd=208



if !variable_global_exists("P1Life")
{

global.P1Life=2
global.P2Life=2
global.P3Life=2
global.P4Life=2

global.p1Pal=0
global.p2Pal=0
global.p3Pal=0
global.p4Pal=0
}
if !variable_global_exists("P1Score")
{
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0
}

if !variable_global_exists("HiScoreStage")
global.HiScoreStage=1

if !variable_global_exists("P1Char")
{
global.P1Char=0
global.P2Char=0
global.P3Char=0
global.P4Char=0
}

if !variable_global_exists("CanGlobalBeta")
global.CanGlobalBeta=1

if !variable_global_exists("GlobalBeta")
{
global.GlobalBeta=1
global.GlobalCBeta=1
global.GlobalTBeta=1
}

///Turn off Beta Mode
//global.CanGlobalBeta=0
//global.GlobalBeta=0
noIcon=0


betatest=global.GlobalBeta
ColBeta=global.GlobalCBeta
TextBeta=global.GlobalTBeta

enemyFreeze=0

camMove=1

///0 - None - 1 - Countdown - 2 - CharacterSelect
continueScreen=0
continueCountdown=9
characterSelect=0
characterTimer=9
characterSelReady=0
characterVoiceAnnounce=-1
characterCount=90
continueFlash=0
isGameOver=0
isGameOverDark=0
charSelectFlash=0
gameOverSpin=0
charSelFlash=60
charSelCountdown=20
charSelForceSelect=0
charselLerp=0

superFlashFrame1=0
superFlashFrame2=0

goActive=0
goFrame=0
xGoCheck=0

///Time Limit
time=99//99
timecheck=-1 ///For the alarm if a cutscene or scene's triggered
alarm[0]=120

instance_create(-9999,-9999,parEnemy)
instance_create(0,0,oShadowFX)
instance_create(0,0,oSpotlightFX)

showhp=0

hpLerp=0

enemyPortraitSpr=spr_enemyface
enemyPortraitIndex=0

enemyname=""

enemyhp=0
enemyhplayer=0
enemymaxhp=0
enemydead=0

enemyHPflash=0

enemyID=-1

enemyhpMax=100



enemyShowTime=0

if !variable_global_exists("timefont")
{
global.timefont=font_add_sprite_ext(spr_timefont, "0123456789", false, 0);
global.scorefont=font_add_sprite_ext(spr_scorefont, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ()_/\""+"'.✰-+%©∞?!:▲►▼◄$,", false, 0);
}

if !variable_global_exists("ScreenSize")
global.ScreenSize=0


ShowEnemyHP=1

////Cheats
StrongMode=0

HurtTest=0

enemySpawn=0
enemySpawnName="0 MS. DUMMY"
spawnUnit=oMsDummy
spawnType="Enemy"
spawnNo=0



MinX=x-320
MaxX=x+sprite_width-320

camMin=0
camMinY=0
if !instance_exists(oCamLock)
{
camMax=room_width camMaxY=240+16}
else
{
camMax=0 camMaxY=0}

quakeFX=0
quakeFXTime=0


hiscore_setup()



if room=rm_setup
{
room_goto_next()
}

screenBlack=0

charCheck=3

enemyList=oEnemy1

stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss="BOSS NAME"
stageScore=0
scoreClearSet=0
bossScore=10000
bossID=-1
bossMaxHP=2


if !variable_global_exists("fpsMode") global.fpsMode=0
fpsX=320
fpsY=240-8

introSkip=0
introSkipFX=0
noWhite=0

iconShow=320
iconBlack=1
BlackY=0

titlescreenY=240 ///120
titlescreenXscale=0
titleFlashTime=50
titleShow=0
titleObjectWhite=1
titleFlashFX=0
titleSquareFX=1
pressStartTime=0
titleImg=0
titlescreenMenuY=0

showMap=1
mapTime=0
mapLocation=0
mapShow=120
mapX=320-264//160
mapY=240+152//80
mapXscale=1
mapYscale=-1



hiScoreInput=0
hiScoreInputNum=1
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
keyToGameOver=0
keyNo=1
keyNoCheck="A"

current_pal=0;
my_pal_sprite=spr_enemypal

spritePal=0

///Override stuff.
override_surface=noone;
override_pal_index=1;

changepalette=0
changename=0
changehplayer=0
changehp=0

enemySpawn0=0
enemySpawn1=0
enemySpawn2=0
enemySpawn3=0
enemySpawn4=0


//Newspaper Sequence
newsBlack=1
newspaperspin=0
newsScale=0.01
newsIndex=0
newsTime=0
newsShow=0
newsFade=0
newsFadeA=1
newsRepeat=1
newsText=1
newsBox=1
newsX=0
newsY=0
SceneSpeedX=0
SceneSpeedY=0
SceneX=0
SceneY=0

TextDialogue=""

BossHPID=-1
BossHPName="LADY WOLF"
BossHP=0
BossHPMax=0
BossHPSub=2

creditsAlpha=1
creditsGo=0
creditsTime=400
credFram=0
credMSC=0

//Cutscenes
CutsceneImage=spr_cutscene1
CutsceneIndex=0
CutsceneX=0
CutsceneY=0
CutsceneHSpeed=0
CutsceneVSpeed=0
CutsceneStage=rm_stage2


/////Map Screen
lockedMap[30]=0
check_unlockedmap()

mapSelX=global.StageSelX
mapSelY=global.StageSelY
mapSX=80
mapSY=121
mapSXlerp=80
mapSYlerp=121
quickMapLerp=10
mapSLevel=0
mapSName="LEVEL 0"
mapSpr=spr_viva_map
mapAnim=0
mapIndex=0
mapPlayerName="VIVA"
mapSelected=0



///Skip Intro
if global.MenuSkip=1
{
introSkip=1 noWhite=1
introSkipFX=2
iconShow=0
iconBlack=0
titlescreenY=120
titlescreenXscale=1
titleFlashFX=0
titleFlashTime=0
titleObjectWhite=0
titleShow=1
pressStart=1
titlescreenMenuY=-20
}

if global.IntroSkip=1
{
iconShow=210-70
iconSel=spr_scicon
}

if global.IntroSkip=2
{
iconShow=210-70
iconSel=spr_scicon
introSkip=1 noWhite=1
introSkipFX=2
iconShow=0
iconBlack=0
titlescreenY=120
titlescreenXscale=1
titleFlashFX=0
titleFlashTime=0
titleObjectWhite=0
titleShow=1
pressStart=1
}

if !variable_global_exists("LOADSET")
{global.LOADSET=0
settings_load()
}

if room=rm_titlescreen global.StageSelect=0


enemySpawn=global.enemytest
spawnNo=global.enemytestB

event_user(0)

cutscenename="VIVA"
cutsceneline="OKAY. WHERE HAS THAT TRUCK GONE TO?\nSPEAK UP DOG!"
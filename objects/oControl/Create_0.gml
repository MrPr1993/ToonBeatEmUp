roomfast=0

playNO=1

colorshade_setup()

isNotStage=0
isMulti=0

recordAng=0
recordAng2=0
threshold = 0.9; keytick=0	
canControl=0
controlNO=9
controller_setup()
canControl=1

instance_create(0,0,oBlackFX)
//instance_create(0,0,oTVfx)

pauseBuffer=10

playernear=0

p1=-1
p2=-1
p3=-1
p4=-1

menuX=0
MenuText=""

alarm[10]=640+160

BGmove=0

iconSel=spr_mrpr1993
noIcon=0

continueMusic=-1

global.StageClear=0
global.MusicFade=0

introScene=1
introPart=0
introTime=0

GoldShow=0
GoldGet=0
GoldY=32

StageNumber=0

specialcheck1=0
specialcheck2=0
specialcheck3=0
specialcheck4=0
specialcheck5=0

cutscenedecision=0
cutsceneDecmode=0
CDtextT="LADY WOLF IS GETTING AWAY!\nWHAT WILL YOU DO?"
CDtextA="FOLLOW HER."
CDtextB="STOP HER."
CDtextC="LET HER GO."
cutsceneDecbuffer=20
cutsceneDecbufferBG=0

CDtextTy=-200
CDtextAx=-240
CDtextBx=240
CDtextCx=-240
CDtextAy=0
CDtextBy=0
CDtextCy=0
CDtextAs=1
CDtextBs=1
CDtextCs=1
CDtextvis=0
CDtextflash=1
canSkipCutscene=0

prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=0
stagecheck=0
stagename=""

minigameselstage=0

multiVSsetting=0;
charselectgo=1;
charsetting=0

if !variable_global_exists("CurrentMusic")
{global.StageSelect=0
	
global.HiScoreSurvival=0

global.HiScoreBossBattles=0
global.HiScoreBossBattlesScore=0
global.HiScoreFishing=0	
global.HiScoreMini1=0	
global.HiScoreMini2=0
global.HiScoreMini3=0
global.HiScoreMini4=0
global.HiScoreMini5=0
global.HiScoreMini6=0

global.ArenaType=0;
	
global.FishingUnlock=0;
global.SlotMachineUnlock=0;	
global.MiniGameUnlock1=0;
global.MiniGameUnlock2=0;
global.MiniGameUnlock3=0;
global.MiniGameUnlock4=0;
global.MiniGameUnlock5=0;
global.MiniGameUnlock6=0;
global.SurvivalUnlock=0;
global.BossBattleUnlock=0;

global.SkipDifficulty=0;
global.P1Only=0;

global.CheatPenalty=0;
global.Cheat[20]=0;

global.NoCheat=1;


global.CheatUnlock[20]=0;
var hahaha=0;
repeat(17)
{
global.CheatUnlock[hahaha]=1;
hahaha+=1;
}

global.Gallery[20]=0;
global.GalleryUnlock[20]=0;
	
global.IsMovie=0
global.MovieSel=0
	
global.IsMinigame=0
global.MinigameSel=0

global.MinigameSetSel=0
global.MinigameSel2=0
global.MinigameSel3=0	
global.MinigameSelStage=0
	
global.StageGoing=rm_opening


global.ConsoleType="XBOX"

global.HiScoreLevel=1

global.HiScoreLoad=0

global.CutsceneSkip=0
global.CutsceneSkipper=0

global.LevelSelectSave=0



global.multiMode=1

global.FriendlyFire=0

global.MultiVS=0;
global.MultiVSHP=1;
global.MultiVSLife=2;
global.MultiStage=0
global.MultiTime=99

global.MultiSuper=1 ///players be affected by the super move during multi

global.HiScoreSee=0

global.TrainingRoom=0

global.PrevStage1=0
global.PrevStage2=0
global.PrevStage3=0
global.PrevStage4=0
global.PrevStage5=0
global.PrevStage6=0
global.PrevStage7=0
global.PrevStage8=0

global.UnlockFeats=1

global.UnlockStage[20]=0
global.LevelHiScore[20]=0


global.UnlockStageA[1]=1
global.UnlockStageA[2]=1
global.UnlockStageA[3]=0
global.UnlockStageA[4]=0
global.UnlockStageA[5]=0
global.UnlockStageA[6]=0
global.UnlockStageA[7]=0
global.UnlockStageA[8]=0
global.UnlockStageA[9]=0
global.UnlockStageA[10]=0
global.UnlockStageA[11]=0
global.UnlockStageA[12]=0
global.UnlockStageA[13]=0
global.UnlockStageA[14]=0
global.UnlockStageA[15]=0
global.UnlockStageA[16]=0
global.UnlockStageA[17]=0
global.UnlockStageA[18]=0
global.UnlockStageA[19]=0
global.UnlockStageA[20]=0

global.UnlockStageB[1]=1
global.UnlockStageB[2]=1
global.UnlockStageB[3]=0
global.UnlockStageB[4]=0
global.UnlockStageB[5]=0
global.UnlockStageB[6]=0
global.UnlockStageB[7]=0
global.UnlockStageB[8]=0
global.UnlockStageB[9]=0
global.UnlockStageB[10]=0
global.UnlockStageB[11]=0
global.UnlockStageB[12]=0
global.UnlockStageB[13]=0
global.UnlockStageB[14]=0
global.UnlockStageB[15]=0
global.UnlockStageB[16]=0

global.UnlockStageC[1]=1
global.UnlockStageC[2]=1
global.UnlockStageC[3]=0
global.UnlockStageC[4]=0
global.UnlockStageC[5]=0
global.UnlockStageC[6]=0
global.UnlockStageC[7]=0
global.UnlockStageC[8]=0
global.UnlockStageC[9]=0
global.UnlockStageC[10]=0
global.UnlockStageC[11]=0
global.UnlockStageC[12]=0
global.UnlockStageC[13]=0
global.UnlockStageC[14]=0
global.UnlockStageC[15]=0
global.UnlockStageC[16]=0


stagedata_load()

global.UnlockEnemy[99]=0
enemydata_setup()

enemydata_load()

global.MenuGlobal=0
global.MenuSkip=0

global.HiscoreSkip=0
	
global.StageSelX=0
global.StageSelY=0
	
global.SetIntro=0

global.ClearGame=0
	
global.CurrentMusic=-1
global.MenuSkip=0
global.IntroSkip=0
global.CRTfx=1
global.CRTcustomDistort=true;
global.CRTcustomDistortAM=0.12;
global.CRTcustomBorder=true;

global.ColorMode=0;

global.MonochromeFX=0

global.BGMvolume=100
global.SFXvolume=100

global.Screenshake=1
global.Screenflash=1

global.ArcadeScreen=0

global.ContinueStart=-1
global.Continues=-1

global.LifeStart=2


global.DisplayFeats=1

global.StageName=""

global.Gold=0
global.GoldShow=1 //global.GoldShow=1 Show Gold

global.Difficulty=2

global.enemytest=0
global.enemytestB=0

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart
global.P5Life=0
global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0




global.p1Pal=0
global.p2Pal=0
global.p3Pal=0
global.p4Pal=0

global.p1CPal=0
global.p2CPal=0
global.p3CPal=0
global.p4CPal=0

global.p1Pals=spr_playerpal
global.p2Pals=spr_playerpal
global.p3Pals=spr_playerpal
global.p4Pals=spr_playerpal

global.P1available=1
global.P2available=0
global.P3available=0
global.P4available=0

globalcontrols(4)
globalcontrols(3)
globalcontrols(2)
globalcontrols(1)


shopreset()
}

global.TreasureSet=0;

featicon[99]=0
featsel=1
featsellerp=1
featY=0

shopsel=0
shopselX=0
shopselY=0
shopFrameIntro=0
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
shopDecide=0
shopBuy=-1
shopDecidePick=0
shopDialogueTime=120
shopDialogueAlt=1
shopAltFace=-1
shopSelect=-1
shopPrice=0
shopHello=0
shopHelloR=choose(0,1,2,3)
shopCheatNO=1;
shopCheatP=0;

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
disableTimer=0

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

animFrame=0

if !variable_global_exists("Bappo")
{
global.Bappo=0
global.P1Life=2
global.P2Life=2
global.P3Life=2
global.P4Life=2

global.p1Pal=0
global.p2Pal=0
global.p3Pal=0
global.p4Pal=0

global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0

global.HiScoreStage=1



global.P1Char=0
global.P2Char=1
global.P3Char=2
global.P4Char=3

global.CanGlobalBeta=1

global.GlobalBeta=1
global.GlobalCBeta=1
global.GlobalTBeta=1
}

charstatsetup=0

////Turn off Beta Mode
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

charselectmode=0

superFlashFrame1=0
superFlashFrame2=0

goActive=0
goFrame=0
xGoCheck=0

///Time Limit
time=99//99
timecheck=-1 ///For the alarm if a cutscene or scene's triggered
timedead=1
timeclick=120
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
global.scorefont=font_add_sprite_ext(spr_scorefont, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ()_/\""+"'.✰-+%©∞?!:▲►▼◄$,&△◯╳◻Ñ¡ÁÉÍÓÚ", false, 0);
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

if global.Cheat[6] {
global.P1Char=choose(0,1,2,3)
global.P2Char=choose(0,1,2,3)
global.P3Char=choose(0,1,2,3)
global.P4Char=choose(0,1,2,3)
}

MinX=x-320
MaxX=x+sprite_width-320

camMin=0
camMinY=0

camYAdd=0
camYAddSpd=0

if !instance_exists(oCamLock)
{
camMax=room_width camMaxY=240+16}
else
{
camMax=0 camMaxY=0}

quakeFX=0
quakeFXTime=0


hiscore_setup()
if global.HiScoreLoad=0 ///Load HiScore
{global.HiScoreLoad=1
hiscore_load()
}


if room=rm_setup
{
room_goto(rm_loading)
}

if room=rm_loading
{
assets_load()	
alarm[11]=60
//room_goto(rm_titlescreen)
}

if room=rm_menu or room=rm_minigames or room=rm_cutscenes
{
MenuText="FIGHT BADDIES"
MenuScaleX=0
MenuSil=0
MenuMoveX=0
}

screenBlack=0

charCheck=3

enemyList=oEnemy1

stageClear=0
stageClearIndex=0
stageClearY=-120
stageBoss="BOSS"
stageScore=0
stageCspr=spr_stageclear
scoreClearSet=0
bossScore=10000
bossID=-1
bossMaxHP=2
stageclearMusic=1
stageclearfade=0
resulttext1="BOSS"
altresult1=-1
resulttext2="VITALS"
altresult2=-1
altresult2a=-1
altresult2b=-1
altresult2c=-1
altresult2d=-1
resulttext3="TIME"
altresult3=-1
AltScore1=0
AltScore2=0
AltScore3=0
stageClearDelay=0
stagePose=1
specialTimer=-1
timeClear=0

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
mapXAdd=1
mapXFilm=0
mapPX=0
mapPY=0
mapPflicker=0


skipScene=0

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
creditsTime=800
credFram=0
credMSC=0
creditsCameo=0
creditsCameoX=0
creditsCameoY=0

finalStage=0
finalStageEnd=0
finalStageScoreMark=0

//Cutscenes
CutsceneImage=spr_cutscene1
CutsceneIndex=0
CutsceneX=0
CutsceneY=0
CutsceneHSpeed=0
CutsceneVSpeed=0
CutsceneStage=rm_stage2




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
mapHighScore=0


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

if !variable_global_exists("LOADSET")
{global.LOADSET=0
settings_load() ///Controlshere
unlock_load()
gold_load()

}

/////Map Screen
lockedMap[30]=0
check_unlockedmap()

if room=rm_titlescreen 
{global.StageSelect=0
global.HiScoreSee=0
}

if room=rm_creditscene
{
dancer1spr=spr_viva_dance
dancer1img=1
dancer1turn=1
dancer2spr=spr_hina_dance
dancer2img=1
dancer2turn=1
dancer3spr=spr_bahati_dance
dancer3img=1
dancer3turn=1
dancer4spr=spr_sofia_dance
dancer4img=1
dancer4turn=1

dancersfade=1

}
if room=rm_soundtest
{
songno=0
songname="SELECT A SOUND OR SOUND"
soundno=1
soundname="VIVA 1"
playingsongname=""
playingloop=0
playSFX=snd_viva4
voiceActor=""

songtext=1
songcomposer=""
dancer1spr=spr_viva_dance
dancer1img=1
dancer1turn=1
dancer2spr=spr_hina_dance
dancer2img=1
dancer2turn=1
dancer3spr=spr_bahati_dance
dancer3img=1
dancer3turn=1
dancer4spr=spr_sofia_dance
dancer4img=1
dancer4turn=1

dancersfade=1

songtime=0
songmin=0
songsec=0

songMinTime=0
songMaxTime=0

seconds=0
seconds2=0
seconds3=0

secondsMAX=0
secondsMAX=0
secondsMAX=0

songplaying=-1

songzero=0
songend=0
songPlay=0
songSPD=1
playingSound=msc_stage1
soundSPD=1

songID=-1

soundSelect=1
controlNO=9
canControl=1
}

if room=rm_gallery
{
//sprite_replace(spr_galleryimg1,"Gallery/VivaBeach.png",0,false,false,sprite_get_width(spr_galleryimg1)/2,sprite_get_height(spr_galleryimg1)/2)
gallerychoosing=0
galleryX=0
galleryY=0
galleryNO=1
galleryHover=0
galleryname="VIVA'S GALLERY"
gallerybuffer=10

galleryload=0

galleryTime=0

authorname="@MRPR1993"
showtext=1
pictureX=160
pictureY=120
gallerySet=1
pictureZoom=0.25/3

filtermode=false

pcitureNO=1
pictureMax=1
currentimagespr=spr_galleryimg1
}



enemySpawn=global.enemytest
spawnNo=global.enemytestB

event_user(0)

cutscenename="VIVA"
cutsceneline="OKAY. WHERE HAS THAT TRUCK GONE TO? SPEAK UP DOG!"

tutorialTextY=48
tutorialTextTime=0
tutorialText="ASDW TO MOVE\nJ TO ATTACK, K/SPACE TO JUMP"

tutorialTextX=160
tutorialTextY=48
btnSep=8
btnT1="PRESS"
btnspr=spr_commandbutton
btnind=0
btnT2="J"
btnT3="TO DO"

//lockedMap[0]=1
//lockedMap[1]=1
//lockedMap[2]=1
//lockedMap[3]=1
//lockedMap[4]=1
//lockedMap[5]=1
//lockedMap[6]=1
//lockedMap[7]=1

cameraYAdd=0

if room=rm_characterselect
{
p1=instance_create_depth(0,53,-1,oCharacterSelectPlayer) with p1 {canControl=1 controlNO=1}
if global.P1Only=0
{

p2=instance_create_depth(80,53,-1,oCharacterSelectPlayer) with p2 {canControl=0 controlNO=2}
p3=instance_create_depth(160,53,-1,oCharacterSelectPlayer) with p3 {canControl=0 controlNO=3}
p4=instance_create_depth(240,53,-1,oCharacterSelectPlayer) with p4 {canControl=0 controlNO=4}


}
else {p1.x=120

p2=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p2 {controlNO=0 playerNO=2 playerGet=0 dead=1}
p3=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p3 {controlNO=0 playerNO=3 playerGet=0 dead=1}
p4=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p4 {controlNO=0 playerNO=4 playerGet=0 dead=1}

}
p5=instance_create_depth(2400,53,-1,oCharacterSelectPlayer) with p5 {canControl=1 controlNO=9}
}

//if global.CRTfx=7 global.MonochromeFX=1 else global.MonochromeFX=0

if room=rm_settings
{instance_create_depth(0,0,-1,oSettings)}

if instance_exists(oPlayer)
{

with oControl
{
p1=oPlayer
p1.PlayerLife=global.P1Char p1.PlayerScore=global.P1Score
p2=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p2 {controlNO=0 playerNO=2 playerGet=0 dead=1}
p3=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p3 {controlNO=0 playerNO=3 playerGet=0 dead=1}
p4=instance_create_depth(-999999999,-999999999,-1,oPlayerNoControl) with p4 {controlNO=0 playerNO=4 playerGet=0 dead=1}
}

if global.multiMode>1
if room!=rm_titlescreen and room!=rm_characterselect and room!=rm_hiscore
and room!=rm_animeditor and room!=rm_newspaper
{//global.P1available=1


	playernear=p1
	with p1 {if global.P1available=0 ContinueMode=1
PlayerLife=global.P1Life
PlayerScore=global.P1Score my_pal_sprite=global.p1Pals
		}
	if global.P2available=1	
{p2=instance_create_depth(160,208-16,-1,oPlayer) p2.playerNO=2 p2.controlNO=2 p2.character=1
	if global.P2available=0 p2.ContinueMode=1 else p2.ContinueMode=0 p2.playerGet=0
	PlayerLife=global.P2Life
PlayerScore=global.P2Score my_pal_sprite=global.p2Pals
	}
	if global.P3available=1
{p3=instance_create_depth(160,208-16,-1,oPlayer) p3.playerNO=3 p3.controlNO=3 p3.character=2
		if global.P3available=0 p3.ContinueMode=1 else p3.ContinueMode=0 p3.playerGet=0
		PlayerLife=global.P3Life
PlayerScore=global.P3Score my_pal_sprite=global.p3Pals
		} 
	if global.P4available=1		
{p4=instance_create_depth(160,208-16,-1,oPlayer) p4.playerNO=4 p4.controlNO=4 p4.character=3
		if global.P4available=0 p4.ContinueMode=1 else p4.ContinueMode=0 p4.playerGet=0
		PlayerLife=global.P4Life
PlayerScore=global.P4Score my_pal_sprite=global.p4Pals
		}
		

		
}

}

/////Modes And Multu
///1-Boss Battles
///2-


if room=rm_menu {global.NoCheat=1; global.ArenaType=0}
if room!=rm_characterselect and room!=rm_minigames
{
if global.ArenaType=2 instance_create(0,0,oArenaSurvival)
if global.ArenaType=3 instance_create(0,0,oArenaBossBattles)
if global.ArenaType=5 instance_create(0,0,oArenaVS)
if global.ArenaType=6 instance_create(0,0,oArenaOddball)
if global.ArenaType=7 instance_create(0,0,oArenaPoints)
}
if instance_exists(oArenaSurvival)
with oControl
{with oPlayer
	{key_right=0
areaEntry=1 ///For the player to start
alarm[0]=45 ///Time to stop	
	}

}


if room=rm_paletteeditor
instance_create_depth(0,0,-1,oPaletteEditor)

languagetext[40]=0; ///First 10 will be for the setting stuff
language_check();
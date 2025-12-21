// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gameover_set(){
alarm[2]=0
///Game Over - also check if there's score



if HiScoreCheck>=global.HiScore10 and keyToGameOver=0
{
hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
}
else
{////Set Game Over
audio_stop_all()

if global.ArenaType!=0
{
if global.ArenaType=2
{
var scorecheck=p1.PlayerScore+p2.PlayerScore+p3.PlayerScore+p4.PlayerScore
if scorecheck>=global.HiScoreSurvival {global.HiScoreSurvival=scorecheck
ini_open("GAMEDATA/hiscore.ini");
ini_write_real("STAGEdata", "Sextra1", global.HiScoreSurvival)
ini_close()	
	}
}

if global.ArenaType=3
{
var scorecheck=p1.PlayerScore+p2.PlayerScore+p3.PlayerScore+p4.PlayerScore
if scorecheck>=global.HiScoreBossBattlesScore {global.HiScoreBossBattlesScore=scorecheck
ini_open("GAMEDATA/hiscore.ini");
ini_write_real("STAGEdata", "Sextra3", global.HiScoreBossBattlesScore)
ini_close()	
	}
}


GoldShow=1
GoldGet+=round(p1.PlayerScore/25)
GoldGet+=round(p2.PlayerScore/25)
GoldGet+=round(p3.PlayerScore/25)
GoldGet+=round(p4.PlayerScore/25)
GoldGet+=round(continueStageScore/25)

if overwriteGold!=-1 GoldGet=overwriteGold

if GoldGet!=0
{
global.Gold+=GoldGet global.Gold=clamp(global.Gold,0,99999999999) gold_save()
}

}

GoldShow=1
gold_save()
stageClearCheck=1

global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0
global.P5Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

if global.Difficulty=0 {global.ContinueStart=5 global.LifeStart=4}
if global.Difficulty=1 {global.ContinueStart=4 global.LifeStart=3}
if global.Difficulty=2 {global.ContinueStart=3 global.LifeStart=2}
if global.Difficulty=3 {global.ContinueStart=2 global.LifeStart=2}
if global.Difficulty=4 {global.ContinueStart=1 global.LifeStart=2}

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart

global.Continues=global.ContinueStart

musicplayonce(msc_gameover)

if global.MenuGlobal=0 and global.SaveFileNO!=0
arcade_saving(global.StageSave)

saveall();

isGameOver=1 continueScreen=1
alarm[3]=320
}
}




function gameover_reset()
{

global.Gold+=GoldGet

global.P1Score=0
global.P2Score=0
global.P3Score=0
global.P4Score=0
//global.P5Score=0

global.P1ScoreLife=0
global.P2ScoreLife=0
global.P3ScoreLife=0
global.P4ScoreLife=0

if global.Difficulty=0 {global.ContinueStart=5 global.LifeStart=4}
if global.Difficulty=1 {global.ContinueStart=4 global.LifeStart=3}
if global.Difficulty=2 {global.ContinueStart=3 global.LifeStart=2}
if global.Difficulty=3 {global.ContinueStart=2 global.LifeStart=2}
if global.Difficulty=4 {global.ContinueStart=1 global.LifeStart=2}

global.P1Life=global.LifeStart
global.P2Life=global.LifeStart
global.P3Life=global.LifeStart
global.P4Life=global.LifeStart

global.Continues=global.ContinueStart



if global.MenuGlobal=0 and global.SaveFileNO!=0
{
ini_open("GAMEDATA/arcade"+string(global.SaveFileNO)+".ini");

ini_write_real("SAVE", "P1L", global.P1Life)
ini_write_real("SAVE", "P2L", global.P2Life)
ini_write_real("SAVE", "P3L", global.P3Life)
ini_write_real("SAVE", "P4L", global.P4Life)
ini_write_real("SAVE", "P1S", global.P1Score)
ini_write_real("SAVE", "P2S", global.P2Score)
ini_write_real("SAVE", "P3S", global.P3Score)
ini_write_real("SAVE", "P4S", global.P4Score)
ini_write_real("SAVE", "P5S", global.P5Score)
ini_write_real("SAVE", "P1LS", global.P1ScoreLife)
ini_write_real("SAVE", "P2LS", global.P2ScoreLife)
ini_write_real("SAVE", "P3LS", global.P3ScoreLife)
ini_write_real("SAVE", "P4LS", global.P4ScoreLife)
ini_write_real("SAVE", "CONT", global.Continues)
ini_write_real("SAVE", "CONT2", global.ContinueStart)

ini_write_real("SAVE", "DIF", global.Difficulty)
ini_write_real("SAVE", "AND", global.ArcadeDeath)
ini_write_string("SAVE", "STG", global.SaveText)

var _rep=1;
repeat(10)
{
ini_write_real("SAVE", "SR", global.StageRecord[_rep])
_rep+=1;
}

ini_close()

}

saveall();


}
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
global.P4Score=0

global.Continues=global.ContinueStart

musicplayonce(msc_gameover)

saveall();

isGameOver=1 continueScreen=1
alarm[3]=320
}
}
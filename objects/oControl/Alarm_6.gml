/// @description Show StageClear
if stageclearfakeout!=1
{
if isPaused=0
{
stageScore=1
///Unlock Stage
global.UnlockStage[StageNumber]=1
global.StageClear=1
sc=instance_create_depth(0,0,-1,oContinueScreen) with sc
{
if global.MenuGlobal=0 or global.MenuGlobal=1
{
///Cheat Penalty
{


}
}


if global.StageSelect=1 or global.IsMinigame=1
{



GoldShow=1
GoldGet+=round(p1.PlayerScore/100)
GoldGet+=round(p2.PlayerScore/100)
GoldGet+=round(p3.PlayerScore/100)
GoldGet+=round(p4.PlayerScore/100)
GoldGet+=round(continueStageScore/100)

if GoldGet!=0
{
global.Gold+=GoldGet global.Gold=clamp(global.Gold,0,99999999999) gold_save()
}

}

if global.MenuGlobal=0 and global.SaveFileNO!=0
{
global.P1LifeS=global.P1Life
global.P2LifeS=global.P2Life
global.P3LifeS=global.P3Life
global.P4LifeS=global.P4Life

global.P1ScoreS=global.P1Score
global.P2ScoreS=global.P2Score
global.P3ScoreS=global.P3Score
global.P4ScoreS=global.P4Score
arcade_save(stageNext)
}


}


}
}
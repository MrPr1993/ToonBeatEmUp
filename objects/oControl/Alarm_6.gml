/// @description Show StageClear
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
}


}

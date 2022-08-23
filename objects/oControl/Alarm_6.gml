/// @description Show StageClear
if isPaused=0
{
stageScore=1
///Unlock Stage
global.UnlockStage[StageNumber]=1
global.StageClear=1
sc=instance_create_depth(0,0,-1,oContinueScreen)
}

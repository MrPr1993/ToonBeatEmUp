musicplaystart(-1)
global.HiScoreStage=2
with oEnemySpawner {timeline=tm_train event_user(0)}
oPlayer.canControl=0
oControl.stageNext=rm_stage5
oControl.stagePause=1
oControl.StageNumber=4

global.HiScoreLevel=2

with oControl
{
stagename="TRAINING TRAVEL"	

global.PrevStage2=4
prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=1
stagecheck=4
}
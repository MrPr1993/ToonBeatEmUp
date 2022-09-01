musicplaystart(msc_stage2)
global.HiScoreStage=1
oControl.showMap=0

if instance_exists(oHeight32) with oHeight32 
{
name="Remove"

isDraw=0
}

with oPlayer
{
carMode=1
anim=200
x=0 key_right=0
alarm[0]=-1 ///Time to stop
}

oEnemySpawner.timeline=tm_stage2
oEnemySpawner.timehit=-100

oControl.stageNext=rm_stage3
oControl.stagePause=1

oControl.StageNumber=3

global.HiScoreLevel=2

with oControl
{
stagename="RUSH OVER THE SEA"	

global.PrevStage2=3
prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=1
stagecheck=3
}
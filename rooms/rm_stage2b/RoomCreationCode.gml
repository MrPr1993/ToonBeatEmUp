musicplaystart(msc_airplane)

global.StageRecord[2]=1;

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}

global.HiScoreStage=2
with oEnemySpawner {timeline=tm_airplane event_user(0)}
oControl.stageNext=rm_cutscene2b
oControl.stagePause=1
oControl.StageNumber=2

global.HiScoreLevel=2

with oControl
{
stagename="AERIAL WALK"	

global.PrevStage2=2
prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=1
stagecheck=2
}
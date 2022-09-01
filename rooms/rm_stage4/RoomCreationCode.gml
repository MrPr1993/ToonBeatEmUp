musicplaystart(msc_stage4)

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}

global.HiScoreStage=2
with oEnemySpawner {timeline=tm_graveyard event_user(0)}
oControl.stageNext=rm_credits
oControl.stagePause=1
oControl.StageNumber=7

oControl.finalStage=1

global.HiScoreLevel=3

with oControl
{
stagename="GRITTY GRAVES"		

global.PrevStage3=5
prevstagecheck1=0
prevstagecheck2=1
prevstagecheck3=global.PrevStage2
stagecheck=5
}


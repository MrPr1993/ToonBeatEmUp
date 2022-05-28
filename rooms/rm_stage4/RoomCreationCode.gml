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
oControl.StageNumber=6



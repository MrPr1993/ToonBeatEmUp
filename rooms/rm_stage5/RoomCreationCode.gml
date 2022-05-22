musicplaystart(msc_stage5)

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}

global.HiScoreStage=2
with oEnemySpawner {timeline=tm_ninja event_user(0)}
oControl.stageNext=rm_stage2
oControl.stagePause=1
oControl.StageNumber=6



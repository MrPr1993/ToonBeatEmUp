musicplaystart(-1)
global.HiScoreStage=1

oControl.stagePause=1

with oEnemySpawner
{
	GoBack=1 
	GoBackY=1 
	MaxY=280
	MaxX=7000-320//6648
		}

with oControl
{
stagename="GREAT CLIMBING COLD"		

global.PrevStage6=14
prevstagecheck1=global.PrevStage3
prevstagecheck2=global.PrevStage4
prevstagecheck3=global.PrevStage5
stagecheck=14
}
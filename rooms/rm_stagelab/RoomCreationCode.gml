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
stagename="DANGEROUS SCIENCE"		

global.PrevStage7=17
prevstagecheck1=global.PrevStage4
prevstagecheck2=global.PrevStage5
prevstagecheck3=global.PrevStage6
stagecheck=17
}
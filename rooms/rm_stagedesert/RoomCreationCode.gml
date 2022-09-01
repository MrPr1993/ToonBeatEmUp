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
stagename="HEATING HOT DESERT"		

global.PrevStage5=13
prevstagecheck1=global.PrevStage2
prevstagecheck2=global.PrevStage3
prevstagecheck3=global.PrevStage4
stagecheck=13
}
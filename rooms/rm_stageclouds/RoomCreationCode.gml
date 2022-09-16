musicplaystart(-1)
global.HiScoreStage=6
global.HiScoreLevel=6
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_clouds event_user(0)}

with oControl
{
stagename="AHEAD IN THE CLOUDS"		

global.PrevStage6=16
prevstagecheck1=global.PrevStage3
prevstagecheck2=global.PrevStage4
prevstagecheck3=global.PrevStage5
stagecheck=16
}
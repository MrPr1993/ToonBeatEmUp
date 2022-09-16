musicplaystart(-1)
global.HiScoreStage=5
global.HiScoreLevel=5
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_desert event_user(0)}

with oControl
{
stagename="HEATING HOT DESERT"		

global.PrevStage5=13
prevstagecheck1=global.PrevStage2
prevstagecheck2=global.PrevStage3
prevstagecheck3=global.PrevStage4
stagecheck=13
}
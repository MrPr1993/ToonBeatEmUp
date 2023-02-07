musicplaystart(msc_zeppelin)
global.HiScoreStage=8
global.HiScoreLevel=8
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_final event_user(0)}


with oControl
{
stagename="ZEPPELIN FINALE"	
	
global.PrevStage8=18
prevstagecheck1=global.PrevStage5
prevstagecheck2=global.PrevStage6
prevstagecheck3=global.PrevStage7
stagecheck=18
}
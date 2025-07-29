musicplaystart(msc_carnival)
global.HiScoreStage=4
global.HiScoreLevel=4
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

global.StageRecord[4]=0;

oControl.stagePause=1

oControl.stageNext=rm_cutscene4a

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_carnival event_user(0)}

with oControl
{
stagename="CLOWNY HONKY CARNIVAL"		
wallY=192
global.PrevStage4=9
prevstagecheck1=1
prevstagecheck2=global.PrevStage2
prevstagecheck3=global.PrevStage3
stagecheck=9
}
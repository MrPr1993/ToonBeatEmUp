musicplaystart(msc_swamp)
global.HiScoreStage=4
global.HiScoreLevel=4
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

oControl.stageNext=rm_cutscene4b

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_swamp event_user(0)}

with oControl
{
stagename="DEEP DEAD SWAMPS"		

global.PrevStage4=10
prevstagecheck1=1
prevstagecheck2=global.PrevStage2
prevstagecheck3=global.PrevStage3
stagecheck=10
}
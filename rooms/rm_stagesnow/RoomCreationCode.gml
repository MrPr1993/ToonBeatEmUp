musicplaystart(msc_snowmountain)
global.HiScoreStage=6
global.HiScoreLevel=6
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

global.StageRecord[6]=1;

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
		oControl.stageNext=rm_cutscene6b
		
with oEnemySpawner {timeline=tm_snow event_user(0)}


with oControl
{
stagename="GREAT CLIMBING COLD"		

global.PrevStage6=14
prevstagecheck1=global.PrevStage3
prevstagecheck2=global.PrevStage4
prevstagecheck3=global.PrevStage5
stagecheck=14
}
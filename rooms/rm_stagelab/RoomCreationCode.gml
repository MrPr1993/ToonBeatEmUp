musicplaystart(msc_lab)
global.HiScoreStage=7
global.HiScoreLevel=7
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_labs event_user(0)}


with oControl
{
stagename="DANGEROUS SCIENCE"		

global.PrevStage7=17
prevstagecheck1=global.PrevStage4
prevstagecheck2=global.PrevStage5
prevstagecheck3=global.PrevStage6
stagecheck=17
}
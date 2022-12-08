musicplaystart(msc_beach)
global.HiScoreStage=4
global.HiScoreLevel=4
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_beach event_user(0)}

global.HiScoreStage=4
//with oEnemySpawner {timeline=tm_beach event_user(0)}
oControl.stageNext=rm_stage4
oControl.stagePause=1
oControl.StageNumber=8

global.HiScoreLevel=4


bgbeach=layer_background_get_id(layer_get_id("AnimatedBG"));

layer_background_speed(bgbeach,2)

with oControl
{
stagename="DOWN SIDE BEACH"		

global.PrevStage4=8
prevstagecheck1=1
prevstagecheck2=global.PrevStage2
prevstagecheck3=global.PrevStage3
stagecheck=8
}

oPlayer.y=480
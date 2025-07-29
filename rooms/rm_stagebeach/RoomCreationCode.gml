musicplaystart(msc_beach)
global.HiScoreStage=4
global.HiScoreLevel=4
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

global.StageRecord[4]=2;

with oEnemySpawner
{	GoBackY=1 	//MaxY=280*2
		}		
with oEnemySpawner {
	//instance_destroy();
	timeline=tm_beach event_user(0)}

global.HiScoreStage=4
//with oEnemySpawner {timeline=tm_beach event_user(0)}
oControl.stageNext=rm_cutscene4c
oControl.stagePause=1
oControl.StageNumber=8

global.HiScoreLevel=4


bgbeach=layer_background_get_id(layer_get_id("AnimatedBG"));

layer_background_speed(bgbeach,2)

bgbeach2=layer_background_get_id(layer_get_id("BG"));

layer_background_yscale(bgbeach2,4)

with oControl
{
stagename="DOWN SIDE BEACH"		

global.PrevStage4=10
prevstagecheck1=1
prevstagecheck2=global.PrevStage2
prevstagecheck3=global.PrevStage3
stagecheck=10
}

//oPlayer.y=480
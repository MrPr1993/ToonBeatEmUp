musicplaystart(-1)

with oEnemySpawner
{
	GoBackY=1 
	MinY=0
	MaxY=280*2
	MaxX=6648
		}

global.HiScoreStage=4
//with oEnemySpawner {timeline=tm_beach event_user(0)}
oControl.stageNext=rm_stage4
oControl.stagePause=1
oControl.StageNumber=8

global.HiScoreLevel=4


bgbeach=layer_background_get_id(layer_get_id("AnimatedBG"));

layer_background_speed(bgbeach,2)
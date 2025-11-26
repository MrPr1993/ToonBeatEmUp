musicplaystart(msc_clouds)
global.HiScoreStage=6
global.HiScoreLevel=6
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

oControl.stageNext=rm_cutscene6c

global.StageRecord[6]=2;

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_clouds event_user(0)}

with oControl
{
stagename="AHEAD IN THE CLOUDS"		

	switch(global.Language)
	{
case 1:///Portuguese
stagename="ADELANTE ENTRE LAS NUBES"
break;
case 2:///Portuguese
stagename="ACIMA DAS NUVENS"
break;
	}

global.PrevStage6=16
prevstagecheck1=global.PrevStage3
prevstagecheck2=global.PrevStage4
prevstagecheck3=global.PrevStage5
stagecheck=16
}

bgbeach2=layer_background_get_id(layer_get_id("BG"));

layer_background_yscale(bgbeach2,-1)
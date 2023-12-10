musicplaystart(msc_underwater)
global.HiScoreStage=5
global.HiScoreLevel=5
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

oControl.stageNext=rm_cutscene5a

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_mermaid event_user(0)}

with oControl
{
stagename="UNDER THE SEA JAM"		

global.PrevStage5=12
prevstagecheck1=global.PrevStage2
prevstagecheck2=global.PrevStage3
prevstagecheck3=global.PrevStage4
stagecheck=12
}

bgbeach2=layer_background_get_id(layer_get_id("Arena2"));
layer_background_xscale(bgbeach2,-1)
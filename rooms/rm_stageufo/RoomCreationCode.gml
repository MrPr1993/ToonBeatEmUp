musicplaystart(-1)
global.HiScoreStage=6
global.HiScoreLevel=6
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

global.StageRecord[5]=1;

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
		oControl.stageNext=rm_cutscene5b
		
with oEnemySpawner {timeline=tm_ufo event_user(0)}


with oControl
{
stagename="UFO BEYOND THE STARS"	

	switch(global.Language)
	{
case 2:///Portuguese
stagename="DISCOS ALÉM DAS ESTRELAS"
break;
	}

global.PrevStage5=11
prevstagecheck1=global.PrevStage2
prevstagecheck2=global.PrevStage3
prevstagecheck3=global.PrevStage4
stagecheck=11
}

oControl.showMap=0
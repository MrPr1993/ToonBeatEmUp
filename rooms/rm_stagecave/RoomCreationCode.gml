musicplaystart(msc_cave)
global.HiScoreStage=6
global.HiScoreLevel=6
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

global.StageRecord[6]=0;

oControl.stageNext=rm_cutscene6a

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}
		
with oEnemySpawner {timeline=tm_cave event_user(0)}


with oControl
{
stagename="FANTASTIC FANTASY CAVERNS"	

	switch(global.Language)
	{
case 1:///Portuguese
stagename="CAVERNAS DE FANTASÍA FANTÁSTICA"
break;
case 2:///Portuguese
stagename="FANTÁSTICA CAVERNA DAS FANTASIAS"
break;
	}

global.PrevStage6=15
prevstagecheck1=global.PrevStage3
prevstagecheck2=global.PrevStage4
prevstagecheck3=global.PrevStage5
stagecheck=15
}
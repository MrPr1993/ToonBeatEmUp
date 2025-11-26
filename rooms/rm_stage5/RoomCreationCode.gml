musicplaystart(msc_stage5)

with oEnemySpawner
{
	GoBackY=1 
	MaxY=280
		}

global.HiScoreStage=2
with oEnemySpawner {timeline=tm_ninja event_user(0)}
oControl.stageNext=rm_cutscene3c
oControl.stagePause=1
oControl.StageNumber=8

global.StageRecord[3]=2;

global.HiScoreLevel=3

with oControl
{
stagename="LUCKY DOJO CASINO"		

	switch(global.Language)
	{
case 1:///Portuguese
stagename="CASINO SUERTUDO DE DOJO"
break;
case 2:///Portuguese
stagename="CASINO DOJO LUCKY"
break;
	}

global.PrevStage3=7
prevstagecheck1=0
prevstagecheck2=1
prevstagecheck3=global.PrevStage2
stagecheck=7
}
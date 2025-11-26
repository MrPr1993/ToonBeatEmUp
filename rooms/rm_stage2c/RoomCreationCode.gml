musicplaystart(-1)
global.HiScoreStage=2
with oEnemySpawner {timeline=tm_train event_user(0)}
oPlayer.canControl=0
oControl.stageNext=rm_cutscene2c
oControl.stagePause=1
oControl.StageNumber=4

global.StageRecord[2]=2;

global.HiScoreLevel=2

with oControl
{
stagename="TRAINING TRAVEL"	

	switch(global.Language)
	{
case 1:///Portuguese
stagename="VIAJE DE TRENAMIENTO"
break;
case 2:///Portuguese
stagename="TREMENDA VIAGEM"
break;
	}

global.PrevStage2=4
prevstagecheck1=0
prevstagecheck2=0
prevstagecheck3=1
stagecheck=4
}
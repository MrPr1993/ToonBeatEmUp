musicplaystart(msc_underwater)
global.HiScoreStage=1
//with oEnemySpawner {timeline=tm_stage3 event_user(0)}

oControl.stagePause=1

with oEnemySpawner
{MaxX=room_width-320 GoBack=1
	GoBackY=1 canFollowY=1
	MaxY=280
		}

with oControl
{
stagename="UNDER THE SEA JAM"		

global.PrevStage5=12
prevstagecheck1=global.PrevStage2
prevstagecheck2=global.PrevStage3
prevstagecheck3=global.PrevStage4
stagecheck=12
}
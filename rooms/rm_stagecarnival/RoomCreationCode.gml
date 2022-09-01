musicplaystart(-1)
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
stagename="CLOWNY HONKY CARNIVAL"		

global.PrevStage4=9
prevstagecheck1=1
prevstagecheck2=global.PrevStage2
prevstagecheck3=global.PrevStage3
stagecheck=9
}
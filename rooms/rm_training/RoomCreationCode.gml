musicplaystart(-1)
oControl.showMap=0
global.HiScoreStage=-1

oPlayer.x=60
oPlayer.y=192
with oPlayer
{
canControl=1
key_right=0
areaEntry=0
}

with oEnemySpawner
{MaxX=room_width GoBack=1
	GoBackY=1 canFollowY=1
	MaxY=280
		}


oControl.stagePause=1
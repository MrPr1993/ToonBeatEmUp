musicplaystart(msc_training)
oControl.showMap=0
global.HiScoreStage=-1

oPlayer.x=240
oPlayer.y=192
with oPlayer
{alarm[0]=0
canControl=0
key_right=1
areaEntry=0
}

with oEnemySpawner
{MaxX=room_width GoBack=1
	GoBackY=1 canFollowY=1
	MaxY=280
		}


oControl.stagePause=1
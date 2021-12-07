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
{MaxX=2688-320 GoBack=1}

oControl.stagePause=1
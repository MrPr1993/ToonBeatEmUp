musicplaystart(-1)
oPlayer.x=160
oPlayer.y=192
with oPlayer
{
canControl=1
key_right=0
areaEntry=0
}

with oEnemySpawner
{GoBack=1
MaxX=640
GoBackY=1 canFollowY=1
MinY=0
MaxY=1480
MaxYAdd=240 oControl.CamMove=1 active=1
}

oControl.stagePause=1
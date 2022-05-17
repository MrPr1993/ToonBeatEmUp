/// @description Stage Starting
oPlayer.visible=0
oPlayer.alarm[0]=10
oPlayer.canControl=0
oControl.showMap=0
oControl.P1SpawnX=90
oControl.P1SpawnY=232

oPlayer.canmove=0

oControl.stageNext=rm_credits

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

spawner_followset("WaveSet1",0,696,1)
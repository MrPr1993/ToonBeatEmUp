/// @description Stage Starting
oPlayer.visible=0
oPlayer.alarm[0]=0
oPlayer.canControl=0
oControl.showMap=0
oControl.P1SpawnX=90
oControl.P1SpawnY=232
oControl.P2SpawnX=oControl.P1SpawnX
oControl.P2SpawnY=oControl.P1SpawnY
oControl.P3SpawnX=oControl.P1SpawnX
oControl.P3SpawnY=oControl.P1SpawnY
oControl.P4SpawnX=oControl.P1SpawnX
oControl.P4SpawnY=oControl.P1SpawnY

oControl.stageNext=rm_cutscene3a

with oControl
{timecheck=alarm[0] alarm[0]=10000000}

timer_set(0)

oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0

spawner_followset("WaveSet1",0,696,1)
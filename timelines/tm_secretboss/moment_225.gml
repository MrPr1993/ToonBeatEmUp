
if __view_get( e__VW.XView, 0 )>11360+12-1
{
__view_set( e__VW.XView, 0, 11360+16-2)
spawner_followset("WaveSet1",0,0,1)
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
oEnemySpawner.MaxX=11360+320+8
}
else
{
timeline_position-=1
}

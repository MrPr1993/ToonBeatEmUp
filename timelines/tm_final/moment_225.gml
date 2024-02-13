
if __view_get( e__VW.XView, 0 )>11360-1
{
__view_set( e__VW.XView, 0, 11360-2)
oEnemySpawner.roomHSpd=0
oEnemySpawner.roomMove=0
}
else
{
timeline_position-=1
}

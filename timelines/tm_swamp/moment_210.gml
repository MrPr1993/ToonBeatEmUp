/// @description /Fire Robot



if __view_get( e__VW.XView, 0 )>=1047-320
{
en5=instance_create(920,140,oAreaSpawner)
en5.spawnX=0 ///2848
en5.enemytype0=oRobotBurn
}
else
{
timeline_position-=1
}


/// @description /Fire Robot



if __view_get( e__VW.XView, 0 )>=1047-320
{



with tree instance_destroy()
en5=instance_create(920,140,oAreaSpawner)
en5.spawnX=0 ///2848
en5.enemytype0=oRobotBurn en5.sprite_index=spr_swamptree en5.hasFake=0 en5.FrameVis=1
en5.MaxSpawnFrame=0.9 en5.FXtype=6

}
else
{
timeline_position-=1
}


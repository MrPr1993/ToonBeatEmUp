/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320
{
en5=instance_create_depth(2344,160,-1,oAreaSpawner)
en6=instance_create_depth(2470,160,-1,oAreaSpawner)
en7=instance_create_depth(2600,160,-1,oAreaSpawner)
with oAreaSpawner
{spawnX=0 ///768
MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
enemyMax=0}
en5.enemytype0=oRobotBurn
en6.enemytype0=oRobot
en7.enemytype0=oRobotIce


}
else
{
timeline_position-=1
}


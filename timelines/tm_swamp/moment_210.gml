/// @description /Fire Robot



if __view_get( e__VW.XView, 0 )>=1047-320
{



with tree instance_destroy()
en5=instance_create(920,140,oAreaSpawner)
en5.spawnX=0 ///2848
en5.enemytype0=oRobotBurn en5.sprite_index=spr_swamptree en5.hasFake=0 en5.FrameVis=1
en5.MaxSpawnFrame=0.9 en5.FXtype=6

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+96,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}


/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2238
{
en3=instance_create(2496,160,oAreaSpawner)
with en3
{
spawnX=0 ///768
enemytype0=oWrestler MaxSpawnFrame=0 visible=1
FXtype=3 canDraw=0 FrameVis=1 hasFake=0 sprite_index=spr_doortrap
turn0=-1
}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oWrestler)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1 enemy_switch("MS.CRUSH",0)}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
{
timeline_position-=1
}


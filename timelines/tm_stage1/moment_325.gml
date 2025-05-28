/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2279
{
__background_set( e__BG.Index, 0, bg_sky2 )
en5=instance_create(2432+16,160,oAreaSpawner)
en5.spawnX=0 ///2848
timeline_position=600

if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 166+32,oEnemy1)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 254,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
}
else
{
timeline_position-=1
}




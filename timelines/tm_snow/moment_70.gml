/// @description Baddies Appear 3 - Snow Babe

if __view_get( e__VW.XView, 0 )>=3920-2-320
{
en1=instance_create(3784, 170,oAreaSpawner)
en1.spawnX=0 ///2848
en1.enemytype0=oSnowGirl en1.hasFake=0 en1.canDraw=0
en1.FXtype=1 turn0=-1


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-96, 200,oSnowGirl)
with P2en1 {canAttack=5 alarm[1]=90 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 232,oFairy)
with P2en2 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 264,oFairy)
with P2en3 {enemy_switch("LUSH",0) canAttack=5 alarm[1]=30 image_xscale=1}}
////


}
else
{
timeline_position-=1
}


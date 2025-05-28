/// @description Plane Area

if __view_get( e__VW.XView, 0 )>=3594
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-32,170,-1,oSwing) with en5
{canAttack=5 alarm[1]=30}
en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,170,-1,oEnemy1B) with en6
{canAttack=5 alarm[1]=30 image_xscale=-1 weapon_add("PIPE")}
//spawner_followset("WaveSet1",0,3338-64+640,1)

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
else
timeline_position-=1

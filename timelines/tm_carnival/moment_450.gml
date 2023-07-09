/// @description Plane Area

if __view_get( e__VW.XView, 0 )>=3594
{
en5=instance_create_depth(__view_get( e__VW.XView, 0 )-32,196,-1,oSwing) with en5
{canAttack=5 alarm[1]=30}
en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+32,196+48,-1,oEnemy1B) with en6
{canAttack=5 alarm[1]=30 image_xscale=-1 weapon_add("PIPE")}
//spawner_followset("WaveSet1",0,3338-64+640,1)
}
else
timeline_position-=1

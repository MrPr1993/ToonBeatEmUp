if __view_get( e__VW.XView, 0 )>=2640-2-320-640-320
{
//en5=enemy_ambusher(0,480,oSwing,-1,1,32,25,1,1,0,1340)
//with en5 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",1)}

en5=enemy_ambusher(0,480,oRobotIce,-1,1,32,25,2,0,0,12)

//en7=enemy_ambusher(0,480+64,oSwing,-1,1,32,25,1,1,0,1340)
//with en7 {weapon_add("HANDGUN") enemy_switch("MS.TRIG",1)}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 460,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 500,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 520,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}

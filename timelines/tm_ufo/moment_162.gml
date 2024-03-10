 /// @description Baddies Appear 

if __view_get( e__VW.XView, 0 )>=8660-2-320
{

en4=instance_create(__view_get( e__VW.XView, 0)-64,176,oAlienRobot)
with en4 {image_xscale=1 canAttack=5 enemy_switch("DESTRON",0) alarm[1]=60}
en5=instance_create(__view_get( e__VW.XView, 0)-64,240,oAlienRobot)
with en5 {image_xscale=1 canAttack=5 alarm[1]=60}


}
else
{
timeline_position-=1
}


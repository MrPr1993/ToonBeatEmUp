/// @description Baddies Appear 1

if __view_get( e__VW.XView, 0 )>=2640-2-320-160
{
en3=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oEnemy1)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oEnemy1B)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}


/// @description Baddies Appear 3

if __view_get( e__VW.XView, 0 )>=3920-2-640-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+80,200+32+240,oBoxer)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=80}
en2=instance_create(__view_get( e__VW.XView, 0)+320-32,200+32+64+240,oEnemy1)
with en2 {image_xscale=1 canAttack=5 alarm[1]=80 enemy_modify(my_pal_sprite,4,"MR.LAR",0,0.24,0.24)}
en3=instance_create(__view_get( e__VW.XView, 0)+320-32,200+32+96+240,oEnemy1)
with en3 {image_xscale=1 canAttack=5 alarm[1]=80 }

}
else
{
timeline_position-=1
}

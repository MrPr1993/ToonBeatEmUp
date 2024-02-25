/// @description Baddies Appear 7

if __view_get( e__VW.XView, 0 )>=6480-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,208,oFairy)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 current_pal=3}

en2=instance_create(__view_get( e__VW.XView, 0)-64,264,oFairy)
with en2 {image_xscale=1 canAttack=5 alarm[1]=60 current_pal=3}	

}
else
{
timeline_position-=1
}


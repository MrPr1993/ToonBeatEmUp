/// @description Baddies Appear 6 - Castle Entrance

if __view_get( e__VW.XView, 0 )>=5840-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oFairy)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oFairy)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("WENDY",0)}	

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oFairy)
with en3 {image_xscale=1 canAttack=5 alarm[1]=60}	

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oFairy)
with en4 {image_xscale=1 canAttack=5 alarm[1]=60 enemy_switch("WENDY",0)}	

}
else
{
timeline_position-=1
}


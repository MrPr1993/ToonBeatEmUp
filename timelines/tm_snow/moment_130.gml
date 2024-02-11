/// @description Baddies Appear 6

if __view_get( e__VW.XView, 0 )>=5840-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+64,200+32,oFairy)
with en1 {image_xscale=1 current_pal=3 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+64,200+64,oFairy)
with en2 {image_xscale=1 current_pal=3  ground=0 canmove=0 anim=13 z=-200}	

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+48,oSnowGirl)
with en3 {image_xscale=-1 canAttack=5 alarm[1]=60}	

}
else
{
timeline_position-=1
}


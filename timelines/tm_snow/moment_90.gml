/// @description Baddies - Ice Fairies
if __view_get( e__VW.XView, 0 )>=4560-2-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+64,200,oFairy)
with en1 {image_xscale=1 current_pal=3 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200,oFairy)
with en2 {image_xscale=-1 current_pal=3  ground=0 canmove=0 anim=13 z=-200}	

}
else
{
timeline_position-=1
}


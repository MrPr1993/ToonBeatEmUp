/// @description Baddies Appear 1 - Plant Area

if __view_get( e__VW.XView, 0 )>=2640-2-320-640-320
{
en1=instance_create(__view_get( e__VW.XView, 0)+320-64,200+24,oFairy)
with en1 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,200+64,oFairy)
with en2 {image_xscale=-1 ground=0 canmove=0 anim=13 z=-200}	

}
else
{
timeline_position-=1
}


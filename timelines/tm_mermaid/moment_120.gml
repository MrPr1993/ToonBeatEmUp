/// @description Merfolk!

if __view_get( e__VW.XView, 0 )>=3180-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oMerman)
with en1 {image_xscale=-1 ground=0}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200,oSiren)
with en2 {image_xscale=-1 ground=0}

en3=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oMerman)
with en3 {image_xscale=-1 ground=0}

}
else
timeline_position-=1

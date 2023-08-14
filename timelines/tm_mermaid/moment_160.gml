/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=4322-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200-32,oSiren)
with en1 {image_xscale=-1 ground=0}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+32,oSiren)
with en2 {image_xscale=-1 ground=0}

en3=instance_create(__view_get( e__VW.XView, 0)-64,200-32,oSiren)
with en3 {image_xscale=1 ground=0}

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oSiren)
with en4 {image_xscale=1 ground=0}

}
else
timeline_position-=1

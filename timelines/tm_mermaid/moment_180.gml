/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=4900-2
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,200-32,oMerman)
with en1 {image_xscale=1}

en2=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oMerman)
with en2 {image_xscale=1}

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oMerman)
with en3 {image_xscale=1}
}
else
timeline_position-=1

/// @description Submarine Area

if __view_get( e__VW.XView, 0 )>=3680-2
{
en1=instance_create(__view_get( e__VW.XView, 0)-64,200-32,oLobster)
with en1 {image_xscale=1 ground=0}

en3=instance_create(__view_get( e__VW.XView, 0)-64,200+32,oLobster)
with en3 {image_xscale=1 ground=0}

}
else
timeline_position-=1

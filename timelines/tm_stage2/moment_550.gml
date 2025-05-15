if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
	with oControl {//camMove=0 camMax=room_width 980 
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
}
}
else
timeline_position-=1
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(enA)
and !instance_exists(enB)
and !instance_exists(enC)
and !instance_exists(enD)
and !instance_exists(enE)
{
	with oControl {//camMove=0 camMax=room_width 980 
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320
}
}
else
timeline_position-=1
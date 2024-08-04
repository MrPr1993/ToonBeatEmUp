/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
{oControl.time=99
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

oGunRange.away=1

spawner_followset("WaveSet1",0,2560,1)
}
else
timeline_position-=1


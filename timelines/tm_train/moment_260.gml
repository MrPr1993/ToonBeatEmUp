/// @description After Robot
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}

spawner_followset("WaveSet1",0,2560,1)

}
else
timeline_position-=1


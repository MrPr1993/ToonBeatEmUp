/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=2560}

}
else
timeline_position-=1


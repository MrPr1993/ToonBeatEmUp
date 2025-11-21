/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
{specialSet8=0
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90 
xGoCheck=2560}
oControl.time=99 timer_set(1)
spawner_followset("WaveSet1",0,3702,1)

}
else
timeline_position-=1


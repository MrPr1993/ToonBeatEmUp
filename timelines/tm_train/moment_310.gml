/// @description After Boxer
////Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1)
{specialSet8=0
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90 
xGoCheck=2560}

spawner_followset("WaveSet1",0,3702,1)

}
else
timeline_position-=1


if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
{specialSet8=0
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90 
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3440,1)
}
else
timeline_position-=1;
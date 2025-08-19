

if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(enA)
and !instance_exists(enB)
and !instance_exists(en7)
//and !instance_exists(en8)
and !instance_exists(en9)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=3382}

}
else
{
timeline_position-=1
}//4024

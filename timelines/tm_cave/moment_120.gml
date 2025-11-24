if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
and !instance_exists(en10)
and !instance_exists(en11)
and !instance_exists(en12)
and !instance_exists(en13)
and !instance_exists(en14)
and !instance_exists(en15)
and !instance_exists(en16)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,5840,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,200+24,oSkeleton)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,200+64,oSkeleton)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("SKELIE",0)	}	
}
else
timeline_position-=1;
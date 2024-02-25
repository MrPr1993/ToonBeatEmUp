if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3680+320,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oMerman)
with en1 {image_xscale=-1 ground=0 
	image_xscale=-1 canAttack=5 alarm[1]=60
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,234,oMerman)
with en2 {image_xscale=-1 ground=0 
	image_xscale=-1 canAttack=5 alarm[1]=60
	}
}
else
timeline_position-=1;
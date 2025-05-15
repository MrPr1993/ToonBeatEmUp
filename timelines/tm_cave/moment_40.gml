if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,3280-640,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190+32,oKnight)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60
	
	}	

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,190+64,oKnight)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("LANCER",0)
	weapon_add("CLUB")
	}	
	
	
}
else
timeline_position-=1;
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,2320,1)

en4=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oBear)
with en4 {canAttack=5 alarm[1]=60 enemy_switch("YOGI",0)}

en5=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oBear)
with en5 {canAttack=5 alarm[1]=60 enemy_switch("FOZZI",0)}	

en6=instance_create(__view_get( e__VW.XView, 0)-64,200+24,oClown)
with en6 {canAttack=5 alarm[1]=60 image_xscale=-1
	 enemy_switch("MARI",0) weapon_add_double("TWIRL")
	}

en7=instance_create(__view_get( e__VW.XView, 0)-64,200+64,oClown)
with en7 {canAttack=5 alarm[1]=60 image_xscale=-1
	
	}


}
else
timeline_position-=1;
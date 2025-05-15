if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,7440,1)

en1=instance_create(__view_get( e__VW.XView, 0)+320+64,190,oFatBurglar)
with en1 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.WIDE",0)
	weaponspr=spr_dbarrel
spawnID=oHotDog
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320+64,230,oFatBurglar)
with en2 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.WIDE",0)
		weaponspr=spr_dbarrel
spawnID=oHotDog
	}	
}
else
timeline_position-=1;
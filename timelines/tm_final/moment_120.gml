/// @description Treasure Room
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
and !instance_exists(en7)
and !instance_exists(en8)
and !instance_exists(en9)
{
with oControl {//camMove=0 camMax=room_width
 goActive=1; ambushtime=0; alarm[1]=90 time=99
xGoCheck=__view_get( e__VW.XView, 0 )+320}
spawner_followset("WaveSet1",0,9000,1)

bgc=layer_background_get_id(layer_get_id("BG"));
layer_background_change(bgc,bg_sky2)

en1=instance_create_depth(7774,156,-1,oEntryFenceJump) with en1
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=7774-200 newSpawn=1 newSpawnX=7774-240 rideX=7774
enemy_switch("MR.LAR",0) 
}
en2=instance_create_depth(8030,156,-1,oEntryFenceJump) with en2
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=8030-200 newSpawn=1 newSpawnX=8030-240 rideX=8030
enemy_switch("MR.ROB",0) 
}
en3=instance_create_depth(8030+160,156,-1,oEntryFenceJump) with en3
{depth=16777204 isDepth=0 ySpeed=2 spawnSpeedZ=-6 rangeXAdd=0 rangeX=8030-200+160 newSpawn=1 newSpawnX=8030-240+160 rideX=8030+160

}

en4=instance_create(__view_get( e__VW.XView, 0)+320+64,208-16,oFatBurglar)
with en4 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.WIDE",0) 
	weaponspr=spr_crate
spawnID=oHotDog
	}	
en5=instance_create(__view_get( e__VW.XView, 0)+320+64,208+16,oFatBurglar)
with en5 {image_xscale=-1 canAttack=5 alarm[1]=60 enemy_switch("MR.WIDE",0) 
		weaponspr=spr_crate
spawnID=oHotDog
	}


}
else
timeline_position-=1;
/// @description Bellydancers Appear 2

if __view_get( e__VW.XView, 0 )>=7176-2-320
{
en7=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryTeleport)
with en7 {spawnFall=spr_ninjabun_teleport
	spawnEnemy=oDancer image_index=4
	enemy_modify(my_pal_sprite,2,"JAZMYN",0,0.7,0.7)
	}

en7=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryTeleport)
with en7 {spawnFall=spr_ninjabun_teleport
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_modify(my_pal_sprite,2,"JAZMYN",0,0.7,0.7)
	}
	
}
else
timeline_position-=1

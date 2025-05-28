/// @description Bellydancers Appear 2

if __view_get( e__VW.XView, 0 )>=7176-2-320
{
en7=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryTeleport)
with en7 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4
	enemy_switch("JAZMYN",0)
	}

en8=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryTeleport)
with en8 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_switch("JAZMYN",0)
	}
	
////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0)+160,200,oEntryTeleport)
with P2en1 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_switch("JAZMYN",0)}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0)+160-64,200,oEntryTeleport)
with P2en2 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=1
	enemy_switch("JAZMYN",0)}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0)+160+64,200,oEntryTeleport)
with P2en3 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_switch("JAZMYN",0)}}
////

	
}
else
timeline_position-=1

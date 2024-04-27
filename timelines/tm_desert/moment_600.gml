if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1

en1=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryTeleport)
with en1 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4
	//enemy_switch("JAZMYN",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryTeleport)
with en2 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_switch("RULA",0)
	}
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2

en1=instance_create(__view_get( e__VW.XView, 0)+64,224,oEntryTeleport)
with en1 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4
	enemy_switch("JAZMYN",0)
	}

en2=instance_create(__view_get( e__VW.XView, 0)+320-64,224,oEntryTeleport)
with en2 {spawnFall=spr_dancer_sword1 sprite_index=spawnFall rangeX=0
	spawnEnemy=oDancer image_index=4 image_xscale=-1
	enemy_switch("JAZMYN",0)
	}
}
}
else timeline_position-=1
}
else timeline_position-=1

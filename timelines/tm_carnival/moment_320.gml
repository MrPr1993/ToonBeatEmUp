if __view_get( e__VW.XView, 0 )>=3240
{
en3=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en3
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-160-80}
en4=instance_create(__view_get( e__VW.XView, 0)-64-300,180,oEntryFenceJump)
with en4
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-160
		spawnFall=spr_burglarB_front moveSpr=spr_burglarB_run spawnEnemy=oEnemy1B}

en5=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en5
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-160+80
	spawnFall=spr_boxer_front moveSpr=spr_boxer_move spawnEnemy=oBoxer
current_pal=2;
my_pal_sprite=spr_boxerpal

	}
	
en6=instance_create(__view_get( e__VW.XView, 0)-64-200,180,oEntryFenceJump)
with en6
{depth=16777214 isDepth=0 rangeXAdd=-48 xAdd=-160-160
	spawnFall=spr_fatburglar_front moveSpr=spr_fatburglar_move spawnEnemy=oFatBurglar
	enemy_modify(my_pal_sprite,4,"MR. WIDE",0,0.4,0.4)
	}

}
else
timeline_position-=1;
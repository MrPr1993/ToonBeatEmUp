/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=0
{
en1=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
en2=instance_create(2063-112,124+29,oEntrySeat)
with en2 {trainFX=1 isDepth=0 depth=16777200 sittingSpr=spr_burglarB_ride spawnFall=spr_burglarB_front rangeXAdd=0
	rangeX=x-60 spawnEnemy=oEnemy1B
	}
en3=instance_create(2063,124+29,oEntrySeat)
with en3 {trainFX=1 isDepth=0 depth=16777200 sittingSpr=spr_femburglar_ride spawnFall=spr_femburglar_attack2 rangeXAdd=0
	rangeX=x-60 spawnEnemy=oFemBurglar
	}
en4=instance_create(2127,124+29,oEntrySeat)
with en4 {trainFX=1 sittingSpr=spr_femburglar_seat spawnFall=spr_femburglar_attack2 image_xscale=-1
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp) spawnEnemy=oFemBurglar}
en4.rangeX=en3.rangeX
en4.rangeXAdd=en3.rangeXAdd

en5=instance_create(2127+112,124+29,oEntrySeat)
with en5 {trainFX=1 isDepth=0 sittingSpr=spr_sneak_seat spawnFall=spr_sneak_front rangeXAdd=0
	rangeX=x-60 spawnEnemy=oSneak image_xscale=-1}
}	
else
{
timeline_position-=1
}


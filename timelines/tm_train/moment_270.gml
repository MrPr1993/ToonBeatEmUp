/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=0
{
en1=instance_create(__view_get( e__VW.XView, 0 )-64,176,oSwing)
en2=instance_create(2063-112,124+29,oEntrySeat)
with en2 {trainFX=1 isDepth=0 depth=16777200 sittingSpr=spr_burglarB_ride spawnFall=spr_burglarB_front rangeXAdd=0
	rangeX=x-60 spawnEnemy=oEnemy1B
	}
en3=instance_create(2063-48,124+29,oEntrySeat) en3.image_xscale=-1 en3.trainFX=1
en4=instance_create(2063,124+29,oEntrySeat)
with en4 {trainFX=1 isDepth=0 depth=16777200 sittingSpr=spr_femburglar_ride spawnFall=spr_femburglar_attack2 rangeXAdd=0
	rangeX=x-60 spawnEnemy=oFemBurglar
	}
en5=instance_create(2127,124+29,oEntrySeat)
with en5 {trainFX=1 sittingSpr=spr_femburglar_seat spawnFall=spr_femburglar_attack2 image_xscale=-1
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp) spawnEnemy=oFemBurglar}
en5.rangeX=en4.rangeX
en5.rangeXAdd=en4.rangeXAdd

en6=instance_create(2127+112,124+29,oEntrySeat)
with en6 {trainFX=1 isDepth=0 sittingSpr=spr_sneak_seat spawnFall=spr_sneak_front rangeXAdd=0
	rangeX=x-60 spawnEnemy=oSneak image_xscale=-1}

en7=instance_create_depth(2496-112,124+29,-1,oEntrySeat) en7.image_xscale=-1 en7.trainFX=1

}	
else
{
timeline_position-=1
}


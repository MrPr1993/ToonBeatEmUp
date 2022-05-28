/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1744
{
//en8=instance_create(__view_get( e__VW.XView, 0 )+320+16,176,oFemBurglar)
//with en8 {alarm[1]=2}
//en9=instance_create(__view_get( e__VW.XView, 0 )+320+16,192,oFemBurglar)
//with en9{alarm[1]=2	
//enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)}

en8=instance_create(2014,190,oEntryJump)
with en8
{rangeX=0 image_xscale=-1
	spawnSpr=spr_femburglar_jump
	spawnFall=spr_femburglar_jump
	spawnFallIndex=0
	spawnEnemy=oFemBurglar
}

en9=instance_create(2014,190+64,oEntryJump)
with en9
{rangeX=0 image_xscale=-1
	spawnSpr=spr_femburglar_jump
	spawnFall=spr_femburglar_jump
	spawnFallIndex=0
	spawnEnemy=oFemBurglar
enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)
}
en10=instance_create(__view_get( e__VW.XView, 0 )-32,192,oSneak)
}
else
{
timeline_position-=1
}


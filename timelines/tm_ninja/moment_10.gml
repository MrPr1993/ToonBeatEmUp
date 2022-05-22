/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=532
{
en2=instance_create(__view_get( e__VW.XView, 0 )+320-64,180,oEntryJump)
with en2
{spawnFall=spr_ninjabun_jump image_xscale=-1 rangeX=0
spawnEnemy=oNinjaBun
}

en3=instance_create(__view_get( e__VW.XView, 0 )+320-64,240,oEntryJump)
with en3
{spawnFall=spr_ninjabun_jump image_xscale=-1 rangeX=0
spawnEnemy=oNinjaBun
enemy_modify(spr_ninjapal,2,"NOUSAGI",0,0.3,0.3)
}

}
else
{
timeline_position-=1
}


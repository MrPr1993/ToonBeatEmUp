/// @description /Make sure to only count the previous ones, otherwise you'll get an error.

if __view_get( e__VW.XView, 0 )>=532
{
en3=instance_create(__view_get( e__VW.XView, 0 )+320-64,180,oEntryJump)
with en3
{spawnFall=spr_ninjabun_jump image_xscale=-1 rangeX=0
spawnEnemy=oNinjaBun current_pal=0;
}

en4=instance_create(__view_get( e__VW.XView, 0 )+320-64,240,oEntryJump)
with en4
{spawnFall=spr_ninjabun_jump image_xscale=-1 rangeX=0
spawnEnemy=oNinjaBun
enemy_switch("NOUSAGI",0)
}

}
else
{
timeline_position-=1
}


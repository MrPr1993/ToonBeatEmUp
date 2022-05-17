/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3058+160
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en5=instance_create(__view_get( e__VW.XView, 0 )-140,128,oEntryHorse) en5.rideX=3444 en5.rangeX=0
with en5
{ySpeed=3 horsepal=2 spawnSpeedZ=-3 ridetime=210+20 isDepth=0 horsepal=1 depth=16777210 horsedepth=16777210
spawnSpr=spr_burglar_front enemy_modify(my_pal_sprite,4,"MR. LAR",0,0.24,0.24)
}

en6=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,170,0,oFatBurglar) with en6
{enemy_modify(my_pal_sprite,4,"MR. WIDE",0,0.4,0.4) image_xscale=-1 canAttack=3 alarm[3]=10}
en7=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oFatBurglar) with en7
{enemy_modify(my_pal_sprite,4,"MR. WIDE",0,0.4,0.4) image_xscale=-1 canAttack=3 alarm[3]=10}
}
else
{
timeline_position-=1
}




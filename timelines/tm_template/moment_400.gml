/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3380
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en10=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,170,0,oFatBurglar) with en10
{enemy_switch("MR.WIDE",0) image_xscale=-1 canAttack=3 alarm[3]=10}
en11=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oFatBurglar) with en11
{enemy_switch("MR.WIDE",0) image_xscale=-1 canAttack=3 alarm[3]=10}

}
else
{
timeline_position-=1
}




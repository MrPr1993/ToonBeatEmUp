/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=3058
{
//__background_set( e__BG.Index, 0, bg_sky2 )
en8=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,170,0,oSneak) with en8
{image_xscale=-1 canAttack=3 alarm[3]=10}
en9=instance_create_depth(__view_get( e__VW.XView, 0 )+320+16,210,0,oSwing) with en9
{image_xscale=-1 canAttack=3 alarm[3]=60}


}
else
{
timeline_position-=1
}




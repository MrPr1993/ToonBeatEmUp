/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2000
{
box=instance_create_depth(2496,160,-1,oFlashFX) with box
{my_pal_sprite=spr_boxerpal current_pal=2 animEnd=0 alarm[0]=0 sprite_index=spr_boxer_train image_xscale=-1 trainFX=1 image_speed=0}
}
else
{
timeline_position-=1
}


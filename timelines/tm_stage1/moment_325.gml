/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2279
{
__background_set( e__BG.Index, 0, bg_sky2 )
en5=instance_create(2432+16,160,oAreaSpawner)
en5.spawnX=0 ///2848
timeline_position=600
}
else
{
timeline_position-=1
}




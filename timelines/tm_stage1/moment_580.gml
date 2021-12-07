/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1799
{
en5=instance_create(1960,160,oAreaSpawner)
en5.spawnX=1799
}
else
{
timeline_position-=1
}




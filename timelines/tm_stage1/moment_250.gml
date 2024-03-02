/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1088
{
en5=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1B)

en6=instance_create(__view_get( e__VW.XView, 0 )-32,192,oEnemy1)
with en6 enemy_switch("MR.LAR",0)
}
else
{
timeline_position-=1
}


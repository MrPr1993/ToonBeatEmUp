/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1088
{
en4=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)

en5=instance_create(__view_get( e__VW.XView, 0 )-32,192,oEnemy1)
with en5 enemy_modify(my_pal_sprite,6,"MR. LAR",0,0.24,0.24)
}
else
{
timeline_position-=1
}


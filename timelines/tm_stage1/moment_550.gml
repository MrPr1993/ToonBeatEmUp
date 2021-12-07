/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1279
{
en8=instance_create(__view_get( e__VW.XView, 0 )+320+64,176,oFemBurglar)
en9=instance_create(__view_get( e__VW.XView, 0 )+320+32,192,oFemBurglar)
en10=instance_create(__view_get( e__VW.XView, 0 )-32,192,oFatBurglar)
}
else
{
timeline_position-=1
}


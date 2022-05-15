/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2280-160
{
en2=instance_create(__view_get( e__VW.XView, 0 )-32,192,oSneak)

en4=instance_create(__view_get( e__VW.XView, 0 )+320+64,192,oSneak) //2280
}
else
{
timeline_position-=1
}


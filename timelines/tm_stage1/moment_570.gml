/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1699
{
en1=instance_create(__view_get( e__VW.XView, 0 )-64,176,oEnemy1)
en2=instance_create(__view_get( e__VW.XView, 0 )-32,192,oEnemy1)
en3=instance_create(__view_get( e__VW.XView, 0 )+320+32,176,oEnemy1)
en4=instance_create(__view_get( e__VW.XView, 0 )+320+64,192,oEnemy1)
}
else
{
timeline_position-=1
}


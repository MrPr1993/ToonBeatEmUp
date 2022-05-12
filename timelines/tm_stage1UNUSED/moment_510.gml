if __view_get( e__VW.XView, 0 )>=832
{
en1=instance_create(__view_get( e__VW.XView, 0 )-32,176,oEnemy1)
en2=instance_create(__view_get( e__VW.XView, 0 )-32,192,oEnemy1)
en3=instance_create(__view_get( e__VW.XView, 0 )+320+32,188,oFemBurglar)
}
else
{
timeline_position-=1
}


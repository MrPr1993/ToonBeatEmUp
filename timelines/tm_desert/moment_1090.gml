if boss.hplayer=0 and enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,190,oEnemy1) en1.image_xscale=1
en2=instance_create(__view_get( e__VW.XView, 0 )+320+64,190,oEnemy1) en1.image_xscale=-1
}
else
{
timeline_position-=1
}


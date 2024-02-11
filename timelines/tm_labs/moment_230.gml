if boss.hp<1 and enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oScientist) en1.image_xscale=1
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oScientist) en2.image_xscale=1
}
else
{
timeline_position-=1
}


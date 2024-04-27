if boss.hp<1 and enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(oControl.camX-64,160+16,oPlant) en1.image_xscale=1
en2=instance_create(oControl.camX-64,160+32,oPlant) en2.image_xscale=1
}
else
{
timeline_position-=1
}


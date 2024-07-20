if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(oControl.camX-64,200,oEnemy1) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,248,oEnemy1B) en2.image_xscale=1 with en2 {alarm[1]=30 canAttack=5}
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create(oControl.camX-64,200,oSneak) en1.image_xscale=1 with en1 {alarm[1]=30 canAttack=5}
en2=instance_create(oControl.camX-64,248,oSneak) en2.image_xscale=1  with en2 {alarm[1]=30 canAttack=5}
}
}
else timeline_position-=1
}
else timeline_position-=1

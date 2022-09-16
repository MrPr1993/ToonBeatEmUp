if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oEnemy1) en1.canAttack=5
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oEnemy1B) en2.canAttack=5
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160,oFemBurglar) en1.canAttack=5
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oFemBurglar) en2.canAttack=5
with en2 enemy_modify(my_pal_sprite,4,"MS.CHILL",0,hp,maxhp)
}
}
else timeline_position-=1
}
else timeline_position-=1




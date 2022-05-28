if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+24,-1,oZombieMan) en1.canAttack=5
en2=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+64,-1,oZombieWoman) en2.canAttack=5
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+24,-1,oSkeleton) en1.canAttack=5
en2=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+64,-1,oSkeleton) en2.canAttack=5
}
}
else timeline_position-=1
}
else timeline_position-=1




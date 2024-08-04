if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,208-16,oHarpyE) en1.canAttack=5 en1.alarm[0]=20
en2=instance_create(__view_get( e__VW.XView, 0 )-64,208+16,oHarpyE) en2.canAttack=5 en2.alarm[0]=20
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(__view_get( e__VW.XView, 0 )-64,208-16,oHarpyE) en1.canAttack=5 en1.alarm[0]=20
en2=instance_create(__view_get( e__VW.XView, 0 )-64,208+16,oHarpyE) en2.canAttack=5 en2.alarm[0]=20
with en1 enemy_switch("ICARA",0)
with en2 enemy_switch("ICARA",0)
}
}
else timeline_position-=1
}
else timeline_position-=1




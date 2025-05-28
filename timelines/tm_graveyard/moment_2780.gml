if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+24,-1,oSkeleton) en1.canAttack=5
en2=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+64,-1,oSkeleton) en2.canAttack=5

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oEnemy1B)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+24,-1,oZombieMan) en1.canAttack=5
en2=instance_create_depth(__view_get( e__VW.XView, 0 )-64,160+64,-1,oZombieWoman) en2.canAttack=5

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200,oZombieMan)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+32,oZombieMan)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 200+64,oZombieWoman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
}
else timeline_position-=1
}
else timeline_position-=1




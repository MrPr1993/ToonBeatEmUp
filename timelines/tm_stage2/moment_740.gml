if boss.hp<1 and enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oSwing) en1.image_xscale=1
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oSneak) en2.image_xscale=1

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )-32, 150,oEnemy1)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 150+32,oEnemy1)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )-32, 150+64,oEnemy1)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=1}}
////

}
else
{
timeline_position-=1
}


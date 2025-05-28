if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oAlienRobot) en1.image_xscale=1
with en1 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=1}

en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oAlienRobot) en2.image_xscale=1
with en2 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178,oAlienRobot)
with P2en1 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+32,oAlienRobot)
with P2en2 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+64,oAlienRobot)
with P2en3 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oMartian) en1.image_xscale=1
with en1 {canAttack=5 alarm[1]=30 image_xscale=1}
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oMartian) en2.image_xscale=1
with en2 {canAttack=5 alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178,oMartian)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+32,oMartian)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 178+64,oMartian)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
}
else timeline_position-=1
}
else timeline_position-=1






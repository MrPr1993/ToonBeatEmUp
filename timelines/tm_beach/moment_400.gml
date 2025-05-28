if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oMerman) en1.image_xscale=1
with en1 {enemy_switch("ADAM",0) alarm[1]=30 canAttack=5 image_xscale=1}

en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oMerman) en2.image_xscale=1
with en2 {enemy_switch("ADAM",0) alarm[1]=30 canAttack=5 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oMerman)
with P2en1 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oMerman)
with P2en2 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oMerman)
with P2en3 {enemy_switch("ADAM",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oLobster) en1.image_xscale=1
with en1 {alarm[1]=30 image_xscale=1}
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oLobster) en2.image_xscale=1
with en2 {enemy_switch("PINCHER",0) canAttack=5 alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oLobster)
with P2en1 {canAttack=5 alarm[1]=30 canAttack=5 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oLobster)
with P2en2 {enemy_switch("PINCHER",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oLobster)
with P2en3 {canAttack=5 alarm[1]=30 canAttack=5 image_xscale=-1}}
////

}
}
else timeline_position-=1
}
else timeline_position-=1


if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oSkeleton) en1.image_xscale=1
with en1 {alarm[1]=30 image_xscale=1}

en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oSkeleton) en2.image_xscale=1
with en2 {alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oSkeleton)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oSkeleton)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oSkeleton)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(__view_get( e__VW.XView, 0 )-64,160+16,oZombieMan) en1.image_xscale=1
with en1 {enemy_switch("MORTI",0) alarm[1]=30 image_xscale=1}
en2=instance_create(__view_get( e__VW.XView, 0 )-64,160+32,oZombieWoman) en2.image_xscale=1
with en2 {enemy_switch("RIGORA",0) alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oZombieMan)
with P2en1 {enemy_switch("MORTI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oZombieWoman)
with P2en2 {enemy_switch("RIGORA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oZombieMan)
with P2en3 {enemy_switch("MORTI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
}
else timeline_position-=1
}
else timeline_position-=1


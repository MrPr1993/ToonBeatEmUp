if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,170+16,oCatman) en1.image_xscale=1
with en1 {alarm[1]=30 image_xscale=1}

en2=instance_create(__view_get( e__VW.XView, 0 )-64,170+32,oCatman) en2.image_xscale=1
with en2 {alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oCatman)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oCatman)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=2
en1=instance_create(__view_get( e__VW.XView, 0 )-64,170+16,oCatman) en1.image_xscale=1
with en1 {alarm[1]=30 image_xscale=1}
en2=instance_create(__view_get( e__VW.XView, 0 )-64,170+32,oCobra) en2.image_xscale=1
with en2 {alarm[1]=30 image_xscale=1}

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150,oCatman)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+32,oCobra)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 150+64,oCatman)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
}
else timeline_position-=1
}
else timeline_position-=1


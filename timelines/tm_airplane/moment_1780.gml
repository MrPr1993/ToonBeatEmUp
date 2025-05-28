if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-64,208-16,oHarpyE) en1.canAttack=5 en1.alarm[0]=20
en2=instance_create(__view_get( e__VW.XView, 0 )-64,208+16,oHarpyE) en2.canAttack=5 en2.alarm[0]=20


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oHarpyE)
with P2en1 {canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oHarpyE)
with P2en2 {canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oHarpyE)
with P2en3 {canAttack=5 alarm[1]=30 image_xscale=-1}}
////

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


////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170,oHarpyE)
with P2en1 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )-32, 170+32,oHarpyE)
with P2en2 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=30 image_xscale=1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 170+64,oHarpyE)
with P2en3 {enemy_switch("ICARA",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////

}
}
else timeline_position-=1
}
else timeline_position-=1




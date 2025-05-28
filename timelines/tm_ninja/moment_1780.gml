if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )+48,160+16,oEntryTeleport) en1.rangeX=0
with en1 enemy_switch("NOUSAGI",0)
en2=instance_create(__view_get( e__VW.XView, 0 )+320-48,160+16,oEntryTeleport) en2.rangeX=0
with en2 enemy_switch("NOUSAGI",0)

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160,oNinjaBun)
with P2en1 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+32,oNinjaBun)
with P2en2 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+64,oNinjaBun)
with P2en3 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create(oControl.camX+48,160+32,oEntryTeleport) en1.rangeX=0
with en1 enemy_switch("NOUSAGI",0)
en2=instance_create(oControl.camX+320-48,160+32,oEntryTeleport) en2.rangeX=0
with en2 enemy_switch("NOUSAGI",0)

////
if playernumber>=2 {P2en1=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160,oNinjaBun)
with P2en1 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=3 {P2en2=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+32,oNinjaBun)
with P2en2 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}

if playernumber>=4 {P2en3=instance_create(__view_get( e__VW.XView, 0 )+320+32, 160+64,oNinjaBun)
with P2en3 {enemy_switch("NOUSAGI",0) canAttack=5 alarm[1]=30 image_xscale=-1}}
////
}
}
else timeline_position-=1
}
else timeline_position-=1




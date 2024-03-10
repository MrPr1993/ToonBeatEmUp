if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )+48,160+16,oEntryTeleport)
en2=instance_create(__view_get( e__VW.XView, 0 )+320-48,160+32,oEntryTeleport)
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create(oControl.camX+48,160+32,oEntryTeleport)
with en1 enemy_switch("NOUSAGI",0)
en2=instance_create(oControl.camX+320-48,160+32,oEntryTeleport)
with en2 enemy_switch("NOUSAGI",0)
}
}
else timeline_position-=1
}
else timeline_position-=1




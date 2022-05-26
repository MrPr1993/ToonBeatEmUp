if boss.hp<1.5
{
if enemySpawn0=0
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en1.rangeX=0 en1.xAdd=-100
en1.rideX= __view_get( e__VW.XView, 0)+160-90 en1.horsepal=0
en2=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en2.rangeX=0 en2.xAdd=-100-180
en2.rideX= __view_get( e__VW.XView, 0)+160+90 en1.horsepal=1
with en2
{spawnSpr=spr_burglarB_ride riderSpr=spr_burglarB_ride spawnFall=spr_burglarB_jump spawnFallIndex=0 spawnEnemy=oEnemy1B}
}
if boss.hp<1
{
if enemySpawn0=1
{
enemySpawn0=1
en1=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en1.rangeX=0 en1.xAdd=-100
en1.rideX= __view_get( e__VW.XView, 0)+160-90 en1.horsepal=2
en2=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en2.rangeX=0 en2.xAdd=-100-180
en2.rideX= __view_get( e__VW.XView, 0)+160+90 en2.horsepal=3
with en2
{spawnSpr=spr_burglarB_ride riderSpr=spr_burglarB_ride spawnFall=spr_burglarB_jump spawnFallIndex=0 spawnEnemy=oEnemy1B}
}
}
else timeline_position-=1
}
else timeline_position-=1

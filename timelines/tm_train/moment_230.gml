/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1305
{
en2=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en2.rideX=1475 en2.rangeX=0
with en2 {horsepal=3 spawnFall=spr_burglarB_move riderSpr=spr_burglarB_ride spawnEnemy=oEnemy1B}
}
else
timeline_position-=1


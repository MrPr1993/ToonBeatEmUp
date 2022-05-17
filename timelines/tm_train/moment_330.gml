/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2832
{
en3=instance_create(__view_get( e__VW.XView, 0 )-140,128,oEntryHorse) en3.rideX=2960 en3.rangeX=0
with en3
{ySpeed=3 horsepal=2 spawnSpeedZ=-3 ridetime=210+20 isDepth=0 horsepal=1 depth=16777210 horsedepth=16777210
spawnSpr=spr_burglar_front
}

en4=instance_create(__view_get( e__VW.XView, 0 )-140,128,oEntryHorse) en4.rideX=2960 en4.rangeX=0
with en4
{ySpeed=3 horsepal=2 spawnSpeedZ=-3 ridetime=210+20 isDepth=0 horsepal=1 depth=16777210 horsedepth=16777210
spawnSpr=spr_burglarB_front riderSpr=spr_burglarB_ride spawnEnemy=oEnemy1B xAdd=-140
}

enA=instance_create(3120,128,oEntryPool) enA.rangeXAdd=0
with enA
{spawnSpr=spr_burglarB_front spawnEnemy=oEnemy1B xAdd=-140 rangeX=x-80 z=-60}
enB=instance_create(3296,128,oEntryPool) enA.rangeXAdd=0
with enB
{spawnSpr=spr_burglarB_front spawnEnemy=oEnemy1B xAdd=-140 rangeX=x-80 z=-60}
}
else
{
timeline_position-=1
}




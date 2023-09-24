/// @description Baddies Appear 10

if __view_get( e__VW.XView, 0 )>=10000-2-320
{
boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oPlantPrincess)
musicplaystart(msc_boss4)
oControl.bossID=oPlantPrincess
}
else
{
timeline_position-=1
}


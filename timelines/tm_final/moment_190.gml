/// @description Spot for Boss Teleportation

if __view_get( e__VW.XView, 0 )>=11687-2-320
{
boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oDastardly)
musicplaystart(msc_finalboss1)
oControl.bossID=oDastardly
}
else
{
timeline_position-=1
}


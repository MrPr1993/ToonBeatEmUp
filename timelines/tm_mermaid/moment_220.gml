/// @description Spot for Boss Teleportation

if __view_get( e__VW.XView, 0 )>=6256-2
{

boss=instance_create(__view_get( e__VW.XView, 0)+160-64,228,oPrince)
musicplaystart(msc_boss4)
oControl.bossID=oPrince


}
else
timeline_position-=1

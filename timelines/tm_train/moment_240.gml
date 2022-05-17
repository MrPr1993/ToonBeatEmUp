/// @description Next
////Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=1105+160
{
en3=instance_create(__view_get( e__VW.XView, 0 )-140,240,oEntryHorse) en3.rideX=1662 en3.rangeX=0 en3.xAdd=-128
}
else
timeline_position-=1


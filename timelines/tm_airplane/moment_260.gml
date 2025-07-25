/// @description Plane 2
////Make sure to only count the previous ones, otherwise you'll get an error.
if oControl.ambushtime>=80
{
enM=instance_create(__view_get( e__VW.XView, 0 )+320-128,170,oPlaneWheel)
enM=instance_create(__view_get( e__VW.XView, 0 )+320-128,170+64,oPlaneWheel)
}
else
{oControl.ambushtime++;
timeline_position-=1
}


/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if !instance_exists(en1) and noextraenemies
and !instance_exists(en2)
and !instance_exists(en3)
and !instance_exists(en4)
and !instance_exists(en5)
and !instance_exists(en6)
{
en1=instance_create(__view_get( e__VW.XView, 0 )+320-128,170,oPlaneWheel)
}
else
timeline_position-=1

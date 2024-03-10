/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2896-320
{
en6=instance_create(__view_get( e__VW.XView, 0 )+320+64,192,oBoxer)
with en6
{image_xscale=-1 alarm[1]=60 canAttack=5}
}
else
{
timeline_position-=1
}


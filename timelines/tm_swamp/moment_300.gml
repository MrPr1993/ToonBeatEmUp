/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=2238
{
en3=instance_create(2600,204,oStrongBurg)
with en3
{image_xscale=-1
canAttack=5 alarm[1]=30
}
}
else
{
timeline_position-=1
}


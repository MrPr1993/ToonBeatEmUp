/// @description /Make sure to only count the previous ones, otherwise you'll get an error.
if __view_get( e__VW.XView, 0 )>=532
{
en3=instance_create_depth(oControl.camX+320+48,182,-1,oSneak)
with en3
{image_xscale=-1 canAttack=5 alarm[1]=60}
en4=instance_create_depth(oControl.camX+320+48,182+32,-1,oSneak)
with en4
{image_xscale=-1 canAttack=5 alarm[1]=60}
}
else
{
timeline_position-=1
}


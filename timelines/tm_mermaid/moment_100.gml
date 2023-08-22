/// @description Submarine Miniboss

if __view_get( e__VW.XView, 0 )>=2498-2
{
en1=instance_create(__view_get( e__VW.XView, 0)+160,160,oSubmarine) with en1
{
z=-200 
lockZ=z
}
}
else
timeline_position-=1

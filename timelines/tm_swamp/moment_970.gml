if !instance_exists(en1)
and !instance_exists(en2)
{
with oControl
{
goActive=1 alarm[1]=90
xGoCheck=__view_get( e__VW.XView, 0 )+320}
}
else
{
timeline_position-=1
}
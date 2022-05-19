/// @description Plane Area

if __view_get( e__VW.XView, 0 )>=0
{
with oPlayer
{canmove=1
with oControl
{
GoBackY=0 
MaxY=240
}
x=3136
y=192
}
}
else
{
timeline_position-=1
}

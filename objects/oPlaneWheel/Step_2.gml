/// @description Insert description here
// You can write your code in this editor
if danger=0
if __view_get( e__VW.XView, 0 )>rangeX
{image_xscale=1
danger=1 dangerTime=120
}

if danger=1
{dangerTime-=1 if dangerTime<0 event_user(0)
if dangerTime<60 {oControl.quakeFXTime=10 image_speed=1}
}

if danger=2
{
depth=-y
if x<__view_get( e__VW.XView, 0 )-300 instance_destroy()
else
{
if x>__view_get( e__VW.XView, 0 )-200	
oControl.quakeFXTime=10
}
}


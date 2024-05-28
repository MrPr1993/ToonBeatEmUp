/// @description Insert description here
// You can write your code in this editor
if oControl.ignore=0
{
if anim=0
and x=clamp(x,__view_get( e__VW.XView, 0 )+48,__view_get( e__VW.XView, 0 )+320-48)
{AnimFrame=0
anim=10 alarm[0]=260
}
else
alarm[0]=choose(4,16,24)
}
else alarm[0]=choose(4,16,24)
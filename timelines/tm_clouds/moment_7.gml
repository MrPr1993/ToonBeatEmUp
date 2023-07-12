/// @description Stage Start

if oPlayer.ground=0
{
oControl.alarm[0]=60
timeline_position-=1
}
else
{
oPlayer.canControl=1
oPlayer.areaEntry=0
}
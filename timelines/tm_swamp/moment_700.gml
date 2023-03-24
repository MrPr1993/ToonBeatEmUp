/// @description Prepare to jump from ramp
	if oPlayer.dead=0 and oPlayer.hurt=0 and oPlayer.ground
	{
with oPlayer 
{//x=160 =160
areaEntry=1
canControl=0
ground=1
automoveX=3340 automoveY=160+16+16 automove=1
vspeed=0
}
}
else
timeline_position-=1


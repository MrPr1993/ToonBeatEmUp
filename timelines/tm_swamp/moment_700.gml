/// @description Prepare to jump from ramp

if oControl.p1.anim=200 and oControl.p2.anim=200 and oControl.p3.anim=200 and oControl.p4.anim=200
	{
with oPlayer 
{//x=160 =160
areaEntry=1
canControl=0
ground=1
automoveX=3340 automoveY=160+16+16*controlNO automove=1
vspeed=0
}


}
else
timeline_position-=1


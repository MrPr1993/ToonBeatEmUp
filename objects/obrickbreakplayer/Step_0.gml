/// @description Insert description here
// You can write your code in this editor
/// @description Insert description here
// You can write your code in this editor
controller_setup()

if shaketime!=0
{shaketime-=1
if shakefrom=-1
{if shake!=-1 shake-=1 else shake=1}
else
{if shake!=1 shake+=1 else shake=-1}
}
else shake=0

///
if anim=0
{
meter+=meterSpd
if meterSpd=4
{if meter>72 meterSpd=-4}
else {if meter<0 meterSpd=4}

frame_set(0,0,0.1)
frame_set(1,1,0.1) if animFrame>2-0.1 animFrame=0

if key_attack
{animFrame=0 anim=10
	if meter=clamp(meter,36-4,36+4) win=1 else win=0
	}
}

///SWING
if anim=10
{
frame_set(0,2,0.25)
frame_set(1,3,0.05)
frame_set(2,4,0.25) if animFrame=3
{if win=0
	{shaketime=10 oBrickBreakGame.resulttext1="NO BONUS" oBrickBreakGame.altresult1=0}
	else
	{brickbreak=1 oControl.quakeFXTime=10 oBrickBreakGame.resulttext1="BONUS"}
}
if win=0
frame_set(3,6,0.01) else frame_set(3,5,0.01) 
if animFrame>4 oBrickBreakGame.p1Over=1
frame_set(4,7,0.25)
if win=0 frame_set(5,9,0) else frame_set(5,8,0)
}
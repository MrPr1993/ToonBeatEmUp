/// @description Insert description here
// You can write your code in this editor
	if oControl.p1.dead=1 
	and oControl.p2.dead=1 
	and oControl.p3.dead=1 
	and oControl.p4.dead=1 
	{alarm[0]=320; exit;}

if anim=0
and x=clamp(x,__view_get( e__VW.XView, 0 )+48,__view_get( e__VW.XView, 0 )+320-48)
{AnimFrame=0 PlaySound(snd_fzombie3)
anim=10 alarm[0]=260
}
else
alarm[0]=choose(4,16,24)
/// @description Prepare Boss

if specialcheck5!=2
{
with dr
{PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10
shaketime=10
}
if specialcheck5=1 with oPlayer {if x>__view_get( e__VW.XView, 0 )+160 image_xscale=-1 else image_xscale=1}
specialcheck5+=1 timeline_position-=60
}
else
{
	with dr
	{hspeed=-8  isDepth=0 depth=16777215
	vspeed=-4
	}
	oControl.quakeFXTime=300
audio_stop_all()
PlaySound(snd_explosion) PlaySound(snd_wind)
with oPlayer {animFrame=1 canmove=0 canControl=0} specialcheck5=0

}

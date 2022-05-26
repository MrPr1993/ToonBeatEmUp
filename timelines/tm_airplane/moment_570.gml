/// @description Prepare Boss

if specialcheck5!=2
{
with dr
{PlaySound(snd_hitgroundmetal) oControl.quakeFXTime=10
shaketime=10
}
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
with oPlayer {canmove=0 canControl=0} specialcheck5=0

}

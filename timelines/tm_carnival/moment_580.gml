if boss.AnimFrame>=5
{
oControl.MusicFade=0 oControl.MusicFade=0 oControl.MusicFadeAdd=1
musicplaystart(msc_boss3)
oControl.bossID=oDuckBoss
PlaySound(snd_explosion2) PlaySound(snd_duck5)

with oPlayer
{canmove=0 anim=9999 image_index=0
if character=0 sprite_index=spr_viva_wildtake5
if character=1 sprite_index=spr_hina_wildtake5
if character=2 sprite_index=spr_bahati_wildtake5
if character=3 sprite_index=spr_sofia_wildtake5
	event_user(11)
	}
}
else
timeline_position-=1;
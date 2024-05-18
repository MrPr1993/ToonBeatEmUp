oControl.MusicFade=1 oControl.MusicFadeAdd=1 PlaySound(snd_fall)
boss=instance_create(oControl.camX+160,228,oDuckBoss) with boss
{canmove=0 anim=100 z=-200 ground=0 animFrame=0}

with oPlayer
{canmove=0 anim=9999 image_index=0
if character=0 sprite_index=spr_viva_wildtake
if character=1 sprite_index=spr_hina_wildtake
if character=2 sprite_index=spr_bahati_wildtake
if character=3 sprite_index=spr_sofia_wildtake
	
	}
	
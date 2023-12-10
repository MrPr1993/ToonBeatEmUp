///@description Decision 1
with diva1 {sprite_index=spr_viva_itemthrow PlaySound(snd_swing) image_speed=0 image_index=1}

rock=instance_create_depth(diva1.x+24,diva1.y+1,-1,oFlashFX) with rock
{alarm[0]=0 image_speed=0 sprite_index=spr_bahati_rock3 zSpeed=-12
	hspeed=7.25 hasgrav=1 gravspd=0.45/2
	} rock.z=-56
	
	cutscenename=""
cutsceneline=""



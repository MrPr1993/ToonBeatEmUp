/// @description Insert description here
// You can write your code in this editor
if other.ground
{
trap=instance_create_depth(x+64/2,y+8,-1,oChandelier) with trap
{sprite_index=spr_templeblock act=1 
	under=1 shake=1 alarm[0]=2 PlaySound(snd_break2) z=-240
	mask_index=mask_templetrap shadow=mask_templetrap
	}
instance_destroy()
}


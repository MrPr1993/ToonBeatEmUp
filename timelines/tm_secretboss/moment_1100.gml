blackout=instance_create_depth(oControl.camX-16,-16,-1,oCameoChar)
with blackout
{shadow=-1
image_alpha=0 image_blend=c_black sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {image_alpha+=0.01
	specialcheck[9]++;
	
	if specialcheck[9]>=360 room_goto(rm_minigames)
	
	}
}
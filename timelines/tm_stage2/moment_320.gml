
with oPlayer {hasShadow=0 areaEntry=0 z=-999990}

fakeen=instance_create_depth(847, 170,-1,oFlashFX);
with fakeen {name="BAD" alarm[0]=-1 image_xscale=-1 FlashShadow=1 animEnd=0 image_speed=0 sprite_index=spr_burglar_binoculars current_pal=2;}

chairen=instance_create_depth(908, 108,-1,oFlashFX);
with chairen {alarm[0]=-1 animEnd=0 image_speed=0 sprite_index=spr_sneak_chair1 current_pal=0;}

var bg3	= layer_get_id("Compatibility_Background_0_bg_sky");
layer_hspeed(bg3,-1)
	
//

//

//StreetBG
//847

//background_
canSkipCutscene=2

newsBox=0
newsText=0

oControl.circlerepos=120;

treas1=instance_create_depth(128+112-24+24-3, 96-20+2,-1,oFlashFX);
with treas1 {alarm[0]=-1 animEnd=0 image_speed=0 sprite_index=spr_treasure}

treas2=instance_create_depth(128+112-24+48+4-3, 96-20+2,-1,oFlashFX);
with treas2 {alarm[0]=-1 animEnd=0 image_index=1 sprite_index=spr_treasure}

treas3=instance_create_depth(128+112-24-10+48*2-3, 96-20+5,-1,oFlashFX);
with treas3 {alarm[0]=-1 animEnd=0 image_index=2 sprite_index=spr_treasure}

treas4=instance_create_depth(128+112-24-28+48*3-3, 96-20,-1,oFlashFX);
with treas4 {alarm[0]=-1 animEnd=0 image_index=3 sprite_index=spr_treasure}

with oFlashFX image_speed=0

///Cameo
cam1=instance_create_depth(180-8-12, 192+8-56,-1,oFlashFX);
with cam1 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0.1 sprite_index=spr_cameo1a}

///Divas
diva1=instance_create_depth(180-8, 192+8,-1,oFlashFX);
with diva1 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0.1 sprite_index=spr_viva_opening}
diva2=instance_create_depth(180+32, 192,-1,oFlashFX);
with diva2 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0.3 sprite_index=spr_hina_opening}
diva3=instance_create_depth(196, 192+32,-1,oFlashFX);
with diva3 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0.2 sprite_index=spr_bahati_opening}
diva4=instance_create_depth(180+64, 192+16,-1,oFlashFX);
with diva4 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=-1 image_speed=0.08 sprite_index=spr_sofia_opening}


bgfog1=layer_background_get_id(layer_get_id("FOGfx1"));
bgfog2=layer_background_get_id(layer_get_id("FOGfx2"));

layer_background_visible(bgfog1,0)
layer_background_visible(bgfog2,0)

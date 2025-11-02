///@description Zoom
with oFlashFX instance_destroy()

musicplaystart(msc_charselect)

layer_set_visible("BTG0",1)
layer_set_visible("BTG1",1)
layer_set_visible("BTG2",1)
layer_set_visible("BTG3",1)
layer_set_visible("BTG4",1)
layer_set_visible("BTG5",1)

layer_set_visible("BGcity2",0)

layer_y("BGcity",0)
layer_y("Backgrounds_1",-64)
layer_y("BTG0",160-64)
layer_y("BTG1",-64)
layer_y("BTG2",-64)
layer_y("BTG3",-64)
layer_y("BTG4",-64)
layer_y("BTG5",-64)




diva1=instance_create_depth(458-8-32, 192+8-48,-1,oFlashFX);
with diva1 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0 sprite_index=spr_viva_cutscene image_index=0
}
diva2=instance_create_depth(458+32-32-16, 192-48,-1,oFlashFX);
with diva2 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0 image_index=0 sprite_index=spr_hina_cutscene}
diva3=instance_create_depth(458-32-16, 192+32-48,-1,oFlashFX);
with diva3 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0 image_index=0 sprite_index=spr_bahati_cutscene }
diva4=instance_create_depth(458+64-24, 192+16-48,-1,oFlashFX);
with diva4 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=-1 image_speed=0.08 sprite_index=spr_cutscene1b}

wolf=instance_create_depth(458+64-327777, 192+16-48,-1,oFlashFX);
with wolf {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=-1 image_index=3 image_speed=0 sprite_index=spr_wolfita_dead}


SceneX=324
SceneY=160
__view_set( e__VW.XView, 0, SceneX )
__view_set( e__VW.YView, 0, SceneY )


cutscenename="HINA"
cutsceneline="WOAH, THAT SEEMS KINDA HARSH?"


if global.Language!=0 cutsceneline=languagedialogue[10]
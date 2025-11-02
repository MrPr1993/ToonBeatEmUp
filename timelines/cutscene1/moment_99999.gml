///@description Quick Decision Setup
///@description Zoom
audio_stop_all()

layer_set_visible("BTG0",1)
layer_set_visible("BTG1",1)
layer_set_visible("BTG2",1)
layer_set_visible("BTG3",1)
layer_set_visible("BTG4",1)
layer_set_visible("BTG5",1)

layer_y("BGcity",0)
layer_y("Backgrounds_1",-64)
layer_y("BTG0",160-64)
layer_y("BTG1",-64)
layer_y("BTG2",-64)
layer_y("BTG3",-64)
layer_y("BTG4",-64)
layer_y("BTG5",-64)

diva1=instance_create_depth(458-8-32+16, 192+8-48,-1,oFlashFX);
with diva1 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=-1 image_speed=0 sprite_index=spr_viva_attack
}
diva2=instance_create_depth(458-8-32-32, 192+8-48,-1,oFlashFX);
with diva2 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0 image_index=0 sprite_index=spr_hina_talk}
diva3=instance_create_depth(458-8-32-48, 192+8-48+24,-1,oFlashFX);
with diva3 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_speed=0 image_index=0 sprite_index=spr_bahati_super}
diva4=instance_create_depth(458-8-32+48, 192+8-48+24,-1,oFlashFX);
with diva4 {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=-1 image_speed=0 sprite_index=spr_sofia_point}
wolf=instance_create_depth(458+64-32+240+16, 192+16-48,-1,oFlashFX);
with wolf {alarm[0]=-1 animEnd=0 FlashShadow=1 image_xscale=1 image_speed=0.5 sprite_index=spr_hwolf_escape}

SceneX=324
SceneY=160
__view_set( e__VW.XView, 0, SceneX )
__view_set( e__VW.YView, 0, SceneY )

cutscenename="HINA"
cutsceneline="WOLFY LADY'S GONE."
if global.Language!=0 cutsceneline=languagedialogue[31]
global.CutsceneSkip=0

timeline_position=5552

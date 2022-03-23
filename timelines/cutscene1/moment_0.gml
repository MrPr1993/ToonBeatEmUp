//background_
layer_hspeed("BGcity",-0.5)

scene2=instance_create_depth(-32-120,64,-1,oFlashFX);
with scene2 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene1a}

scene1=instance_create_depth(160-64-64,4+60,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene1 vspeed=-1 hspeed=1}

musicplaystart(msc_countdown)
layer_set_visible("BTG0",0)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
layer_set_visible("BTG5",0)

layer_hspeed("BGcity",0)
layer_set_visible("BGcity2",0)
layer_y("BGcity",64)
layer_y("Backgrounds_1",0)

with oFlashFX instance_destroy()

anA=instance_create_depth(-160,240-64,-1,oFlashFX);
with anA
{alarm[0]=0 depth=100 isDepth=0 animEnd=0 visible=1 image_speed=0 alarm[2]=30 image_index=0 sprite_index=spr_cutscene1d hspeed=8}

cutscenename="HINA"
cutsceneline="OOH, YOU TWO CAN PLAY GOOD COP, BAD COP!"

SceneX=0 __view_set( e__VW.XView, 0, SceneX ) //324


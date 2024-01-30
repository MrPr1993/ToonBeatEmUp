//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="DECISION TIME!\nCUTSCENE FINAL"
CDtextA="CHOICE 1."
CDtextB="CHOICE 2."
CDtextC="CHOICE 3."
}

layer_hspeed("BGcity",-0.5)

if global.CutsceneSkip=0
{canSkipCutscene=1
scene2=instance_create_depth(-32-120,64,-1,oFlashFX);
with scene2 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0 sprite_index=spr_cutscene8}
scene1=instance_create_depth(160-64-64,4+60,0,oFlashFX);
with scene1 {alarm[0]=-1 isDepth=0 animEnd=0 image_speed=0.05 sprite_index=spr_cutscene1 vspeed=-1 hspeed=1
	image_index=1 loopimg=1
	}

musicplaystart(msc_countdown)

layer_set_visible("BTG0",0)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
layer_set_visible("BTG5",0)
}
else
{layer_hspeed("BGcity",0)
cutscenename=""
cutsceneline=""
timeline_position=99997
blackbg=instance_create_depth(160,120,50,oFlashFX);
with blackbg {haspal=0 alarm[0]=4 depth=-999999999 isDepth=0 animEnd=0 image_speed=0 image_blend=c_black sprite_index=mask_small image_xscale=9999 image_yscale=8888}
stageIntro=0
}


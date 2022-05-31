with oFlashFX instance_destroy()

SceneX=0

layer_set_visible("BTG0",0)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
layer_set_visible("BTG5",0)

PlaySound(snd_hit) PlaySound(snd_hit3)

with blackout
{image_alpha=1 isfading=1 fadeSpd=-0.1 sprite_index=spr_whitecol image_blend=c_white
image_xscale=400 image_yscale=400 depth=-6000
}

bgp1=instance_create_depth(0, 0-32,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_cutscene1g isDepth=0}
bgp1=instance_create_depth(320, 0-32,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_cutscene1g image_xscale=-1 isDepth=0}
bgp1=instance_create_depth(0, 240-32,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_cutscene1g image_yscale=-1 isDepth=0}
bgp1=instance_create_depth(320, 240-32,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_cutscene1g image_xscale=-1 image_yscale=-1 isDepth=0}

lg=instance_create_depth(160, 0-32+320+80,-1,oFlashFX);
with lg {alarm[0]=-1 animEnd=0 sprite_index=spr_cutscene1f isDepth=0 depth=-10
	vspeed=-24 lerpslow=1
	}

cutscenename="VIVA"
cutsceneline="THIS IS YOUR IDEA?! I CAN'T FEEL MY\nLEGS!"

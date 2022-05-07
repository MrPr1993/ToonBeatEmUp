with oFlashFX instance_destroy()
layer_background_yscale(bgfog1,0)
layer_background_yscale(bgfog2,0)

PlaySound(snd_hit) PlaySound(snd_hit3)
PlaySound(snd_deathcry1) PlaySound(snd_deathcry2)

with blackout
{image_alpha=1 isfading=1 fadeSpd=-0.1 sprite_index=spr_whitecol image_blend=c_white
image_xscale=400 image_yscale=400 depth=-6000
}

quakeFXTime=30

bg1=layer_background_get_id(layer_get_id("BackgroundP1"));
bg2=layer_background_get_id(layer_get_id("BackgroundP2"));
layer_background_visible(bg1,0) layer_background_visible(bg2,0)

SceneX=0

bgp1=instance_create_depth(0, 0,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_opening3 isDepth=0}
bgp1=instance_create_depth(320, 0,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_opening3 image_xscale=-1 isDepth=0}
bgp1=instance_create_depth(0, 240,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_opening3 image_yscale=-1 isDepth=0}
bgp1=instance_create_depth(320, 240,-1,oFlashFX);
with bgp1 {alarm[0]=-1 animEnd=0 sprite_index=spr_opening3 image_xscale=-1 image_yscale=-1 isDepth=0}

divas=instance_create_depth(160, 120+32,-1,oFlashFX);
with divas {alarm[0]=-1 animEnd=0 sprite_index=spr_opening1 vspeed=-2 hspeed=0}

bad1=instance_create_depth(0, 240,-1,oFlashFX);
with bad1 {alarm[0]=-1 animEnd=0 image_speed=0 sprite_index=spr_opening2 image_index=0 hspeed=-2 vspeed=1}

bad2=instance_create_depth(161, 240,-1,oFlashFX);
with bad2 {alarm[0]=-1 animEnd=0 image_speed=0 sprite_index=spr_opening2 image_index=1 hspeed=2 vspeed=1}

with oFlashFX
{lerpslow=1 lerpslowSpd=0.05}

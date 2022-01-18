if oPlayer.anim=220 and oPlayer.animFrame<2
timeline_position-=1
else
{

with fakeenS hspeed=4
with fakeen {image_xscale=1 hspeed=4 image_speed=0.5 sprite_index=spr_hwolf_move}

with oFlashFX
if name="Thief"
or name="Thief2"
or name="Thief3"
{
treas.x=x+8
treas.image_xscale=1 treas.hspeed=4

sprite_index=spr_sneak_move

if name="Thief2" 
{treas.x=x+16
sprite_index=spr_burglar_move
}

if name="Thief3" 
{treas.x=x+16
sprite_index=spr_burglarB_move
}

  image_speed=0.5

image_xscale=1 hspeed=4
shad.hspeed=4
}
}
with oFlashFX
if name="Thief"
or name="Thief2"
{
treas.x=x+8
treas.image_xscale=1 treas.hspeed=4

sprite_index=spr_sneak_move

if name="Thief2" 
{treas.x=x+16
sprite_index=spr_burglar_move
}
  image_speed=0.5

image_xscale=1 hspeed=4
shad.hspeed=4
}

bub.image_index=1


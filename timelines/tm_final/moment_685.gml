if oPlayer.ground
{
part=instance_create_depth(oControl.camX+160-32,y+180,depth,oDisappearPart) part.z=-200
with part {image_speed=0 image_index=0 sprite_index=spr_dastardly_parts BounceSound=snd_hitgroundmetal}

part=instance_create_depth(oControl.camX+160+32,y+180,depth,oDisappearPart) part.z=-300
with part {image_speed=0 image_index=0 sprite_index=spr_dastardly_parts image_xscale=-1 BounceSound=snd_hitgroundmetal}

part=instance_create_depth(oControl.camX+160-64,y+180,depth,oDisappearPart) part.z=-200
with part {image_speed=0 image_index=1 sprite_index=spr_dastardly_parts BounceSound=snd_hitgroundmetal}
part=instance_create_depth(oControl.camX+160+64,y+180,depth,oDisappearPart) part.z=-250
with part {image_speed=0 image_index=1 sprite_index=spr_dastardly_parts image_xscale=-1 BounceSound=snd_hitgroundmetal}
part=instance_create_depth(oControl.camX+160,y+190,depth,oDisappearPart) part.z=-500
with part {image_speed=0 image_index=2 sprite_index=spr_dastardly_parts image_xscale=1 BounceSound=snd_hitgroundmetal}
}
else
timeline_position-=1;
/// @description Insert description here
// You can write your code in this editor
horse=instance_create_depth(x,y,horsedepth,oFlashFX) horse.depth=horsedepth horse.isDepth=isDepth
horse.image_speed=image_speed horse.my_pal_sprite=spr_horsepal horse.current_pal=horsepal
horse.sprite_index=horsespr
with horse
{hspeed=-2 animEnd=0 alarm[0]=320}



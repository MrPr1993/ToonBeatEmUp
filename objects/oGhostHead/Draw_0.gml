/// @description Insert description here
// You can write your code in this editor
ghostSet-=1 if ghostSet=0 {ghostSet=100 if ghostAlpha=1 ghostAlpha=-1 else ghostAlpha=1}
if ghostAlpha=1 image_alpha=lerp(image_alpha,0.5,0.01) else image_alpha=lerp(image_alpha,1,0.01)


draw_sprite_ext(sprite_index,image_index,round(x+1*image_xscale),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
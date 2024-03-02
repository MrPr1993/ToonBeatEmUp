/// @description Insert description here
// You can write your code in this editor
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if interact=0 and anim=0
{
petP=instance_nearest(x,y,oPlayer)
if distance_to_object(petP)<distance
and petP.y=clamp(petP.y,y-distanceY,y+distanceY)
{
draw_sprite(spr_peticon,0,x,y+iconheight+z+trainz)
}
}

/// @description Insert description here
// You can write your code in this editor

pal_swap_set(weapon_pal_sprite,weapon_pal,false);
draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)

if hit=0 and item!=-1
{
draw_sprite_ext(object_get_sprite(item),0,x,y-51+z,1,1,270,c_white,1)
draw_sprite_ext(sprite_index,2,round(x),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
}

pal_swap_reset();
shader_reset()

if place_meeting(x,y,oPlayer)
{
p=instance_place(x,y,oPlayer)
if p.z<=z-height+16
draw_sprite(spr_shadow,0,round(p.x),round(p.y-height+16))

}

if place_meeting(x,y,oEnemy1)
{
e=instance_place(x,y,oEnemy1)
if e.z<=z-height+16
draw_sprite(spr_shadow,0,round(e.x),round(e.y-height+16))
}




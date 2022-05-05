
pal_swap_set(weapon_pal_sprite,weapon_pal,false);

if place_meeting(x,y,oTrainFXSpot)
{trainzSet=instance_place(x,y,oTrainFXSpot)
if ground
trainz=trainzSet.Train1Y else trainz=0
}else trainz=0

//draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
	if place_meeting(x,y,oWaterFX) and ground	
	draw_sprite_clip_ext(sprite_index,image_index,round(x),round(y+trainz+z),image_xscale,image_yscale,image_blend,image_alpha, 
	x-(sprite_width*2)*image_xscale,y-sprite_height,x+(sprite_width*2)*image_xscale,sprite_height+waterMax)
else
draw_sprite_ext(sprite_index,image_index,round(x),round(y+trainz+z),image_xscale,image_yscale,image_angle,image_blend,image_alpha)



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




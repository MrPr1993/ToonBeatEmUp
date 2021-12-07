yy = image_yscale

if isDraw=1
{
draw_sprite_ext(sprite_index,image_index,x,(y+z-16+16*image_yscale),image_xscale,1,image_angle,image_blend,1)

draw_sprite_ext(spr_height0,image_index,x,(y+z-height+16)+yy++,image_xscale,image_yscale,image_angle,c_gray,1)
}

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



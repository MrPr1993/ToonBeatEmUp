
if ready=1
draw_sprite(spr_carshadow,0,bullx,178)

if instance_exists(oBullPlayer) with oBullPlayer draw_sprite(spr_shadow,0,round(x),y)

if ready=0
{
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,20,"GET READY TO RUN!")
draw_set_halign(fa_right)
draw_text(160,32,"ATTACK  \nFOR RUN")
draw_set_halign(fa_left)
draw_text(160,32,"  JUMP\nFOR AVOIDING\nOBSTACLES")


}
else
{

if stageClear=0
bullx=lerp(bullx,0,0.1)
draw_sprite(spr_bigbullrun,current_time/100,round(bullx),178)
}


if instance_exists(oBullPlayer)
with oBullPlayer
{
	pal_swap_set(my_pal_sprite,current_pal,false);

draw_sprite(sprite_index,image_index,round(x+shake),round(y+z))


	pal_swap_reset();
	shader_reset()

}
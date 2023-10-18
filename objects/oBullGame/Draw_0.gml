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
bullx=lerp(bullx,0,0.1)
draw_sprite(spr_bullrun,current_time/4,bullx,198)
}
with oSingPlayer
draw_sprite(spr_bgglass,(1+character)*windowon,windx,0)

if ready=0
{
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_text(160,20,"FOLLOW THE ICON AND SING!")
draw_set_halign(fa_right)
draw_text(160,32,"ATTACK  ")
draw_set_halign(fa_left)
draw_text(160,32,"  JUMP")

draw_sprite(spr_singnote,0,160-32,52)
draw_sprite(spr_singnote,1,160+32,52)
}
else
{
songbeating=lerp(songbeating,0,0.1)
draw_sprite(spr_singnote,songdir,160,32+round(songbeating))
}

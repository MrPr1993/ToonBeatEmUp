draw_sprite_ext(spr_characterselect,2,x+1,y+1,1,1,0,c_black,0.5)

if charadded=0
{
draw_set_color(c_white)
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
if introbuffer=0
draw_text(x+40,y+80,"P"+string(controlNO)+"\nPRESS\nSTART\nTO PLAY!")
draw_set_halign(fa_left)

signup=lerp(signup,0,0.1)
}
else
{
pal_swap_reset()
draw_sprite(spr_characterstats,0,x,round(189))
draw_set_font(global.scorefont)
draw_set_valign(fa_top)
draw_set_halign(fa_center)
draw_text(x+40,190,string_hash_to_newline("POWER"))
draw_text(x+40,190+8,string_hash_to_newline(ability1))
draw_text(x+40,190+16,string_hash_to_newline("SPEED"))
draw_text(x+40,190+24,string_hash_to_newline(ability2))
draw_text(x+40,190+32,string_hash_to_newline("REACH"))
draw_text(x+40,190+40,string_hash_to_newline(ability3))
draw_set_valign(fa_top)
draw_set_halign(fa_left)	


if controlNO=1
pal_swap_set(spr_playerpal,global.p1Pal,false);
if controlNO=2
pal_swap_set(spr_playerpal,global.p2Pal,false);
if controlNO=3
pal_swap_set(spr_playerpal,global.p3Pal,false);
if controlNO=4
pal_swap_set(spr_playerpal,global.p4Pal,false);
//draw_sprite(sprite_index,image_index,x,y)
signup=lerp(signup,1,0.1)
draw_sprite_part(sprite_index,image_index,0,0+136-136*signup,80,136,x,round(y+136-136*signup))
pal_swap_reset()
draw_sprite_ext(spr_characterselect,3,x+1,round(y+136-136*signup)+1,1,1-1*signup,0,c_white,1)

if charadded=2
{
if selectedflash=-1 selectedflash=1 else selectedflash-=0.2

if selectedflash<0
draw_sprite(spr_characterselect,0,x+1,y+1)
draw_sprite_ext(spr_characterselect,4,x+1,y+1,1,1,0,c_white,round(selectedflashing))
selectedflashing-=0.5
}

}
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
if palettemode=0
{
draw_text(x+40,190,string_hash_to_newline("POWER"))
draw_text(x+40,190+8,string_hash_to_newline(ability1))
draw_text(x+40,190+16,string_hash_to_newline("SPEED"))
draw_text(x+40,190+24,string_hash_to_newline(ability2))
draw_text(x+40,190+32,string_hash_to_newline("REACH"))
draw_text(x+40,190+40,string_hash_to_newline(ability3))
}
else
{
draw_text(x+40,190,string_hash_to_newline("PALETTE"))

if controlNO=1
draw_text(x+40,190+16,"▲SET▼\n"+string(global.p1Pals)+"\n◄"+string(global.p1Pal)+"/16►")
if controlNO=2
draw_text(x+40,190+16,"▲SET▼\n"+string(global.p2Pals)+"\n◄"+string(global.p2Pal)+"/16►")
if controlNO=3
draw_text(x+40,190+16,"▲SET▼\n"+string(global.p3Pals)+"\n◄"+string(global.p3Pal)+"/16►")
if controlNO=4
draw_text(x+40,190+16,"▲SET▼\n"+string(global.p4Pals)+"\n◄"+string(global.p4Pal)+"/16►")


}
draw_set_valign(fa_top)
draw_set_halign(fa_left)	

if charadded=1 if palettemode=0
{
draw_text(x+1,y+136,"◄")
draw_text(x+80-8,y+136,"►")
}


if controlNO=1
pal_swap_set(global.p1Pals,global.p1Pal,false);
if controlNO=2
pal_swap_set(global.p2Pals,global.p2Pal,false);
if controlNO=3
pal_swap_set(global.p3Pals,global.p3Pal,false);
if controlNO=4
pal_swap_set(global.p4Pals,global.p4Pal,false);
//draw_sprite(sprite_index,image_index,x,y)
signup=lerp(signup,1,0.1)
draw_sprite_part(sprite_index,image_index,0,0+136-136*signup,80,136,round(x+SelectingX),round(y+136-136*signup))
pal_swap_reset()
draw_sprite_ext(spr_characterselect,3,x+1+SelectingX,round(y-1+136-136*signup)+1,1,1-1*signup,0,c_white,1)




if charadded=2
{
if selectedflash=-1 selectedflash=1 else selectedflash-=0.2

if selectedflash<0
draw_sprite(spr_characterselect,0,x+1,y+1)
draw_sprite_ext(spr_characterselect,4,x+1,y+1,1,1,0,c_white,round(selectedflashing))
selectedflashing-=0.5
}

}
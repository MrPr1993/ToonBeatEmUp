/// @description Insert description here
// You can write your code in this editor
if destroyed=0
draw_sprite(spr_cargame,0,round(x),round(y+z))
else
draw_sprite(spr_cargame,15,round(x),round(y+z))
draw_sprite(sprite_index,1+3-3*hpA,round(x+shake),round(y+z+sin(shake)))
draw_sprite(sprite_index,6+3-3*hpB,round(x+shake),round(y+z+sin(shake)))
draw_sprite(sprite_index,11+2-2*hpC,round(x+shake),round(y+z+sin(shake)))

var _t1="OH ME\nCAR!"
var _t2="HIT\nHERE!\n▼"
switch(global.Language)
{
case 1:
_t1="AY MI\nAUTO!"
_t2="ATAQUE\nAQUÍ\n▼"
break;
case 2:
_t1="OH MEU\nCARRO!"
_t2="ATAQUE\nAQUI\n▼"
break;
}

if npcDriverTimer>80
{draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(driver.x+16,driver.y-80,_t1)
draw_set_halign(fa_left)
}

if ready=0
{
draw_set_font(global.scorefont)
draw_set_halign(fa_center) draw_set_color(c_red)
draw_text(x-53,round(y-64+hithereY),_t2)
draw_text(x+65,round(y-64+hithereY),_t2)
draw_text(x+29,round(y-43-32+hithereY),_t2)

if hithereY<-3 hithereY=3 else hithereY-=0.5

draw_set_halign(fa_left) draw_set_color(c_white)
}

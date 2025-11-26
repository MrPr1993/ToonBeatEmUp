with oSingPlayer
draw_sprite(spr_bgglass,(1+character)*windowon,windx,0)

if ready=0
{
draw_set_font(global.scorefont)
draw_set_color(c_white)
draw_set_halign(fa_center)

var _t1="FOLLOW THE ICON AND SING!"
var _t2="ATTACK  "
var _t3="  JUMP"
var _t4="GOOD"
var _t5="SCORE"

switch(global.Language)
{
case 1:
var _t1="SIGUE EL ÍCONO Y CANTA!"
var _t2="ATACAR  "
var _t3="  SALTAR"
var _t4="BIEN"
var _t5="PUNTOS"
break;
case 2:
var _t1="SIGA O ÍCONE E CANTE"
var _t2="ATACAR  "
var _t3="  SALTAR"
var _t4="BOM"
var _t5="PONTUAÇÃO"
break;
}

draw_text(160,20,_t1)
draw_set_halign(fa_right)
draw_text(160,28,_t2)
draw_set_halign(fa_left)
draw_text(160,28,_t3)

draw_sprite(spr_singnote,0,160-32,52)
draw_sprite(spr_singnote,1,160+32,52)
}
else
if songdone=0
{
songbeating=lerp(songbeating,0,0.1)
draw_sprite(spr_singnote,songdir,160,32+round(songbeating))
draw_set_halign(fa_center)
draw_set_font(global.timefont)
draw_text(160,32+24,time)
draw_set_font(global.scorefont)
draw_set_halign(fa_left)
}

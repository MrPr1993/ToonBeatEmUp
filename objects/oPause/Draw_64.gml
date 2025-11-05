/// @description Insert description here
// You can write your code in this editor

	if TVfx!=9999
{application_surface_draw_enable(false);
if crtcheck=320
{
surface_width=window_get_width()
surface_height=window_get_height()
}
else
{
surface_width=window_get_width()/2
surface_height=window_get_height()/2
}
}
else application_surface_draw_enable(true);
	
	
	if TVfx!=9999
if (surface_exists(new_surf) == false) {
  new_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
}

	if TVfx!=999
	{
surface_resize(new_surf,320,240)

surface_set_target(new_surf);
draw_clear_alpha(c_black, 0.0);
draw_set_color(c_white) draw_rectangle(-2,-2,555,555,false);
if global.MonochromeFX=1 shader_set(shd_grayscale)
draw_surface(application_surface, 0, 0);
	}

///
draw_set_color(c_white) draw_set_alpha(1)
shader_set(shd_grayscale)
draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,1)
shader_reset()
draw_sprite_ext(spr_photoplaceholder,0,0+320*mirrorMode,0,1-2*mirrorMode,1,0,c_white,1-1*filmY)
filmY=lerp(filmY,1,0.1)
mapXFilm-=1 if mapXFilm<-16 mapXFilm+=16
for (var iI=0; iI<=240+64; iI+=16)
{
draw_sprite_ext(spr_filmpart,1,round(-9+9*filmY),mapXFilm+iI,1,1,90,c_white,1);
draw_sprite_ext(spr_filmpart,1,312+round(9-9*filmY),mapXFilm+iI,1,1,90,c_white,1);
}


if !instance_exists(oSettings) and AreYouSure=0
{
if key_up_pressed {PlaySound(snd_select) if menuSelect=0 menuSelect=3 else menuSelect-=1}
if -key_down_pressed {PlaySound(snd_select) if menuSelect=3 menuSelect=0 else menuSelect+=1}
}
draw_set_halign(fa_left)
if selectStar=0 selectStar=2 else selectStar-=0.2

if menuSelect=0 {StarSpace=128 StarY=116}
if menuSelect=1 {StarSpace=120 StarY=116+8}
if menuSelect=2 {StarSpace=120 StarY=116+16}
if menuSelect=3 {StarSpace=136 StarY=116+24}

var _t1="PAUSE"
var _t2="RESUME"
var _t3="RESTART"
var _t4="SETTINGS"
var _t5="QUIT"
var _t6="ARE YOU SURE?"
var _t7="NO "
var _t8=" YES" 
switch(global.Language)
{
case 1: //Espanol
_t1="PAUSA"
_t2="REASUMIR"
_t3="REINICIAR"
_t4="AJUSTES"
_t5="SALIR"
var _t6="ESTAS SEGURO?"
var _t7="NO "
var _t8=" SI"
break;
case 2: //Portuguese
_t1="PAUSA"
_t2="RETOMAR"
_t3="REINICIAR"
_t4="CONFIGURAÇÕES"
_t5="SAIR"
var _t6="TEM CERTEZA?"
var _t7="NÃO "     
var _t8=" SIM"
break;
}

draw_set_color(c_black) draw_set_alpha(0.5)
draw_rectangle(-2,-2,888,888,false)
draw_set_color(c_white) draw_set_alpha(1)

if AreYouSure=0
{
draw_sprite(spr_scorefont,43,-8+4+StarSpace+selectStar,StarY-4)
draw_sprite(spr_scorefont,43,-8+4+320-StarSpace-selectStar,StarY-4)
}
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
if AreYouSure=0
{
	
	
draw_text(160,120-24,_t1)
draw_text(160,120-8,_t2)
if global.StageSelect=0 draw_set_color(c_dkgray)
draw_text(160,120,_t3) draw_set_color(c_white)
draw_text(160,120+8,_t4)
draw_text(160,120+16,_t5)
}

if AreYouSure=1
{
if -key_left_pressed or key_right_pressed
{PlaySound(snd_select) if Sure=0 Sure=1 else Sure=0}	

draw_set_color(c_black) draw_set_alpha(0.5)
draw_rectangle(-2,-2,888,888,false)
draw_set_color(c_white) draw_set_alpha(1)
draw_text(160,120,_t6)
draw_set_halign(fa_right)
draw_text(160,120+16,_t7)
draw_set_halign(fa_left)
draw_text(160,120+16,_t8)
draw_sprite(spr_scorefont,43,-8+160-24+32*Sure,120+16)
}

///COMMAND TEXT
draw_command(1)

draw_set_halign(fa_center)

settings_draw()

if global.DisplayFeats=1
if instance_exists(oFeatDisplay) with oFeatDisplay drawscript();
////

crt_fxset()
draw_set_halign(fa_left)
draw_set_valign(fa_top)
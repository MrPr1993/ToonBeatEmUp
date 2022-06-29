/// @description Insert description here
// You can write your code in this editor

	if TVfx!=0
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
	
	
	if TVfx!=0
if (surface_exists(new_surf) == false) {
  new_surf = surface_create(surface_get_width(application_surface), surface_get_height(application_surface));
}

	if TVfx!=0
	{
surface_resize(new_surf,320,240)

surface_set_target(new_surf);
draw_clear_alpha(c_black, 0.0);
if global.MonochromeFX=1 shader_set(shd_grayscale)
draw_surface(application_surface, 0, 0);
	}

///
draw_set_color(c_white) draw_set_alpha(1)

draw_sprite(spr_photoplaceholder,0,0,0)

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
draw_text(160,120-24,"PAUSE")
draw_text(160,120-8,"RESUME")
if global.StageSelect=0 draw_set_color(c_dkgray)
draw_text(160,120,"RESTART") draw_set_color(c_white)
draw_text(160,120+8,"SETTINGS")
draw_text(160,120+16,"QUIT")
}

if AreYouSure=1
{
if -key_left_pressed or key_right_pressed
{PlaySound(snd_select) if Sure=0 Sure=1 else Sure=0}	

draw_set_color(c_black) draw_set_alpha(0.5)
draw_rectangle(-2,-2,888,888,false)
draw_set_color(c_white) draw_set_alpha(1)
draw_text(160,120,"ARE YOU SURE?")
draw_set_halign(fa_right)
draw_text(160,120+16,"NO ")
draw_set_halign(fa_left)
draw_text(160,120+16," YES")
draw_sprite(spr_scorefont,43,-8+160-24+32*Sure,120+16)
}
draw_set_halign(fa_center)

settings_draw()
////

crt_fxset()
draw_set_halign(fa_left)
draw_set_valign(fa_top)
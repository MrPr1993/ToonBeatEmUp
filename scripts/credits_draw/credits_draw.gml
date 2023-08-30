// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function credits_draw(){
controller_setup()	

draw_sprite(bg_credits,0,0,0)	
draw_sprite_ext(bg_credits,0,320,0,-1,1,0,c_white,1)	

if creditsGo=0
{
creditsGo=1
creditsTime=0
credFram=0 /// for skip
credMSC=0
creditsCameo=0
creditsCameoX=0
creditsCameoY=0
musicplayonce(msc_credits)
}

draw_set_color(c_black) draw_set_alpha(creditsAlpha)
creditsAlpha-=0.01


draw_sprite(spr_shadow,0,40,200)
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_white,1) ///Viva
draw_sprite_ext(dancer1spr,dancer1img,40,200,dancer1turn,1,0,c_black,dancersfade)
draw_sprite(spr_shadow,0,40+80-6,200)
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_white,1) ///Hina
draw_sprite_ext(dancer2spr,dancer2img,40+80-6,200,dancer2turn,1,0,c_black,dancersfade)
draw_sprite(spr_shadow,0,40+160,200)
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_white,1) ///Bahati
draw_sprite_ext(dancer3spr,dancer3img,40+160,200,dancer3turn,1,0,c_black,dancersfade)
draw_sprite(spr_shadow,0,40+240-2,200)
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_white,1) ///Sofia
draw_sprite_ext(dancer4spr,dancer4img,40+240-2,200,dancer4turn,1,0,c_black,dancersfade)


var musictime=0;
draw_rectangle(-2,-2,340,340,false)
draw_set_color(c_white) draw_set_alpha(1)
var creditmoment="CREDDD\nCREDD\nCREDDD\nCREDD\nCREDD";
draw_set_font(global.scorefont)
draw_set_halign(fa_center)
draw_text(160,16,"CREDITS")
draw_text(160,32,"")
draw_set_halign(fa_left)
if betatest=1 draw_text(8,8,musictime)

if key_A or key_B or key_X or key_Y or key_cancel or key_accept
{
if skipScene<1 skipScene+=0.01
else
{
{global.MenuSkip=0 global.IntroSkip=1 room_goto(rm_hiscore)}
}

draw_set_font(global.scorefont)
draw_set_halign(fa_center) draw_set_color(c_white)
draw_text_transformed(160,8,"SKIPPING",1.5,1.5,0)
draw_set_color(c_black)
draw_rectangle(160-80,24,160+80,32,false)
draw_set_color(c_white)
draw_rectangle(160-80+1,24+1,-1+160-80+160*skipScene,32-1,false)

}else credFram=0
}
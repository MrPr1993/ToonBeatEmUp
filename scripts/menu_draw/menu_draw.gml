// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menu_draw(){
	
	
if room=rm_menu
{controller_setup()
draw_set_alpha(1)
d3d_transform_set_identity()
d3d_transform_set_translation(320+menuX,0,0)
if menuX>-320 menuX-=32 else menuX=-320
if MenuScaleX<1 MenuScaleX+=0.05
if MenuSil>-1 MenuSil-=0.05
draw_sprite_ext(spr_menulight,0,244,0,MenuScaleX,1,0,c_white,1)
draw_sprite_ext(spr_menuchars,menuSelect,244,40,1,1,0,c_white,1)
if menuLocked
draw_sprite_ext(spr_menuchars,menuSelect,244,40,1,1,0,c_black,MenuSil)
else
draw_sprite_ext(spr_menuchars,menuSelect,244,40,1,1,0,c_black,1)

draw_sprite_ext(spr_menulight,1,244,0,MenuScaleX,1,0,c_white,1)
draw_set_color(c_black)

draw_rectangle(244-70,0,244-70*MenuScaleX,320,false)
draw_rectangle(244+70*MenuScaleX,0,320,320,false)

draw_set_color(c_white)
if key_up_pressed {MenuSil=1 MenuScaleX=0 PlaySoundNoStack(snd_select) if menuSelect=0 menuSelect=11 else menuSelect-=1}
if -key_down_pressed {MenuSil=1 MenuScaleX=0 PlaySoundNoStack(snd_select) if menuSelect=11 menuSelect=0 else menuSelect+=1}


draw_set_font(global.scorefont)
draw_set_color(c_gray)
draw_set_halign(fa_left)
//menuSelect
draw_set_color(c_white) draw_set_alpha(0.75)

draw_rectangle(0,32-2+10*menuSelect,180,42-2+10*menuSelect,false)

draw_set_alpha(1)
draw_set_color(c_gray)
MenuText="" menuLocked=0
if menuSelect=0 {draw_set_color(c_white) MenuText=languagetext[0] menuLocked=1}
draw_text(32,32,languagetext[1]) draw_set_color(c_gray)
if menuSelect=1 {draw_set_color(c_white) MenuText=languagetext[2] menuLocked=1}
draw_text(32+2,32+10,languagetext[3]) draw_set_color(c_gray)
if menuSelect=2 {draw_set_color(c_white) MenuText=languagetext[4] menuLocked=1}
draw_text(32+4,32+20,languagetext[5]) draw_set_color(c_gray)
if menuSelect=3 {draw_set_color(c_white) MenuText=languagetext[6] menuLocked=1}
draw_text(32+6,32+30,languagetext[7]) draw_set_color(c_gray)

if menuSelect=4 {draw_set_color(c_white) MenuText=languagetext[8] menuLocked=1}
draw_text(32+8,32+40,languagetext[9]) draw_set_color(c_gray)
if menuSelect=5 {draw_set_color(c_white) MenuText=languagetext[10] menuLocked=1}
draw_text(32+10,32+50,languagetext[11]) draw_set_color(c_gray)

if menuSelect=6 {draw_set_color(c_white) MenuText=languagetext[12] menuLocked=1}
draw_text(32+12,32+60,languagetext[13]) draw_set_color(c_gray)


if menuSelect=7
{draw_set_color(c_white) MenuText=languagetext[14] menuLocked=global.UnlockCharacterData} if global.UnlockCharacterData=0 
{draw_set_color(c_dkgray) draw_text(32+14,32+70,"???")} else draw_text(32+14,32+70,languagetext[15]) draw_set_color(c_gray)

if menuSelect=8 {draw_set_color(c_white) MenuText=languagetext[16] menuLocked=1}
draw_text(32+16,32+80,languagetext[17]) draw_set_color(c_gray)

if menuSelect=9 {draw_set_color(c_white) MenuText=languagetext[18] menuLocked=global.UnlockSoundTest} if global.UnlockSoundTest=0
{draw_set_color(c_dkgray) draw_text(32+18,32+90,"???")} else draw_text(32+18,32+90,languagetext[19])
draw_set_color(c_gray)
if menuSelect=10 {draw_set_color(c_white) MenuText=languagetext[20] menuLocked=global.UnlockMovies} if global.UnlockMovies=0
{draw_set_color(c_dkgray) draw_text(32+20,32+100,"???")} else draw_text(32+20,32+100,languagetext[21]) draw_set_color(c_gray)
if menuSelect=11 {draw_set_color(c_white) MenuText=languagetext[22] menuLocked=1}
draw_text(32+22,32+110,languagetext[23]) draw_set_color(c_gray)

if menuLocked=0 MenuText=""

draw_set_halign(fa_center)
draw_set_color(c_white) draw_set_alpha(0.75)
draw_rectangle(0,240-10-4-10+2+8-2,320,240-10-4+2+8-2,false)
draw_set_alpha(1)
draw_text(round(160+MenuMoveX),240-10-4,MenuText)
draw_text(round(160+320+MenuMoveX),240-10-4,MenuText)
fpsY=8
MenuMoveX-=1 if MenuMoveX<-320 MenuMoveX=0
if key_attack or keyboard_check_pressed(vk_enter)
if menuLocked=1
{PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0
}else PlaySound(snd_steal)
draw_command(0)
///
draw_set_color(c_black)
draw_rectangle(-320,-33,-1,320,false)
d3d_transform_set_identity()
if screenBlack=1
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-33,-33,340,320,false)
}

}


}
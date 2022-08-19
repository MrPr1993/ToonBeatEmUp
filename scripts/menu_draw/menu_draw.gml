// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function menu_draw(){
if room=rm_menu
{controller_setup()
draw_set_alpha(1)
if MenuScaleX<1 MenuScaleX+=0.05
if MenuSil>-1 MenuSil-=0.05
draw_sprite_ext(spr_menulight,0,244,0,MenuScaleX,1,0,c_white,1)
draw_sprite_ext(spr_menuchars,menuSelect,244,40,1,1,0,c_white,1)
draw_sprite_ext(spr_menuchars,menuSelect,244,40,1,1,0,c_black,MenuSil)
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

draw_rectangle(0,32-2+10*menuSelect,184,42-2+10*menuSelect,false)

draw_set_alpha(1)
draw_set_color(c_gray)
if menuSelect=0 {draw_set_color(c_white) MenuText="FIGHT IN ALL STAGES IN ARCADE MODE!"}
draw_text(32,32,"ARCADE MODE") draw_set_color(c_gray)
if menuSelect=1 {draw_set_color(c_white) MenuText="SELECT ONE STAGE TO REPLAY!"}
draw_text(32+2,32+10,"STAGE SELECT") draw_set_color(c_gray)
if menuSelect=2 {draw_set_color(c_white) MenuText="CHECK WHAT YOU EARNED IN THE GAME!"}
draw_text(32+4,32+20,"ACHIEVEMENTS") draw_set_color(c_gray)
if menuSelect=3 {draw_set_color(c_white) MenuText="RECONFIGURE YOUR GAME!"}
draw_text(32+6,32+30,"SETTINGS") draw_set_color(c_gray)

if menuSelect=4 {draw_set_color(c_white) MenuText="VISIT BETTY O'HARA AND BUY ITEMS!"}
draw_text(32+8,32+40,"SHOP") draw_set_color(c_gray)
if menuSelect=5 {draw_set_color(c_white) MenuText="PRACTICE YOUR DIVA'S SKILLS!"}
draw_text(32+10,32+50,"TRAINING") draw_set_color(c_gray)
if menuSelect=6 {draw_set_color(c_white) MenuText="CHECK DATA OF THE CHARACTERS!"}
draw_text(32+12,32+60,"CHARACTER PROFILE") draw_set_color(c_gray)
if menuSelect=7 {draw_set_color(c_white) MenuText="CHECK THE ARTWORK AND CONCEPT ART!"}
draw_text(32+14,32+70,"GALLERY") draw_set_color(c_gray)
if menuSelect=8 {draw_set_color(c_white) MenuText="PLAY SOME EXTRA GAMES!"}
draw_text(32+16,32+80,"MINIGAMES") draw_set_color(c_gray)
if menuSelect=9 {draw_set_color(c_white) MenuText="PLAY SONGS AND WATCH THE DIVAS DANCE!"}
draw_text(32+18,32+90,"SOUND TEST") draw_set_color(c_gray)
if menuSelect=10 {draw_set_color(c_white) MenuText="WATCH THE MORE CINEMATIC CUTSCENES!"}
draw_text(32+20,32+100,"CUTSCENES") draw_set_color(c_gray)
if menuSelect=11 {draw_set_color(c_white) MenuText="CHECK OUT WHO'S ON TOP!"}
draw_text(32+22,32+110,"HIGH SCORE") draw_set_color(c_gray)

draw_set_halign(fa_center)
draw_set_color(c_white) draw_set_alpha(0.75)
draw_rectangle(0,240-10-4-10+2+8-2,320,240-10-4+2+8-2,false)
draw_set_alpha(1)
draw_text(round(160+MenuMoveX),240-10-4,MenuText)
draw_text(round(160+320+MenuMoveX),240-10-4,MenuText)
fpsY=8
MenuMoveX-=1 if MenuMoveX<-320 MenuMoveX=0
if key_attack
{PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0

}

}

if screenBlack=1
{
draw_set_color(c_black) draw_set_alpha(1)
draw_rectangle(-33,-33,340,320,false)
}

}
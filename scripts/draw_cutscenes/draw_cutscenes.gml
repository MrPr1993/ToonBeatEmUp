// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_cutscenes(){

if room=rm_cutscenes
{//global.MinigameSel=0
if key_jump room=rm_menu
draw_set_font(global.scorefont)	

draw_sprite(bg_cuts1,0,0-320+MenuMoveX,0)
draw_sprite(bg_cuts2,0.2+MenuScaleX,160+320-MenuMoveX,72)


if -key_left_pressed {if global.MovieSel=0 global.MovieSel=20 else global.MovieSel-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MovieSel=20 global.MovieSel=0 else global.MovieSel+=1 PlaySound(snd_select)}

var imgscene=0;




MenuText="???"



if global.MovieSel=0 {MenuText="DIVA TIME!"
global.StageGoing=rm_newspaper}
if global.MovieSel=1 {MenuText="THE CHAOS"
global.StageGoing=rm_opening}
if global.MovieSel=2 {MenuText="WOLFED"
global.StageGoing=rm_cutscene1}

imgscene=global.MovieSel+1

if MenuText="???" imgscene=0;

draw_sprite_ext(bg_cuts2frames,imgscene,160+6+320-MenuMoveX,72+6,1,1,0,c_white,MenuScaleX)
	
draw_set_halign(fa_center) draw_set_alpha(1) draw_set_color(c_white)
draw_text(round(224+320-MenuMoveX),64-8,"SELECT A CUTSCENE\nTO PLAY")
draw_text(round(224+320-MenuMoveX),64+8+84+16,"◄ "+string(MenuText)+" ►\n"+string(global.MovieSel+1)+"/20")
fpsY=8
if MenuSil=0
{if MenuScaleX=1 MenuScaleX=0.8 else MenuScaleX=1 MenuSil=1}
else MenuSil-=0.5

if MenuMoveX<320 MenuMoveX+=24 else MenuMoveX=320

if key_attack
{
	if MenuText="???"
	{
	PlaySound(snd_steal)
	}
	else
	{
	PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0 
	}
	}
draw_command(1)

}
}
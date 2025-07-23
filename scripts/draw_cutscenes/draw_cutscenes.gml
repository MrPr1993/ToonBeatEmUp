// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_cutscenes(){

if room=rm_cutscenes
{//global.MinigameSel=0
if key_B room_goto(rm_menu)
draw_set_font(global.scorefont)	

draw_sprite(bg_cuts1,0,0-320+MenuMoveX,0)
draw_sprite(bg_cuts2,0.2+MenuScaleX,160+320-MenuMoveX,72)


if -key_left_pressed {if global.MovieSel=0 global.MovieSel=23 else global.MovieSel-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MovieSel=23 global.MovieSel=0 else global.MovieSel+=1 PlaySound(snd_select)}

var imgscene=0;




MenuText="???"



if global.MovieSel=0 {MenuText="DIVA TIME!"
global.StageGoing=rm_newspaper global.IsMovie=1 global.MenuSkip=0 global.IntroSkip=1}
if global.MovieSel=1 {MenuText="THE CHAOS"
global.StageGoing=rm_opening}
if global.MovieSel=2 {if global.UnlockCutscene[1] MenuText="WOLFED"
global.StageGoing=rm_cutscene1}
if global.MovieSel=3 {if global.UnlockCutscene[2] MenuText="WHO'S DRIVING?"
global.StageGoing=rm_cutscene2a}
if global.MovieSel=4 {if global.UnlockCutscene[3] MenuText="GOING DOWN"
global.StageGoing=rm_cutscene2b}
if global.MovieSel=5 {if global.UnlockCutscene[4] MenuText="TRAIN CUTSCENE"
global.StageGoing=rm_cutscene2c}
if global.MovieSel=6 {if global.UnlockCutscene[5] MenuText="THE SHERIFF"
global.StageGoing=rm_cutscene3a}
if global.MovieSel=7 {if global.UnlockCutscene[6] MenuText="OFF WITH THEIR HEADS"
global.StageGoing=rm_cutscene3b}
if global.MovieSel=8 {if global.UnlockCutscene[7] MenuText="ONI'S GAMBLE"
global.StageGoing=rm_cutscene3c}

if global.MovieSel=9 {if global.UnlockCutscene[25] MenuText="ANGRY WOMEN"
global.StageGoing=rm_intermission1}

if global.MovieSel=10 {if global.UnlockCutscene[8] MenuText="QUACKED UP"
global.StageGoing=rm_cutscene4a}
if global.MovieSel=11 {if global.UnlockCutscene[9] MenuText="SWAMPED WITCH"
global.StageGoing=rm_cutscene4b}
if global.MovieSel=12 {if global.UnlockCutscene[10] MenuText="SEA MOMMY"
global.StageGoing=rm_cutscene4c}
if global.MovieSel=13 {if global.UnlockCutscene[11] MenuText="HANDSOME PRINCE"
global.StageGoing=rm_cutscene5a}
if global.MovieSel=14 {if global.UnlockCutscene[12] MenuText="BACK FROM SPACE"
global.StageGoing=rm_cutscene5b}
if global.MovieSel=15 {if global.UnlockCutscene[13] MenuText="GENIE LOVE"
global.StageGoing=rm_cutscene5c}

if global.MovieSel=16 {if global.UnlockCutscene[26] MenuText="PULL OUT ALL THE STOPS"
global.StageGoing=rm_intermission2}

if global.MovieSel=17 {if global.UnlockCutscene[14] MenuText="ROYAL PLANT"
global.StageGoing=rm_cutscene6a}
if global.MovieSel=18 {if global.UnlockCutscene[15] MenuText="BROKEN REFLECTION"
global.StageGoing=rm_cutscene6b}
if global.MovieSel=19 {if global.UnlockCutscene[16] MenuText="SAD DRAGON"
global.StageGoing=rm_cutscene6c}
if global.MovieSel=20 {if global.UnlockCutscene[17] MenuText="GET THAT BLIMP!"
global.StageGoing=rm_cutscene7}

if global.MovieSel=21 {if global.UnlockCutscene[18] MenuText="BAD END"
global.StageGoing=rm_cutscenebadend}

if global.MovieSel=22 {if global.UnlockCutscene[19] MenuText="ENDING SCENE"
global.StageGoing=rm_cutscene8}
if global.MovieSel=23 {if global.UnlockCutscene[30] MenuText="CREDITS"
global.StageGoing=rm_creditscene}
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

if key_A or keyboard_check_pressed(ord("J"))  or keyboard_check_pressed(vk_enter) 
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
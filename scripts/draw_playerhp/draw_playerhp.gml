// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_playerhp(){

d3d_transform_set_identity()
if playerNO=1
d3d_transform_set_translation(0,0,0)
if playerNO=2
d3d_transform_set_translation(72,0,0)
if playerNO=3
d3d_transform_set_translation(320-72-72,0,0)
if playerNO=4
d3d_transform_set_translation(320-72,0,0)

if object_index=oPlayerNoControl
{
draw_set_font(global.scorefont) draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center)
draw_text(34,8,"GAME\nOVER")
}
else
{
	
if ContinueSelect=1
{


if continueScreen=2 ///Character Select
{
if continueFlash<0 continueFlash=2 else continueFlash-=0.5


if characterSelect=0 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,0,0,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=1 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,1,23,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=2 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,2,46,0,1,1,0,c_white,1) pal_swap_reset()
if characterSelect=3 pal_swap_set(spr_playerpal,global.p1Pal,false)
draw_sprite_ext(spr_playerface,3,69,0,1,1,0,c_white,1) pal_swap_reset()

draw_set_color(c_white)

draw_set_font(global.scorefont)
draw_text(23*characterSelect+2,2,string_hash_to_newline(characterTimer))

if continueFlash<1
draw_sprite_ext(spr_playerface,4,23*characterSelect,0,1,1,0,c_white,1)

if global.UnlockAltPal=1
{
if playerNO=1
{if key_up_pressed {if global.p1Pal=0 global.p1Pal=15 else global.p1Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {if global.p1Pal=15 global.p1Pal=0 else global.p1Pal+=1 PlaySound(snd_steal)}}
if playerNO=2
{if key_up_pressed {if global.p2Pal=0 global.p2Pal=15 else global.p2Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {if global.p2Pal=15 global.p2Pal=0 else global.p2Pal+=1 PlaySound(snd_steal)}}
if playerNO=3
{if key_up_pressed {if global.p3Pal=0 global.p3Pal=15 else global.p3Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {if global.p3Pal=15 global.p3Pal=0 else global.p3Pal+=1 PlaySound(snd_steal)}}
if playerNO=4
{if key_up_pressed {if global.p4Pal=0 global.p4Pal=15 else global.p4Pal-=1 PlaySound(snd_steal)}
if -key_down_pressed {if global.p4Pal=15 global.p4Pal=0 else global.p4Pal+=1 PlaySound(snd_steal)}}
}

if -key_left_pressed if characterSelect=0 characterSelect=3
else characterSelect-=1
if key_right_pressed if characterSelect=3 characterSelect=0
else characterSelect+=1

if key_attack
{ContinueSelect=0
//if global.Continues!=-1 global.Continues-=1
if playerNO=1 {global.P1Char=characterSelect}
if playerNO=2 {global.P2Char=characterSelect}
if playerNO=3 {global.P3Char=characterSelect}
if playerNO=4 {global.P4Char=characterSelect}

character=characterSelect

PlayerLife=global.LifeStart+1 event_user(9)
}

}

if continueScreen=3 ///Set Hi-Score Input
hiscore_input()
///CONTINUE?
if continueScreen=1
{controller_setup()
draw_set_font(global.scorefont) draw_set_color(c_white) draw_set_alpha(1)
draw_set_halign(fa_center)
if ContinueCountdown!=-1
{HiScoreCheckDone=0
draw_text(34,8,"CONTINUE?")
draw_text(34,8+8,ContinueCountdown)
}
else
{
//if continueScreen=3
if playerNO=1
{
global.P1Score=PlayerScore
global.P1Life=PlayerLife
HiScoreCheck=global.P1Score
}
if playerNO=2
{
global.P2Score=PlayerScore
global.P2Life=PlayerLife
HiScoreCheck=global.P2Score
}
if playerNO=3
{
global.P3Score=PlayerScore
global.P3Life=PlayerLife
HiScoreCheck=global.P3Score
}
if playerNO=4
{
global.P4Score=PlayerScore
global.P4Life=PlayerLife
HiScoreCheck=global.P4Score
}

if HiScoreCheck>=global.HiScore10 and keyToGameOver=0
{
hiScoreInput=0
hiScoreInputNum=1
continueScreen=3
hiScoreNameGet="A"
keyGet1="A"
keyGet2="A"
keyGet3="A"
}
else
{
if playerNO=1 global.P1Score=0
if playerNO=2 global.P2Score=0
if playerNO=3 global.P3Score=0
if playerNO=4 global.P4Score=0
}

draw_text(34,8,"GAME\nOVER")
}
draw_set_halign(fa_left)

if ContinueCTime!=0
ContinueCTime-=1
else
{
if ContinueCountdown!=-1
{ContinueCountdown-=1 ContinueCTime=90}
}

if key_attack and global.Continues!=0 and ContinueCountdown!=-1
{CountdownMode=0 ContinueMode=0 continueScreen=2 ContinueSelect=1
	continueFlash=0 characterSelect=character}

draw_set_halign(fa_left)
}
}
else
{
////PLAYER STATS
draw_sprite(spr_hud,0,0,0)	

if hp>0
draw_sprite_part_ext(spr_hpbar,character,0,0,32*hp,10,24,21,1,1,c_white,1)
pal_swap_set(my_pal_sprite,current_pal,false);
draw_sprite(spr_playerface,character,2,8)
pal_swap_reset();
shader_reset()

draw_set_font(global.scorefont)
if string_length(name)<=4
draw_text(25,12,string_hash_to_newline(name))
else
draw_text_transformed(25,12,string_hash_to_newline(name),0.75,1,0)
draw_set_font(-1)
draw_set_color(c_black)///Super Bar
if super>0
draw_sprite_part_ext(spr_superbar,0,0,0,(12*super)/17.5,10,57,21,1,1,c_white,1)
draw_set_color(c_white)
if oControl.superFlashFrame1<1 and super>=17.5
{shader_set(shd_white_sprite)
draw_sprite_part_ext(spr_superbar,0,0,0,(12*super)/17.5,10,57,21,1,1,c_white,1)
shader_reset()
}

draw_set_font(global.scorefont)
draw_set_halign(fa_right)
draw_text(70,12,string_hash_to_newline(PlayerLife)) //draw_text(39,0,7400)
draw_text(70,2,string_hash_to_newline(round(PlayerScore))) //draw_text(39,0,7400)
draw_set_halign(fa_left)
}
d3d_transform_set_identity()

}
}
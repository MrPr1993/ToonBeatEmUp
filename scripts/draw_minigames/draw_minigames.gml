// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_minigames(){

if room=rm_minigames
{//global.MinigameSel3=0
if key_jump room_goto(rm_menu)
draw_set_font(global.scorefont)	

d3d_transform_set_identity()



d3d_transform_set_translation(320+MenuMoveX,0,0)


if -key_left_pressed {if global.MinigameSetSel=0 global.MinigameSetSel=2 else global.MinigameSetSel-=1 PlaySound(snd_select)}
if key_right_pressed {if global.MinigameSetSel=2 global.MinigameSel3=0 else global.MinigameSetSel+=1 PlaySound(snd_select)}


MenuText="???"

//draw_sprite_ext(spr_miniposter,0,28,24,1,1,0,c_gray,0.5+0.5*1)
//draw_sprite_ext(spr_miniposter,1,124,24,1,1,0,c_gray,0.5+0.5*1)
//draw_sprite_ext(spr_miniposter,2,220,24,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,3,28,104,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,4,124,104,1,1,0,c_gray*0,0.5+0.5*0)
//draw_sprite_ext(spr_miniposter,5,220,104,1,1,0,c_gray*0,0.5+0.5*0)

if key_up_pressed {PlaySound(snd_select)
if global.MinigameSetSel=2
{if global.MinigameSel3=0 global.MinigameSel3=5 else global.MinigameSel3-=1}

	}
if -key_down_pressed {PlaySound(snd_select)
if global.MinigameSetSel=2
{if global.MinigameSel3=5 global.MinigameSel3=0 else global.MinigameSel3+=1}
	}


if global.MinigameSetSel=0
{
global.MultiVS=0

global.MultiVS=1
if global.MinigameSel=0 {MenuText="SURVIVE THE BAD GUYS' ONSLAUGHT!" //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame}
if global.MinigameSel=1 {MenuText="CAN YOU DEFEAT EVERYONE? CAN YOU?" //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak}
}

if global.MinigameSetSel=1
{
global.MultiVS=1
if global.MinigameSel2=0 {MenuText="A GOOD OLD FASHIONED BRAWLER VS!" //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame}
if global.MinigameSel2=1 {MenuText="THE ONE HOLDING THE BALL BEFORE TIME RUNS OUT WINS!" //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak}
if global.MinigameSel2=2 {MenuText="GRAB THE STARS AND BE THE ONE WITH THE BIGGEST COUNT!" //if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame}
}

if global.MinigameSetSel=2
{global.MultiVS=2
if global.MinigameSel3=0 {MenuText="WRECK THAT CAR TO BITS!" if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame}
if global.MinigameSel3=1 {MenuText="BREAK A BUNCH OF BRICKS WITH PERCISION!" if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak}
if global.MinigameSel3=2 {MenuText="EAT A MEAL IN THIS EATING COMPETITION!" if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame}
if global.MinigameSel3=3 {MenuText="SING TO SHATTER THE COMPETITION!" if global.MiniGameUnlock4=0 MenuText="LOCKED"
global.StageGoing=rm_singgame}
if global.MinigameSel3=4 {MenuText="RUN FROM THE BIG BAD BULL!" if global.MiniGameUnlock5=0 MenuText="LOCKED"
global.StageGoing=rm_bullstage}
if global.MinigameSel3=5 {MenuText="RING THE BELL WITH A SLAM OF THE HAMMER!" if global.MiniGameUnlock6=0 MenuText="LOCKED"
global.StageGoing=rm_hammergame}
}	

draw_sprite_ext(spr_miniposter,0,28,24,1,1,0,c_white,1)

draw_set_halign(fa_center)
draw_set_color(c_black)

draw_set_alpha(0.75)
draw_rectangle(-80+80*global.MinigameSetSel,240-10-4-10+2+8-2-32,0+80*global.MinigameSetSel,240-10-4+2+8-2-32,false)
draw_rectangle(80+80*global.MinigameSetSel,240-10-4-10+2+8-2-32,333,240-10-4+2+8-2-32,false)


draw_set_alpha(1)

draw_rectangle(0,240-10-4-10+2+8-2-32,320,240-10-4+2+8-2-32,false)
draw_set_alpha(1)draw_set_color(c_white)
draw_text(round(160),240-10-4-32,MenuText)
draw_text(160,8,"SELECT A MINIGAME")
fpsY=8

if global.MinigameSel3<3
draw_sprite(spr_miniposter,global.MinigameSel3,28+(72+24)*(global.MinigameSel3),24)
else
draw_sprite(spr_miniposter,global.MinigameSel3,28+(72+24)*(global.MinigameSel3-3),104)

if canControl=1
{if MenuMoveX>-320 MenuMoveX-=64 else MenuMoveX=-320}
else
{if MenuMoveX>-640 MenuMoveX-=64 else MenuMoveX=-640}
draw_command(1)
if key_attack
{
if MenuText="???" or MenuText="LOCKED"
{
PlaySound(snd_steal)
}
else
{
PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0 }
}
draw_set_color(c_black)
draw_rectangle(-999,-999,-1,999,false)
draw_rectangle(320,-999,999,999,false)
draw_set_color(c_white)
d3d_transform_set_identity()

}
}
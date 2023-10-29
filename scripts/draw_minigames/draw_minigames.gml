// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_minigames(){

if room=rm_minigames
{//global.MinigameSel3=0
global.ArenaType=0
	
if key_cancel room_goto(rm_menu)
draw_set_font(global.scorefont)	

d3d_transform_set_identity()

global.SkipDifficulty=0;
global.P1Only=0;

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
var instantroom=0;
var stagewent=rm_characterselect;

var sell1=0.5;
var sell2=0.5;
var sell3=0.5;
var isunlocked=1;
if global.MinigameSetSel=0 sell1=0;
if global.MinigameSetSel=1 sell2=0;
if global.MinigameSetSel=2 sell3=0;

///Left-Extras
draw_sprite_ext(spr_extraposter,3,28,24+36-72*global.MinigameSel,1,1,0,c_gray*global.UnlockAltPal3,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,4,28,24+36+72-72*global.MinigameSel,1,1,0,c_gray*global.SurvivalUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,5,28,24+36+72+72-72*global.MinigameSel,1,1,0,c_gray*global.BossBattleUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,6,28,24+36+72+72+72-72*global.MinigameSel,1,1,0,c_gray*global.FishingUnlock,-sell1+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,7,28,24+36+72+72+72+72-72*global.MinigameSel,1,1,0,c_gray*global.SlotMachineUnlock,-sell1+0.5+0.5*1)

if global.MinigameSetSel=0
{
if global.MinigameSel=0 if global.UnlockAltPal3=0 isunlocked=0
if global.MinigameSel=1 if global.SurvivalUnlock=0 isunlocked=0
if global.MinigameSel=2 if global.BossBattleUnlock=0 isunlocked=0
if global.MinigameSel=3 {if global.FishingUnlock=0 isunlocked=0 global.SkipDifficulty=1 global.P1Only=1;}
if global.MinigameSel=4 if global.SlotMachineUnlock=0 isunlocked=0
draw_sprite_ext(spr_extraposter,global.MinigameSel+3,28,24+36,1,1,0,c_white*isunlocked,1)
}

///Middle-Multi
draw_sprite_ext(spr_extraposter,0,124,24+36-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,1,124,24+36+72-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)
draw_sprite_ext(spr_extraposter,2,124,24+36+72+72-72*global.MinigameSel2,1,1,0,c_gray,-sell2+0.5+0.5*1)

if global.MinigameSetSel=1
draw_sprite_ext(spr_extraposter,global.MinigameSel2,124,24+36,1,1,0,c_white,1)

///Right-Minigames
draw_sprite_ext(spr_miniposter,0,220,24+36-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock1,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,1,220,24+36+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock2,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,2,220,24+36+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock3,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,3,220,24+36+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock4,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,4,220,24+36+72+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock5,-sell3+0.5+0.5*1)
draw_sprite_ext(spr_miniposter,5,220,24+36+72+72+72+72+72-72*global.MinigameSel3,1,1,0,c_gray*global.MiniGameUnlock6,-sell3+0.5+0.5*1)

if global.MinigameSetSel=2
{global.SkipDifficulty=1
if global.MinigameSel3=0 if global.MiniGameUnlock1=0 isunlocked=0
if global.MinigameSel3=1 if global.MiniGameUnlock2=0 isunlocked=0
if global.MinigameSel3=2 if global.MiniGameUnlock3=0 isunlocked=0
if global.MinigameSel3=3 if global.MiniGameUnlock4=0 isunlocked=0
if global.MinigameSel3=4 if global.MiniGameUnlock5=0 isunlocked=0
if global.MinigameSel3=5 if global.MiniGameUnlock6=0 isunlocked=0
draw_sprite_ext(spr_miniposter,global.MinigameSel3,220,24+36,1,1,0,c_white*isunlocked,1)
}

if key_up_pressed {PlaySound(snd_select)
if global.MinigameSetSel=0
{if global.MinigameSel=0 global.MinigameSel=4 else global.MinigameSel-=1}

if global.MinigameSetSel=1
{if global.MinigameSel2=0 global.MinigameSel2=2 else global.MinigameSel2-=1}
	
if global.MinigameSetSel=2
{if global.MinigameSel3=0 global.MinigameSel3=5 else global.MinigameSel3-=1}


	}
if -key_down_pressed {PlaySound(snd_select)
if global.MinigameSetSel=0
{if global.MinigameSel=4 global.MinigameSel=0 else global.MinigameSel+=1}	
	
if global.MinigameSetSel=1
{if global.MinigameSel2=2 global.MinigameSel2=0 else global.MinigameSel2+=1}

if global.MinigameSetSel=2
{if global.MinigameSel3=5 global.MinigameSel3=0 else global.MinigameSel3+=1}
	}


if global.MinigameSetSel=0
{
global.MultiVS=0

global.MultiVS=0
if global.MinigameSel=0 {MenuText="GIVE YOU DIVAS CUSTOM COLORS!" //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_paletteeditor instantroom=1; stagewent=rm_paletteeditor
if global.UnlockAltPal3=0 MenuText="LOCKED"
}
if global.MinigameSel=1 {MenuText="SURVIVE THE BAD GUYS' ONSLAUGHT!\n"+"HIGH SCORE:"+string(global.HiScoreSurvival) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_arena global.ArenaType=2;
if global.SurvivalUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=2 {MenuText="CAN YOU DEFEAT EVERYONE? CAN YOU?\n"+"BOSSES DEFEATED:"+string(global.HiScoreBossBattles)+"\nHIGH SCORE:"+string(global.HiScoreBossBattlesScore) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_arena
if global.BossBattleUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=3 {MenuText="RELAX AS YOU TAKE ON THE LAKE TO FISH.\n"+"HIGH SCORE:"+string(global.HiScoreFishing) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_fishing 
if global.FishingUnlock=0 MenuText="LOCKED"
}

if global.MinigameSel=4 {MenuText="HAVE SOME FUN AT A LITTLE GAMBLE!\n"+"$"+string(global.Gold) //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_slotmachine instantroom=1 stagewent=rm_slotmachine
if global.SlotMachineUnlock=0 MenuText="LOCKED"
}

}

if global.MinigameSetSel=1
{
global.MultiVS=1
if global.MinigameSel2=0 {MenuText="A GOOD OLD FASHIONED BRAWLER VS!\n" //if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame global.ArenaType=5;}
if global.MinigameSel2=1 {MenuText="MAKE SURE YOU'RE THE ONE WITH THE BALL!" //if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak  global.ArenaType=6;}
if global.MinigameSel2=2 {MenuText="GET THE MOST STARS TO WIN!" //if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame  global.ArenaType=7;}
}

if global.MinigameSetSel=2
{global.MultiVS=0
if global.MinigameSel3=0 {MenuText="WRECK THAT CAR TO BITS!\n"+"HIGH SCORE:"+string(global.HiScoreMini1) if global.MiniGameUnlock1=0 MenuText="LOCKED"
global.StageGoing=rm_cargame}
if global.MinigameSel3=1 {MenuText="BREAK A BUNCH OF BRICKS WITH PERCISION!\n"+"HIGH SCORE:"+string(global.HiScoreMini2) if global.MiniGameUnlock2=0 MenuText="LOCKED"
global.StageGoing=rm_brickbreak}
if global.MinigameSel3=2 {MenuText="EAT A MEAL IN THIS EATING COMPETITION!\n"+"HIGH SCORE:"+string(global.HiScoreMini3) if global.MiniGameUnlock3=0 MenuText="LOCKED"
global.StageGoing=rm_eatinggame}
if global.MinigameSel3=3 {MenuText="SING TO SHATTER THE COMPETITION!\n"+"HIGH SCORE:"+string(global.HiScoreMini4) if global.MiniGameUnlock4=0 MenuText="LOCKED"
global.StageGoing=rm_singgame}
if global.MinigameSel3=4 {MenuText="RUN FROM THE BIG BAD BULL!\n"+"HIGH SCORE:"+string(global.HiScoreMini5) if global.MiniGameUnlock5=0 MenuText="LOCKED"
global.StageGoing=rm_bullstage}
if global.MinigameSel3=5 {MenuText="RING THE BELL WITH A SLAM OF THE HAMMER!\n"+"HIGH SCORE:"+string(global.HiScoreMini6) if global.MiniGameUnlock6=0 MenuText="LOCKED"
global.StageGoing=rm_hammergame}
}	

draw_set_halign(fa_center)
draw_set_color(c_black)

draw_set_alpha(0.75)



draw_set_alpha(1)

draw_rectangle(0,240-10-4-10+2+8-2-32,320,240-10-4+2+8-2-32,false)
draw_set_alpha(1)draw_set_color(c_white)
draw_text(round(160),240-10-4-32,MenuText)
draw_text(160,8,"SELECT A MODE")

draw_text(28+36,32,"EXTRAS")
draw_text(160,32,"MULTI")
draw_text(320-28-36,32,"MINIGAMES")

if global.Cheat[0]
or global.Cheat[1]	
or global.Cheat[2]	
or global.Cheat[3]	
or global.Cheat[4]	
or global.Cheat[5]	
or global.Cheat[6]	
or global.Cheat[7]	
or global.Cheat[8]	
or global.Cheat[9]	
or global.Cheat[10]	
or global.Cheat[11]	
or global.Cheat[12]	
or global.Cheat[13]
or global.Cheat[14]
or global.Cheat[15]
or global.Cheat[16]
global.NoCheat=0

if global.NoCheat=0
draw_text(160,16,"NOTE:CHEATS WILL BE DISABLED")

fpsY=8


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
PlaySound(snd_picked) selectScreen=1 alarm[4]=10 screenBlack=1 canControl=0 
if instantroom=1
room_goto(stagewent)
}
}
draw_set_color(c_black)
draw_rectangle(-999,-999,-1,999,false)
draw_rectangle(320,-999,999,999,false)
draw_set_color(c_white)
d3d_transform_set_identity()

}
}
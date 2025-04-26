/// @description Insert description here
// You can write your code in this editor
///Set Up Volume
//global.CurrentMusic
//audio_play_sound(global.CurrentMusic,1,1)
///Add screen wideness
//view_visible[1]=1
//view_wport[1]=32
//view_xport[1]=-32



if instance_exists(oPlayer)
{
if p1.x>camX+160 and p2.x>camX+160 and p3.x>camX+160 and p4.x>camX+160
allPlayersMid=1 else allPlayersMid=0

if p1.x>camX+296 and p2.x>camX+296 and p3.x>camX+296 and p4.x>camX+296
allPlayersEdge=1 else allPlayersEdge=0

if (p1.canmove and p1.ground)
and (p2.canmove and p2.ground)
and (p3.canmove and p3.ground)
and (p4.canmove and p4.ground)
allPlayersMove=1 else allPlayersMove=0

if instance_exists(oPlayerNoControl)
oPlayerNoControl.anim=instance_nearest(camX+320,0,oPlayer).anim
}

depth=-999999999

if key_B or keyboard_check_pressed(vk_escape)
if pauseBuffer=0
{
if continueScreen=0

if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_feats
or room=rm_cutscenes or room=rm_minigames
{global.MenuSkip=1 global.IntroSkip=2
	
if room=rm_minigames global.StageSelect=0

if rm_characterselect and p1Select=100
{if characterSelReady!=2
	{PlaySound(snd_select) p1selFrame=0 alarm[4]=-1 charSelFlash=0 charSelectFlash=0 p1Select=0 characterSelReady=0 
		charSelFlash=60
charSelCountdown=20
charSelForceSelect=0
p1Flicker=0
		charselLerp=0
		exit;
		
		}
	}
if room=rm_map 
{
global.StageSelX=0
global.StageSelY=0
global.StageSelect=0
}

if global.StageSelect=0
room_goto(rm_menu)   /////MENU
if global.StageSelect=1
room_goto(rm_map)
}
else
{
if stagePause=0
{
			if room=rm_menu {room_goto(rm_titlescreen) global.IsMovie=0 global.MenuSkip=0 global.IntroSkip=1}
		else
	if !instance_exists(oSettings)
	{if room=rm_titlescreen if !key_B game_end()}
	else
	{
	//global.MenuSkip=0 room_goto(rm_menu)
	}
	}
else
if !key_B
{pauseBuffer=10 game_pause()}
}


}


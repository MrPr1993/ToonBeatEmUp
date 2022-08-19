/// @description Insert description here
// You can write your code in this editor
///Set Up Volume
//global.CurrentMusic
//audio_play_sound(global.CurrentMusic,1,1)
///Add screen wideness
//view_visible[1]=1
//view_wport[1]=32
//view_xport[1]=-32

if global.BGMvolume>1
{
audio_resume_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,(global.BGMvolume/100)*global.MusicFade,0)
}
else
{
audio_pause_sound(global.CurrentMusic)
audio_sound_gain(global.CurrentMusic,0,0)
}


depth=-999999999

if key_jump or keyboard_check_pressed(vk_escape)
if pauseBuffer=0
{
if continueScreen=0

if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_feats
{global.MenuSkip=1 global.IntroSkip=2
	

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
room=rm_menu   /////MENU
if global.StageSelect=1
room=rm_map
}
else
{
if stagePause=0
{
			if room=rm_menu {room=rm_titlescreen global.MenuSkip=0 global.IntroSkip=1}
		else
	if !instance_exists(oSettings)
	{if room=rm_titlescreen if !key_jump game_end()}
	else
	{
	global.MenuSkip=0
room=rm_menu
	}
	}
else
if !key_jump
{pauseBuffer=10 game_pause()}
}
}
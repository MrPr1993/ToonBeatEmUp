// or room=rm_settings
if x=-99999999999999999
{
if continueScreen=0
if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_characterselect or room=rm_feats or room=rm_shop
or room=rm_soundtest or room=rm_gallery
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
	{if room=rm_titlescreen game_end()}
	else
	{
	global.MenuSkip=0
room=rm_menu
	}
	}
else
if !key_jump
game_pause()
}
}
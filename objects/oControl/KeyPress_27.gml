if continueScreen=0
if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_characterselect or room=rm_feats or room=rm_shop
{global.MenuSkip=1 global.IntroSkip=2
if rm_characterselect and p1Select=1
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
room=rm_titlescreen
if global.StageSelect=1
room=rm_map
}
else
{
if stagePause=0
{if !instance_exists(oSettings)
	{if room=rm_titlescreen game_end()}
	else
	{
	global.MenuSkip=1
room_restart() 
	
	}
	}
else
if !instance_exists(oLevelSelect)
{



instance_create(x,y,oPause) oPause.TVfx=TVfx 
oPause.crtcheck=crtcheck

}
}

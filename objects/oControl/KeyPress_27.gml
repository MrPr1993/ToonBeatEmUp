if continueScreen=0
if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_characterselect or room=rm_feats or room=rm_shop
{global.MenuSkip=1 global.IntroSkip=2
if rm_characterselect and p1Select=1
{PlaySound(snd_select) p1selFrame=0 alarm[4]=-1 p1Select=0 exit;}

room=rm_titlescreen
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

if continueScreen=0
if room=rm_chardata or room=rm_map or room=rm_hiscore or room=rm_characterselect
{global.MenuSkip=1
room=rm_titlescreen
}
else
{
if stagePause=0
{if !instance_exists(oSettings)
	game_end()
	else
	{
	global.MenuSkip=1
room_restart() 
	
	}
	}
else
if !instance_exists(oLevelSelect)
{
surface_resize(application_surface,320,240)
surface_save(application_surface,"screenshot")
surface_resize(application_surface,320,240)
surface_free(application_surface)

sprite_replace(spr_photoplaceholder,"screenshot",0,false,false,320,240)


instance_create(x,y,oPause) oPause.TVfx=TVfx 
oPause.crtcheck=crtcheck

}
}

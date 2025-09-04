///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stagesnow

with actorscreen
{scenetime=0;
	
	with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}

sprite_index=mask_none
with oControl
{
//-Snow-

cutscenename="BAHATI" cutsceneline= "Looks like a long way up that mountain..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,160)
{with oControl {SceneX-=8; SceneX=clamp(SceneX,240,9999) __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=240
{
with actor3 {image_index=0 image_speed=0}	
with actor1 {sprite_index=spr_viva_talk image_speed=0.25}

with oControl
{
cutscenename="VIVA" cutsceneline= "Fine by me... I'll climb it all on my own!"

}
}

if scenetime=400
{
with actor4 {sprite_index=spr_sofia_point image_index=3}
	
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with oControl
{
cutscenename="SOFIA" cutsceneline= "Wait a minute, you dumb blonde!"
}
}

//////
if scenetime=570
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Wait nothing, I'm getting my diamond back no matter what! Nice knowing you girls."
}
}



if scenetime=860
{
sprite_index=spr_allblackscreen x=0 y=0 image_xscale=3 image_yscale=2	

with oControl {//Agonizing climb later...
cutscenename="" cutsceneline= ""
//faceplant
}
}

if scenetime=920
{scenetime=1000 musicplaystart(msc_stageselect)
image_xscale=1 image_yscale=1 hspeed=-16

with actor5 {isDepth=0 depth=-2980 shadow=-1 image_xscale=1 image_yscale=1 sprite_index=spr_viva_snowclimb image_index=0 image_speed=0 hspeed=0 vspeed=0 x=0 y=0
	newscript=function() {
	if sprite_index=spr_viva_snowclimb {x-=0.2 x=clamp(x,-80,320)}
	if sprite_index=spr_viva_snowclimb2 {y+=0.2 y=clamp(y,-80,0)} ///x=0 y=-48
	if sprite_index=spr_viva_snowclimb3 {x+=0.2 x=clamp(x,-80,0)}
	if sprite_index=spr_viva_snowclimb4 {y-=0.2 y=clamp(y,-48,0)} ///x=0 y=0
	}
	}

with oControl {SceneX=0; __view_set( e__VW.XView, 0, SceneX )}

}

if scenetime=1200
{
flashend=instance_create_depth(0,0,-1,oCameoChar) with flashend
{specialcheck[0]=0.025 shadow=-1 image_alpha=0 sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {
image_alpha+=specialcheck[0]}}
}

if scenetime=1300
{
with actor5 {x=0 y=-48 sprite_index=spr_viva_snowclimb2}
with flashend {image_alpha=1 specialcheck[0]=-0.025}
}

if scenetime=1500
{
with flashend {image_alpha=0 specialcheck[0]=0.025}
}

if scenetime=1600
{
with actor5 {x=-80 y=0 sprite_index=spr_viva_snowclimb3}
with flashend {image_alpha=1 specialcheck[0]=-0.025}
}

if scenetime=1800
{
with flashend {image_alpha=0 specialcheck[0]=0.025}
}

if scenetime=1900
{
with actor5 {x=0 y=0 sprite_index=spr_viva_snowclimb4}
with flashend {image_alpha=1 specialcheck[0]=-0.025}
}

if scenetime=2100
{
with flashend {image_alpha=0 specialcheck[0]=0.025}
}

if scenetime=2200
{audio_stop_all(); PlaySound(snd_wind)
with actor5 {x=9990 y=0 sprite_index=mask_none}
with flashend {image_alpha=1 specialcheck[0]=-0.025}

with actor2 x=9999
with actor3 x=9999
with actor4 x=9999

layer_set_visible("BGTsnow2",1)
skybg=layer_background_get_id(layer_get_id("BGSKY"));
layer_background_sprite(skybg,background17)

with oControl {SceneX=160; __view_set( e__VW.XView, 0, SceneX )}

with actor1 {x=70 y=160 sprite_index=spr_viva_snowend image_index=0 hspeed=0
newscript=function()
{
if specialcheck[0]=0 {image_index+=0.25 if image_index>=2 image_index=0}
if specialcheck[0]=1 image_index=2
if specialcheck[0]=2 image_index=3
if specialcheck[0]=3 {image_index+=0.25 if image_index>=5 {PlaySound(snd_hitground) specialcheck[0]=4}}
if specialcheck[0]=4 image_index=5
}
}
}

if scenetime=clamp(scenetime,2200,2399)
{
with oControl {SceneX-=1; SceneX=clamp(SceneX,0,9999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=2400 scenetime=11120

if scenetime=11120
{
with actor1 specialcheck[0]=1	

with actor2 {image_xscale=-1 hspeed=-3 image_speed=0.4 sprite_index=spr_hina_move x=370}
with actor3 {image_xscale=-1 hspeed=-3 image_speed=0.4 sprite_index=spr_bahati_move x=380}
with actor4 {image_xscale=-1 hspeed=-3 image_speed=0.4 sprite_index=spr_sofia_move x=360}

with oControl {cutscenename="SOFIA" cutsceneline= "There you are! You should have let me finish!"
}
}

if scenetime=11160
{
with actor2 {hspeed=0 sprite_index=spr_hina_cutscene image_index=0 image_speed=0}
with actor3 {hspeed=0 sprite_index=spr_bahati_cutscene image_index=3 image_speed=0}
with actor4 {hspeed=0 sprite_index=spr_sofia_talk image_index=0 image_speed=0.25}
}

if scenetime=11320
{
with oControl {cutscenename="HINA" cutsceneline= "There was an elevator right by where you started climbing! Super cozy, too!"
}

with actor2 {hspeed=0 sprite_index=spr_hina_talk2 image_index=0 image_speed=0.25}
with actor4 {hspeed=0 image_index=0 image_speed=0}
}

if scenetime=11620
{
with actor3 {hspeed=0 sprite_index=spr_bahati_talk2 image_index=0 image_speed=0.25}
with actor2 {hspeed=0 image_index=0 image_speed=0}	

with oControl {cutscenename="BAHATI" cutsceneline= "You've been gone for five minutes!"}
}

if scenetime=11820
{
with actor1 specialcheck[0]=2

with actor3 {hspeed=0 image_index=0 image_speed=0}	

with oControl {cutscenename="VIVA" cutsceneline= "F-five... oh for the love of..."}
}

if scenetime=11920
{//PlaySound(snd_hitground)
with actor1 specialcheck[0]=3
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=12220
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagecave

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
//-Seahorses- 
cutscenename="SOFIA" cutsceneline= "That cave's looking quite sketchy... Perfect for thieves to scamper around in!"
}
x=0
y=0

with actor1 {image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}


newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,160)
{with oControl {SceneX+=8; SceneX=clamp(SceneX,0,720) __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=280
{scenetime=300
with actor1 {image_speed=0 image_index=0 sprite_index=spr_viva_cutscene; hspeed=0}
with actor2 {image_speed=0 image_index=1 sprite_index=spr_hina_cutscene; hspeed=0}
with actor3 {image_speed=0 image_index=1 sprite_index=spr_bahati_cutscene; hspeed=0}
with actor4 {image_speed=0 image_index=0 sprite_index=spr_sofia_talk3; hspeed=0}
}

if scenetime=320
{
with oControl {cutscenename="HINA" cutsceneline= "Looks super deep though... I wonder just how much."
}
}



if scenetime=580
{scenetime=880
with actor1 {shadow=-1;  image_speed=0.25 sprite_index=spr_viva_move; hspeed=2 image_index=16}
	
with oControl {//Riding
cutscenename="VIVA" cutsceneline= "Only one way to find out."
}
}

if scenetime=900
{scenetime=1200
	
with actor2 {image_index=0 sprite_index=spr_hina_wildtake; hspeed=0}
with actor3 {image_index=0 sprite_index=spr_bahati_wildtake; hspeed=0}
with actor4 {image_index=0 sprite_index=spr_sofia_wildtake; hspeed=0}
	
with actor1 {PlaySound(snd_hit) PlaySound(snd_viva9) spdZ=-4 image_speed=0 image_index=16 sprite_index=spr_viva_hit; hspeed=2
	

	
newscript=function()
	{if image_index<=18.5 image_index+=0.2
	spdZ+=0.25 z+=spdZ
	}
	
	}
with oControl
{
cutscenename="VIVA" cutsceneline= "OUUUUUUUUUUUT!!!!!"
}
}

if scenetime=1360
{
with oControl {cutscenename="" cutsceneline= ""
	quakeFXTime=10 PlaySound(snd_hitgroundheavy)
}
}

if scenetime=1660
{
with oControl {
cutscenename="VIVA" cutsceneline= "OW... my spine..." 
}
}

if scenetime=1800
{////They walk off
	
with actor3 {image_speed=0.25 sprite_index=spr_bahati_talk2; hspeed=0}
	
with oControl {cutscenename="BAHATI" cutsceneline= "Well, guess we better get down there and help her..." 
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}

///Splash

if scenetime=2080
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stageclouds

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="VIVA" cutsceneline= "Wait, is that a hot air balloon?"
}
sprite_index=mask_none
x=0
y=0

with actor1 {sprite_index=spr_viva_talk image_speed=0.25}	

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,160)
{with oControl {SceneX-=8; SceneX=clamp(SceneX,240,9999) __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=420
{
with actor1 {image_speed=0 image_index=0}
with actor3 {sprite_index=spr_bahati_talk image_speed=0.25}	

with oControl {cutscenename="BAHATI" cutsceneline= "Hey... This could make for a smoother trip AND give us a better view to spot those thieves!"

}
}



if scenetime=760
{
with actor3 {image_speed=0 image_index=0}
with actor4 {sprite_index=spr_sofia_talk image_speed=0.25}		

with oControl {cutscenename="SOFIA" cutsceneline= "Alright, Hina, your time to shine!"


}
}

if scenetime=960
{
with actor4 {image_speed=0 image_index=0}
with actor2 {sprite_index=spr_hina_opening image_speed=0.25}		

with oControl {cutscenename="HINA" cutsceneline= "Oooookay!"

	}
}

if scenetime=1100
{musicplaystart(msc_stageselect)
sprite_index=spr_allblackscreen x=0 y=0 image_xscale=1 image_yscale=1 x=0 y=0 hspeed=-16
with oControl {SceneX=0; __view_set( e__VW.XView, 0, SceneX )}
layer_set_visible("BTG1",0)
layer_set_visible("BTG0",0)
layer_hspeed("Backgrounds_1",-1)
with oCameoChar x=99999
with actor1 {sprite_index=spr_hotairballoon3 shadow=-1 x=-120 y=180 image_index=1 image_speed=0.2 hspeed=2}

PlaySound(snd_flamelong)
}

if scenetime=1300
{
x=320
}

if scenetime=1320
{scenetime=11060 layer_hspeed("Backgrounds_1",-0.5)

with actor1 {sprite_index=spr_hotairballoon4 shadow=-1 x=160 y=180 image_index=0 image_speed=0.2 hspeed=0}	

}

if scenetime=11060
{
with oControl {//Firebreath intensifies
cutscenename="SOFIA" cutsceneline= "Okay that's enough...!" 

}
}

if scenetime=11300
{
with oControl {cutscenename="VIVA" cutsceneline= "Slow down you airhead!!"

//How's this?
}
}

if scenetime=11500
{
with actor1 {sprite_index=spr_hotairballoon5 vspeed=-8} oControl.quakeFXTime=10	

PlaySound(snd_explosion)

with oControl {//Divas move
cutscenename="" cutsceneline=""}

}

if scenetime=11550
{
with oControl {//SMASH!
cutscenename="VIVA, BAHATI & SOFIA" cutsceneline= "HINAAAAAAAAAAA!!!" }
}

if scenetime=11700
{
oControl.stageEndFX=1
}
}
}
}





///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

arcade_saving(CutsceneStage)
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

if scenetime=160
{
with actor3 {image_index=0 image_speed=0}	
with actor1 {sprite_index=spr_viva_talk image_speed=0.25}

with oControl
{
cutscenename="VIVA" cutsceneline= "Fine by me... I'll climb it all on my own!"

}
}

if scenetime=320
{
with actor4 {sprite_index=spr_sofia_point image_index=3}
	
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with oControl
{
cutscenename="SOFIA" cutsceneline= "Wait a minute, you dumb blonde!"
}
}

//////
if scenetime=520
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Wait nothing, I'm getting my diamond back no matter what! Nice knowing you girls."
}
}



if scenetime=860
{
sprite_index=spr_allblackscreen x=0 y=0 image_xscale=2 image_yscale=2	

with oControl {//Agonizing climb later...
cutscenename="" cutsceneline= "..."
//faceplant
}
}

if scenetime=920
{
SceneX=0 __view_set( e__VW.XView, 0, SceneX )
image_xscale=1 image_yscale=1 hspeed=-16

with actor1 {sprite_index=spr_viva_snowclimb image_speed=0.25 vspeed=-1 x=160 y=192}

}

if scenetime=1120
{
x=320
}

if scenetime=clamp(scenetime,1120,1220) x=clamp(x,0,9999)

if scenetime=1220
{

}if scenetime=1520 {x=320 }

if scenetime=clamp(scenetime,1520,1720) x=clamp(x,0,9999)

if scenetime=1720
{

}if scenetime=2020 {x=320 }

if scenetime=clamp(scenetime,2020,2320) x=clamp(x,0,9999)

if scenetime=2320 {sprite_index=mask_none SceneX=320 __view_set( e__VW.XView, 0, SceneX )
 layer_set_visible("BGTsnow2",1)
}

if scenetime=clamp(scenetime,2320,9999)
{SceneX-=2 SceneX=clamp(SceneX,240,9999) __view_set( e__VW.XView, 0, SceneX )
}

if scenetime=2600 scenetime=11120

if scenetime=11120
{
with oControl {cutscenename="SOFIA" cutsceneline= "There you are! You should have let me finish!"
}
}

if scenetime=11320
{
with oControl {cutscenename="HINA" cutsceneline= "There was an elevator right by where you started climbing! Super cozy, too!"
}
}

if scenetime=11620
{
with oControl {cutscenename="BAHATI" cutsceneline= "You've been gone for five minutes!"}
}

if scenetime=11820
{
with oControl {cutscenename="VIVA" cutsceneline= "F-five... oh for the love of..."}
}

if scenetime=11920
{PlaySound(snd_hitground)
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

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,160)
{with oControl {SceneX+=8; SceneX=clamp(SceneX,0,480) __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=520
{
with oControl {cutscenename="HINA" cutsceneline= "Looks super deep though... Wonder just how much."
}
}

if scenetime=660
{
with oControl {//Riding
cutscenename="VIVA" cutsceneline= "Only one way to find-trips over rock and tumbles through cave-OUUUUUUUUUUUT!!!!!"
}
}

if scenetime=860
{
with oControl {cutscenename="" cutsceneline= "Big tumble!"
}
}

if scenetime=1060
{
with oControl {
cutscenename="VIVA" cutsceneline= "OW... my spine..." 
}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="BAHATI" cutsceneline= "Well, guess we better get down there and help her..." 
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}

///Splash

if scenetime=2620
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
{
sprite_index=spr_allblackscreen x=0 y=0 image_xscale=1 image_yscale=1 x=0 y=0 hspeed=-16
with oControl {SceneX=0; __view_set( e__VW.XView, 0, SceneX )}
layer_set_visible("BTG1",0)
layer_set_visible("BTG0",0)
layer_hspeed("Backgrounds_1",-1)
with oCameoChar x=99999
with actor1 {sprite_index=spr_hotairballoon shadow=-1 x=-120 y=180 image_index=1 image_speed=0 hspeed=2}
}

if scenetime=1300
{
x=320
}

if scenetime=1320
{scenetime=11060 layer_hspeed("Backgrounds_1",-0.5)

with actor1 {sprite_index=spr_hotairballoon2 shadow=-1 x=160 y=180 image_index=0 image_speed=0 hspeed=0}	

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
with actor1 {vspeed=-8} oControl.quakeFXTime=10	

with oControl {//Divas move
cutscenename="" cutsceneline=""}

}

if scenetime=11700
{
with oControl {//SMASH!
cutscenename="VIVA, BAHATI & SOFIA" cutsceneline= "HINAAAAAAAAAAA!!!" }
}

if scenetime=11900
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
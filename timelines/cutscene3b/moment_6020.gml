///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageswamp

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "This one leads to the swamp. There's a good neighbor of mine who treats undead well."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,0,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=120
{
with oControl
{
cutscenename="VIVA" cutsceneline= "The swamp? Great... Can't wait to trudge through muck..."
}
}

if scenetime=540
{
with oControl
{
cutscenename="HINA" cutsceneline= "Ohhhh, sounds gooey..."
}
}

if scenetime=720
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Now now, girls. No time to whine, might as well get it over with!"
}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline= "I say bring it on! I've run through my fair share of swamps, so follow me!"}
}

if scenetime=1360
{with oControl {cutscenename="VIVA" cutsceneline="What do you mean by that...?"}
}

if scenetime=1560
{
with oControl {cutscenename="SOFIA" cutsceneline="What? Never gone to mud fights before?"}
}

if scenetime=1760
{
with oControl {cutscenename="VIVA" cutsceneline="..."}
}

////
if scenetime=1820
{///Walk away
with oControl {cutscenename="VIVA" cutsceneline="Let's keep going."}

with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagecarnival

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "This leads to a carnival. I'd go myself but... Ducks give me the vapors..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,0,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=520
{
with oControl {cutscenename="SOFIA" cutsceneline= "Ducks? Really...?"}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline= "Carnival?! Ohhh I love a good carnival! Let's go let's GO!"}
}

if scenetime=860
{
with oControl {cutscenename="VIVA" cutsceneline= "It's like she completely forgot we were just beheaded..."}
}

if scenetime=1060
{
with oControl {cutscenename="BAHATI" cutsceneline= "Always looking ahead, that girl. Guess we best keep up!"}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="" cutsceneline="Divas walk"}

with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="Well, at least this can get me out of focusing on you. You weren't that scary anyways."}
}

if scenetime=1750
{
with actor5 hspeed=0.1
with oControl {cutscenename="ANNAMARI" cutsceneline="OH REALLY?"}
}

if scenetime=2000
{
	
layer_set_visible("TilesCarnival",1)	
layer_set_visible("BTG1",0)	
layer_set_visible("BTG2",0)	
layer_set_visible("BTG3",0)	

with actor1 {x=-96}
with actor2 {x=200 sprite_index=spr_hina_stand image_speed=0 hspeed=0}
with actor3 {x=200 sprite_index=spr_bahati_stand image_speed=0 hspeed=0}
with actor4 {x=200 sprite_index=spr_sofia_stand image_speed=0 hspeed=0}	
with actor5 y=-999
with oControl {cutscenename="BAHATI" cutsceneline="Hey where's Viva?"}
}

if scenetime=2300
{
with oControl {cutscenename="VIVA" cutsceneline="Okay girls let's go to the carnival."}
with actor1 {sprite_index=spr_viva_move image_speed=0.25/2 hspeed=1}
}

if scenetime=2450
{
with actor1 {sprite_index=spr_viva_stand image_speed=0 hspeed=0}
}

if scenetime=2600
{
with oControl {cutscenename="SOFIA" cutsceneline="...was she even that pale?"}
}


if scenetime=2920
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagebeach

with actorscreen
{scenetime=0;
with oControl {cutscenename="ANNAMARI" cutsceneline= "This one leads to a beach. A sea witch lives there. Maybe you can get her to help you?"
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=clamp(scenetime,0,1000)
{
with oControl {SceneX-=2; SceneX=clamp(SceneX,0,999999) __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=520
{
with oControl {cutscenename="SOFIA" cutsceneline= "A walk on the beach sounds good, actually. Lucky I have swimsuit underneath~"
}
}

if scenetime=860
{
with oControl {cutscenename="VIVA" cutsceneline= "We're not going there to swim! Come on, we got a witch to catch!"
}
}

if scenetime=1160
{
with oControl {cutscenename="HINA" cutsceneline= "Atleast we can enjoy the view on the way! The ocean's so pretty at night..."

	}
}

if scenetime=1460
{
with oControl {cutscenename="BAHATI" cutsceneline= "Stay sharp... If we're going at dark, there's bound to be some creeps waiting."}
}

if scenetime=1700
{
with actor1 {sprite_index=spr_viva_run image_speed=0.25 hspeed=4}
with actor2 {sprite_index=spr_hina_run image_speed=0.25 hspeed=4}
with actor3 {sprite_index=spr_bahati_run image_speed=0.25 hspeed=4}
with actor4 {sprite_index=spr_sofia_run image_speed=0.25 hspeed=4}	
	
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1800
{
with oControl {cutscenename="SOFIA" cutsceneline="Oh hold on. I haven't  brought a swimsuit. oh well."}

}

if scenetime=2150
{
with oControl {cutscenename="ANNAMARI" cutsceneline="Weirdos."}
}

if scenetime=2350
{
oControl.stageEndFX=1
}
}
}
}


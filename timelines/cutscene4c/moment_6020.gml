///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageufo

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="CIRCE" cutsceneline= "I see... Your destiny lies in a cornfield, where you will take to the stars..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "The cornfield? But that's such a long walk!"
}
}

if scenetime=340
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "It's our only lead Sofia. You don't want your treasure to be lost forever do you?"
}
}

if scenetime=520
{
with oControl
{
//Zombies grab the divas and chuck them out
cutscenename="VIVA" cutsceneline= "Ughhhhhh.... Fine, let's go..."
}
}

if scenetime=660
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}	

with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=1120
{
with oControl {cutscenename="CIRCE" cutsceneline= "Why am I having a real feeling I'm forgetting something..."}
}

if scenetime=1420
{
with oControl {cutscenename="CIRCE" cutsceneline= "Ah..."}
}

if scenetime=1720
{
with actor5 {sprite_index=spr_seaweed_move image_xscale=-1 hspeed=-1}
with oControl {cutscenename="CIRCE" cutsceneline="Well it's no longer my problem."}
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
CutsceneStage=rm_stagemermaid

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
//-Both are lying(Carnival)-
cutscenename="CIRCE" cutsceneline= "Hmmm... It seems you must meet with a prince beneath the ocean to get closer to your goal..."

}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="VIVA" cutsceneline= "'Prince'? Oh boy.... Well what do we do about getting there?"

}
}

if scenetime=660
{
with oControl {cutscenename="CIRCE" cutsceneline= "Drink this, and you'll find underwater travel to be a breeze."
}
}

if scenetime=860
{
with oControl {//Some dubious drinks later...
}
}

if scenetime=1060
{
with oControl {
cutscenename="VIVA" cutsceneline= "Hey, this is pretty good!"

}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="SOFIA" cutsceneline="Refreshing!"}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="CIRCE" cutsceneline= "I'm going to send you to the ocean with my magic, so off you go~ Have a safe trip!"}
}

if scenetime=2300
{
with actor1 x=9999
with actor2 x=9999
with actor3 x=9999
with actor4 x=9999

with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=2700
{
with oControl {cutscenename="CIRCE" cutsceneline= "Yes, yes. That beanpole reminded me of him. Such a tiny waist. Jeez."}
}

///Splash

if scenetime=5320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=3
{
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="CIRCE" cutsceneline= "Ahhh here we are... You must seek an ancient tomb in the desert... There you will find some assistance..."
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HINA" cutsceneline= "But how would we get there?"
}
}

if scenetime=660
{
with oControl {cutscenename="CIRCE" cutsceneline= "It's... right over there."

}
}

if scenetime=clamp(scenetime,700,900)
{SceneX+=1 __view_set( e__VW.XView, 0, SceneX )}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline="Was that ever been there?"


	}
}

if scenetime=1260
{
with oControl {cutscenename="CIRCE" cutsceneline="Follow that road and it will take you from the shores to the dunes!"
}
}

if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="Well that's piece of cake. Let's go girls!"}
}


if scenetime=1700
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}		

with oControl {//Divas move
cutscenename="" cutsceneline=""}

}

if scenetime=1900
{
with oControl {//SMASH!
cutscenename="CIRCE" cutsceneline="Yes. She is skinny, the poor thing."}
}


if scenetime=2220
{
oControl.stageEndFX=1
}
}
}
}

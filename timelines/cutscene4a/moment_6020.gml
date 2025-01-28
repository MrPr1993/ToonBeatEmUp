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
cutscenename="VIVA" cutsceneline= "Forget it, Her beak's obviously too tight for that info to be worth it. Where's the exit?"
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
cutscenename="DIXIE" cutsceneline= "Why I oughta.... Fine! Exit's through the cornfield, let the door hit yer rears on the way out!"
}
}

if scenetime=340
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
	

with oControl
{
cutscenename="HINA" cutsceneline=  "You mean 'Don't let it'?"
}
}

if scenetime=520
{
with oControl
{
cutscenename="VIVA" cutsceneline= "No, Hina. She means what she said."
}
}

if scenetime=660
{
with oControl
{
cutscenename="DIXIE" cutsceneline= "...."
}
}

if scenetime=860
{
with oControl
{
cutscenename="DIXIE" cutsceneline= "Heheheh... Those palookas got no clue people've been goin' missin' out there..."
}
}

if scenetime=1020
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
cutscenename="BAHATI" cutsceneline= "Alright alright, how about we make it up to you and help with the show? Think you could tell us then?"
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
cutscenename="DIXIE" cutsceneline= "Aw shucks, ya mean it?! That'd make this all better lickety split!"
}
}

if scenetime=340
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
	

with oControl
{
cutscenename="VIVA" cutsceneline= "Are you out of your mi-MMMMPH!"
}
}

if scenetime=520
{
with oControl
{
cutscenename="HINA" cutsceneline= "Shhhh, let's trust Bahati on this."
}
}

if scenetime=660
{
with oControl
{
cutscenename="DIXIE" cutsceneline= "And now for the grand finale... THESE DAMES ARE GOIN' ON A TRIP TO THE OCEAN! COURTESY OF THE DIXIE CANNON!"
}
}

if scenetime=860
{
with oControl
{
cutscenename="DIVAS" cutsceneline= "WHAT?!!?"
}
}

if scenetime=1060
{
with oControl
{

cutscenename="VIVA" cutsceneline= "I KNEW we shouldn't have helped that @#$% duck! But if we're going to the ocean... I know someone we can pay a visit..."

}
}

if scenetime=1320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="" cutsceneline= "SLAP!"
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=340
{

with oControl
{
cutscenename="DIXIE" cutsceneline= "...Yer despicable... Fine, I had to take over my boss's job here cuz he ran off on a treasure hunt, think it was somewhere in the sahara desert."

}
}

if scenetime=520
{
with oControl
{
cutscenename="VIVA" cutsceneline= "The desert! Let's get moving, ladies!"
}
}

if scenetime=660
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "Already on it! TAXIIIIII!"
}
}

if scenetime=860
{
with oControl
{
cutscenename="" cutsceneline= ""
}
}

if scenetime=1020
{
oControl.stageEndFX=1
}
}
}
}


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
//-Red Oni is lying(Swamp)-
cutscenename="VIVA" cutsceneline=  "Obviously the red one is lying! I mean horn waxing? Really?"
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
cutscenename="BAHATI" cutsceneline=  "We don't know how they live their lives, Viva..."
}
}

if scenetime=340
{
with oControl
{
cutscenename="FUKUKIJO" cutsceneline=  "Ha! So that's your answer, huh? Alright then... Look over there."
}
}

if scenetime=520
{
with oControl
{
cutscenename="BAHATI" cutsceneline=  "Is that... A swamp?"
}
}

if scenetime=660
{sprite_index=spr_redsmack
with oControl {quakeFXTime=20 cutscenename="" cutsceneline= "SMASH!"}
}

if scenetime=1060
{with oControl {//SMASH!
cutscenename="FUKUKIJO" cutsceneline=  "Oh yeah, our ninjas were hired to hunt you down, so don't think you've seen the last of them!"}
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
//-Both are lying(Carnival)-
cutscenename="VIVA" cutsceneline= "This is a waste of time... Let's just get out of here."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="SOFIA" cutsceneline="Yeah, clearly they're both messing with us!"}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline= "Oh look, everyone, the carnival's up nearby!"}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline= "Uhh, girls...?"}
}

if scenetime=1060
{
with oControl {cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "Hmph! TOUGH LUCK!"}
}

if scenetime=1300
{////They walk off
	sprite_index=spr_bothsmack
with oControl {quakeFXTime=20 cutscenename="" cutsceneline="BIG SMASH!"}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="BAHATI" cutsceneline=  "YOU SHOULD HAVE PLAYED ALONG!!!"}
}

if scenetime=2300
{
with oControl {cutscenename="FUKUKIJO" cutsceneline="That's quite a shame, sister."}
}


if scenetime=2600
{
with oControl {cutscenename="SHOKIJO" cutsceneline="Yes. Now they'll have to face our employees on the way there."}
}


if scenetime=2920
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=3
{
CutsceneStage=rm_stagebeach

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="HINA" cutsceneline= "Blue! Blue is the liar!"
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="SOFIA" cutsceneline="Huh?! What makes you so sure?"
}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline= "We have a story about this! The blue oni puts on an evil facade so their sibling can be a hero!"
}
}

if scenetime=860
{
with oControl {cutscenename="SHOKIJO" cutsceneline="Hmm... So that is your answer? Very well... Look this way."


	}
}

if scenetime=1060
{
with oControl {cutscenename="HINA" cutsceneline= "Oh, the beach looks pretty tonight!"
}
}

if scenetime=1300
{sprite_index=spr_bluesmack
with oControl {quakeFXTime=20 cutscenename="" cutsceneline="SMASH!!!"}
}

if scenetime=1500
{
with oControl {//SMASH!
cutscenename="SHOKIJO" cutsceneline="Be aware! Our ninjas have been hired to hunt you, so watch your steps!"}

}


if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}

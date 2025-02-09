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

sprite_index=mask_none
with oControl
{
//-Red Oni is lying(Swamp)-
//-I wish to be somewhere cooler-
cutscenename="HINA" cutsceneline= "The heat here's been murder on us..."
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
//One clam ride later
cutscenename="HAIFA" cutsceneline= "Very well, your wish is granted!"

}
}

if scenetime=340
{
with oControl
{
//POOF
cutscenename="VIVA" cutsceneline= "S-S-Seriously?! You couldn't heve been m-m-more specific?!"
}
}

//////
if scenetime=520
{
with oControl
{
cutscenename="HINA" cutsceneline= "Sorry!! I-I-It was so hot my head was swimming!"
}
}

if scenetime=660
{
with oControl {cutscenename="BAHATI" cutsceneline= "Nothing for it... We'll just have to climb our way down..." }
}

if scenetime=1120 ///Seeing minions walking to palace
{
with oControl {cutscenename="VIVA" cutsceneline= "Or you should mean up..."}
}


if scenetime=1320
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
cutscenename="BAHATI" cutsceneline= "I wish we could be on land..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HAIFA" cutsceneline= "So be it..."

}
}

if scenetime=660
{
with oControl {//Riding
//POOF
cutscenename="VIVA" cutsceneline= "Phew... Fresh air..."

}
}

if scenetime=860
{
with oControl {cutscenename="VIVA" cutsceneline= "You should have said STABLE LAND!!!"
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
if cutsceneDecmode=3
{
CutsceneStage=rm_stageclouds

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="VIVA" cutsceneline= "We wish to reach our goal on greater heights!"
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HAIFA" cutsceneline= "Ah, that should be simple!"

}
}

if scenetime=660
{
with oControl {cutscenename="VIVA" cutsceneline= "Wait, what're you-"


}
}

if scenetime=860
{
with oControl {//Viva gets shot through the ceiling
//Hina, Bahati and


	}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline= "Oh that's not good."
//They get shot through the same spot as Viva"
}
}

if scenetime=1300
{
with oControl {cutscenename="" cutsceneline=""}
}


if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="STUPID WISH SPECIFICATIONS!"}
}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}


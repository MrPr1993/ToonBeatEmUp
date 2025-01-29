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
//-Snow-
cutscenename="BAHATI" cutsceneline= "Looks like a long way up that mountain..."
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
cutscenename="VIVA" cutsceneline= "Fine by me... I'll climb it all on my own!"

}
}

if scenetime=340
{
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

if scenetime=660
{
with oControl {//Agonizing climb later...
cutscenename="VIVA" cutsceneline= "..."
//faceplant
}
}

if scenetime=1120
{
with oControl {cutscenename="SOFIA" cutsceneline= "There you are! You should have let me finish!"
}
}

if scenetime=1320
{
with oControl {cutscenename="HINA" cutsceneline= "There was an elevator right by where you started climbing! Super cozy, too!"
}
}

if scenetime=1520
{
with oControl {cutscenename="BAHATI" cutsceneline= "You've been gone for five minutes!"}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline= "F-five... oh for the love of..."}
}

if scenetime=1920
{
with oControl {cutscenename="" cutsceneline= "THUD"}
}

if scenetime=2220
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
if cutsceneDecmode=3
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

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="BAHATI" cutsceneline= "Hey... This could make for a smoother trip AND give us a better view to spot those thieves!"

}
}

if scenetime=660
{
with oControl {cutscenename="SOFIA" cutsceneline= "Alright, Hina, your time to shine!"


}
}

if scenetime=860
{
with oControl {cutscenename="HINA" cutsceneline= "Oooookay!"

	}
}

if scenetime=1060
{
with oControl {//Firebreath intensifies
cutscenename="SOFIA" cutsceneline= "Okay that's enough...!" 

}
}

if scenetime=1300
{
with oControl {cutscenename="VIVA" cutsceneline= "Slow down you airhead!!"

//How's this?
}
}

if scenetime=1500
{
with oControl {//Divas move
cutscenename="" cutsceneline="FOOOOOSH"}

}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="VIVA, BAHATI & SOFIA" cutsceneline= "HINAAAAAAAAAAA!!!" }
}

if scenetime=2020
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
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stagesnow
with oControl {






}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="YOU DONT' HAVE TO TELL ME TWICE! JUMP!"}
}

////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}
//////
if cutsceneDecmode=1
{CutsceneStage=rm_stagecave

with oControl {
//-Caves-

//Flash Trickstar — 09/08/2024 8:45 PM

	}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I GOT IT!"}
}
////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stageclouds
with oControl {
//-Clouds-


}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="HEY! WAKE UP!"}
}
////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}

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
cutscenename="PRINCE" cutsceneline= "In here! Bevalve will give you a lift to the surface!"
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
cutscenename="SOFIA" cutsceneline= "Eugh that clam made us all smelly..."
}
}

if scenetime=340
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Thank you, cousin. Alright girls let's go!"
}
}

//////
if scenetime=520
{
with oControl
{
//Zombies grab the divas and chuck them out
cutscenename="" cutsceneline= "Clam swims up"
}
}

if scenetime=660
{
with oControl {cutscenename="" cutsceneline= "Clam opens up and the divas come out slimy"}
}

if scenetime=1120
{
with oControl {cutscenename="BAHATI" cutsceneline= "BLECHHHHHH!!!!!"}
}

if scenetime=1320
{
with oControl {cutscenename="HINA" cutsceneline= "I feel all slimey too..."}
}

if scenetime=1520
{
with oControl {cutscenename="SOFIA" cutsceneline= "Well this wasn't something I'm meant to get sooner..."}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline= "Prince... another reason I don't visit..."}
}

if scenetime=1920
{
with oControl {cutscenename="HINA" cutsceneline= "Woah is just me or is it cold here?"}
}

if scenetime=2120
{
with oControl {cutscenename="VIVA" cutsceneline= "Well, Hina, it's because that's why."}
}

if scenetime=2520
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
cutscenename="PRINCE" cutsceneline= "Take our seahorses! They'll get you to your destination in a blink!"
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="" cutsceneline= "Seahorse sequence"

}
}

if scenetime=660
{
with oControl {//Riding
cutscenename="SOFIA" cutsceneline= "Can't they go any faster?!"
}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline= "We'll never catch that blimp at this rate!"
}
}

if scenetime=1060
{
with oControl {
cutscenename="HINA" cutsceneline= "Wait... I think they're speeding up!"

}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="VIVA" cutsceneline= "Woah woah WOAH! NOT THAT MUCH!!!"
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="" cutsceneline= "SPLASH"}
}

if scenetime=2300
{
with oControl {cutscenename="VIVA" cutsceneline="...Not one word... Just... Go..."}
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
cutscenename="PRINCE" cutsceneline= "Water will rocket out of this spout! Ride it and you should be able to catch those miscreants!"
}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="DAVEY" cutsceneline= "Your highness!"
}
}

if scenetime=660
{
with oControl {cutscenename="PRINCE" cutsceneline= "Hmm?"

}
}

if scenetime=860
{
with oControl {cutscenename="DAVEY" cutsceneline= "The trajectory of the spout is way off!"

	}
}

if scenetime=1060
{
with oControl {cutscenename="DIVAS" cutsceneline= "WHAT?!"
}
}

if scenetime=1300
{
with oControl {cutscenename="VIVA" cutsceneline="PRINCE YOU STUPID FU-"}
}

if scenetime=1500
{
with oControl {//Divas move
cutscenename="" cutsceneline="FOOOOOSH"}

}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="..."}
}

if scenetime=1800
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="I'm pretty sure they'll be fine."}
}

if scenetime=1800
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="Hoo boy..."}
}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}



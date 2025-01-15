


//
///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageufo
with oControl {


//-The Stars-
cutscenename="CIRCE" cutsceneline= "I see... Your destiny lies in a cornfield, where you will take to the stars..."
cutscenename="SOFIA" cutsceneline= "The cornfield? But that's such a long walk!"
cutscenename="BAHATI" cutsceneline= "It's our only lead Sofi. You don't want your treasure to be lost forever do you?"
cutscenename="SOFIA" cutsceneline= "Ughhhhhh.... Fine, let's go..."
//Flash Trickstar — 09/07/2024 10:44 PM


//The "PBBBBBBBBTH" is meant to imply her blowing a raspberry at them if that wasn't clear.

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
{CutsceneStage=rm_stagemermaid
with oControl {
//-The Crown-
cutscenename="CIRCE" cutsceneline= "Hmmm... It seems you must meet with a prince beneath the ocean to get closer to your goal..."
cutscenename="VIVA" cutsceneline= "'Prince'? Oh boy.... Well what do we do about getting there?"
cutscenename="CIRCE" cutsceneline= "Drink this, and you'll find underwater travel to be a breeze."
//Some dubious drinks later...
cutscenename="VIVA" cutsceneline= "Hey, this is pretty good!"
cutscenename="SOFIA" cutsceneline= "Speak for yourself..."
cutscenename="HINA" cutsceneline= "Bleghhhhhh..."

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
{CutsceneStage=rm_stagedesert
with oControl {
//-Slap Her-
//POW
//-The Pyramid-
cutscenename="CIRCE" cutsceneline= "Ahhh here we are... You must seek an ancient tomb in the desert... There you will find some assistance..."
cutscenename="HINA" cutsceneline= "But how would we get there?"
cutscenename="CIRCE" cutsceneline= "Follow this line of sandstone... It will take you from the shores to the dunes!"


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


///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageufo
with oControl {


//-Cornfields-
cutscenename="KIANDRA" cutsceneline= "Well it seems like there's some commotion going on around this cornfield."
cutscenename="SOFIA" cutsceneline= "That's quite a walk..."
cutscenename="KIANDRA" cutsceneline= "Well, that's not my problem! Now..."
//Zombies grab the divas and chuck them out
cutscenename="KIANDRA" cutsceneline= "GET LOST!!!"


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
//-Underwater-
cutscenename="KIANDRA" cutsceneline= "Supposedly a prince lives in the nearby waters... But you'll need this potion to tread the seafloor..."
cutscenename="VIVA" cutsceneline= "Ohh don't mind if I do!"
cutscenename="SOFIA" cutsceneline= "Are your tastebuds warped or something?!"
cutscenename="HINA" cutsceneline= "It smells awful..."
//Flash Trickstar — 09/07/2024 11:16 PM

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
//-The Desert-
cutscenename="KIANDRA" cutsceneline= "Looks like your path leads into the desert..."
cutscenename="BAHATI" cutsceneline= "Alright but... Where exactly?"
cutscenename="KIANDRA" cutsceneline= "I don't know, find out yourself! In fact... Just to get you out of here faster..."
//POOF!
//How's that?

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

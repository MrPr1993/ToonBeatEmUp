///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stagesnow
with oControl {


//-Snow-
cutscenename="BAHATI" cutsceneline= "Looks like a long way up that mountain..."
cutscenename="VIVA" cutsceneline= "Fine by me... I'll climb it all on my own!!"
cutscenename="SOFIA" cutsceneline= "Wait a minute, you dumb blonde!"
cutscenename="VIVA" cutsceneline= "Wait nothing, I'm getting my diamond back!"
//Agonizing climb later...
cutscenename="VIVA" cutsceneline= "Finally.... Made it.... Huh?!"
cutscenename="SOFIA" cutsceneline= "There you are! You should have let me finish!"
cutscenename="HINA" cutsceneline= "There was an elevator right by where you started climbing! Super cozy, too!"
cutscenename="VIVA" cutsceneline= "An... Elevator....?"
//faceplant



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
cutscenename="SOFIA" cutsceneline= "That cave's looking quite sketchy... Perfect for thieves to scamper around in!"
cutscenename="HINA" cutsceneline= "Looks super deep though... Wonder just how much."
cutscenename="VIVA" cutsceneline= "Only one way to find-trips over rock and tumbles through cave-OUUUUUUUUUUUT!!!!!"
cutscenename="BAHATI" cutsceneline= "Well, guess we better get down there and help her..." 
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
cutscenename="VIVA" cutsceneline= "Wait, is that a hot air balloon?"
cutscenename="BAHATI" cutsceneline= "Hey... This could make for a smoother trip AND give us a better view to spot those thieves!"
cutscenename="SOFIA" cutsceneline= "Alright, Hina, your time to shine!"
cutscenename="HINA" cutsceneline= "Oooookay!"
//Firebreath intensifies
cutscenename="SOFIA" cutsceneline= "Okay that's enough...!" 
cutscenename="VIVA" cutsceneline= "Slow down you airhead!!"
cutscenename="VIVA, BAHATI & SOFIA" cutsceneline= "HINAAAAAAAAAAA!!!" 
//How's this?

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

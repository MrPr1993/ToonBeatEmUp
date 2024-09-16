///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageswamp
with oControl {


//-Swamp-
cutscenename="HATHOR" cutsceneline=  "We recall sharing a bond with a mystic in the swamps... We can sense their presence still there. Quickly! We will teleport you there now!"
cutscenename="SWAMP" cutsceneline=  "A swamp?! Are you kidding m-"
//Teleported


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
{CutsceneStage=rm_stagecarnival
with oControl {
//-Carnival-
cutscenename="VIVA" cutsceneline=  "Come on, Hina, we don't have time to listen to this fossil, besides, I see them running off toward a carnival."
cutscenename="HATHOR" cutsceneline=  "Fossil?! HOW DARE YOU!!"
cutscenename="HINA" cutsceneline=  "Carnival~? Ohh, I wonder if they have any fun games there?"
cutscenename="HATHOR" cutsceneline=  "HEY WAIT!! COME BACK HERE AND LISTEN TO-... What is that strange giant wheel?"

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
{CutsceneStage=rm_stagebeach
with oControl {
//-Beach-
cutscenename="HATHOR" cutsceneline=  "We befriended someone quite powerful in the odyssey days. We can teleport you to her domain with ease."
cutscenename="BAHATI" cutsceneline= "Is that so? Could be helpful."
cutscenename="SOFIA" cutsceneline= "Well what are we waiting for? Teleport away!"
cutscenename="HATHOR" cutsceneline= "Very well. We wish you luck and will await your return..."
//Teleported


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

///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stagesnow
with oControl {

//-I wish to be somewhere cooler-
cutscenename="SOFIA" cutsceneline= "The heat here's been murder on us..."
cutscenename="HAIFA" cutsceneline= "Very well, your wish is granted!"
//POOF
cutscenename="VIVA" cutsceneline= "S-S-Seriously?! You couldn't heve been m-m-more specific?!"
cutscenename="SOFIA" cutsceneline= "Sorry!! I-I-It was so hot my head was swimming!"
cutscenename="BAHATI" cutsceneline= "Nothing for it... We'll just have to climb our way down..." 




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
//
cutscenename="HAIFA" cutsceneline= "So be it..."
//POOF
cutscenename="VIVA" cutsceneline= "Phew... Fresh air..."
//The ledge they're on crumbles as they tumble into the caves.
cutscenename="SOFIA" cutsceneline= "You should have said STABLE LAND!!!"


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
//-I wish to get up out of here-
cutscenename="HAIFA" cutsceneline= "Ah, that should be simple!"
cutscenename="VIVA" cutsceneline= "Wait, what're you-"
//Viva gets shot through the ceiling
//Hina, Bahati and cutscenename="SOFIA" cutsceneline= "Uh oh..."
//They get shot through the same spot as Viva

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

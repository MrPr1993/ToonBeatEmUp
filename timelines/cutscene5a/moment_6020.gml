///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stagesnow
with oControl {


//-Clam-
cutscenename="PRINCE" cutsceneline= "In here! Bevalve will give you a lift to the surface!"
//One clam ride later
cutscenename="SOFIA" cutsceneline= "Eugh that clam made us all smelly..."
cutscenename="HINA" cutsceneline= "I feel all slimey too..."
cutscenename="VIVA" cutsceneline= "Yeah that's another reason I don't visit... Now let's get a move on!"


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
//-Seahorses- 
cutscenename="PRINCE" cutsceneline= "Take our seahorses! They'll get you to your destination in a blink!"
//Riding
cutscenename="SOFIA" cutsceneline= "Can't they go any faster?!"
cutscenename="BAHATI" cutsceneline= "We'll never catch that blimp at this rate!"
cutscenename="HINA" cutsceneline= "Wait... I think they're speeding up!"
cutscenename="VIVA" cutsceneline= "Woah woah WOAH! NOT THAT MUCH!!!"
//Nyoom and splash onto cave entrance
cutscenename="VIVA" cutsceneline= "...Not one word... Just... Go..."
//Flash Trickstar — 09/08/2024 11:40 PM


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
//-Spout-
cutscenename="PRINCE" cutsceneline= "Water will rocket out of this spout! Ride it and you should be able to catch those miscreants!"
cutscenename="DAVEY" cutsceneline= "Your highness!"
cutscenename="PRINCE" cutsceneline= "Hmm?"
cutscenename="DAVEY" cutsceneline= "The trajectory of the spout is way off!"
cutscenename="DIVAS" cutsceneline= "WHAT?!"
//FOOSH
cutscenename="PRINCE" cutsceneline= "....Oh dear...."

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

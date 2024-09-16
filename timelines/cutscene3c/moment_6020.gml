///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageswamp
with oControl {


//-Red Oni is lying(Swamp)-
cutscenename="VIVA" cutsceneline=  "Obviously the red one is lying! I mean horn waxing? Really?"
cutscenename="BAHATI" cutsceneline=  "We don't know how they live their lives, Viva..."
cutscenename="FUKUKIJO" cutsceneline=  "Ha! So that's your answer, huh? Alright then... Look over there."
cutscenename="BAHATI" cutsceneline=  "Is that... A swamp?"
//SMASH!
cutscenename="FUKUKIJO" cutsceneline=  "Oh yeah, our ninjas were hired to hunt you down, so don't think you've seen the last of them!"


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
//-Both are lying(Carnival)-
cutscenename="VIVA" cutsceneline= "This is a waste of time... Let's just get out of here."
cutscenename="SOFIA" cutsceneline="Yeah, clearly they're both messing with us!"
cutscenename="HINA" cutsceneline= "Oh look, everyone, the carnival's up nearby!"
cutscenename="BAHATI" cutsceneline= "Uhh, girls...?"
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "Hmph! TOUGH LUCK!"
//KERSMASH!
cutscenename="BAHATI" cutsceneline=  "YOU SHOULD HAVE PLAYED ALONG!!!"

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
//-Blue Oni is lying(Beach)-
cutscenename="HINA" cutsceneline= "Blue! Blue is the liar!"
cutscenename="SOFIA" cutsceneline="Huh?! What makes you so sure?"
cutscenename="HINA" cutsceneline= "We have a story about this! The blue oni puts on an evil facade so their sibling can be a hero!"
cutscenename="SHOKIJO" cutsceneline="Hmm... So that is your answer? Very well... Look this way."
cutscenename="HINA" cutsceneline= "Oh, the beach looks pretty tonight!"
//SMASH!
cutscenename="SHOKIJO" cutsceneline="Be aware! Our ninjas have been hired to hunt you, so watch your steps!"

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

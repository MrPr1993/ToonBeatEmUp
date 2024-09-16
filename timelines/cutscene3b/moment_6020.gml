///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageswamp
with oControl {


//Choice 1
cutscenename="ANNAMARI" cutsceneline= "I have a friend in the swamp, she prefers to be alone but she doesn't mind my zombies visiting. I'm sure she can tell you!"
cutscenename="VIVA" cutsceneline= "The swamp? Great... Can't wait to trudge through muck..."
cutscenename="HINA" cutsceneline= "Ohhhh, sounds gooey..."
cutscenename="BAHATI" cutsceneline= "Now now, girls. No time to whine, might as well get it over with!"
cutscenename="SOFIA" cutsceneline= "I say bring it on! I've run through my fair share of swamps, so follow me!" 


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
//Choice 2
cutscenename="ANNAMARI" cutsceneline= "The thieves may have wandered to the nearby carnival. I'd go myself but... Ducks give me the vapors..."
cutscenename="SOFIA" cutsceneline= "Ducks? Really...?"
cutscenename="HINA" cutsceneline= "Carnival?! Ohhh I love a good carnival! Let's go let's GO!"
cutscenename="VIVA" cutsceneline= "It's like she completely forgot we were just beheaded..."
cutscenename="BAHATI" cutsceneline= "Always looking ahead, that girl. Guess we best keep up!" 
	
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
//Choice 3
cutscenename="ANNAMARI" cutsceneline= "There's a sea witch who lurks around the beach at night. Maybe you can get her to help you?"
cutscenename="VIVA" cutsceneline= "A walk on the beach sounds good, actually. Just wish I brought my swimsuit..."
cutscenename="SOFIA" cutsceneline= "We're not going there to swim, chica! Come on, we got a witch to catch!"
cutscenename="HINA" cutsceneline= "Atleast we can enjoy the view on the way! The ocean's so pretty at night..."
cutscenename="BAHATI" cutsceneline= "Stay sharp... If we're going at dark, there's bound to be some creeps waiting."
	


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

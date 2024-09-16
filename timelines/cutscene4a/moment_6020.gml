///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0
///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stageufo
with oControl {


//-Leave-
cutscenename="SOFIA" cutsceneline= "Forget it chicas, her beak's obviously too tight for that info to be worth it. Where's the exit?"
cutscenename="DIXIE" cutsceneline= "Why I oughta.... Fine! Exit's through the cornfield, let the door hit yer rears on the way out!"
cutscenename="HINA" cutsceneline=  "You mean 'Don't let it'?"
cutscenename="VIVA" cutsceneline= "No, Hina. She means what she said."
//The divas walk out
cutscenename="DIXIE" cutsceneline= "Heheheh... Those palookas got no clue people've been goin' missin' out there..."


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
//-Help out-
cutscenename="BAHATI" cutsceneline= "Alright alright, how about we make it up to you and help with the show? Think you could tell us then?"
cutscenename="DIXIE" cutsceneline= "Aw shucks, ya mean it?! That'd make this all better lickety split!"
cutscenename="VIVA" cutsceneline= "Are you out of your mi-MMMMPH!"
cutscenename="HINA" cutsceneline= "Shhhh, let's trust Bahati on this."
//Some carnival work later
cutscenename="DIXIE" cutsceneline= "And now for the grand finale... THESE DAMES ARE GOIN' ON A TRIP TO THE OCEAN! COURTESY OF THE DIXIE CANNON!"
cutscenename="DIVAS" cutsceneline= "WHAT?!!?"
//KABOOM
cutscenename="VIVA" cutsceneline= "I KNEW we shouldn't have helped that @#$% duck! But if we're going to the ocean... I know someone we can pay a visit..."

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
cutscenename="DIXIE" cutsceneline= "...Yer despicable... Fine, I had to take over my boss's job here cuz he ran off on a treasure hunt, think it was somewhere in the sahara desert."
cutscenename="VIVA" cutsceneline= "The desert! Let's get moving, ladies!"
cutscenename="SOFIA" cutsceneline= "Already on it! TAXIIIIII!"


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

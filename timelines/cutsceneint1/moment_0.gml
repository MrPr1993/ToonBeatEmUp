//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""
}

actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
oCameoChar.x+=160;

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;

if scenetime=60
{
with oControl
{PlaySound(snd_explosion) quakeFXTime=10
}
}

if scenetime=120
{
with oControl
{cutscenename="VIVA"
cutsceneline="THE PLANE'S GOING DOWN!"
}
}

//-Intermission 1-
cutscenename="MR.BURG" cutsceneline= "Boss! BOSS! There's 4 crazy dames followin' and beatin' on us!"
cutscenename="VAN BAD" cutsceneline= "Ehhh? Oh don't get your mask in a twist over a few angry women. Now leave me to my treasures!"
cutscenename="MR.BURG" cutsceneline= "Yes, boss..."
cutscenename="VAN BAD" cutsceneline= "Hmmm... Dr. Fran!"
cutscenename="DR.FRAN" cutsceneline= "Y-Yes, Mr. Van Bad?"
cutscenename="VAN BAD" cutsceneline= "Be a dear and... Analyze our four pursuers, would you...?"
cutscenename="DR.FRAN" cutsceneline= "R-Right away, Mr. Van Bad! I'll have results for you ASAP!"
cutscenename="VAN BAD" cutsceneline= "Hmhmhmhm... Soon enough I'm going to turn the world on it's head..."
//-Intermission 2-
cutscenename="MR.BURG" cutsceneline= "BOOOOOOSS!!! Those raging lounge singers are gainin' on us and REALLY putting the hurt on the gang! We gotta do somethin' before they catch us!"
cutscenename="VAN BAD" cutsceneline= "Grr... Pull out all the stops, spare no expense, do whatever it takes to STOP THEM!"
cutscenename="MR.BURG" cutsceneline= "Yes, boss!"
cutscenename="VAN BAD" cutsceneline= "DR. FRAN!"
cutscenename="DR.FRAN" cutsceneline= "EEP! Y-Yes, Mr. Van Bad...?"
cutscenename="VAN BAD" cutsceneline= "Are the treasures ready for 'IT', yet?!"
cutscenename="DR.FRAN" cutsceneline= "N-Not yet, Mr. Van Bad! B-But they will be soon!"
cutscenename="VAN BAD" cutsceneline= "Well HURRY IT UP! We're running out of time!!"
cutscenename="DR.FRAN" cutsceneline= "Y-YES MR. VAN BAD!!!"
cutscenename="VAN BAD" cutsceneline= "Bothersome little divas... You're about to find out what happens to those who cross Van Bad..."



if scenetime=760
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,760,799) scenetime=764

}





//////	


}
}

	
timeline_position=10
timeline_speed=0

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=761

global.CutsceneSkip=0

timeline_position=5700
timeline_speed=1

canSkipCutscene=0

cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"
	}




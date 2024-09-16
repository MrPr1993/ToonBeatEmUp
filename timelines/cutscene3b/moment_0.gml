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

cutscenename="VIVA" cutsceneline="Huh?! Where'd that haughty ghost get off to?"
cutscenename="BAHATI" cutsceneline= "She was just here a second ago!"
cutscenename="HINA" cutsceneline= "Umm... Girls...?"
cutscenename="SOFIA" cutsceneline= "Not now Hina, can't you see we're trying to catch that specter?"
cutscenename="ANNAMARI" cutsceneline= "Fufufu... You..."
//CHOP
cutscenename="ANNAMARI" cutsceneline= "FOOOOOLS!!!"
cutscenename="DIVAS" cutsceneline= "AAAAAAAAHHHH!!!!!"
cutscenename="ANNAMARI" cutsceneline= "OOOOHOHOHOHO! Serves you lot right for thinking you could put a damper on my joyous haunting! The living cannot harm the dead!"
cutscenename="ANNAMARI" cutsceneline= "OHOHOH-oh...?"
cutscenename="SOFIA" cutsceneline= "The living huh...?"
cutscenename="BAHATI" cutsceneline= "Well we're not living right now..."
cutscenename="ANNAMARI" cutsceneline= "...Oh dear..."
//Beatdown ensues.
cutscenename="ANNAMARI" cutsceneline= "WAIT WAIT WAIT!!! I GIVE! I'm sorry! I only haunted this place so to vent my frustrations after some FILTHY thieves rushed in and stole my family heirloom!"
cutscenename="BAHATI" cutsceneline= "Your family heirloom...?"
cutscenename="HINA" cutsceneline= "Just like us...."
cutscenename="VIVA" cutsceneline= "Hmm... Let's make a deal since we're in the same situation... You revive us, and we'll get back your heirloom along with ours!"
cutscenename="ANNAMARI" cutsceneline= "Y-You will?! You promise?!"
cutscenename="SOFIA" cutsceneline= "Of course! Just tell us where you last saw those punks run off to!"
cutscenename="ANNAMARI" cutsceneline= "Well...."
//choices appear

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




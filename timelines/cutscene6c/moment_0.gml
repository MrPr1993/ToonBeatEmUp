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

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=128
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

if scenetime=200
{
with oControl
{cutscenename="BAHATI"
cutsceneline="OH NO! WHAT DO WE DO?!"
}
}

if scenetime=280
{
with oControl
{cutscenename="HINA"
cutsceneline="WOW. IT'S A LONG WAY DOWN..."
}
}

if scenetime=360
{
with oControl
{cutscenename="SOFIA"
cutsceneline="LOOK THERE, CHICAS!!"
}
}

if scenetime=480
{
with oControl
{
}

actor6=instance_create_depth(80,130,-1,oCameoChar) with actor6
{sprite_index=spr_hwolf_stand anim=9999 image_xscale=-1}
}

if scenetime=580
{
with actor6 {shadow=-1; PlaySound(snd_jump) spdZ=-4 newscript=function()
{
z+=spdZ;

spdZ+=0.45

hspeed=-0.2 vspeed=0.2

}}

}



if scenetime=clamp(scenetime,500,639)
with oControl {if SceneX>0 SceneX-=4 else SceneX=0}

if scenetime=640
{
with oControl
{
SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=128
__view_set( e__VW.XView, 0, SceneY )

cutscenename="SOFIA"
cutsceneline="DAMN IT! SHE'S GETTING AWAY AGAIN!"
}
}

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

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=128
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




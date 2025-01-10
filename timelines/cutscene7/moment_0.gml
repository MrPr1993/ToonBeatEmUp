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



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000 shadow=-1;



newscript=function()
{scenetime+=1;

var tilecheck=layer_get_id("BTG1")
layer_x(tilecheck,round(-scenetime*0.1))

if scenetime=1
{
var tilecheck=layer_get_id("BTG0")
layer_hspeed(tilecheck,-2)

actor1=instance_create_depth(-340,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_run image_speed=0.25 image_index=0 anim=9999 hspeed=2}
actor2=instance_create_depth(-340,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_run image_speed=0.25  image_index=0 anim=9999 hspeed=2}
actor3=instance_create_depth(-340,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_run image_speed=0.25  image_index=1 anim=9999 hspeed=2}
actor4=instance_create_depth(-340,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_run image_speed=0.25  image_index=0 anim=9999 hspeed=2}

}

if scenetime=340
{
with oCameoChar hspeed=0;
}
/////	

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




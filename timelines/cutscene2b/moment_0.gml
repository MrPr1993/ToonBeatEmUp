//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""


actor1=instance_create_depth(114+320,170+24,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(46+320,160+24,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(50+320,144+24,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76+320,188+24,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215+320,170+24,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_speed=0.1 image_xscale=-1}

timeline_position=10
timeline_speed=0

}

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=mask_none anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;

if scenetime=60
{
with oControl
{PlaySound(snd_explosion) quakeFXTime=10

with actor1 {sprite_index=spr_viva_quicksand image_index=0}
with actor2 {sprite_index=spr_hina_quicksand image_index=0}
with actor3 {sprite_index=spr_bahati_quicksand image_index=0}
with actor4 {sprite_index=spr_sofia_quicksand image_index=0}


}
}

if scenetime=120
{
with oControl
{cutscenename="VIVA"
cutsceneline="THE PLANE'S GOING DOWN!"

with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=0 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=0 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=0 image_xscale=-1}
}

}

if scenetime=300
{
with oControl
{cutscenename="BAHATI"
cutsceneline="OH NO! WHAT DO WE DO?!"
}
}

if scenetime=400
{
with oControl
{cutscenename="HINA"
cutsceneline="WOW. IT'S A LONG WAY DOWN..."
with actor2 {sprite_index=spr_hina_cutscene image_index=0 image_xscale=-1}
}
}

if scenetime=660
{
with oControl
{cutscenename="SOFIA"
cutsceneline="LOOK THERE, CHICAS!!"

with actor4 {sprite_index=spr_sofia_point image_index=1 image_xscale=-1}
}

scenetime=740
}



if scenetime=880
{
with oControl
{
}

actor6=instance_create_depth(80,140,-1,oCameoChar) with actor6
{sprite_index=spr_hwolf_parachute image_index=0 anim=9999 image_xscale=-1}

}

if scenetime=1180
{
with actor6 {shadow=-1; image_index=1 PlaySound(snd_jump) spdZ=-4 newscript=function()
{
z+=spdZ;

spdZ+=0.45

hspeed=-0.2 vspeed=0.2

}}

}

if scenetime=clamp(scenetime,880,1179)
with oControl {if SceneX>0 SceneX-=4 else {SceneX=0}}



if scenetime=1240
{
with oControl
{
with actor1 {sprite_index=spr_viva_point image_index=2 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=2 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=2 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=2 image_xscale=-1}	

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )

cutscenename="SOFIA"
cutsceneline="DAMN IT! SHE'S GETTING AWAY AGAIN!"
}
}

if scenetime=1460
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"

with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,1460,1499) scenetime=1464

}





//////	


}
}

	
timeline_position=10
timeline_speed=0

SceneX=320
__view_set( e__VW.XView, 0, SceneX )
SceneY=-128
__view_set( e__VW.YView, 0, SceneY )


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=1461

global.CutsceneSkip=0

timeline_position=5800
timeline_speed=1

canSkipCutscene=0

with actor1 {sprite_index=spr_viva_point image_index=0 image_xscale=-1}
with actor2 {sprite_index=spr_hina_point image_index=2 image_xscale=-1}
with actor3 {sprite_index=spr_bahati_point image_index=2 image_xscale=-1}
with actor4 {sprite_index=spr_sofia_point image_index=2 image_xscale=-1}	

cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"
	}
	
SceneY=32
__view_set( e__VW.XView, 0, SceneY )

cutscenePlaying=1

}
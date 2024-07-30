//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="YOU DO HAVE A TICKET,\nDON'T YOU?"
CDtextA="WE DON'T HAVE ANY..."
CDtextB="SNATCH THE TRAIN!"
CDtextC="GIVE THEM THE TICKETS."

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
{sprite_index=spr_twoheads_hit image_index=9 anim=9999 image_xscale=-1}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

specialcheck[2]=240

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000 sceneno=0

with oControl
{cutscenename="DOLORES"
cutsceneline="DARN IT!"
}

newscript=function()
{scenetime+=1;


if scenetime=160
{
cutscenename="DOLORES"
cutsceneline="DON'T THINK YA WON YET!!"
}

if scenetime=240
{sceneno=-1
with oControl
{cutscenename="VIVA"
cutsceneline="THAT WE DID. NOW WHO DO YOU THINK YOU ARE?"
}
}

if scenetime=280
{
with oControl
{cutscenename="DOLORES"
cutsceneline="ME?! OH I'LL TELL YOU ALRIGHT..."
}
}

if scenetime=360
{
with oControl
{
with actor5 {sprite_index=spr_twoheads_stand}

}
}

if scenetime=480
{
with oControl
{
cutscenename="VIVA"
cutsceneline="YOU'RE A SHERIFF?!"
}
}

if scenetime=580
{
with oControl
{
cutscenename="DOLORES"
cutsceneline="THAT'S RIGHT. WE'VE BEEN ROUNDIN' UP SOME STOWAWAYS AND NERDOWELLS WHO GOT INTO THE TRAIN WITHOUT A TICKET!"
}
}


if scenetime=640
{
with oControl
{
cutscenename="DOLORES"
cutsceneline="...BUT SEEING THAT YOU TOOK CARE OF A MAJORITY OF EM', I CAN LET YA GO IF YA GOT A TICKET."
}
}


if scenetime=760
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="OH! UH..."

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,760,799) scenetime=764

}





//////	


}

specialdraw=function()
{
switch(sceneno)
{
case 0:
specialcheck[2]-=0.2

draw_sprite(spr_cutscene2c0,image_index,0,specialcheck[2])
break;
case 5: 
x=lerp(x,-40,0.1) specialcheck[2]=lerp(specialcheck[2],0,0.1)
draw_sprite(sprite_index,image_index,round(x),y)
draw_sprite(sprite_index,image_index,round(x+320+320*specialcheck[2]),y)
break;
}
if oControl.betatest
draw_text(4,4,scenetime)
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




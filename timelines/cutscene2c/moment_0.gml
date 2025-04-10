//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

layer_set_visible("Sky2",0)

with oControl
{
CDtextT="YOU DO HAVE A TICKET,\nDON'T YOU?"
CDtextA="WE DON'T HAVE ANY..."
CDtextB="SNATCH THE TRAIN!"
CDtextC="GIVE THEM THE TICKETS."

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

if timeline_position<=2
{
BLACKFX=instance_create_depth(340,0,-1,oCameoChar) with BLACKFX
{shadow=-1 sprite_index=spr_allblackscreen image_index=0 anim=99999 image_xscale=2 isDepth=0 depth=-999}

actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=99999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=99999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=99999}
actor4=instance_create_depth(48,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=99999}
}

timeline_position=10
timeline_speed=0

with oCameoChar sprite_index=mask_none

actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_twoheads_beaten  image_speed=0.1 anim=99999 image_xscale=-1}

actorC1=instance_create_depth(215+140,170-32,-1,oCameoChar) with actorC1
{sprite_index=spr_cowboy_move image_index=9 anim=99999 image_xscale=-1}
actorC2=instance_create_depth(215+140,170+32,-1,oCameoChar) with actorC2
{sprite_index=spr_cowboy_move image_index=9 anim=99999 image_xscale=-1}

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2c0 anim=9999 isDepth=0 depth=-3000 image_speed=0.1 sceneno=0 y=-24 shadow=-1

with oControl
{cutscenename="DOLORES"
cutsceneline="DARN IT!"
}

newscript=function()
{scenetime+=1;

if y<=0 y+=0.1

if scenetime=160
{
with oControl
{
cutscenename="DOLORES"
cutsceneline="DON'T THINK YA WON YET!"
}
}

if scenetime=440
{sceneno=-1 x=-9999
with oControl
{
with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=99999}
with actor2
{sprite_index=spr_hina_point image_index=0 anim=99999}
with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=99999}
with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=99999}
}
with oControl
{cutscenename="VIVA"
cutsceneline="THAT WE DID. NOW WHO DO YOU THINK YOU ARE?"
}
}

if scenetime=640
{
with oControl
{cutscenename="DOLORES"
cutsceneline="ME?! OH I'LL TELL YOU ALRIGHT..."
}
}

if scenetime=720
{
with oControl
{
with actor5 {image_speed=0 image_index=0 sprite_index=spr_twoheads_badge}
}
}

if scenetime=740
{
with oCameoChar x+=320



layer_set_visible("BGcity2",0)

layer_set_visible("CarTiles1",0)

var bgstretch = layer_background_get_id("Backgrounds_1")
layer_background_stretch(bgstretch,1)

with oControl
{
with actor5 {image_index=3 sprite_index=spr_twoheads_badge}
}

x=640 y=0 hspeed=-8 sprite_index=spr_cutscene2c1
}

if scenetime=780 {hspeed=0 oControl.quakeFXTime=10}

if scenetime=880
{sprite_index=mask_none
layer_set_visible("BGcity2",1)
layer_set_visible("CarTiles1",1)	

var bgstretch = layer_background_get_id("Backgrounds_1")
layer_background_stretch(bgstretch,0)

with oControl
{
with actor1
{sprite_index=spr_viva_wildtake image_index=0 anim=9999}
with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
with oCameoChar x-=320

cutscenename="VIVA"
cutsceneline="YOU'RE A SHERIFF?!"
}
}

if scenetime=1150
{
with oControl
{
cutscenename="DOLORES"
cutsceneline="THAT'S RIGHT. ME AND MY BOYS HAVE BEEN ROUNDIN' UP SOME STOWAWAYS AND NERDOWELLS WHO GOT INTO THE TRAIN WITHOUT PAYING!"

with actorC1 {hspeed=-2 image_speed=0.25}
with actorC2 {hspeed=-2 image_speed=0.25}
}
}

if scenetime=1200 with oControl
{
with actorC1 {hspeed=0 image_speed=0 sprite_index=spr_cowboy_stand}
with actorC2 {hspeed=0 image_speed=0 sprite_index=spr_cowboy_stand}
}

if scenetime=1600
{
	with oControl
	{canSkipCutscene=0
cutscenename="DOLORES"
cutsceneline="...BUT SEEING THAT YOU TOOK CARE OF A MAJORITY OF EM', I CAN LET YA GO IF YA GOT A TICKET."


}
}

if scenetime=1610
with oControl with actor5 {image_index=2}
if scenetime=1620
with oControl with actor5 {image_index=1}
if scenetime=1630
{scenetime=1644
with oControl with actor5 {sprite_index=spr_twoheads_talk image_index=0
	
with oControl
{
timeline_position=5500
timeline_speed=1
}
	
	}
}


if scenetime=clamp(scenetime,1640,1699)
{scenetime=1644}



//////	


}


}

	


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0 with actorscreen sprite_index=mask_none
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=1641

global.CutsceneSkip=0

with actor1
{sprite_index=spr_viva_wildtake image_index=0 anim=9999}
with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}

with actor5
{sprite_index=spr_twoheads_talk image_index=0 image_speed=0 anim=9999}

with actorC1
{sprite_index=spr_cowboy_stand x-=100 image_index=0 image_speed=0 anim=9999}
with actorC2
{sprite_index=spr_cowboy_stand x-=100 image_index=0 image_speed=0 anim=9999}

timeline_position=5901
timeline_speed=1

canSkipCutscene=0

cutscenename="VIVA"
cutsceneline="OH! UH..."
	}

cutscenePlaying=1

}
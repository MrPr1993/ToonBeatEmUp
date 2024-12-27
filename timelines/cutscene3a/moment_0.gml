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

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

if timeline_position<=2
{
actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=99999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=99999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=99999}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=99999}
}

timeline_position=10
timeline_speed=0

with oCameoChar sprite_index=mask_none

actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_twoheads_hit image_index=9 anim=99999 image_xscale=-1}

actorC1=instance_create_depth(215+140,170-32,-1,oCameoChar) with actorC1
{sprite_index=spr_cowboy_move image_index=9 anim=99999 image_xscale=-1}
actorC2=instance_create_depth(215+140,170+32,-1,oCameoChar) with actorC2
{sprite_index=spr_cowboy_move image_index=9 anim=99999 image_xscale=-1}

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2c0 anim=9999 isDepth=0 depth=-3000 image_speed=0.1 sceneno=0 y=-24 shadow=-1

with oControl
{cutscenename="HATHOR" cutsceneline= "Ungh.... I cannot BELIEVE I lost to a bunch of mortals!"
}

newscript=function()
{scenetime+=1;

if y<=0 y+=0.1

if scenetime=160
{
with oControl
{
cutscenename="HATHOR"
cutsceneline="Well, this is what I get for using this weak avatar..."
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
cutsceneline=""
}
}

if scenetime=640
{
with oControl
{cutscenename="HATHOR"
cutsceneline="...this isn't my temple."
}
}

if scenetime=720
{
with oControl
{cutscenename="BAHATI"
cutsceneline="Um... it's a museum?"
}
}

if scenetime=640
{
with oControl
{cutscenename="HATHOR"
cutsceneline="How long was I gone...?"
}
}


if scenetime=720
{
with oControl
{
with actor5 {image_index=0 sprite_index=spr_twoheads_badge}
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
with oControl with actor5 {sprite_index=spr_twoheads_stand image_index=0
	
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

timeline_position=5901
timeline_speed=1

canSkipCutscene=0

cutscenename="VIVA"
cutsceneline="OH! UH..."
	}


cutscenename="HATHOR" cutsceneline= "Ungh.... We cannot BELIEVE we lost to a bunch of mortals! Atleast all my treasure is still..."
//Pan to thieves taking off with treasure
cutscenename="HATHOR" cutsceneline= "What do those fools think they're doing?!"
cutscenename="VIVA" cutsceneline= "Looks like they're taking your treasure just like they took ours."
cutscenename="BAHATI" cutsceneline= "They do seem to be on a looting spree..."
cutscenename="HATHOR" cutsceneline= "What?!"
//Hathor grabs Viva and shakes her
cutscenename="HATHOR" cutsceneline= "THERE WILL BE TERRIBLE CONSEQUENCES IF OUR TREASURE FALLS INTO THE WRONG HANDS! You MUST get them back this instant! Luckily we know two people who could be of assistance..."
cutscenename="HINA" cutsceneline= "And those would be...?"
//choices appear

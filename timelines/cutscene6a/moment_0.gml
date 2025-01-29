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

cutscenename="SYNTHESA" cutsceneline= "Heeheehee~! What fun what fun! Congratulations on your victory, friends!"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0


CutsceneStage=rm_stageswamp

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_duck_stand image_index=10 anim=9999 image_xscale=-1
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline= "Yeah, yeah thanks and all that... Now where are the thieves hiding?"}
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="SYNTHESA" cutsceneline= "Wheeeeheeheehee~! Lalalalaaa~!"}
}
}

if scenetime=520
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Hey... are you even listening?!"
}
}

if scenetime=660
{
with oControl {cutscenename="SYNTHESA" cutsceneline="Victory~ Victory~ You deserve the victory~"}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline= "HEY!!! WHERE. ARE. THE. THIEVES?!"}
}

if scenetime=1060
{
with oControl {cutscenename="SYNTHESA" cutsceneline= "Oh! They should be up those stairs!"}
}

if scenetime=1360
{
with oControl {cutscenename="VIVA" cutsceneline= "FINALLY. Let's get our treasure back, ladies!"}
}

if scenetime=1620
{
with oControl {cutscenename="SYNTHESA" cutsceneline="TA-TA! Tell the doctor I said hi~"}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}



	
timeline_position=10
timeline_speed=0



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


cutscenePlaying=1
}
CutsceneStage=rm_stagelab
canSkipCutscene=2





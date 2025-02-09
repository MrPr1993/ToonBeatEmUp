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

cutscenename="" cutsceneline= "Divas come down"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
timeline_speed=0


CutsceneStage=rm_stageswamp

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(160-16,160,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(160+16,160,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(160-32,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(160+32,160,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_duck_stand image_index=10 anim=9999 image_xscale=-1
	}
	
with actor1 {sprite_index=spr_viva_jump1 image_index=0 ground=0 spdZ=-8 anim=9999 z=-200
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_viva_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_point image_index=0}}}}
	
with actor2 {sprite_index=spr_hina_jump1 image_index=0 ground=0 spdZ=-9 anim=9999 z=-230
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_hina_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {sprite_index=spr_bahati_jump1 image_index=0 ground=0 spdZ=-8.5 anim=9999 z=-210
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_bahati_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {sprite_index=spr_sofia_jump1 image_index=0 ground=0 spdZ=-9 anim=9999 z=-240
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_sofia_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}

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
with oControl {cutscenename="VIVA" cutsceneline= "We need to find a way out of here!"

}
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="SOFIA" cutsceneline= "How?! We're thousands of feet from the ground!"
}
}
}

if scenetime=520
{sprite_index=spr_tearsondivas
with oControl
{quakeFXTime=10
cutscenename="FIONA" cutsceneline= "WAAAAAAAAAAAAAHHHHHHHHHHHH!"

}
}

if scenetime=660
{sprite_index=spr_cutscene6c0
with oControl {cutscenename="FIONA" cutsceneline= "You meanies! Why did you hurt me?!"
}
}

if scenetime=860
{
sprite_index=spr_divasfeelbad
	
with oControl {cutscenename="FIONA" cutsceneline= "I just wanted my place clean for my future husband! Waaaaah!"
}
}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline= "Now I feel terrible."}
}

if scenetime=1260
{sprite_index=spr_divasfeelbad image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "I got this."}
}

if scenetime=1460
{sprite_index=spr_dragoncalming
with oControl {cutscenename="BAHATI" cutsceneline= "Hey sorry for us harming you, but we were trying to defend ourselves."}
}

if scenetime=1660
{image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "We want your help. We are trying to find a way out of your home."}
}

if scenetime=2000
{sprite_index=spr_dragonpicking image_index=0
with oControl {cutscenename="FIONA" cutsceneline= "SNIFF! You were only protecting yourself? Oh that's terrible! Here let me help!"
}
}

if scenetime=2400
{image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "And this is how being nice is, Viva. Helping helps."}
}

if scenetime=2700
{image_index=2
with oControl {cutscenename="VIVA" cutsceneline= "Right... okay now she's taking us, and-why is she heading to the window?"}
}

if scenetime=3000
{
sprite_index=spr_windowthrow image_index=0

with actor5 {shadow=-1 }
	
with oControl {cutscenename="FIONA" cutsceneline= "Here you go! Fly away, pretty butterflies!"
}
}

if scenetime=3400
{sprite_index=mask_none
with actor6 {shadow=-1 image_xscale=2 image_yscale=2  x=160 y=192/2
	newscript=function() {if image_xscale>0 {image_xscale-=0.01 image_yscale-=0.01}}
	}
	
with oControl {cutscenename="VIVA" cutsceneline= "Oh you gotta be KIDDING ME! WE'RE NOT BUUUUUUUUUUUUUUUGSSSSS!!!!"}
}

if scenetime=3700
{sprite_index=spr_dragonoopsies
with oControl {cutscenename="FIONA" cutsceneline= "Oopsie daisies."
}
}

if scenetime=4020
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



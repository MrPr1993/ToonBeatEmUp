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

cutscenename="" cutsceneline= ""

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
timeline_speed=0


CutsceneStage=rm_stagelab

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(160-24,160,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(160+24,160,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(160-64,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(160+64,160,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_duck_stand image_index=10 anim=9999 image_xscale=-1
	}
	
with actor1 {sprite_index=spr_viva_jump1 image_index=0 ground=0 spdZ=-8 anim=9999 z=-200
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_viva_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=1 sprite_index=spr_viva_point image_index=0}}}}
	
with actor2 {sprite_index=spr_hina_jump1 image_index=0 ground=0 spdZ=-9 anim=9999 z=-230
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_hina_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {sprite_index=spr_bahati_jump1 image_index=0 ground=0 spdZ=-8.5 anim=9999 z=-210
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 {hspeed=0 sprite_index=spr_bahati_item} z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) if AnimFrame=1 {AnimFrame=8 image_xscale=1 sprite_index=spr_bahati_point image_index=0}}}}
	
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
{sprite_index=spr_tearsondivas image_speed=0.5

actor1.x=9999
actor2.x=9999
actor3.x=9999
actor4.x=9999
	
with oControl
{quakeFXTime=10
cutscenename="FIONA" cutsceneline= "WAAAAAAAAAAAAAHHHHHHHHHHHH!"

}
}

if scenetime=660
{
vspeed=0.1 image_speed=0.01 y=-64
sprite_index=spr_cutscene6c0
with oControl {cutscenename="FIONA" cutsceneline= "You meanies! Why did you hurt me?! You beat my pretty face!"
}
}

if scenetime=960
{y=0 image_speed=0 image_index=0 vspeed=0
sprite_index=spr_divasfeelbad
	
with oControl {cutscenename="FIONA" cutsceneline= "Now I won't be able to find my future husband! Waaaaah!"
}
}

if scenetime=1200
{
with oControl {cutscenename="VIVA" cutsceneline= "Now I feel terrible."}
}

if scenetime=1460
{sprite_index=spr_divasfeelbad image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "I got this."}
}

if scenetime=1700
{sprite_index=spr_dragoncalming
with oControl {cutscenename="BAHATI" cutsceneline= "Hey sorry for us beating you up, we were defending ourselves."}
}

if scenetime=1900
{image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "Here, I know a good way to fix your face. And you can help us leave this castle."}
}

if scenetime=2200
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=2700
{
with flashscreen instance_destroy();
	
sprite_index=spr_dragonpicking image_index=0
with oControl {cutscenename="FIONA" cutsceneline= "SNIFF! Oh, this is great! I love it so much! Just wait until I find a new husband! Thank you chunky yellow ladybug!"
}
}

if scenetime=3100
{image_index=1
with oControl {cutscenename="BAHATI" cutsceneline= "And this is how being nice is, Viva. Helping helps."}
}

if scenetime=3350
{image_index=1
with oControl {cutscenename="VIVA" cutsceneline= "Right... okay now she's taking us, and-why is she heading to the window?"}
}

if scenetime=3450
{image_index=2
}


if scenetime=3600
{
sprite_index=spr_windowthrow image_index=0

with actor5 {shadow=-1 }
	
with oControl {cutscenename="FIONA" cutsceneline= "Here you go! Fly away, pretty bug ladies!"
}
}

if scenetime=3800
{sprite_index=mask_none
with actor6 {sprite_index=spr_divasfall shadow=-1 image_xscale=2 image_yscale=2  x=160 y=192/2
	newscript=function() {if image_xscale>0 {image_xscale-=0.01 image_yscale-=0.01}}
	}
	
with oControl {cutscenename="VIVA" cutsceneline= "Oh you gotta be KIDDING ME! WE'RE NOT BUUUUUUUUUUUUUUUGSSSSS!!!!"}
}

if scenetime=4000
{sprite_index=spr_dragonoopsies
with oControl {cutscenename="FIONA" cutsceneline= "They don't fly...? Oops..."
}
}

if scenetime=4250
{sprite_index=spr_dragonoopsies
with oControl {cutscenename="FIONA" cutsceneline= "Well... they kinda deserve it for hurting me but... ooooh..."
}
}

if scenetime=4620
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



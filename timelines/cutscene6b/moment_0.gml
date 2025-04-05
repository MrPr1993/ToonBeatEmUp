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

cutscenename="MIRROSA" cutsceneline= "You... YOU'VE SHATTERED MY BRILLIANCE! I'LL PIERCE YOU THROUGH!!!"

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
{sprite_index=spr_angrymirror anim=9999 isDepth=0 depth=-3000 shadow=-1;

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
sprite_index=spr_angrymirror
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=360
{
image_index=1
oControl.quakeFXTime=10
}

if scenetime=520
{sprite_index=spr_gonnabreakyou
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline= "Oh please, you're not doing anything like that. Maybe I should break you even more though..."

}
}
}

if scenetime=940
{sprite_index=mask_none
	
with actor1 {x=96}
with actor2 {x=86}
with actor3 {x=76}
with actor4 {x=92}
	
with oControl
{
with oControl {cutscenename="MIRROSA" cutsceneline= "WaitwaitwaitWAIT! Mercy, mercy! What do you want from me anyway?!"
}
}
}

if scenetime=1320
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "We're looking for the hideout of some thieves. Tell us where it is."

}
}

if scenetime=1660
{
with oControl {cutscenename="MIRROSA" cutsceneline= "Okay okay! There's an emergency exit door just nearby that'll take you there!"
}
}

if scenetime=1960
{with oControl {cutscenename="SOFIA" cutsceneline= "All we needed to hear! Let's mosey, chicas! Time to raise some hell!"
}
}

if scenetime=2200
{
with actor1 {sprite_index=spr_viva_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
}

if scenetime=2560
{
with oControl {cutscenename="MIRROSA" cutsceneline= "My lovely palace... My mirror... Such brutes...."}
}

if scenetime=3000
{
with oControl {cutscenename="" cutsceneline=""}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3000,3015)
{scenetime=3010 actor5.z-=4
if flashscreen.image_alpha>=1.5
{x=0; y=0; sprite_index=spr_snowlab; image_index=0;
with flashscreen {fadeSpd=-0.25 isfading=1 image_alpha=1}
scenetime=3020
}
}

if scenetime=3020
{
vspeed=-0.25
}


if scenetime=3720
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








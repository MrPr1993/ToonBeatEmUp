//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="WHAT DO YOU SEE\nIN THE CRYSTAL BALL?"
CDtextA="A CORN!"
CDtextB="A CROWN!"
CDtextC="A LAMP!"

cutscenename="CIRCE" cutsceneline= "How could you?! First you pick on my sweet Larry and NOW you attack me?! What's wrong with you?!"
}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4c0 anim=9999 isDepth=0 depth=-3000 shadow=-1;
	
	x=0 y=0

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,150,-1,oCameoChar) with actor5
{sprite_index=spr_seaweed_beaten image_index=10 anim=9999 image_xscale=1 image_speed=0.1
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_octopus_tiny anim=9999 image_xscale=1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{

}

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}


if scenetime<60 {x--;}
if scenetime=340
{
with actor1 {x=64}
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {x=320-64}
with actor6 {x=320-32 y=160}
	
sprite_index=mask_none

with actor3 {sprite_index=spr_bahati_talk2 image_speed=0.25}

with oControl
{
cutscenename="BAHATI" cutsceneline="Sorry. We HAVE been too gung-ho on the whole 'fight first, ask questions later' approach..."
} x=0
y=0
}

if scenetime=740
{sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0
scenetime=1700

with actor3 {sprite_index=spr_bahati_talk2 image_speed=0 image_index=0}

with actor1 {sprite_index=spr_viva_talk3 image_speed=0.25}	

with oControl
{cutscenename="VIVA"
cutsceneline="Look, we've had some VERY valuable personal treasures stolen from us, and we need to get them back. Do you know where they are?"
}
}

if scenetime=2140
{actor5.image_xscale=-1 with actor5 {sprite_index=spr_seaweed_attack4 image_index=1 image_speed=0}

with actor1 {image_speed=0 image_index=0}

with oControl
{
cutscenename="CIRCE" cutsceneline= "Very well... I suppose I'll let this incident go since Larry attacked you first. Larry, fetch my crystal ball would you, sweetie?"
}
}

if scenetime=2600
{
with actor5 {sprite_index=spr_seaweed_talk1 image_index=0 image_speed=0}

with actor6 {sprite_index=spr_octopus_cutscene image_index=0}

with oControl
{
cutscenename="LARRY" cutsceneline= "..."
}
}

if scenetime=2840
{with actor5 {sprite_index=spr_seaweed_talk1 image_speed=0.1}
with oControl
{
cutscenename="CIRCE" cutsceneline= "Oh, come now, mommy will take you to a shop to get your favorite treat, 'kay?"
}
}

if scenetime=3100
{
with actor6 {sprite_index=spr_octopus_scene1 image_speed=0.1 image_index=0}
	
actor6.hspeed=2 with actor5 {sprite_index=spr_seaweed_talk1 image_index=0 image_speed=0}

with actor2 {sprite_index=spr_hina_cutscene image_index=0}

with oControl
{
cutscenename="HINA" cutsceneline= "Ya know? That octopus looked adorable."
}
}

if scenetime=3300
{
with actor5 {sprite_index=spr_seaweed_talk2 image_index=1 image_speed=0.1}
with oControl
{
cutscenename="CIRCE" cutsceneline= "Yes. They used to be a sailor."
}
}

if scenetime=3400
{
with actor1 {sprite_index=spr_viva_screamdown image_index=0 image_speed=0}
with actor2 {sprite_index=spr_hina_wildtake image_index=0 image_speed=0}
with actor3 {sprite_index=spr_bahati_wildtake image_index=0 image_speed=0}
with actor4 {sprite_index=spr_sofia_wildtake image_index=0 image_speed=0}

with oControl
{
cutscenename="VIVA" cutsceneline= "What."
}
}

if scenetime=3500
{actor6.hspeed=-2  actor6.x=380 with actor6 {sprite_index=spr_octopus_scene2 image_index=0}
	with actor1 {sprite_index=spr_viva_wildtake image_index=0 image_speed=0}
with oControl
{
cutscenename="CIRCE" cutsceneline= "Oh, here we are, thank you dear!"
}
}

if scenetime=3600 {actor6.hspeed=0 actor6.image_speed=0}

if scenetime=3650
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3700,3710)
{scenetime=3705 actor5.z-=4
if flashscreen.image_alpha>=1.5
{x=0; y=0; image_index=0;
with flashscreen {fadeSpd=-0.25 isfading=1 image_alpha=1}
scenetime=3800
}
}


if scenetime=3800 scenetime=6000

if scenetime=6000
{with actor5 sprite_index=spr_seaweed_talk2
sprite_index=spr_witchcrystalball x=0 y=0

with oControl
{
cutscenename="CIRCE" cutsceneline= "Now, let's see what you can see in this crystal ball!"}
}


if scenetime=6300
{
with oControl
{
timeline_position=6000-60;
timeline_speed=1
}
}

//cutscenename="SOFIA" cutsceneline= "Viva you never told us this royal fishman hunk was your cousin! What was up with you?"
//cutscenename="VIVA" cutsceneline= "Simple, I find him obnoxious."
//cutscenename="PRINCE" cutsceneline= "I'm terribly sorry that my people attacked you so suddenly, but they needed to test you! Although... What brings you here anyway? And how is that diamond I gave you, Viva?"
//cutscenename="VIVA" cutsceneline= "Err... I can answer both of those questions at once... Thieves are on the run with it and these girls' treasures as well..."
//cutscenename="PRINCE" cutsceneline= "WHAT?! OH SWEET SCALLOPS THIS IS TERRIBLE! That diamond is enchanted! Terrible things could happen with it in the wrong hands! Quickly! We must pursue those fiends posthaste! My servants and I will send you on your way!" 

//MrPr1993 — 09/08/2024 11:21 PM
///Ooh ooh make Viva's reply about the diamond with a very nervous tone 
//Flash Trickstar — 09/08/2024 11:31 PM


if scenetime=57600
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



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


cutscenePlaying=1
}




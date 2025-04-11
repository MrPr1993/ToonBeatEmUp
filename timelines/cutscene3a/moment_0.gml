//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="SHE IS OFFERING\nSOME ASSISTANCE."
CDtextA="ASK ABOUT THE SWAMP."
CDtextB="DECLINE HER HELP."
CDtextC="ASK ABOUT THE BEACH."

cutscenename="HATHOR" cutsceneline= "Ungh.... I cannot BELIEVE I lost to a bunch of mortals!"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene3a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,160,-1,oCameoChar) with actor5
{sprite_index=spr_pharaoh_beaten image_index=10 anim=9999 image_xscale=1
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{

}

y+=80;

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}





if scenetime<80 {y--;}
if scenetime=180
{
with actor1 {x=64}
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {x=320-64}
	
sprite_index=mask_none scenetime=340
with oControl
{
cutscenename="HATHOR" cutsceneline="Well, this is what we get for using my weak avatar... we may as well-"
} x=0
y=0 vspeed=-0.2
}

if scenetime=700
{
with oControl
{quakeFXTime=10
cutscenename="" cutsceneline=""
}
}

if scenetime=clamp(scenetime,840,1139)
{
with oControl
{if SceneX<300 SceneX+=16 __view_set( e__VW.XView, 0, SceneX )}

}

if scenetime=840
{
thief1=instance_create_depth(400,144,-1,oCutHalfFX) with thief1
{type=999 sprite_index=spr_burglar_run image_speed=0.25	current_pal=2; my_pal_sprite=spr_enemypal hspeed=4}
thief1=instance_create_depth(450,170,-1,oCutHalfFX) with thief1
{type=999 sprite_index=spr_burglarB_run image_speed=0.25	current_pal=2; my_pal_sprite=spr_enemypal hspeed=4}
thief1=instance_create_depth(430,160,-1,oCutHalfFX) with thief1
{type=999 sprite_index=spr_fatburglar_move image_speed=0.25	current_pal=2; my_pal_sprite=spr_enemypal hspeed=2.5 }
thief1=instance_create_depth(480,188,-1,oCutHalfFX) with thief1
{type=999 sprite_index=spr_sneak_move image_speed=0.25 hspeed=3}


with oControl
{
cutscenename="HATHOR" cutsceneline="HEY! WHERE ARE THOSE FOOLS DOING?!"
}
}

if scenetime=1140
{
with oControl {SceneX=0 __view_set( e__VW.XView, 0, SceneX )}
with oControl
	{
cutscenename="VIVA" cutsceneline="Well they're not on our side. Our things got stolen too."
	}
}

if scenetime=1380
{
with oControl
{
cutscenename="VIVA" cutsceneline="What's the deal with those things, anyway?"
}
}

if scenetime=1600
{vspeed=0
x=0 y=0 sprite_index=spr_allblackscreen

with oControl
{
cutscenename="" cutsceneline=""
}
}

if scenetime=1700
{sprite_index=spr_cutscene3a2 oControl.quakeFXTime=10 image_speed=0.25
	
with actor1 x=-999
with actor2 x=-999
with actor3 x=-999
with actor4 x=-999
with actor5 x=-999
	
with actor5 image_xscale=1
	
with oControl
{
cutscenename="HATHOR" cutsceneline="THOSE THINGS?! They are ancient relics, you dunce!"
}
}

if scenetime=1880
{
with oControl
{
cutscenename="HATHOR" cutsceneline="There will be consequences if they are taken to the wrong hands!"
}
}

if scenetime=2100
{sprite_index=mask_none
	
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {image_xscale=-1 x=320-64 sprite_index=spr_pharaoh_shakeviva image_speed=0.2}	
with oControl
{
cutscenename="BAHATI" cutsceneline="Like ours... we both are after those thieves who took your treasures. Um... can you please let go of Miss Viva?"
}
}

if scenetime=2480
{
with actor5 {image_speed=0}	
with oControl
{
cutscenename="HATHOR" cutsceneline="Right... of course."
}
}

if scenetime=2640
{

with actor1 {x=320-64-48 sprite_index=spr_viva_spin image_speed=0 image_index=0} actor1.y=actor5.y
with actor5 {sprite_index=spr_pharaoh_talk}
with oControl
{

with oControl
{
cutscenename="HATHOR" cutsceneline="..."
}
}
}
if scenetime=2880
{
with oControl
{
cutscenename="HATHOR" cutsceneline="I've been gone for quite a while. But maybe we could assist you."
}
}

if scenetime=3180
{
with oControl
{
cutscenename="HATHOR" cutsceneline="We may have some friends from the swamp and the beach. They should still be around."
}
}


if scenetime=3480 scenetime=6000

if scenetime=6000
{
sprite_index=mask_none

with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {image_xscale=-1 x=320-64 sprite_index=spr_pharaoh_talk2 image_speed=0.2}	
with actor1 {x=320-64-48 sprite_index=spr_viva_spin image_speed=0 image_index=0} actor1.y=actor5.y

with oControl
{
cutscenename="HATHOR" cutsceneline="What is your decision, mortals?"}
}

if scenetime=6021
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





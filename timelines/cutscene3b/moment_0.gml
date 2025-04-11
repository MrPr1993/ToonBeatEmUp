//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="WHICH DOOR\nWILL YOU GO?"
CDtextA="RED DOOR."
CDtextB="GREEN DOOR."
CDtextC="BLUE DOOR."

cutscenename="VIVA" cutsceneline="Huh?! Where'd that haughty ghost get off to?"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4b0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_ghost_move image_index=10 anim=9999 image_xscale=-1 specialcheck[6]=spr_ghost_head
	specialdraw=function()
	{

	var headX=0; var headY=0; var headfacespr=specialcheck[6]; var headfaceimg=specialcheck[7];
	if sprite_index=spr_ghost_stand {headX=10 headY=-90}
	if sprite_index=spr_ghost_move {headX=20 headY=-88}	
	draw_sprite_ext(sprite_index,image_index,round(x),round(y+z),image_xscale,image_yscale,0,c_white,0.8)
	draw_sprite_ext(headfacespr,headfaceimg,round(x+headX*image_xscale),round(y+z+headY),image_xscale,image_yscale,0,c_white,0.8)	
	}
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actBG1=instance_create_depth(11215,170,-1,oCameoChar) with actBG1
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

sprite_index=spr_whereisghost

drawscript=function()
{
if scenetime>=640 specialcheck[6]=lerp(specialcheck[6],0.8,0.05)
draw_sprite(spr_allblackscreen,0,0,0)
draw_sprite_ext(spr_whereisghost,1,round(x-scenetime/8),round(y),1,1,0,c_white,specialcheck[6])
draw_self()
}

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}


sprite_index=spr_whereisghost hspeed=-0.5 x=64

if scenetime=120
{
with actor1 {x=64}
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {x=320-64}
	
 scenetime=340
with oControl
{
cutscenename="BAHATI" cutsceneline= "She was just here a second ago!"
} x=0
y=0 vspeed=-0.2
}

if scenetime=640
{sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0

	
with oControl
{cutscenename="HINA" cutsceneline= "Umm... Girls...?"
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=940
{with oControl
{
cutscenename="VIVA" cutsceneline="Huh?! Where'd that haughty ghost get off to?"
}
}

if scenetime=1140
{
with oControl
{
cutscenename="HINA" cutsceneline= "Umm... Girls...?"
}
}

if scenetime=1440
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "Not now Hina, can't you see we're trying to catch that specter?"
}
}
if scenetime=1740
{
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "Fufufu... You..."
}
}
if scenetime=2040
{specialcheck[6]=0
drawscript=function() {x=lerp(x,0,0.1) draw_self();}; x=32

sprite_index=spr_ghostslash

with oControl
{quakeFXTime=10
cutscenename="" cutsceneline= "FOOLS!"
}
}

if scenetime=2340
{
drawscript=function()
{
if scenetime>=2340 specialcheck[6]=lerp(specialcheck[6],0.8,0.05)
draw_sprite(spr_allblackscreen,0,0,0)
draw_sprite_ext(spr_cutscene3b3,2,round(x),round(y),1,1,0,c_white,specialcheck[6])
draw_self()
}	

sprite_index=spr_cutscene3b3 image_index=0
with oControl
{
//CHOP
cutscenename="ANNAMARI" cutsceneline= "OOOOHOHOHOHO! Serves you lot right for thinking you could put a damper on my joyous haunting! The living cannot harm the dead!"
}

}

if scenetime=2780
{sprite_index=spr_cutscene3b3 image_index=1
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "OHOHOH-oh...?"
}
}

if scenetime=2800
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "The living huh...?"
}
}

if scenetime=2940
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Well we're not living right now..."
}
}
if scenetime=3200
{
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "...Oh dear..."
}
}
if scenetime=3300
{sprite_index=spr_allblackscreen x=0 y=0 drawscript=-1;
with oControl
{
cutscenename="" cutsceneline= "" ///Beating ensues
}
}
if scenetime=3640
{
with oControl
{
//Beatdown ensues.
}
}
if scenetime=3940
{sprite_index=spr_beatghost image_index=0 x=0 y=0
with oControl
{quakeFXTime=10
cutscenename="ANNAMARI" cutsceneline= "WAIT WAIT WAIT!!! I GIVE! I'm sorry! I only haunted this place so to vent my frustrations after some FILTHY thieves rushed in and stole my family heirloom!"
}
}
if scenetime=4440
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Your family heirloom...?"
}
}
if scenetime=4600
{
with oControl
{
cutscenename="HINA" cutsceneline= "Just like us...."
}
}

if scenetime=4840
{
with oControl
{
cutscenename="ANNAMARI" cutsceneline= "Hmm... Let's make a deal since we're in the same situation... I revive you all, and you'll get back my heirloom along with yours!"
}
}
if scenetime=5200
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Wait how are you..."
}
}



if scenetime=5440
{sprite_index=spr_putheadback image_index=0
with oControl
{
cutscenename="" cutsceneline= "Squish"
}
}
if scenetime=5640
{
with oControl
{
cutscenename="VIVA" cutsceneline= "OH. So unconfortable for my neck..."
}
}
if scenetime=5940
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "Well, where the thieves went, miss Annamari?"
}
}


if scenetime=6000
{
sprite_index=mask_none

with actor1 {x=0; image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {x=0; image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {x=0; image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {x=0; image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}
with actor5 {x=60; image_speed=0.25 sprite_index=spr_ghost_move; image_xscale=1 hspeed=2}

with actor6 {x=400}
with actor7 {x=520 }
with actor8 {x=640}

with oControl
{
cutscenename="ANNAMARI" cutsceneline= "They kinda spread out into my spooky doors... so you should pick which one."}
}

if scenetime=6120
{
with actor1 {image_speed=0 sprite_index=spr_viva_stand; hspeed=0}
with actor2 {image_speed=0 sprite_index=spr_hina_stand; hspeed=0}
with actor3 {image_speed=0 sprite_index=spr_bahati_stand; hspeed=0}
with actor4 {image_speed=0 sprite_index=spr_sofia_stand; hspeed=0}
with actor5 {image_speed=0 sprite_index=spr_ghost_stand; image_xscale=-1 hspeed=0}
}

if scenetime=clamp(scenetime,6000,6300) specialcheck[0]-=8;

if scenetime=clamp(scenetime,6120,6300)
{
with oControl {SceneX+=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=6500
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




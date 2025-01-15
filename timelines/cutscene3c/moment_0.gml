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

cutscenename="FUKUKIJO" cutsceneline= "Such strength..."
}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene3c0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182+16,-1,oCameoChar) with actor5
{sprite_index=spr_oni_hit image_index=10 anim=9999 image_xscale=-1
	}
actor6=instance_create_depth(3200-64,182-16,-1,oCameoChar) with actor6
{sprite_index=spr_oni_hit image_index=10 anim=9999 image_xscale=-1
	}

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





if scenetime<80 {y--;}
if scenetime=100
{

	
sprite_index=mask_none
with oControl
{
cutscenename="SHOKIJO" cutsceneline= "Such power..."
} x=0
y=0 vspeed=-0.2
}

if scenetime=200
{

	
sprite_index=mask_none
with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "To use to assault our employees and customers."
} x=0
y=0 vspeed=-0.2
}


if scenetime=640
{
with actor1 {x=64}
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {x=320-64}	

sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0

	
with oControl
{
cutscenename="VIVA" cutsceneline= "We want answers! What're those thieves planning to do with our treasure?!"
}
}

if scenetime=1000
{
with oControl
{cutscenename="SOFIA" cutsceneline= "You better speak up, chicas. We're 4-to-2."}
}

if scenetime=1360
{with oControl
{
cutsceneline= "Well, how arrogant of you."
}
}

if scenetime=1560
{	
with oControl
{image_index=1 quakeFXTime=10
cutscenename="" cutsceneline= ""
}
hspeed=-2 
}

if scenetime=1660
{	
with oControl
{image_index=1
cutscenename="VIVA" cutsceneline= "You and your big mouth..."
}
hspeed=-2 
}

if scenetime=2040
{
with oControl
{
cutscenename="SHOKIJO" cutsceneline= "You would do well to mind your manners..."
}
}

if scenetime=2340
{
with oControl
{
cutscenename="FUKUKIJO" cutsceneline= "And we would want to put you all in pieces here and now..."
}
}

if scenetime=2740
{
with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "But we find all of you amusing."
}
}

if scenetime=3100
{
with oControl
{
cutscenename="HINA" cutsceneline= "Okay...?"
}
}

if scenetime=3200
{
with oControl
{
cutscenename="FUKUKIJO" cutsceneline= "We shall release you... But first, let's play a game."
}
}

if scenetime=3450
{
with oControl
{
cutscenename="BAHATI" cutsceneline= "A game? What do you mean?"
}
}

if scenetime=3600
{
with oControl
{
cutscenename="SHOKIJO" cutsceneline= "Just that. Answer our riddle, and in exchange, we'll send you on a path to the answers you seek."
}
}

if scenetime=3800
{
with oControl
{
cutscenename="HINA" cutsceneline= "Oh a riddle! How fun! Lay it on us!"
}
}

if scenetime=4000 ////Cut to black
{
with oControl
{quakeFXTime=10
}
}

if scenetime=4250 ////Cut to black
{
with oControl
{
cutscenename="FUKUKIJO" cutsceneline= "One of us speaks only the truth... Like about how we wax our horns..."
}
}

if scenetime=4500 ////Cut to black
{
with oControl
{
cutscenename="SHOKIJO" cutsceneline= "...While the other only lies... Like about how we are 300 years old..."
}
}

if scenetime=4800 scenetime=6000

if scenetime=6000
{
sprite_index=mask_none

with actor1 {x=0; image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {x=0; image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {x=0; image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {x=0; image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}
with actor5 {x=60; image_speed=0.25 sprite_index=spr_prince_move; image_xscale=1 hspeed=2}

with actor6 {x=400}
with actor7 {x=520 }
with actor8 {x=640}

with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "Which of us is the liar?"
}
}

if scenetime=6120
{
with actor1 {image_speed=0 sprite_index=spr_viva_stand; hspeed=0}
with actor2 {image_speed=0 sprite_index=spr_hina_stand; hspeed=0}
with actor3 {image_speed=0 sprite_index=spr_bahati_stand; hspeed=0}
with actor4 {image_speed=0 sprite_index=spr_sofia_stand; hspeed=0}
with actor5 {image_speed=0 sprite_index=spr_prince_stand; image_xscale=-1 hspeed=0}
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







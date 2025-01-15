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

cutscenename=""
cutsceneline=""
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
{sprite_index=spr_witch_hit image_index=10 anim=9999 image_xscale=-1
	specialdraw=function()
	{var flip=1; if image_xscale=-1 flip=2;
pal_swap_set(pal_witch,flip,false);
	draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset()
	}
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
cutscenename="KIANDRA"
cutsceneline="...YOU..."
}

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime<160 {y++;}
if scenetime=120
{sprite_index=mask_none scenetime=340
with oControl
{
cutsceneline="Why did you break into my home and beat me up?! Didn't you read the signs?!"
} x=0
y=0 vspeed=-0.2
}

if scenetime=640
{sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0
with actor1 {x=64}
with actor2 {x=64}
with actor3 {x=64}
with actor4 {x=64}
with actor5 {x=320-64}
	
with oControl
{
cutscenename="SOFIA"
cutsceneline= "Hey, it's what we do. We have questions for you, miss witch."
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=940
{with oControl
{cutscenename="KIANDRA" cutsceneline= "...do you ever get answers through violence, what is wrong with you?!"}
}

if scenetime=1260
{with oControl
{cutscenename="HINA" cutsceneline= "Oh... um..."}
}

if scenetime=1460
{	
with oControl
{image_index=1
cutscenename="KIANDRA" cutsceneline= "Also, I'm not a witch. I'm a druid!"}
hspeed=-2 
}

if scenetime=1660
{	
with oControl
{image_index=1
cutscenename="BAHATI" cutsceneline= "Right, sorry... can you still help us? We are after thieves who were stealing treasures."}
hspeed=-2 
}

if scenetime=2040
{
with oControl
{cutscenename="KIANDRA" cutsceneline="...fine. If it gets you out of here faster, then so be it... Let us consult my cauldron for your paths..."}
}

if scenetime=2440 scenetime=6000

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
cutscenename="KIANDRA" cutsceneline= "Have a look at the cauldron and I'll show you the way from what you choose."}
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




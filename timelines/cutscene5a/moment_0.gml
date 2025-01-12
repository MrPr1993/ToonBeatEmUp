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

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene5a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(11215,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

with oControl
{
cutscenename="PRINCE" cutsceneline= "Hahahahahaha! Congratulations on a fight well won, my dear Viva and friends!"
}

newscript=function()
{scenetime+=1;

if scenetime<340 {y=lerp(y,240,0.1)}
if scenetime=340
{sprite_index=spr_cutscene5a1
with oControl
{
cutscenename="PRINCE"
cutsceneline="Don't be shy, my guests! Eat up!"
} x=0
y=0 vspeed=-0.2
}

if scenetime=540
{sprite_index=spr_cutscene5a2 image_index=0 vspeed=0 x=0 y=0
with oControl
{
cutscenename="SOFIA"
cutsceneline= "Viva you never told us this royal fishman hunk was your cousin! What was up with you?"
}

specialdraw=function()
{
if scenetime<1260
draw_sprite(sprite_index,0,x,y)
else draw_sprite(sprite_index,1,x,y)
draw_sprite(spr_cutscene5a2,2,x+240+specialcheck[0],y)
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=1000
{with oControl
{cutscenename="VIVA" cutsceneline= "Simple, I find him obnoxious."}
}

if scenetime=1260
{
	
with oControl
{image_index=1
cutscenename="PRINCE" cutsceneline= "Oh, my slim cousin of mine..."}
hspeed=-2 
}

if scenetime=1300 hspeed=0

if scenetime=1540
{sprite_index=spr_cutscene5a3 image_index=1 vspeed=0 x=0 y=0 specialcheck[0]=0
with oControl
{
cutscenename="PRINCE" cutsceneline= "I'm terribly sorry that my people attacked you so suddenly, but they needed to test you!"
}

specialdraw=function()
{
if scenetime=clamp(scenetime,1540,2430) {specialcheck[0]++; if specialcheck[0]>=30 image_index+=0.1; if image_index=3 image_index=1}
specialcheck[2]++; if specialcheck[2]>=80 {specialcheck[2]=0 specialcheck[3]++; specialcheck[4]=4}
draw_sprite(spr_cutscene5a4,specialcheck[3],320,specialcheck[4]) specialcheck[4]=lerp(specialcheck[4],0,0.1)
draw_sprite(spr_cutscene5a3,0,0,0)
draw_sprite(sprite_index,image_index,0,0)
}
}

if scenetime=2040
{
with oControl
{cutscenename="VIVA" cutsceneline= "As you usually do to protect your kingdom, huh?"}
}

if scenetime=2340
{
with oControl
{cutscenename="PRINCE" cutsceneline= "As a custom! This is a warrior's country after all."}
}

if scenetime=2640
{image_index=3
with oControl
{cutscenename="PRINCE" cutsceneline= "Although... What brings you here anyway?"}
}

if scenetime=2940
{
with oControl
{cutscenename="PRINCE" cutsceneline= "And how is that diamond I gave you, cousin?"}
}

if scenetime=clamp(scenetime,3140,3440) {image_index+=0.5; if image_index>=6 image_index=4}

if scenetime=3640
{
specialdraw=-1;

sprite_index=spr_cutscene5a2 image_index=3 x=0 y=0
with oControl
{
cutscenename="VIVA" cutsceneline= "Oh yeah... I can... about that..."}
}

if scenetime=3940
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.01 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3960,4040) if flashscreen.image_alpha>=2
{
with flashscreen {fadeSpd=0 image_alpha=1}
scenetime=4050

with oControl
{quakeFXTime=10;
cutscenename="PRINCE" cutsceneline= "Sweet scallops this is terrible! That diamond is enchanted! Terrible things could happen with the wrong hands!"}
} else scenetime=3970;



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


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=761

global.CutsceneSkip=0

timeline_position=5700
timeline_speed=1

canSkipCutscene=0

cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"
	}

cutscenePlaying=1
}

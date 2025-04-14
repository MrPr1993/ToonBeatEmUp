//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="MAKE A WISH!\nCHOOSE WISELY!"
CDtextA="SOMEWHERE COOLER."
CDtextB="BE ON LAND."
CDtextC="REACH GREATER HEIGHTS."

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene5c1 anim=9999 isDepth=0 depth=-3000 shadow=-1;

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

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{
cutscenename="MR.BURG" cutsceneline="I SURRENDER! PLEASE DON'T HURT MEEE!!!"
}

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime<340 {y=lerp(y,240,0.1)}
if scenetime=340
{
with actor8 {sprite_index=spr_geniehug x=0 y=0 shadow=-1 isDepth=0 depth=10}	

with oControl
{quakeFXTime=10
cutscenename="HAIFA" cutsceneline= "Please! Do not harm my beloved!"
} x=0
y=0
}

if scenetime=540
{ image_index=0 vspeed=0 x=-160 y=0 sprite_index=spr_geniehug hspeed=4
with oControl
{
cutscenename="DIVAS" cutsceneline= "'Beloved'?!"
}
}

if scenetime=576 hspeed=0

if scenetime=640
{actor6.sprite_index=mask_none
	sprite_index=mask_none
	
with oControl
{
cutscenename="BURGUSON" cutsceneline= "I got lost while lookin' for the rest of the gang... But then I met this beautiful dame and we fell madly in love!"
	
	}
}



if scenetime=940
{
with oControl
{
cutscenename="HAIFA" cutsceneline= "It is true! And if you leave us be, I will grant you one wish."
}

}

if scenetime=1140
{
with actor6 sprite_index=spr_cutscene5a3

with oControl
{cutscenename="HAIFA" cutsceneline= "I could give you wealth!"}
}

if scenetime=1300
{
x=0 sprite_index=spr_geniewishes2

with oControl
{cutscenename="VIVA" cutsceneline= "We... got that? We're rich already."}
}

if scenetime=1450
{
with oControl
{cutscenename="HAIFA" cutsceneline= "Oh. What about fame?"}
}

if scenetime=1600
{
with oControl
{cutscenename="BAHATI" cutsceneline= "We got all the fame we need."}
}

if scenetime=1750
{
with oControl
{cutscenename="HAIFA" cutsceneline= "What about love?! Love is one important thing."}
}

if scenetime=1900
{
with oControl
{cutscenename="SOFIA" cutsceneline= "All covered."}
}

if scenetime=2120
{
with oControl
{cutscenename="HINA" cutsceneline= "This is our kind of love."}
}

if scenetime=2300
{
with oControl
{cutscenename="HAIFA" cutsceneline= "...alright."}
}

if scenetime=2450
{image_index=1; scenetime=6000
}

if scenetime=6000
{
sprite_index=mask_none


with oControl
{
cutscenename="HAIFA" cutsceneline= "Just tell me what you need... But choose your words carefully..." 
}
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



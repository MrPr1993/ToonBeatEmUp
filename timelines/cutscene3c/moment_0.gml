//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[7]=1 feats_check(43);

with oControl
{
CDtextT="TRY AND SOLVE THE\nONI SISTERS' RIDDLE!"
CDtextA="THE RED ONI IS LYING."
CDtextB="BOTH ONI ARE LYING."
CDtextC="THE BLUE ONI IS LYING."

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
actor3=instance_create_depth(1146+24,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,160,-1,oCameoChar) with actor5
{sprite_index=spr_oni_cutscene image_index=0 anim=9999 image_xscale=-1
	}
actor6=instance_create_depth(3200-64,188,-1,oCameoChar) with actor6
{sprite_index=spr_oni_cutscene image_index=0 anim=9999 image_xscale=-1

	specialdraw=function()
	{
pal_swap_set(spr_ninjapal,6,false);
	draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset()
	}
	}

actor7=instance_create_depth(0+320,0,-1,oCameoChar) with actor7
{shadow=-1 sprite_index=spr_dojosurrounded anim=9999 image_xscale=1}

actor8=instance_create_depth(0,-32,-1,oCameoChar) with actor8 ///Riddle Onis
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1 isDepth=0 depth=-3010 shadow=-1 specialcheck[7]=1;
	
specialdraw=function()
{
if specialcheck[0]=1
{y++; y=clamp(y,-32,0) specialcheck[7]-=0.02
	
if specialcheck[5]=-1 {x-=2 x=clamp(x,-160,9999)}
if specialcheck[5]=1 {x+=2 x=clamp(x,-9999,160)}
	
draw_sprite_ext(spr_onibg,0,x,y,-1,1,0,c_white,1)
draw_sprite_ext(spr_onibg,1,x+320,y,1,1,0,c_white,1)
draw_sprite(spr_allblackscreen,0,x,y)

draw_sprite(spr_oniriddle,specialcheck[1],x,y)

pal_swap_set(spr_ninjapal,7,false);
draw_sprite_ext(spr_oniriddle,specialcheck[2],x+320,y,-1,1,0,c_white,1)
pal_swap_reset();

draw_sprite_ext(spr_allblackscreen,0,x,y,1,2,0,c_white,specialcheck[7])
}
}
	}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{

}

x=0;
y=-48

image_speed=0.25

musicplaystart(msc_mystery)

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}


if scenetime<480 {y+=0.2; y=clamp(y,-48,0)}
if scenetime=120
{

with oControl
{
cutscenename="SHOKIJO" cutsceneline= "Such power..."
}
}

if scenetime=240
{

	scenetime=340

with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "To use to assault our employees and customers."
}
}


if scenetime=640
{image_speed=0
with actor1 {x=64+32 sprite_index=spr_viva_talk3 image_speed=0.25}
with actor2 {x=96+32}
with actor3 {x=32+32+32}
with actor4 {x=48+32}
with actor5 {x=320-64-24}	
with actor6 {x=320-56-24}	

sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0

	
with oControl
{
cutscenename="VIVA" cutsceneline= "We want answers! What're those thieves planning to do with our treasure?!"
}
}

if scenetime=1000
{
with actor1 {image_index=0 image_speed=0}	
with actor4 {sprite_index=spr_sofia_talk image_speed=0.25}

with oControl
{cutscenename="SOFIA" cutsceneline= "You better speak up, chicas. We're 4-to-2."}
}

if scenetime=1360
{
with actor4 {image_index=0 image_speed=0}	
//with actor5 {sprite_index=spr_oni_talk image_speed=0.25} ///Fuku
	
with oControl
{cutscenename="FUKUKIJO"
cutsceneline= "Well, how arrogant of you..."
}
}

if scenetime=1560
{
with actor7 {x=0} ///Ninja Summon
dust_make_ext(96,130,0,0,0,0,spr_smoket,0)
dust_make_ext(213,130,0,0,0,0,spr_smoket,0)

dust_make_ext(90,103,0,0,0,0,spr_smoket,0)
dust_make_ext(148,102,0,0,0,0,spr_smoket,0)
dust_make_ext(258,105,0,0,0,0,spr_smoket,0)
dust_make_ext(282,99,0,0,0,0,spr_smoket,0)

dust_make_ext(104,100,-100,0,0,0,spr_smokemid,0)
dust_make_ext(220,100,-100,0,0,0,spr_smokemid,0)

dust_make_ext(0,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96*2,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96*3,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96*4,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96*5,100,-48,0,0,0,spr_smokemid,0)
dust_make_ext(96*6,100,-48,0,0,0,spr_smokemid,0)

dust_make_ext(15,156,0,0,0,0,spr_smokemid,0) with dustmk {isDepth=0 depth=-3010}
dust_make_ext(21,36,0,0,0,0,spr_smokemid,0) with dustmk {isDepth=0 depth=-3010}
dust_make_ext(305,38,0,0,0,0,spr_smokemid,0) with dustmk {isDepth=0 depth=-3010}
dust_make_ext(294,166,0,0,0,0,spr_smokemid,0) with dustmk {isDepth=0 depth=-3010}

with actor5 {image_index=0 image_speed=0} ///Fuku

with actor1 {sprite_index=spr_viva_wildtake image_index=0}
with actor2 {sprite_index=spr_hina_wildtake image_index=0}
with actor3 {sprite_index=spr_bahati_wildtake image_index=0}
with actor4 {sprite_index=spr_sofia_wildtake image_index=0}

with oControl
{image_index=1 quakeFXTime=10
cutscenename="" cutsceneline= ""
}

sprite_index=spr_dojosurrounded image_index=1 image_speed=0

}

if scenetime=1660
{
with actor1 {sprite_index=spr_viva_point}

with oControl
{image_index=1
cutscenename="VIVA" cutsceneline= "You and your big mouth..."
}
scenetime=1860
}


if scenetime=2040
{

with actor6 {sprite_index=spr_oni_talk image_speed=0.25}

with oControl
{
cutscenename="SHOKIJO" cutsceneline= "You would do well to mind your manners..."
}
}

if scenetime=2340
{
with actor6 {image_index=0 image_speed=0} ///Fuku	
with actor5 {sprite_index=spr_oni_talk image_speed=0.25} ///Fuku

with oControl
{
cutscenename="FUKUKIJO" cutsceneline= "And we would want to put you all in pieces here and now..."
}
}

if scenetime=2740
{
with actor6 {image_index=0 sprite_index=spr_oni_talk image_speed=0.25} ///Fuku
with actor5 {image_index=0 sprite_index=spr_oni_talk image_speed=0.25} ///Fuku

with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "But we find all of you amusing."
}
}

if scenetime=3100
{
with actor5 {image_index=0 image_speed=0} ///Fuku	
with actor6 {image_index=0 image_speed=0}

with actor2 {sprite_index=spr_hina_cutscene image_index=0}

with oControl
{
cutscenename="HINA" cutsceneline= "Okay...?"
}
}

if scenetime=3200
{
with actor5 {sprite_index=spr_oni_talk image_speed=0.25} ///Fuku	

with oControl
{
cutscenename="FUKUKIJO" cutsceneline= "We shall release you... But first, let's play a game."
}
}

if scenetime=3450
{

with actor5 {image_index=0 image_speed=0} ///Fuku	
with actor3 {sprite_index=spr_bahati_talk2 image_speed=0.25} ///Fuku

with oControl
{
cutscenename="BAHATI" cutsceneline= "A game? What do you mean?"
}
}

if scenetime=3600
{

with actor1 {sprite_index=spr_viva_point image_index=2}
with actor2 {sprite_index=spr_hina_point image_index=2}
with actor3 {sprite_index=spr_bahati_point image_index=2}
with actor4 {sprite_index=spr_sofia_point image_index=2}

with actor3 {image_index=0 image_speed=0} ///Fuku	
with actor6 {sprite_index=spr_oni_talk image_speed=0.25} ///Fuku	

with oControl
{
cutscenename="SHOKIJO" cutsceneline= "Just that. Answer our riddle, and in exchange, we'll send you on a path to the answers you seek."
}
}

if scenetime=3960
{

with actor6 {image_index=0 image_speed=0} ///Fuku	
with actor2 {sprite_index=spr_hina_opening image_speed=0.25} ///Fuku	

with oControl
{
cutscenename="HINA" cutsceneline= "Oh a riddle! How fun! Lay it on us!"
}
}

if scenetime=4160 ////Cut to black
{
audio_stop_all(); PlaySound(snd_steal)
	
sprite_index=spr_allblackscreen x=0 y=0 hspeed=0 vspeed=0
with oControl
{quakeFXTime=10
}
}

if scenetime=4250 ////Cut to black
{sprite_index=spr_oniriddle with actor7 {x=9999}

sprite_index=mask_none

with actor8 {specialcheck[0]=1}
	
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
{x=0 y=0 audio_stop_all();
with oCameoChar x=99999
sprite_index=spr_oniriddle with actor8 {specialcheck[0]=1 specialcheck[7]=0 x=0; y=0;}

with oControl
{
cutscenename="FUKUKIJO & SHOKIJO" cutsceneline= "Which of us is the liar?"
}
}

if scenetime=6250
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







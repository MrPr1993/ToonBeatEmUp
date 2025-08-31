//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[8]=1 feats_check(43);

with oControl
{
CDtextT="SHE'S NOT TALKING.\nWHAT DO YOU DO?"
CDtextA="LEAVE THE CIRCUS."
CDtextB="HELP HER OUT."
CDtextC="HIT THE DUCK."

cutscenename="DIXIE" cutsceneline= "WHAT'S THE BIG IDEA?!"

}



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4a0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

BGspr=instance_create_depth(0,0,-1,oCameoChar) with BGspr
{sprite_index=spr_quackBG anim=9999 isDepth=0 depth=-2000 shadow=-1;}

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150-16,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176-16,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_duck_talk1 image_index=0 anim=9999 image_xscale=-1
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

y=320

newscript=function()
{
	

scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}


if scenetime=1 {musicplaystart(msc_mystery)}


if scenetime<80 {y=lerp(y,230,0.1)}
if scenetime=120
{BGspr.sprite_index=mask_none
with actor1 {x=64}
with actor2 {x=64-16}
with actor3 {x=64+32}
with actor4 {x=64-16}
with actor5 {x=320-64}
	
with actor1 {sprite_index=spr_viva_talk3 image_speed=0.25}
	
sprite_index=mask_none scenetime=340
with oControl
{
cutscenename="VIVA" cutsceneline="Well, you attacked us. And your staff..."
} x=0
y=0 vspeed=-0.2
}

if scenetime=640
{sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0

with actor1 {image_index=0 image_speed=0}
with actor5 {sprite_index=spr_duck_talk1 image_speed=0.25}
	
with oControl
{cutscenename="DIXIE"
cutsceneline="What're you broads doin' are breakin' in, smackin' me and my crew around..."
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=940
{
sprite_index=spr_cutscene4a x=0 y=0

with oControl
{quakeFXTime=10
cutsceneline= "And ruinin' my show!"
}
}

if scenetime=1260
{sprite_index=mask_none
with actor5 {sprite_index=spr_duck_talk3 image_xscale=1 image_speed=0.1}
	
with oControl
{
cutsceneline= "My boss ain't gonna be happy to see all this damage!"
}

with actor1 {sprite_index=spr_viva_lookaround image_index=0}
with actor2 {sprite_index=spr_hina_lookaround image_index=2}
with actor3 {sprite_index=spr_bahati_lookaround image_index=1}
with actor4 {sprite_index=spr_sofia_lookaround image_index=0}

}

if scenetime=1460
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0 image_index=0}
with actor2 {sprite_index=spr_hina_talk2 image_index=0}
with actor3 {sprite_index=spr_bahati_talk image_index=0 image_speed=0.25}
with actor4 {sprite_index=spr_sofia_talk3 image_index=0}

	
with actor5 {sprite_index=spr_duck_hit image_speed=0 image_index=24}
with oControl
{image_index=1
cutscenename="BAHATI" cutsceneline= "Your boss?"
}
hspeed=-2 
}

if scenetime=1660
{	with actor5 {image_xscale=-1 sprite_index=spr_duck_attack1 image_index=0}

with actor3 {image_index=0 image_speed=0}
with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25}

with oControl
{image_index=1
cutscenename="VIVA" cutsceneline= "And who's that? Speak up, birdbrain, now!"}
hspeed=-2 
}

if scenetime=2040
{with actor5 {sprite_index=spr_duck_lemmethink image_index=0}

with actor1 {image_index=0 image_speed=0}

with oControl
{

cutscenename="DIXIE" cutsceneline="LET ME THINK..."
}
}
if scenetime=2180
{with actor5 {newscript=function(){image_index+=0.25 if image_index>=4 image_index=2 } 



}
with oControl
{
cutscenename="DIXIE" cutsceneline= "PBBBBBBBTH!!!"
}

}

if scenetime=clamp(scenetime,2180,2370)
if actor5.image_index=2
{
with actor1 {sprite_index=spr_viva_point image_index=2}
with actor2 {sprite_index=spr_hina_point image_index=2}
with actor3 {sprite_index=spr_bahati_point image_index=2}
with actor4 {sprite_index=spr_sofia_point image_index=2}
}

if scenetime=2380
{with actor5 newscript=-1;
with oControl
{sprite_index=spr_duck_taunt image_speed=0.1
cutscenename="DIXIE" cutsceneline= "I ain't sayin' NOTHIN' 'bout my boss, 'specially after you come in here rufflin' my feathers AND my performance!"
}
}

if scenetime=2840 scenetime=6000

if scenetime=6000
{BGspr.sprite_index=mask_none audio_stop_all();
	
with actor1 {x=64}
with actor2 {x=64-16}
with actor3 {x=64+32}
with actor4 {x=64-16}
with actor5 {x=320-64}
	
with actor1 {sprite_index=spr_viva_point image_index=0}
with actor2 {sprite_index=spr_hina_point image_index=0}
with actor3 {sprite_index=spr_bahati_point image_index=0}
with actor4 {sprite_index=spr_sofia_point image_index=0}

with actor5 {x=320-64 newscript=-1; sprite_index=spr_duck_talk2 image_speed=0.1}	
	
sprite_index=mask_none


with oControl
{
cutscenename="DIXIE" cutsceneline= "How about that?"}
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





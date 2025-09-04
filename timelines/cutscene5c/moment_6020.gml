///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stagesnow

with actorscreen
{scenetime=0;
	
with actor2 {sprite_index=spr_hina_talk image_speed=0.25}

sprite_index=mask_none
with oControl
{
//-Red Oni is lying(Swamp)-
//-I wish to be somewhere cooler-
cutscenename="HINA" cutsceneline= "The heat here's been murder on us..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with actor2 {image_index=0 image_speed=0}	

with actor5 {sprite_index=spr_genie_attack3 image_speed=0 image_index=0	newscript=function() {frame_set(0,6,0.25) frame_set(1,0,0.25) frame_set(2,1,0.25) frame_set(3,2,0.01)	frame_set(4,3,0.25)	frame_set(5,4,0.25)	frame_set(6,5,0.25)	}}

with oControl
{
//One clam ride later
cutscenename="HAIFA" cutsceneline= "Very well, your wish is granted!"

}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	

}

if scenetime=300
{with oControl {cutscenename="" cutsceneline= ""}
with flashscreen{image_alpha=1 fadeSpd=-0.05}

layer_set_visible("SnowBG1",1)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)

with actor1 {x=160-24 y=170 sprite_index=spr_viva_idlecold newscript=function() {image_index+=0.1 if image_index>=3 image_index=1}}
with actor2 {x=160+24 y=170 sprite_index=spr_hina_idlecold newscript=function() {image_index+=0.1 if image_index>=3 image_index=1}}
with actor3 {x=160-64 y=170 sprite_index=spr_bahati_idlecold newscript=function() {image_index+=0.1 if image_index>=3 image_index=1}}
with actor4 {x=160+64 y=170 sprite_index=spr_sofia_idlecold newscript=function() {image_index+=0.1 if image_index>=3 image_index=1}}

with actor5 x=9999 with actor6 x=9999

}

if scenetime=440
{
with oControl
{
//POOF
cutscenename="VIVA" cutsceneline= "S-S-Seriously?! You couldn't have been m-m-more specific?!"
}
}

//////
if scenetime=680
{
with oControl
{
cutscenename="HINA" cutsceneline= "Sorry!! I-I-It was so hot my head was swimming!"
}
}

if scenetime=900
{
with oControl {cutscenename="BAHATI" cutsceneline= "Nothing for it... We'll just have to climb our way down..." }
}

if scenetime=1220 ///Seeing minions walking to palace
{
sprite_index=spr_looksnowmountain x=0 y=0 vspeed=-0.1

with oControl {cutscenename="VIVA" cutsceneline= "Or you should mean up..."}
}


if scenetime=1420
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagecave

with actorscreen
{scenetime=0;
with actor3 {sprite_index=spr_bahati_talk2 image_speed=0.25}
sprite_index=mask_none
with oControl
{
//-Seahorses- 
cutscenename="BAHATI" cutsceneline= "I wish we could be on land..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;
with actor3 {image_index=0 image_speed=0}

if scenetime=320
{
with actor5 {sprite_index=spr_genie_attack3 image_speed=0 image_index=0	newscript=function() {frame_set(0,6,0.25) frame_set(1,0,0.25) frame_set(2,1,0.25) frame_set(3,2,0.01)	frame_set(4,3,0.25)	frame_set(5,4,0.25)	frame_set(6,5,0.25)	}}

	
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	
with oControl {cutscenename="HAIFA" cutsceneline= "So be it..."

}
scenetime=520
}

if scenetime=700
{
with flashscreen{image_alpha=1 fadeSpd=-0.05}

layer_set_visible("MineBG",1)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
layer_set_visible("BGcity",1)

///i65, 138
with actor1 {x=96 y=155}
with actor2 {x=165 y=138}
with actor3 {x=220 y=138}
with actor4 {x=200 y=155}

with actor5 x=9999 with actor6 x=9999

with oControl {//Riding
//POOF
cutscenename="" cutsceneline= ""
}

scenetime=960
}


if scenetime=1060
{


with oControl {//Riding
//POOF
cutscenename="VIVA" cutsceneline= "Phew... Fresh air..."
}
}

if scenetime=1260
{
PlaySound(snd_hitgroundheavy)



with actor1 { sprite_index=spr_viva_quicksand}
with actor2 {image_xscale=-1 sprite_index=spr_hina_point image_index=0}
with actor3 {image_xscale=-1 sprite_index=spr_bahati_point image_index=0}
with actor4 {image_xscale=-1 sprite_index=spr_sofia_point image_index=0}
with oControl {quakeFXTime=10}
}

if scenetime=1360
{with oControl {quakeFXTime=10 PlaySound(snd_quakeground) PlaySound(snd_fall)}

layer_set_visible("MineBG2",1)

with oControl {cutscenename="VIVA" cutsceneline= "You should have said STABLE LAND!!!"
}
with actor1 {shadow=-1 vspeed=8}

with actor1 { sprite_index=spr_viva_bdance image_index=0}
with actor2 { sprite_index=spr_hina_point image_index=2}
with actor3 { sprite_index=spr_bahati_point image_index=2}
with actor4 { sprite_index=spr_sofia_point image_index=2}

}


if scenetime=1660
{
PlaySound(snd_hitground)

with oControl {quakeFXTime=10 cutscenename="" cutsceneline= ""
}
}

if scenetime=1760
{
	
with actor4 { sprite_index=spr_sofia_talk2 image_speed=0.25}

with oControl {cutscenename="SOFIA" cutsceneline= "OH LOOK! A mine! I can also see something heading past it!"
}
}

if scenetime=1960
{
with actor2 {sprite_index=spr_hina_run hspeed=4 image_speed=0.25 image_xscale=1}
with actor3 {sprite_index=spr_bahati_run hspeed=4 image_speed=0.25 image_xscale=1}
with actor4 {sprite_index=spr_sofia_run hspeed=4 image_speed=0.25 image_xscale=1}
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=2160
{
with oControl {cutscenename="VIVA" cutsceneline= "Hey... hey! Don't leave me here! Get back here!"}
}

if scenetime=2360
{
with oControl {cutscenename="" cutsceneline= ""
}

}

///Splash

if scenetime=2520
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stageclouds

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="VIVA" cutsceneline= "We wish to reach our goal on greater heights!"
}
sprite_index=mask_none
x=0
y=0

with actor1 {sprite_index=spr_viva_talk image_speed=0.25}

scenetime=320

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with actor1 {image_index=0 image_speed=0}	

with actor5 {sprite_index=spr_genie_attack1 image_index=0}	

with oControl {cutscenename="HAIFA" cutsceneline= "Ah, that should be simple!"

}
}

if scenetime=660
{
with actor1 {sprite_index=spr_viva_wildtake image_index=0}
with actor2 {sprite_index=spr_hina_wildtake image_index=0}
with actor3 {sprite_index=spr_bahati_wildtake image_index=0}
with actor4 {sprite_index=spr_sofia_wildtake image_index=0}

with actor5 {sprite_index=spr_genie_attack2 PlaySound(snd_jump) ground=0 z=-1 spdZ=-32 newscript=function() {image_index+=0.25 spdZ+=0.9 z+=spdZ if z>=0 {z=0 ground=1} if ground {image_index=clamp(image_index,0,8.5) spdZ=0 z=0} else image_index=clamp(image_index,0,5) } }
	

with oControl {cutscenename="VIVA" cutsceneline= "Wait, what're you-"
}
}

if scenetime=clamp(scenetime,680,700)
{
scenetime=690
if actor5.ground scenetime=860
}

if scenetime=860
{
with actor1 {sprite_index=spr_viva_bdance shadow=-1; newscript=function(){z-=16}}
with actor2 {sprite_index=spr_hina_bdance shadow=-1; newscript=function(){z-=16}}
with actor3 {sprite_index=spr_bahati_bdance shadow=-1; newscript=function(){z-=16}}
with actor4 {sprite_index=spr_sofia_bdance shadow=-1; newscript=function(){z-=16}}

with oControl {//Viva gets shot through the ceiling
//Hina, Bahati and
quakeFXTime=10 PlaySound(snd_explosion)
cutscenename="" cutsceneline= ""

	}

scenetime=980
}

if scenetime=1060
{with oCameoChar x=99999


layer_set_visible("SandBG",1)
layer_set_visible("DesertSky",1)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)
//with oControl {cutscenename="SOFIA" cutsceneline= "Oh that's not good."
//They get shot through the same spot as Viva"
//}

scenetime=1380
}


if scenetime=1500
{
with actor1 {shadow=-1 x=160 y=160 z=0 sprite_index=spr_byetent2}

with oControl {quakeFXTime=10 PlaySound(snd_explosion) cutscenename="VIVA" cutsceneline="STUPID WISH SPECIFICATIONS!"}
}

if scenetime=1820
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)
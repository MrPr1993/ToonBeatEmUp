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

if scenetime=200
{with oControl {cutscenename="" cutsceneline= ""}
with flashscreen{image_alpha=1 fadeSpd=-0.05}

layer_set_visible("SnowBG1",1)
layer_set_visible("BTG1",0)
layer_set_visible("BTG2",0)
layer_set_visible("BTG3",0)
layer_set_visible("BTG4",0)

with actor1 {sprite_index=spr_viva_idlecold image_speed=0.1}
with actor2 {sprite_index=spr_viva_idlecold image_speed=0.1}
with actor3 {sprite_index=spr_viva_idlecold image_speed=0.1}
with actor4 {sprite_index=spr_viva_idlecold image_speed=0.1}
}

if scenetime=340
{
with oControl
{
//POOF
cutscenename="VIVA" cutsceneline= "S-S-Seriously?! You couldn't heve been m-m-more specific?!"
}
}

//////
if scenetime=520
{
with oControl
{
cutscenename="HINA" cutsceneline= "Sorry!! I-I-It was so hot my head was swimming!"
}
}

if scenetime=660
{
with oControl {cutscenename="BAHATI" cutsceneline= "Nothing for it... We'll just have to climb our way down..." }
}

if scenetime=1120 ///Seeing minions walking to palace
{
sprite_index=spr_looksnowmountain x=0 y=0 vspeed=-0.1

with oControl {cutscenename="VIVA" cutsceneline= "Or you should mean up..."}
}


if scenetime=1320
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


if scenetime=520
{flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	
with oControl {cutscenename="HAIFA" cutsceneline= "So be it..."

}
}

if scenetime=700
{
with flashscreen{image_alpha=1 fadeSpd=-0.05}
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=860
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	

with oControl {//Riding
//POOF
cutscenename="" cutsceneline= ""
}
}


if scenetime=1060
{
with oControl {//Riding
//POOF
cutscenename="VIVA" cutsceneline= "Phew... Fresh air..."
}
}

if scenetime=1260
{with oControl {quakeFXTime=10}

}

if scenetime=1360
{with oControl {quakeFXTime=10}
with oControl {cutscenename="VIVA" cutsceneline= "You should have said STABLE LAND!!!"
}
with actor1 {shadow=-1 vspeed=8}
}


if scenetime=1660
{
with oControl {quakeFXTime=10 cutscenename="" cutsceneline= ""
}
}

if scenetime=1760
{
with oControl {cutscenename="SOFIA" cutsceneline= "OH LOOK! A mine! I can also see the blimp heading past it!"
}
}

if scenetime=1960
{
with actor2 {sprite_index=spr_hina_run hspeed=4 }
with actor3 {sprite_index=spr_bahati_run hspeed=4 }
with actor4 {sprite_index=spr_sofia_run hspeed=4 }
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=2160
{
with oControl {cutscenename="VIVA" cutsceneline= "Hey.. hey! Don't leave me here! Get back here!"}
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
if cutsceneDecmode=3
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

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HAIFA" cutsceneline= "Ah, that should be simple!"

}
}

if scenetime=660
{
with oControl {cutscenename="VIVA" cutsceneline= "Wait, what're you-"


}
}

if scenetime=860
{
with oControl {//Viva gets shot through the ceiling
//Hina, Bahati and


	}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline= "Oh that's not good."
//They get shot through the same spot as Viva"
}
}

if scenetime=1300
{
with oControl {cutscenename="" cutsceneline=""}
}


if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="STUPID WISH SPECIFICATIONS!"}
}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}


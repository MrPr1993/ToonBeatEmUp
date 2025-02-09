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
cutscenename="PRINCE" cutsceneline= "In here! Bevalve will give you a lift to the surface!"


}

x=0
y=0

//with actor6 {x=400}
//with actor7 {x=520 }
//with actor8 {x=640}

newscript=function()
{
scenetime+=1;

if scenetime<100
{
with oControl {SceneX-=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=120
{
with oControl
{
//One clam ride later
cutscenename="SOFIA" cutsceneline= "Is it me or is this clam smellier on the inside..."
}
}

if scenetime=340
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Thank you, cousin. Alright girls let's go!"
}
}

//////
if scenetime=520
{

with oControl
{
//Zombies grab the divas and chuck them out
with oCameoChar x=-9999

with oControl {SceneX=0 __view_set( e__VW.XView, 0, 0)}

cutscenename="" cutsceneline= "Clam swims up"
}
with actor6
{x=-96
}
}

if scenetime=660
{
layer_set_visible("SurfaceTiles",1)
layer_set_visible("SurfaceGround",1)

with actor6
{sprite_index=mask_none}
with oControl {cutscenename="" cutsceneline= "Clam opens up and the divas come out slimy"}
}

if scenetime=800
{
with actor6
{
x=160 y=130
sprite_index=spr_mermaidcutscene_clam
}
}

if scenetime=1120
{
with actor1
{x=160 y=130 spdZ=-4 vspeed=4 ground=0 z=-4
sprite_index=spr_mermaidcutscene_clam_ew
newscript=function()
{
if !ground {spdZ+=0.45} z+=spdZ if z>=0 ground=1 if ground{z=0 spdZ=0}

}
}

with oControl {cutscenename="BAHATI" cutsceneline= "BLECHHHHHH!!!!!"}
}

if scenetime=1320
{
with oControl {cutscenename="HINA" cutsceneline= "So... gooey..."}
}

if scenetime=1520
{
with oControl {cutscenename="SOFIA" cutsceneline= "Well this wasn't something I'm meant to get sooner..."}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline= "Prince... another reason I don't visit..."}
}

if scenetime=1920
{
with oControl {cutscenename="HINA" cutsceneline= "Woah is just me or is it cold here?"}
}

if scenetime=2120
{
sprite_index=spr_mermaidcutscene_clam_lookmountain x=160 y=192
with oControl {cutscenename="VIVA" cutsceneline= "Well, Hina, it's because that's why."}
}

if scenetime=2520
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
cutscenename="PRINCE" cutsceneline= "Take our seahorses! They'll get you to your destination in a blink!"
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime<100
{
with oControl {SceneX-=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=520
{
with oCameoChar x=-999

with actor1 {x=-96; image_speed=0.25 sprite_index=spr_viva_seahorse; hspeed=2}
with actor2 {x=-100; image_speed=0.25 sprite_index=spr_hina_seahorse; hspeed=2}
with actor3 {x=-90; image_speed=0.25 sprite_index=spr_bahati_seahorse; hspeed=2}
with actor4 {x=-92; image_speed=0.25 sprite_index=spr_sofia_seahorse; hspeed=2}

with oControl {cutscenename="" cutsceneline= ""

}
}

if scenetime=660
{
with oControl {//Riding
cutscenename="SOFIA" cutsceneline= "Can't they go any faster?!"
}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline= "We'll never catch that blimp at this rate!"
}
}

if scenetime=1060
{
with oControl {
cutscenename="HINA" cutsceneline= "Wait... I think they're speeding up!"

}
}

if scenetime=1300
{////They walk off
with oControl {cutscenename="VIVA" cutsceneline= "Woah woah WOAH! NOT THAT MUCH!!!"
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}



if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="" cutsceneline= "SPLASH"}
}

if scenetime=2300
{
with oControl {cutscenename="VIVA" cutsceneline="...Not one word... Just... Go..."}
}

///Splash

if scenetime=2620
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
cutscenename="PRINCE" cutsceneline= "Water will rocket out of this spout! Ride it and you should be able to catch those miscreants!"
}

with actor1
{x=11215-16 y=171 image_xscale=-1}
with actor2
{x=11215+16 y=171 image_xscale=-1}
with actor3
{x=11215-16 y=171-16 image_xscale=-1}
with actor4
{x=11215+16 y=171-16 image_xscale=-1}

sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="DAVEY" cutsceneline= "Your highness!"
}
}

if scenetime=660
{
with oControl {cutscenename="PRINCE" cutsceneline= "Hmm?"

}
}

if scenetime=860
{
with oControl {cutscenename="DAVEY" cutsceneline= "The trajectory of the spout is way off!"

	}
}

if scenetime=1060
{
with oControl {cutscenename="DIVAS" cutsceneline= "WHAT?!"
}
}

if scenetime=1300
{
with oControl {quakeFXTime=160 cutscenename="VIVA" cutsceneline="PRINCE YOU STUPID FU-"}
}

if scenetime=1500
{
with oControl {//Divas move
cutscenename="" cutsceneline="FOOOOOSH"}

with actor1 {newscript=function(){z-=8}}
with actor2 {newscript=function(){z-=8}}
with actor3 {newscript=function(){z-=8}}
with actor4 {newscript=function(){z-=8}}

}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="..."}
}

if scenetime=1800
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="I'm pretty sure they'll be fine."}
}

if scenetime=1800
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="Hoo boy..."}
}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}



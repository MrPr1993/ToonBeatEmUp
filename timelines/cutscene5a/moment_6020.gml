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

if scenetime=200
{
with oControl
{
//One clam ride later
cutscenename="SOFIA" cutsceneline= "Is it me or is this clam smellier on the inside..."
}
}

if scenetime=400
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Thank you, cousin. Alright girls let's go!"
}

with actor1 {image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

//////
if scenetime=620
{
with flashscreen{image_alpha=1 fadeSpd=-0.05}
with oControl
{
//Zombies grab the divas and chuck them out
with oCameoChar x=9999

with oControl {SceneX=0 __view_set( e__VW.XView, 0, 0)}

cutscenename="" cutsceneline= "Clam swims up"
}
with actor6
{x=160 shadow=-1 y=240 vspeed=-4
}


}

if scenetime=760
{
layer_set_visible("SurfaceTiles",1)
layer_set_visible("SurfaceGround",1)

with actor6
{sprite_index=mask_none x=160 y=160 vspeed=0}
with oControl {cutscenename="" cutsceneline= "Clam opens up and the divas come out slimy"}
}

if scenetime=800
{
with actor6
{
x=160 y=160 vspeed=0
sprite_index=spr_mermaidcutscene_clam
}
}

if scenetime=900
{
with actor6
{
x=160 y=160
sprite_index=spr_mermaidcutscene_clam_ew
}
}

if scenetime=1120
{
with actor6
{
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
sprite_index=spr_mermaidcutscene_clam_lookmountain x=160 y=192 vspeed=0.01
with oControl {cutscenename="VIVA" cutsceneline= "Well, Hina, it's because that's why."}
}

if scenetime=2320
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

if scenetime=400
{with oControl {cutscenename="" cutsceneline= ""}
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=520
{with flashscreen{image_alpha=1 fadeSpd=-0.05}
with oCameoChar x=-999

with actor1 {x=-96; image_speed=0.25 sprite_index=spr_viva_seahorse; hspeed=2}
with actor2 {x=-100; image_speed=0.25 sprite_index=spr_hina_seahorse; hspeed=2}
with actor3 {x=-90; image_speed=0.25 sprite_index=spr_bahati_seahorse; hspeed=2}
with actor4 {x=-92; image_speed=0.25 sprite_index=spr_sofia_seahorse; hspeed=2}

with oControl {cutscenename="" cutsceneline= ""}

layer_hspeed("BGcity",-2)
layer_hspeed("BGcity2",-2)
}

if scenetime=700 with oCameoChar hspeed=0

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
layer_hspeed("BGcity",-4)
layer_hspeed("BGcity2",-4)
with oControl {
cutscenename="HINA" cutsceneline= "Wait... I think they're speeding up!"

}
}

if scenetime=1300
{////They walk off

with actor1 {image_speed=0.25 sprite_index=spr_viva_seahorse; hspeed=4}
with actor2 {image_speed=0.25 sprite_index=spr_hina_seahorse; hspeed=4}
with actor3 {image_speed=0.25 sprite_index=spr_bahati_seahorse; hspeed=4}
with actor4 {image_speed=0.25 sprite_index=spr_sofia_seahorse; hspeed=4}

layer_hspeed("BGcity",-8)
layer_hspeed("BGcity2",-8)
with oControl {cutscenename="VIVA" cutsceneline= "Woah woah WOAH! NOT THAT MUCH!!!"
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}

if scenetime=1500
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
with oControl {//KERSMASH!
cutscenename="" cutsceneline= ""}
}

if scenetime=1700
{with flashscreen instance_destroy();
with oControl {//KERSMASH!
	quakeFXTime=10
cutscenename="" cutsceneline= ""}
sprite_index=spr_cutscene5a x=0 y=0
with oControl {SceneX=0; __view_set( e__VW.XView, 0, SceneX )}
layer_hspeed("BGcity",0)
layer_hspeed("BGcity2",0)
}

if scenetime=1800
{
with oControl {cutscenename="VIVA" cutsceneline="...Not one word... Just... Go..."}
}

///Splash

if scenetime=2120
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
cutscenename="" cutsceneline= "" SceneX+=32; __view_set( e__VW.XView, 0, SceneX )
}

sprite_index=spr_allblackscreen x=oControl.SceneX y=0

with actor1
{x=11215-16 y=171 image_xscale=-1}
with actor2
{x=11215+16 y=171 image_xscale=-1}
with actor3
{x=11215-16 y=171-16 image_xscale=-1}
with actor4
{x=11215+16 y=171-16 image_xscale=-1}

newscript=function()
{
scenetime+=1;

if scenetime=60
{with actor6 {x=9999} with actor7 {x=9999} 

with actor5 {image_xscale=1 x=oControl.SceneX+80}

actor1.x=actor8.x-24 actor1.y=actor8.y actor1.image_xscale=-1
actor2.x=actor8.x+24 actor2.y=actor8.y actor1.image_xscale=-1
actor3.x=actor8.x-24 actor3.y=actor8.y-8 actor1.image_xscale=-1
actor4.x=actor8.x+24 actor4.y=actor8.y-8 actor1.image_xscale=-1

sprite_index=mask_none
with oControl {cutscenename="PRINCE" cutsceneline= "Water will rocket out of this spout! Ride it and you should be able to catch those miscreants!"}
}


if scenetime=620
{
with oControl {cutscenename="DAVEY" cutsceneline= "Your highness! WE GOT A PROBLEM!"
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

if scenetime=1200
{
with oControl {quakeFXTime=160 cutscenename="VIVA" cutsceneline="PRINCE YOU STUPID FU-"}
scenetime=1400
}

if scenetime=1480
{
with oControl {//Divas move
cutscenename="" cutsceneline=""}

with actor1 {shadow=-1; newscript=function(){z-=16}}
with actor2 {shadow=-1; newscript=function(){z-=16}}
with actor3 {shadow=-1; newscript=function(){z-=16}}
with actor4 {shadow=-1; newscript=function(){z-=16}}

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

if scenetime=1960
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="Hoo boy..."}
}

if scenetime=2120
{
oControl.stageEndFX=1
}
}
}
}



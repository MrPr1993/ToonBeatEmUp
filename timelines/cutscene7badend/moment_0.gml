//background_
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[18]=1 feats_check(43);
global.Ending=3

feats_check(41)

if cutscenePlaying=0
{
with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""
}

PlaySoundNoStackPitch(snd_carengine,0.3)

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

//Sofia: "That scientist took up all our time..."
//Bahati: "There's no way we can catch that thing now..."
//Hina: "Our treasure... All gone..."
//Viva: "All that nonsense... All those bruises... And nothing to show for it..."
//Bahati: "Pack it in, girls... Nothing left to do but head home..." 

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene7badend anim=9999 isDepth=0 depth=-3000 shadow=-1; x=0 y=0

hspeed=-0.25

actor1=instance_create_depth(160-16-48,144,-1,oCameoChar) with actor1
{sprite_index=spr_viva_badend image_speed=0 image_index=0 anim=9999 hspeed=0}
actor2=instance_create_depth(160+128-32,166,-1,oCameoChar) with actor2
{sprite_index=spr_hina_badend image_speed=0 image_index=0 anim=9999 hspeed=0}
actor3=instance_create_depth(160-64-32,156,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_badend image_speed=0 image_xscale=1 image_index=0 anim=9999 hspeed=0}
actor4=instance_create_depth(160+64-32,176,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_badend image_speed=0 image_xscale=1  image_index=0 anim=9999 hspeed=0}

newscript=function()
{scenetime+=1;

if scenetime=120
{
with oControl {cutscenename="VIVA" cutsceneline="WE'RE TOO LATE..."}
}

if scenetime=270
{sprite_index=mask_none x=0 y=0

with oControl { 
	SceneX=128 __view_set( e__VW.XView, 0, SceneX )
	hspeed=0 cutscenename="SOFIA" cutsceneline="There's no way we can catch that thing now..."}
}

if scenetime>=270
with oControl
{
SceneX-=0.25 SceneX=clamp(SceneX,0,9999) __view_set( e__VW.XView, 0, SceneX )
}

if scenetime=500
with oControl { cutscenename="HINA" cutsceneline="Our treasure... All gone..."}

if scenetime=800
with oControl {cutscenename="VIVA" cutsceneline="All that nonsense... All those bruises... And nothing to show for it..."}

if scenetime=1100
with oControl {cutscenename="BAHATI" cutsceneline="Pack it in, girls... Nothing left to do but head home..."}

if scenetime=1250
{
with actor1 {image_index=1}
with actor2 {image_index=1}
with actor3 {image_index=1}
with actor4 {image_index=1}
}

if scenetime=1400
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=1600
{
oControl.stageEndFX=1
}

/////	

}
}

	
timeline_position=10
timeline_speed=0

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


	
CutsceneStage=rm_creditscene
canSkipCutscene=2
cutscenePlaying=1
}




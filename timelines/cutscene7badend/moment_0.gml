//background_
instance_create_depth(-999,-999,-1,oTextBox)



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
{sprite_index=cutscene7badend anim=9999 isDepth=0 depth=-3000 shadow=-1;

var tilecheck=layer_get_id("BTG0")
layer_hspeed(tilecheck,-2)

actor1=instance_create_depth(160-16,144,-1,oCameoChar) with actor1
{sprite_index=spr_viva_run image_speed=0 image_index=0 anim=9999 hspeed=0}
actor2=instance_create_depth(160+16,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_run image_speed=0 image_index=0 anim=9999 hspeed=0}
actor3=instance_create_depth(160-32,144,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_run image_speed=0  image_index=1 anim=9999 hspeed=0}
actor4=instance_create_depth(160+32,144,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_run image_speed=0  image_index=0 anim=9999 hspeed=0}

newscript=function()
{scenetime+=1;

var tilecheck=layer_get_id("BTG1")
layer_x(tilecheck,round(-scenetime*0.1))

if scenetime=120
{
with oControl {cutscenename="VIVA" cutsceneline="WE'RE TOO LATE..."}
}

if scenetime=270
with oControl {cutscenename="SOFIA" cutsceneline="There's no way we can catch that thing now..."}

if scenetime=500
with oControl {sprite_index=mask_none cutscenename="HINA" cutsceneline="Our treasure... All gone..."}

if scenetime=800
with oControl {cutscenename="VIVA" cutsceneline="All that nonsense... All those bruises... And nothing to show for it..."}

if scenetime=1100
with oControl {cutscenename="BHATI" cutsceneline="Pack it in, girls... Nothing left to do but head home..."}

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




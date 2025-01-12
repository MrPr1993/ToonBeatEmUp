//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{canSkipCutscene=0
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"
cutscenename=""
cutsceneline=""
}


actor1=instance_create_depth(86,17000,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999 shadow=-1}
actor2=instance_create_depth(50,14004,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999 shadow=-1}
actor3=instance_create_depth(46,16000,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999 shadow=-1}
actor4=instance_create_depth(76,18008,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999 shadow=-1}
actor5=instance_create_depth(215,17000,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1 shadow=-1}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_blimpscene anim=9999 isDepth=0 depth=-3000 shadow=-1;
image_index=1 y=-96; vspeed=2; x=160;
newscript=function()
{image_index+=0.25 if image_index>=4 image_index=1
if scenetime=0 if y>=130 {vspeed=0;
scenetime=20;  PlaySound(snd_explosion) oControl.quakeFXTime=60;

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.01 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol depth=-4000
}

}

if scenetime>=10 scenetime+=1;

if scenetime=320 hspeed=0
}



//////	

}



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
	
canSkipCutscene=2
cutscenePlaying=1
}


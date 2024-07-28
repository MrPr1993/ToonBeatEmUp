//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename=""
cutsceneline=""
}

actor1=instance_create_depth(76,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_stand anim=9999}
actor2=instance_create_depth(76,170-24,-1,oCameoChar) with actor2
{sprite_index=spr_hina_stand anim=9999}
actor3=instance_create_depth(76,170+24,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_stand anim=9999}
actor4=instance_create_depth(76,170+48,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_stand anim=9999}
actor5=instance_create_depth(76,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
oCameoChar.x+=320;

SceneX=320
__view_set( e__VW.XView, 0, SceneX )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;
	
if scenetime=60
{
with oControl
{PlaySound(snd_explosion) quakeFXTime=10
}
}

if scenetime=120
{
with oControl
{cutscenename="VIVA"
cutsceneline="THE PLANE'S GOING DOWN!"
}
}

if scenetime=200
{
with oControl
{cutscenename="BAHATI"
cutsceneline="OH NO! WHAT DO WE DO?!"
}
}

if scenetime=280
{
with oControl
{cutscenename="HINA"
cutsceneline="WOW. IT'S A LONG WAY DOWN..."
}
}

if scenetime=360
{
with oControl
{cutscenename="SOFIA"
cutsceneline="LOOK THERE, CHICAS!!"
}
}

if scenetime=480
{
with oControl
{cutscenename="SOFIA"
cutsceneline="LOOK THERE, CHICAS!"
}

actor6=instance_create_depth(76,170,-1,oCameoChar) with actor6
{sprite_index=spr_hwolf_stand anim=9999 image_xscale=-1}
}

if scenetime=560
{
with actor6 {shadow=-1; newscript=function()
{
z+=spdZ;

spdZ=-4

spdZ+=0.45

hspeed=-0.2 vspeed=0.2

}}

}

if scenetime=clamp(scenetime,500,540)
with oControl {if SceneX>0 SceneX-=4 else SceneX=0}

if scenetime=640
{
with oControl
{
SceneX=320
__view_set( e__VW.XView, 0, SceneX )

cutscenename="SOFIA"
cutsceneline="DAMN IT! SHE'S GETTING AWAY AGAIN!"
}
}

if scenetime=760
{
	with oControl
	{
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"

timeline_position=5700
timeline_speed=1
}
}





//////	


}
}

	
timeline_position=10
timeline_speed=0

	
if global.CutsceneSkip=0 canSkipCutscene=1 else {timeline_position=99997 stageIntro=0
	cutscenename=""
cutsceneline=""
	}




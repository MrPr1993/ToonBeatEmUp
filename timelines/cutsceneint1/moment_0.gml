//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

musicplaystart(msc_mystery)

with oControl
{canSkipCutscene=0
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename="MR.BURG" cutsceneline= "Boss! BOSS! There's 4 crazy dames followin' and beatin' on us!"
}


actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=mask_none image_index=0 anim=9999 shadow=-1}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=mask_none image_index=0 anim=9999 shadow=-1}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=mask_none image_index=1 anim=9999 shadow=-1}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=mask_none image_index=0 anim=9999 shadow=-1}
actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=mask_none anim=9999 image_xscale=-1 shadow=-1}
oCameoChar.x+=160;

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(0,0,-1,oCameoChar) with actorscreen
{sprite_index=spr_int1_1 anim=9999 isDepth=0 depth=-3000 image_speed=0.5
x=75 shadow=-1
newscript=function()
{scenetime+=1;

if scenetime=240
{hspeed=-1.1
with oControl
{cutscenename="VAN BAD" cutsceneline= "Eh? Oh don't get your mask in a twist over a few angry women. Now leave me to my treasures!"}

}

if scenetime=320 hspeed=0

if scenetime=700
{x=0 hspeed=-0 sprite_index=spr_int1_2
with oControl
{cutscenename="MR.BURG" cutsceneline= "Yes, boss..."}
}

if scenetime=800
{image_speed=0 image_index=1
with oControl
{cutscenename="VAN BAD" cutsceneline= "Hmmm... Dr. Fran!"

with actor1
{sprite_index=spr_int1_3 x=160 y=192 image_index=0 anim=9999 shadow=-1}
}

}

if scenetime=920
{hspeed=-2 
with oControl
{cutscenename="DR.FRAN" cutsceneline= "Yes, Master Van Bad?"
	actor1.hspeed=2.5
	}
}

if scenetime=960
{hspeed=0 with oControl actor1.hspeed=0}
if scenetime=1120
{
with oControl
{cutscenename="VAN BAD" cutsceneline= "Be a dear and... Analyze our four pursuers, would you...?"}
}

if scenetime=1380
{
with oControl
{cutscenename="DR.FRAN" cutsceneline= "Right away, Master Van Bad."}
}

if scenetime>=1480 with oControl actor1.image_alpha-=0.025

if scenetime=1580
{x=80 with oControl actor1.x=-9999
	sprite_index=spr_int1_4	
with oControl
{

cutscenename="VAN BAD" cutsceneline= "Hmhmhmhm... Soon enough I'm going to turn the world on its head..."}
}
if scenetime>=1580
x=lerp(x,0,0.025)

if scenetime>=1880 image_alpha-=0.025

if scenetime=2000
{
with oControl
stageEndFX=1
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


	
canSkipCutscene=2
cutscenePlaying=1
}

oControl.CutsceneStage=global.BonusStageNext
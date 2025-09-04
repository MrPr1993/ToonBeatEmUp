//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[19]=1 feats_check(43);

with oControl
{canSkipCutscene=0
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

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_ending1a anim=9999 isDepth=0 depth=-3000 shadow=-1;
	x=0; y=0;
	
actor1=instance_create_depth(86,1709,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,1449,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,1609,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,1889,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,1709,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
oCameoChar.x+=160;

x=0

specialdraw=function()
{
if scenetime<500
draw_sprite(spr_ending1b,0,0,0)

draw_sprite_ext(sprite_index,image_index,round(x),round(y),1,1,0,c_white,1)

if scenetime<500
draw_sprite(spr_ending1a,image_index,0,0)

if scenetime<120
draw_sprite_ext(spr_whitecol,0,0,0,88,88,0,c_black,1)
}

newscript=function()
{scenetime+=1;

if scenetime=120
{image_index=0
with oControl
{cutscenename="VIVA"
cutsceneline="...WHERE IS IT?"
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=240
{image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="WHERE IS IT?!"
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=320
{image_index=2
with oControl
{cutscenename=""
cutsceneline=""
PlaySound(snd_hitground) quakeFXTime=10
}
}

if scenetime=380
{image_index=2 musicplayonce(msc_intro)
with oControl
{cutscenename="VIVA"
cutsceneline="MY DIAMOND!"
}
}

if scenetime=500
{sprite_index=spr_ending1c
vspeed=-0.05
with oControl
{cutscenename="SOFIA"
cutsceneline="WE GOT OUR STUFF BACK!"
}
}

if scenetime=740
{
with oControl
{cutscenename="BAHATI"
cutsceneline="SAFE AND SOUND!"
}
}

if scenetime=960
{
with oControl
{cutscenename="HINA"
cutsceneline="SO MUCH WORK... BUT IT WAS WORTH IT!"
}
}

if scenetime=1200
{vspeed=0; PlaySound(snd_carengine)
sprite_index=spr_divasseecops image_index=0 x=0 y=0

with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=1300
{scenetime=1400 
with actor1 {sprite_index=spr_divasseecops hspeed=4 image_index=1 x=-320 y=0 shadow=-1 }
with actor2 {sprite_index=spr_divasseecops hspeed=-6 image_index=2 x=600 y=0 shadow=-1 }
}

if scenetime=1475 {actor1.hspeed=0 PlaySound(snd_carengine2)}
if scenetime=1500 {scenetime=1760 actor2.hspeed=0 PlaySound(snd_carengine2)}



if scenetime=1860
{vspeed=0 y=0
actor1.y=9999
actor2.y=9999 PlaySound(snd_break2)
sprite_index=spr_incomingcops image_index=0
with oControl
{cutscenename="Chief" quakeFXTime=10
cutsceneline="ALRIGHT, ALRIGHT, EVERYONE, SPREAD OUT!"
}
}

if scenetime=2100
{vspeed=0 y=0 sprite_index=spr_incomingcops image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="OH, SO THE CAVALRY'S FINALLY HERE. WHERE HAVE ALL OF YOU BEEN?"
}
}

if scenetime=2400
{vspeed=0 y=0
with oControl
{cutscenename="CHIEF"
cutsceneline="DON'T BLAME US, MA'AM. WE'VE BEEN BUSY TRACKING DOWN THE MOOKS ALL THE WAY HERE."
}
}

if scenetime=2700
{vspeed=0 y=0
scenetime=2800

with oControl
{cutscenename="CHIEF"
cutsceneline="NOW LET US TAKE IT FROM HERE."
}
}

if scenetime=2900
{
flashend=instance_create_depth(0,0,-1,oCameoChar) with flashend
{shadow=-1 image_alpha=0 image_blend=c_black sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {image_alpha+=0.025} }

}

if scenetime=3000
{
with flashend
{newscript=function() {image_alpha-=0.025}}
	
vspeed=0 x=0 y=0 hspeed=-0.1 sprite_index=spr_copssearch image_index=0
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=3600
{vspeed=0 y=0 hspeed=0 x=0 scenetime=3700

sprite_index=spr_nowthatsover image_index=0
	
with oControl
{cutscenename="HINA"
cutsceneline="WELL NOW THAT'S OVER."
}
}

if scenetime=3900
{scenetime=4200
with oControl
{cutscenename="BAHATI"
cutsceneline="NEXT TIME WE'LL HAVE TO KEEP THEM UNDER TIGHTER WRAPS."
}
}


if scenetime=4550
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=1
with oControl
{cutscenename="VIVA"
cutsceneline="And uh..."
}
}

if scenetime=4750 ////Cleaning up
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=2
	
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=clamp(scenetime,4750,4950)
{
if specialcheck[9]=0 {dust_make(random_range(64,320-64),random_range(64,320-64),0,0,0,0)
with dustmk {sprite_index=spr_dustmid isDepth=0 depth=-3002} 

specialcheck[9]=2

if specialcheck[8]=0 {PlaySoundNoStack(snd_steal) specialcheck[8]=4} else specialcheck[8]-=1;

} else specialcheck[9]-=1
}

if scenetime=4950
{vspeed=0 y=0 sprite_index=spr_nowthatsover image_index=3
with oControl
{cutscenename="VIVA"
cutsceneline="So girls! What do you want to do now?"
}
}

if scenetime=5400
{vspeed=0 y=0
with oControl
{cutscenename="SOFIA"
cutsceneline="Chica, you know what we do."
}
}

if scenetime=5700
{vspeed=0 y=0 scenetime=5850
with oControl
{cutscenename="VIVA"
cutsceneline="Well how about it? Ready to get the show back on?"
}
}

if scenetime=5900
{
with flashend
{image_alpha=0 image_blend=c_black sprite_index=spr_whitecol isDepth=0 depth=-3010 image_xscale=99 image_yscale=99 anim=9999 newscript=function() {image_alpha+=0.01} }

}

if scenetime=6300
{PlaySound(snd_1up)
sprite_index=spr_divasletsparty

with flashend {image_alpha=1 image_blend=c_white newscript=function() {image_alpha-=0.1}}	

vspeed=0 y=-192
with oControl
{cutscenename="DIVAS"
cutsceneline="LET'S PARTY!"
}

}
if scenetime>=6300 {y=lerp(y,-32,0.1)}

if scenetime=6600
{CutsceneStage=rm_creditscene
with oControl
stageEndFX=1
}



///-All's Well that Ends Well-
//cutscenename="VIVA" cutsceneline= "Urgh.... That was a rough landing... Anyone find our stuff?"
//cutscenename="BAHATI" cutsceneline= "Be patient, there's alot of rubble to dig through."
//cutscenename="HINA" cutsceneline= "I called the police to take the baddies away!"
//cutscenename="SOFIA" cutsceneline= "Aha! Here we are!"
//Gleam
//cutscenename="DIVAS" cutsceneline= "OUR TREASURES!!!"
//cutscenename="VIVA" cutsceneline= "Finally! My beautiful diamond, safe and sound!" 
//cutscenename="HINA" cutsceneline= "So much work... But it was worth it!"
//cutscenename="BAHATI" cutsceneline= "Next time we'll have to keep them under tighter wraps."
//cutscenename="SOFIA" cutsceneline= "Well how about it? Ready to get the show back on?"
//cutscenename="DIVAS" cutsceneline= "LET'S PARTY!!!"

//-Viva Las Rage-as-
//All's Well That Ends Well dialogue until after "OUR TREASURES!!!"
//cutscenename="BAHATI" cutsceneline= "We can finally rest easy, after all those obstacles..."
//cutscenename="VIVA" cutsceneline= "Right... All those... Obstacles... Including all the times I got smacked around... Humiliated... WHY WAS IT ALWAYS ME?! WHAT DID I DO TO DESERVE ALL THAT PAIN?!"
//cutscenename="HINA" cutsceneline= "Uh oh... She's losing it..."
//cutscenename="VIVA" cutsceneline= "YOU'RE DAMN RIGHT I'M LOSING IT!!! HOWCOME YOU THREE DIDN'T GET HORRIBLY BRUTALIZED AS MUCH AS I DID?!"
//cutscenename="SOFIA" cutsceneline= "Calm down! It's all over now!"
//cutscenename="VIVA" cutsceneline= "Right... You're right... Still..."
//Viva is rapidly approaching your location
//cutscenename="VIVA" cutsceneline= "I WOULDN'T HAVE GOTTEN ALL THOSE LUMPS IF YOU PICKED A BETTER ROUTE!!! C'MERE!!!"
//Camera crash
//cutscenename="VIVA" cutsceneline= "OOF!"
//-Jail Songbirds-
//All's Well That Ends Well dialogue for first 4 lines. Suddenly cuffed.
//cutscenename="VIVA" cutsceneline= "W-What?! Why are WE getting cuffed?!"
//cutscenename="COP" cutsceneline= "You ladies are under arrest for numerous counts of trespassing and destruction of private AND public property! You have the right to remain silent!"
//cutscenename="BAHATI" cutsceneline= "Oh... We DID do quite a bit of damage..."
///cutscenename="SOFIA" cutsceneline= "You've gotta be kidding..."
//Yeet into police truck
//cutscenename="HINA" cutsceneline= "Do you think they'll let us perform for the prison?"
//cutscenename="VIVA" cutsceneline= "WAIT! THERE HAS TO BE SOME MISTAKE! THE THIEVES WERE THE ONES WRECKING EVERYTHING! WAIT, YOU MORONS!!!"
//cutscenename="VIVA" cutsceneline= "I WANT A LAWYER! DO YOU HAVE ANY IDEA WHO I AM?! I WANT YOUR SUPERVISOR!"

//Door shut



if scenetime=7600
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

CutsceneStage=rm_creditscene
canSkipCutscene=2
cutscenePlaying=1

}


arcade_saving(rm_opening)
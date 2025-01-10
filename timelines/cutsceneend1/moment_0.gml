//background_
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

actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
oCameoChar.x+=160;

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_ending1a anim=9999 isDepth=0 depth=-3000 shadow=-1;
	x=0; y=0;

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
{image_index=2
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
{vspeed=0;
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=1860
{vspeed=0 y=0
with oControl
{cutscenename="COP"
cutsceneline="ALRIGHT, ALRIGHT, SPREAD OUT!"
}
}

if scenetime=2060
{vspeed=0 y=0
with oControl
{cutscenename="VIVA"
cutsceneline="OH, SO THE CAVALRY HAS FINALLY ARRIVED. WHERE HAVE ALL OF YOU BEEN?"
}
}

if scenetime=2350
{vspeed=0 y=0
with oControl
{cutscenename="COP"
cutsceneline="DON'T BLAME ME, MA'AM. WE'VE BEEN BUSY TRACKING DOWN THE PERPS AND CATCHING THEM ALL THE WAY HERE."
}
}

if scenetime=2700
{vspeed=0 y=0
with oControl
{cutscenename="VIVA"
cutsceneline="OH, THEN YOU GOT ANOTHER ONE FOR YOU TO CATCH."
}
}

if scenetime=3000
{vspeed=0 y=0 hspeed=-0.01
with oControl
{cutscenename=""
cutsceneline="."
}
}

if scenetime=3600
{vspeed=0 y=0 hspeed=0 x=0
with oControl
{cutscenename="HINA"
cutsceneline="WELL NOW THAT'S OVER."
}
}

if scenetime=3900
{vspeed=0 y=0
with oControl
{cutscenename="BAHATI"
cutsceneline="NEXT TIME WE'LL HAVE TO KEEP THEM UNDER TIGHTER WRAPS."
}
}

if scenetime=4550
{vspeed=0 y=0
with oControl
{cutscenename="VIVA"
cutsceneline="And uh..."
}
}

if scenetime=4850 ////Cleaning up
{vspeed=0 y=0
with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=5150
{vspeed=0 y=0
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
{vspeed=0 y=0
with oControl
{cutscenename="VIVA"
cutsceneline="Well how about it? Ready to get the show back on?"
}
}

if scenetime=6300
{vspeed=0 y=0
with oControl
{cutscenename="DIVAS"
cutsceneline="LET'S PARTY!"
}
}

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
//cutscenename="SOFIA" cutsceneline= "Calm down! It's all over with now!"
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


canSkipCutscene=2

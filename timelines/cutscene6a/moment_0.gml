//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[14]=1 feats_check(43);

with oControl
{
CDtextT="THE PLANE'S GOING DOWN!\nWHAT YOU'LL DO?!"
CDtextA="GET THE PARACHUTES!"
CDtextB="JUMP OFF THE PLANE!"
CDtextC="USE THE HARPY!"

cutscenename="SYNTHESA" cutsceneline= "Heeheehee~! What fun what fun! Congratulations on your victory, friends!"

}


SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

///@description Decision Results
canSkipCutscene=2
timeline_speed=0

CutsceneStage=rm_stagelab

actorscreen=instance_create_depth(160,192,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene6a anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_plantprincess_move image_index=10 anim=9999 image_xscale=-1
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{sprite_index=mask_none
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline= "Yeah, yeah thanks and all that... Now where are the thieves hiding?"}
}
}

if scenetime=340
{
with actor5 
{

}

with oControl
{
with oControl {cutscenename="SYNTHESA" cutsceneline= "Wheeeeheeheehee~! Lalalalaaa~!"}
}
}

if scenetime=520
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Hey... are you even listening?!"
}
}

if scenetime=660
{
with oControl {cutscenename="SYNTHESA" cutsceneline="Victory~ Victory~ You deserve the victory~"}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline= "HEY!!! WHERE. ARE. THE. THIEVES?!"}
}

if scenetime=1060
{
with oControl {cutscenename="SYNTHESA" cutsceneline= "Oh! They should be up those stairs!"}
}

if scenetime=1360
{
with oControl {cutscenename="VIVA" cutsceneline= "FINALLY. Let's get our treasure back, ladies!"}

with actor1 {sprite_index=spr_viva_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}

}

if scenetime=1620
{with actor5 {image_xscale=1}
with oControl {cutscenename="SYNTHESA" cutsceneline="TA-TA! Tell the doctor I said hi~"}
}

if scenetime=1800
{
with oControl {cutscenename="" cutsceneline=""}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,1800,1815)
{scenetime=1810 actor5.z-=4
if flashscreen.image_alpha>=1.5
{x=0; y=0; sprite_index=spr_cavelab; image_index=0;
with flashscreen {fadeSpd=-0.25 isfading=1 image_alpha=1}
scenetime=1820
}
}

if scenetime=1820
{
vspeed=-0.25
}


if scenetime=2320
{
oControl.stageEndFX=1
}

}
}



	
timeline_position=10
timeline_speed=0



SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


cutscenePlaying=1
}
CutsceneStage=rm_stagelab
canSkipCutscene=2


arcade_saving(CutsceneStage)



//SYNTHESA: "Oh, you all going somewhere~?"
//VIVA: "Uhh yeah? We're getting outta here ya crazy weed!"
//SYNTHESA: "Weed?! How rude!"
//BAHATI: "yeah that was Rude Viva. Especially towards royalty."
//SYNTHESA: "Yes. But all that brawling was so much fun! Let's go another round!"
//SOFIA: "Yeah, no. We're outta here, menina planta."
//HINA: "If you'll just excuse us..."
//Vines surround them as soon they walk away
//SYNTHESA: "Ohohoho~ Nonono, you lot are going nowhere... You belong to me now!"
//The divas see plant monsters and humanoids pop up
//"JOIN OUR KINGDOM! JOIN OUR KINGDOM!"
//Synthesa turns gigantic and monstrous.
//SYNTHESA: "AND BECOME ONE OF US!"
//The divas break through the vines in a panic
//VIVA: "She can't be serious! Run!!"
//They look back and see that Synthesa is slowing down. The background goes dark. After a moment, they look back and see Synthesa stopped chasing them.
//VIVA: "I think they stopped."
//SOFIA: "Did they just gave up?"
//BAHATI "It's too bad. Her place was well decorated!"
//HINA: "Question!"
//VIVA: "Yes, Hina?"
//HINA: "Can we fly?"
//VIVA: "Why do you ask...?"
//The lights go on and they realize they're standing in midair
//VIVA: "...Son of a..."
//The divas fall into the depth below, leading to the lab level
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


/////Synthesa grabs Viva's hands
cutscenename="" cutsceneline= ""

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
{sprite_index=spr_grabvivahands x=0 y=0 anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=0 anim=9999}
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

newscript=function()
{
scenetime+=1;

if scenetime=80
{image_index=1 scenetime=240
with oControl {quakeFXTime=2 PlaySound(snd_steal)}
}

if scenetime=320
{sprite_index=spr_cheeryplant x=0 y=0 musicplaystart(msc_training)
with oControl
{
with oControl {
cutscenename="SYNTHESA" cutsceneline= "Heeheehee~! What fun what fun! Congratulations on your victory, friends!"
}
}
}

if scenetime=clamp(scenetime,320,378) x-=1;

if scenetime=600
{sprite_index=mask_none;
	
with actor1 {x=160-68 sprite_index=mask_none y=160}
	
with actor5 
{sprite_index=spr_plantprincessviva image_xscale=1 image_speed=0 image_index=0
x=160 y=160
}
//with actor1 {sprite_index=spr_viva_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor2 {x=48 y=140 }
with actor3 {x=64 y=150 }
with actor4 {x=56 y=180 }
with oControl
{
cutscenename="VIVA" cutsceneline= "Yeah, yeah thanks and all that... Now where are the thieves hiding?"
}
}

if scenetime=850
{
with actor1 {x=160-68 sprite_index=mask_none y=1600}

with actor2 {sprite_index=spr_hina_point image_index=0}
with actor3 {sprite_index=spr_bahati_point image_index=0}
with actor4 {sprite_index=spr_sofia_point image_index=0}

with actor5 {newscript=function() {image_index+=0.25 if image_index>=6 {image_index=2 PlaySoundNoStack(snd_swing2)}}
}

with oControl
{
cutscenename="SYNTHESA" cutsceneline= "How about we dance!"
}
}

if scenetime=1020
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Hey! Stop spinning! Are you even listening?!"
}
}

if scenetime=1360
{
with oControl {cutscenename="SYNTHESA" cutsceneline="Victory! Victory! You deserve the victory!"}
}

if scenetime=1560
{with oControl {cutscenename="VIVA" cutsceneline= "HEY!!! WHERE. ARE. THE. THIEVES?!"}
}

if scenetime=1760
{PlaySound(snd_viva11)
with actor1 {x=200 y=160 image_xscale=1 sprite_index=spr_viva_hit image_index=16 hspeed=6}

with actor2 {sprite_index=spr_hina_point image_index=2}
with actor3 {sprite_index=spr_bahati_point image_index=2}
with actor4 {sprite_index=spr_sofia_point image_index=2}

with actor5 {image_xscale=1 sprite_index=spr_plantprincess_attack5 AnimFrame=0 image_index=4 newscript=function() 
	{
	frame_set(0,4,0.25)	
	frame_set(1,5,0.01)	if AnimFrame=2 {image_index=1 sprite_index=spr_plantprincess_attack2}
	frame_set(2,1,0.25)	
	frame_set(3,0,0.25)
	}
	}

with oControl {cutscenename="SYNTHESA" cutsceneline= "Oh! They should be up those stairs!"}
/////Synthesa throws Viva off-screen
}

if scenetime=1860
{
with oControl {quakeFXTime=10 PlaySound(snd_hitgroundheavy)}
}

if scenetime=1960
{
with oControl {cutscenename="VIVA" cutsceneline= "Ow... Let's get our treasure back, ladies..."}


}

if scenetime=2160
{
with actor5 {newscript=-1;}

with actor1 {sprite_index=spr_viva_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_index=0 anim=9999 image_speed=0.25 hspeed=2}

with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=2220
{scenetime=2560
with actor5 {image_xscale=1 sprite_index=spr_plantprincess_bye image_speed=0.25}
with oControl {cutscenename="SYNTHESA" cutsceneline="TA-TA! Tell the doctor I said hi."}
}


if scenetime=3000
{audio_stop_all();
with oControl {cutscenename="" cutsceneline=""}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=clamp(scenetime,3000,3015)
{scenetime=3010
if flashscreen.image_alpha>=1.5
{x=0; y=-48; sprite_index=spr_cavelab; image_index=0;
with flashscreen {fadeSpd=-0.25 isfading=1 image_alpha=1}
scenetime=3020
}
}

if scenetime=3020
{
vspeed=0.05
}


if scenetime=3310
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
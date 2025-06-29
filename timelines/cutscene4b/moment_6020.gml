///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageufo

with actorscreen
{scenetime=0;

actor8.image_index=0 actor8.specialcheck[3]=10; with actor8 x=xstart;

with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="KIANDRA" cutsceneline= "Well it seems like there's some commotion going on around this cornfield."
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=400
{
with oControl
{
cutscenename="SOFIA" cutsceneline= "A cornfield? You sure we really have to go there?"
}
}

if scenetime=640
{
with oControl
{
cutscenename="KIANDRA" cutsceneline= "Well, that's not my problem! Now..."
}
}

if scenetime=800
{sprite_index=spr_cutscene4b image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2
with oControl
{
cutscenename="" cutsceneline= ""

}
}

if scenetime=920
{sprite_index=mask_none image_blend=c_white actor8.x=9999;
	
with actor1 {x=0 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_cutscene2 image_speed=0.2 image_index=0}}}}
	
with actor2 {x=0 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=3.5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {x=0 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {x=0 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}
	
with oControl
{
layer_set_visible("CornSky2",1)
layer_set_visible("CornSky1",1)
layer_set_visible("CornSky",1)
//Zombies grab the divas and chuck them out
cutscenename="KIANDRA" cutsceneline= "GET LOST!!!"
	
}
}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline= "Well that's rude! Fine! We didn't even needed your help anyways!"}
}

if scenetime=1300
{
with actor1 {sprite_index=spr_viva_moveangry image_xscale=1 hspeed=1 image_speed=0.25}
with oControl {cutscenename="VIVA" cutsceneline= "Stupid mask-wearing haggy loner... she and her rotting corpses..."}
}


if scenetime=1700
{
with actor2  {sprite_index=spr_hina_cutscene image_index=3}
with actor3  {sprite_index=spr_bahati_cutscene image_index=3}
with actor4  {sprite_index=spr_sofia_talk3 image_index=0}

with oControl {cutscenename="" cutsceneline= ""}

}

if scenetime=1800
{
with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2 image_xscale=1}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2 image_xscale=1}
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
CutsceneStage=rm_stagemermaid

with actorscreen
{scenetime=0;
	
	actor8.image_index=0 actor8.specialcheck[3]=11; with actor8 x=xstart;

with oControl
{
//-Both are lying(Carnival)-
cutscenename="KIANDRA" cutsceneline= "Supposedly a prince lives in the nearby waters... But you'll need this potion to tread the seafloor..."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="VIVA" cutsceneline= "And what is it?"}
}

if scenetime=660
{sprite_index=spr_cutscene4b image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2 actor8.x=9999;
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=800
{sprite_index=spr_grosspot image_blend=c_white x=0 y=0 image_xscale=1 image_yscale=1
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=960
{sprite_index=spr_cutscene4b3
with oControl {
}
}

if scenetime=1060
{
vivaface=instance_create_depth(0,192,-1,oCameoChar) with vivaface
{isDepth=0 depth=-10000 sprite_index=spr_vivaoohyum
newscript=function()
{y=lerp(y,-48,0.1)
}
}

with oControl {
cutscenename="VIVA" cutsceneline= "Oh what's this?!"
}
}

if scenetime=1300
{sprite_index=spr_vivalikesit image_index=0 with vivaface x=999
with oControl {cutscenename="VIVA" cutsceneline="Mmm what is your recipe?"}
}

if scenetime=1500
{
with oControl {//KERSMASH!
cutscenename="KIANDRA" cutsceneline=  "Well now, you find this appetizing? That's a first."}
}

if scenetime=1800
{sprite_index=spr_vivalikesit 
with oControl {cutscenename="SOFIA" cutsceneline= "Are your tastebuds warped or something?!"}
}

if scenetime=2300
{
with oControl {cutscenename="HINA" cutsceneline= "Are you even human..."}
}

if scenetime=2600
{
with oControl {cutscenename="BAHATI" cutsceneline="Is it even safe to eat...?"}
}

if scenetime=2900
{image_index=1
with oControl {cutscenename="VIVA" cutsceneline="Girls, don't be rude to our host! Eat the soup!"}
}

if scenetime=3260
{
with oControl {cutscenename="BAHATI" cutsceneline="BUT-"}
}

if scenetime=3400
{sprite_index=spr_vivalikesit image_index=2
with oControl {quakeFXTime=10 cutscenename="VIVA" cutsceneline="Eat!"}
}

if scenetime=3500
{sprite_index=spr_cutscene4b image_blend=c_black x=0 y=0 image_xscale=2 image_yscale=2
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=3700 
{sprite_index=mask_none image_blend=c_white x=0 y=0 image_xscale=1 image_yscale=1
	
with actor1 {x=100 y=160 sprite_index=spr_viva_cutscene}

with actor2 {x=160-96 y=180 sprite_index=spr_hina_cutscene image_index=4}
with actor3 {x=160 y=180 sprite_index=spr_sofia_cutscene image_index=0}
with actor4 {x=160+96 y=180 sprite_index=spr_bahati_cutscene image_index=4}

with actor5 {x=220 y=160 sprite_index=spr_witch_intro image_xscale=-1 image_index=7}
	
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=4000
{
with actor1 {sprite_index=spr_viva_talk image_speed=0.25 }

with oControl {cutscenename="VIVA" cutsceneline="I know him. I never wanted to meet him because of the situation, but I guess we have no other choice."}
}

if scenetime=4400
{
with actor1 {sprite_index=spr_viva_talk image_speed=0 image_index=0}

with actor5 {image_index=8}

with oControl {cutscenename="KIANDRA" cutsceneline="Well I wish you luck with that. At least I got to meet someone who appreciates my work."}
}

if scenetime=4750
{
with actor1 {sprite_index=spr_viva_talk2 image_speed=0.25 }

with oControl {cutscenename="VIVA" cutsceneline="Come on, girls. Stop overreacting. That soup was great."}
}

if scenetime=5000
{
with actor1 {image_speed=0 image_index=0}

with oControl {cutscenename="BAHATI" cutsceneline="Viva even put mayo and ketchup on the soup as a condiment. That's... not..."}
}

///Splash

if scenetime=5320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagedesert

with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="KIANDRA" cutsceneline= "Looks like your path leads into the desert..."
}

x=0
y=0

newscript=function()
{
scenetime+=1;

actor8.image_index=0 actor8.specialcheck[3]=12; with actor8 x=xstart;

if scenetime=480
{
with oControl {cutscenename="BAHATI" cutsceneline= "Alright but... Where exactly?"

}
}

if scenetime=660
{
with oControl {cutscenename="KIANDRA" cutsceneline= "I don't know, find out yourself! In fact... Just to get you out of here faster... I'll make this a quick trip."
}
}


if scenetime=1060
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1120 {flashscreen.fadeSpd=0 x=0 y=0 actor8.x=9999;
sprite_index=spr_hotdesert image_index=0 vspeed=-0.2
}
if scenetime>=1120 flashscreen.image_alpha-=0.1

if scenetime=1300
{x=48 y=32 hspeed=-0.1 vspeed=-0.02
sprite_index=spr_hotdesert image_index=1
with oControl {cutscenename="VIVA" cutsceneline= "Well that's a quick trip. MY FOOT!"
}
}

if scenetime=1500
{
with oControl {cutscenename="HINA" cutsceneline="It's... hot... too hot even for me..."}
}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="SOFIA" cutsceneline="Get used to it, chica. It's the desert."}

}

if scenetime=1900
{sprite_index=spr_hotdesert image_index=2 hspeed=0 x=0 y=0 vspeed=-0.1
with oControl {//SMASH!
cutscenename="BAHATI" cutsceneline="OH hey look over there! That must be it!"}
}


if scenetime=2120
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)
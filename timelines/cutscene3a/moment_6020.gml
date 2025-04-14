///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stageswamp

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
{cutscenename="VIVA" cutsceneline=  "What about the one from the swamp?"}	

}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
with oControl {cutscenename="HATHOR" cutsceneline=  "We recall sharing a bond with a mystic in the swamps... We can sense their presence still there. Quickly! We will teleport you there now!"}
}
}

if scenetime=540
{
with oControl
{
with oControl {cutscenename="SOFIA" cutsceneline="Sounds sticky. I like the sound of it."}
}
}

if scenetime=720
{
with oControl
{
cutscenename="HATHOR" cutsceneline= "And away you all will go!"
}
}

if scenetime=860
{
with oControl {cutscenename="VIVA" cutsceneline="WAIT we're not-"}
}

if scenetime=1060
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=1 fadeSpd=-0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}		

layer_set_visible("SwampBG1",1)	
layer_set_visible("SwampBG2",1)	

with actor5 x=999
	
with oControl {cutscenename="VIVA" cutsceneline="...ready..."}
}

if scenetime=1260
{
with oControl {cutscenename="HINA" cutsceneline="Wow she's good."}
}

if scenetime=1560
{
with oControl {cutscenename="BAHATI" cutsceneline="It sure is dark in here..."}
}

if scenetime=1820
{
with oControl {cutscenename="VIVA" cutsceneline="Whatever. Let's find this mystic person. Bet she's a witch."}
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
CutsceneStage=rm_stagecarnival

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline=  "Come on, Hina, we don't have time to listen to this fossil, besides, I saw them running off toward a carnival."
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HATHOR" cutsceneline=  "Fossil?! HOW DARE YOU!! Hey! Where are you-"}

with actor1 {sprite_index=spr_viva_move image_speed=0.25 hspeed=2}
with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2}
with actor3 {sprite_index=spr_bahati_move image_speed=0.25 hspeed=2}
with actor4 {sprite_index=spr_sofia_move image_speed=0.25 hspeed=2}
}

if scenetime=580 with actor5 {image_xscale=1}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline=  "Carnival~? Ohh, I wonder if they have any fun games there?"}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline="Oooh will there be a strength game?"}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="I wanna ride the biggest bull!"}
}

if scenetime=1300
{
with oControl {cutscenename="VIVA" cutsceneline="Focus, girls. Focus..."}
}

if scenetime=1500
{
with oControl {cutscenename="HATHOR" cutsceneline="..."}
}

if scenetime=1750
{
with oControl {cutscenename="HATHOR" cutsceneline="Carn-e-val?"}
}

if scenetime=2000
{
with oControl {cutscenename="HATHOR" cutsceneline="How long was I even gone?"}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stagebeach

with actorscreen
{scenetime=0;
with oControl {cutscenename="HATHOR" cutsceneline="We befriended someone quite powerful in the odyssey days. We can teleport you to her domain with ease."}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="BAHATI" cutsceneline= "Is that so? Could be helpful."}
}

if scenetime=660
{
with oControl {cutscenename="HATHOR" cutsceneline="OF COURSE! I'M A GODDESS!"}
}

if scenetime=860
{
with oControl {cutscenename="SOFIA" cutsceneline= "Well what are we waiting for? Teleport away!"}
}

if scenetime=1060
{
with oControl {cutscenename="HATHOR" cutsceneline= "Very well. We wish you luck and will await your return..."}
}

if scenetime=1300
{
layer_set_visible("BeachBG1",1)	
layer_set_visible("BeachBG2",1)

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=1 fadeSpd=-0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	

with oControl {cutscenename="" cutsceneline=""}

with actor5 x=999
with actor1 {x=92-16 z-=200 vspeed=0 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_point image_index=0}}}}
	
with actor2 {x=92+16 z-=200 vspeed=0 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {x=92-32 z-=200 vspeed=0 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {x=92+32 z-=200 vspeed=0 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=0 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{vspeed=0 anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}

with actor1 {x=160-24 y=160}
with actor2 {x=160+24 y=160}
with actor3 {x=160-64 y=160}
with actor4 {x=160+64 y=160}
}

if scenetime=clamp(scenetime,1301,1350)
{scenetime=1310
if actor1.ground {oControl.quakeFXTime=10 scenetime=1500}
}

if scenetime=1750
{
with oControl {cutscenename="VIVA" cutsceneline="OW?! Can't she teleport us lower?!"}

}

if scenetime=2020
{
oControl.stageEndFX=1
}
}
}
}

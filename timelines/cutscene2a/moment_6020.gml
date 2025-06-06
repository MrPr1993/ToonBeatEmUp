///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stage4

with actorscreen
{scenetime=0; shadow=-1;
	
specialdraw=function()
{
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a2,2,160,y)
draw_sprite(spr_cutscene2a2,0,160,y)
}

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline="WE NEED TO JUMP!"
}

newscript=function()
{
scenetime+=1;

if scenetime=120
{
with oControl
{
cutscenename="SOFIA" cutsceneline="YOU DON'T HAVE TO TELL ME TWICE!"
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline="ABANDON SHIP!"}
}
}

if scenetime=420
{
with actor1 x=999
with actor2 x=999
with actor3 x=999
with actor4 x=999
with actor5 x=9000

with oControl {cutscenename="" cutsceneline=""}
specialdraw=-1; x=0 y=0
sprite_index=spr_allblackscreen image_xscale=1 image_yscale=1
}

if scenetime=480
{
layer_set_visible("ShipBG",1)	

with oControl
{
cutscenename="" cutsceneline= ""
}
specialdraw=-1;
x=0 hspeed=-16
sprite_index=spr_allblackscreen image_xscale=1
}

if scenetime=520
{

with actor1 {sprite_index=spr_viva_jump1 x=160-64 image_index=1 y=200 z=-200 newscript=function(){z+=8}}
with actor2 {sprite_index=spr_hina_jump1 x=160-40 image_index=1 y=200 z=-240 newscript=function(){z+=8}}
with actor3 {sprite_index=spr_bahati_jump1 x=160+64 image_index=1 y=200 z=-230 newscript=function(){z+=8}}
with actor4 {sprite_index=spr_sofia_jump1 x=160+40 image_index=1 y=200 z=-210 newscript=function(){z+=8}}
}

if scenetime=640
{
y=0
x=320 hspeed=-16
sprite_index=spr_allblackscreen image_xscale=24
}

if scenetime=720
{sprite_index=spr_lookshipgo layer_set_visible("ShipBG",0)	
x=0 y=0 hspeed=0
image_xscale=1
with oControl {cutscenename="BAHATI" cutsceneline="AND THERE IT GOES..."}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline="..SO WE GOT TO SWIM."}
}

if scenetime=1060
{hspeed=-2
with oControl {cutscenename="SOFIA" cutsceneline="HEY I SEE LAND OVER THERE!"}
}

if scenetime=1100 hspeed=0

if scenetime=1220
{
with oControl {cutscenename="VIVA" cutsceneline="GREAT! LET'S GO THERE! WAIT... WHERE'S..."}
}

if scenetime=1420
{image_index=1
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline="OH. ONE OF US HAS TO DO MOUTH TO MOUTH."}
}

if scenetime=1900
{
with oControl {cutscenename="HINA" cutsceneline="BLBLBBLLBLBLALSbLB."}
}
if scenetime=2100
{
with oControl {cutscenename="VIVA" cutsceneline="OH NEVER MIND SHE'S BREATHING. I THINK..."}
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
CutsceneStage=rm_stage3

with actorscreen
{scenetime=0;
sprite_index=spr_grabdawheel image_index=1
with oControl
{
cutscenename="VIVA" cutsceneline="WE GOTTA TAKE THE WHEEL!"
}
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=360
{
specialdraw=function()
{
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(sprite_index,image_index,160,y)
}

sprite_index=spr_grabdawheel image_index=2
with oControl {quakeFXTime=10; cutscenename="HINA" cutsceneline="LIKE THIS?"}
}

if scenetime=560
{
with oControl {cutscenename="BAHATI" cutsceneline="OH MY GOSH! THAT'S NOT WHAT SHE MEANT!"}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="WELL THIS IS JUST GREAT!"}
}

if scenetime=1300
{
with oControl {cutscenename="HINA" cutsceneline="THANK YOU."}
}

if scenetime=1500
{
with oControl {cutscenename="VIVA" cutsceneline="SHE WAS BEING SARCASTIC!"}
}

if scenetime=1750
{image_index=3
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH LOOK OUT! WE'RE GONNA CRASH!"}
}

if scenetime>=2000 {image_index+=0.25 if image_index>=6 image_index=4}

if scenetime=2000
{
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"}
}

if scenetime=2220
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{shadow=-1;
CutsceneStage=rm_stage5

with actorscreen
{scenetime=0;

specialdraw=-1;

with oControl {cutscenename="" cutsceneline=""}
sprite_index=spr_wakerosy image_index=0
x=0
y=0

newscript=function()
{
scenetime+=1;

if scenetime=120
{image_index=1 scenetime=320
with oControl {quakeFXTime=10 PlaySound(snd_hit) PlaySound(snd_franki2)}

}

if scenetime=420
{image_index=2
with oControl {cutscenename="ROSY" cutsceneline="HUH?! YOU?! WHY YOU..."}
}

if scenetime=660
{image_index=3
with oControl {cutscenename="VIVA" cutsceneline="NO TIME TO BEAT MY PRETTY FACE IN! THERE'S NO ONE ON THE WHEEL!"}
}

if scenetime=960
{scenetime=1060
with oControl {cutscenename="ROSY" cutsceneline="ACH, CRAP! OUTTA MY WAY!"}
}

if scenetime=1260
{sprite_index=spr_allblackscreen
layer_hspeed("BGsky",0)
with oControl {cutscenename="" cutsceneline=""}

with actor5 {sprite_index=spr_franki_stand}
}

if scenetime=1460 hspeed=-16

if scenetime=1660
{
with oControl {cutscenename="VIVA" cutsceneline="SO YOU AREN'T WORKING WITH THEM?"}
}

if scenetime=1900
{
with oControl {cutscenename="ROSY" cutsceneline="HECK NO! I WAS BUSY KICKING OUT STOWAWAYS THAT GOT ALL OVER MY PRECIOUS SHIP."}
}

if scenetime=2200
{
with oControl {cutscenename="BAHATI" cutsceneline="WELL I'M GLAD WE MANAGED TO SETTLE THIS ISSUE. AND I'M HAPPY YOU'RE GIVING US A HAND."}

}

if scenetime=2550
{
with oControl {cutscenename="ROSY" cutsceneline="OF COURSE, BAHATI! I'M YOUR BIGGEST FAN!"}

}

if scenetime=2800
{
with oControl {cutscenename="SOFIA" cutsceneline="THAT EXPLAINS A LOT. SO, WHERE IS THIS SHIP HEADING?"}
}

if scenetime=3100
{
with oControl {cutscenename="ROSY" cutsceneline="IT'S HEADING TO THE PORT NEAR THAT DOJO CASINO PLACE. I DID HEAR THERE ARE SHADY PEOPLE SHOWING UP THERE RECENTLY."}
}

if scenetime=3560
{
with oControl {cutscenename="VIVA" cutsceneline="THEN THAT'S WHERE WE GOTTA GO TO FIND WHERE OUR TREASURE'S TAKEN."}
}

if scenetime=3860
{
with oControl {cutscenename="SOFIA" cutsceneline="GOOD! I CAN'T WAIT TO BEAT UP SOME NINJAS!"}
}

if scenetime=4280
{
oControl.stageEndFX=1
}
}
}
}

arcade_saving(CutsceneStage)
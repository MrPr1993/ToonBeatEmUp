///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4  ///Abandon Ship
with oControl {cutscenename="VIVA" cutsceneline="WE NEED TO JUMP!"}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="YOU DON'T HAVE TO TELL ME TWICE!"}
}

if scenetime=480{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="ABANDON SHIP!"}
}

if scenetime=720
{
with oControl {
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}
image_blend=c_black sprite_index=spr_whitecol x=0 y=0
depth=-9999 image_xscale=320 image_yscale=240
}

if scenetime=920
{sprite_index=mask_none}

if scenetime=980
{	
with oControl {cutscenename="BAHATI" cutsceneline="AND THERE IT GOES..."}
}

if scenetime=1000
{
with oControl {cutscenename="VIVA" cutsceneline="..SO WE GOT TO SWIM."}
}

if scenetime=1220
{
with oControl {cutscenename="SOFIA" cutsceneline="HEY I SEE LAND OVER THERE!"}
}

if scenetime=1420
{
with oControl {cutscenename="VIVA" cutsceneline="GREAT! LET'S GO THERE! WAIT... WHERE'S..."}
}

if scenetime=1820
{
with oControl {cutscenename="VIVA" cutsceneline="I'M NOT DOING MOUTH TO MOUTH."}
}

if scenetime=2000
{
with oControl {cutscenename="HINA" cutsceneline="BLBLBBLLBLBLALsbLB."}
}
if scenetime=2200
{
with oControl {cutscenename="VIVA" cutsceneline="OH NEVER MIND SHE'S BREATHING. I THINK..."}
}
////END SCENE PART
if scenetime=2400 oControl.stageEndFX=1
}
}
//////
if cutsceneDecmode=1
{CutsceneStage=rm_stage3 ///Jump off the plane


with oControl {
SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )
}
with actorscreen {isDepth=0 x=0 y=0 depth=-9999 specialcheck[0]=-320 specialcheck[1]=-320 specialcheck[2]=-320 specialcheck[3]=-320
	
newscript=function()
{scenetime+=1;
if scenetime=60{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WE GOTTA TAKE THE WHEEL!"}
}
if scenetime=120*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="LIKE THIS?"}}

if scenetime=180*4{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="OH MY GOSH! THAT'S NOT WHAT SHE MEANT!"}}

if scenetime=240*4{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="WELL THIS IS JUST GREAT!"}}

if scenetime=300*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="THANK YOU."}}

if scenetime=360*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="SHE WAS BEING SARCASTIC!"}}

if scenetime=420*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH LOOK OUT!!!!"}}

if scenetime=520*4{ x=0 y=0
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"}}

////END SCENE PART
if scenetime=740*4 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Try to wake Rosy up
with oControl {cutscenename="VIVA" cutsceneline="HEY! HEY LADY! WAKE UP!"}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="ROSY" cutsceneline="HUH?! YOU?! WHY YOU..."}
}
if scenetime=480{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="NO TIME TO BEAT MY PRETTY FACE IN! THERE'S NO ONE ON THE WHEEL!"}
}
if scenetime=700{ x=0 y=0
with oControl {cutscenename="ROSY" cutsceneline="ACH, CRAP! OUTTA MY WAY!"}
}
if scenetime=920{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="SO YOU AREN'T WORKING WITH THEM?"}
}
if scenetime=1220{ x=0 y=0
with oControl {cutscenename="ROSY" cutsceneline="HECK NO! I WAS BUSY KICKING OUT STOWAWAYS THAT GOT ALL OVER MY PRECIOUS SHIP."}
}
if scenetime=1420{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="WELL I'M GLAD WE MANAGED TO SETTLE THIS ISSUE. AND I'M HAPPY YOU'RE GIVING US A HAND." }
}
if scenetime=1620{ x=0 y=0
with oControl {cutscenename="ROSY" cutsceneline="OF COURSE, BAHATI! I'M YOUR BIGGEST FAN!"}
}
if scenetime=1820{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="THAT EXPLAINS A LOT. SO, WHERE IS THIS SHIP HEADIN?"}
}
if scenetime=2020{ x=0 y=0
with oControl {cutscenename="ROSY" cutsceneline="IT'S HEADING TO THE PORT NEAR THAT DOJO CASINO PLACE. I DID HEAR THERE ARE SHADY PEOPLE SHOWING UP THERE RECENTLY."}
}
if scenetime=2220{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="THEN THAT'S WHERE WE GOTTA GO TO FIND WHERE OUR TREASURE'S TAKEN."}
}
if scenetime=2420{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="GOOD! I CAN'T WAIT TO BEAT UP SOME NINJAS!"}
}

////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"

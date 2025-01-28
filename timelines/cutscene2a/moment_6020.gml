///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stage4

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline="WE NEED TO JUMP!"
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
with oControl {cutscenename="SOFIA" cutsceneline="YOU DON'T HAVE TO TELL ME TWICE!"}
}
}

if scenetime=340
{
with oControl
{
with oControl {cutscenename="VIVA" cutsceneline="ABANDON SHIP!"}
}
}

if scenetime=520
{
with oControl
{
cutscenename="" cutsceneline= "SHIP SCENE"
}
}

if scenetime=660
{
with oControl {cutscenename="BAHATI" cutsceneline="AND THERE IT GOES..."}
}

if scenetime=860
{with oControl {cutscenename="VIVA" cutsceneline="..SO WE GOT TO SWIM."}
}

if scenetime=1060
{
with oControl {cutscenename="SOFIA" cutsceneline="HEY I SEE LAND OVER THERE!"}
}

if scenetime=1360
{
with oControl {cutscenename="SOFIA" cutsceneline="HEY I SEE LAND OVER THERE!"}
}

if scenetime=1620
{
with oControl {cutscenename="VIVA" cutsceneline="GREAT! LET'S GO THERE! WAIT... WHERE'S..."}
}

if scenetime=1920
{
with oControl {cutscenename="VIVA" cutsceneline="I'M NOT DOING MOUTH TO MOUTH."}
}

if scenetime=2200
{
with oControl {cutscenename="HINA" cutsceneline="BLBLBBLLBLBLALsbLB."}
}
if scenetime=2500
{
with oControl {cutscenename="VIVA" cutsceneline="OH NEVER MIND SHE'S BREATHING. I THINK..."}
}

if scenetime=3020
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

sprite_index=mask_none
with oControl
{
cutscenename="VIVA" cutsceneline="WE GOTTA TAKE THE WHEEL!"
}
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="HINA" cutsceneline="LIKE THIS?"}
}

if scenetime=660
{
with oControl {cutscenename="HINA" cutsceneline="LIKE THIS?"}
}

if scenetime=860
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
{
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH LOOK OUT!!!!"}
}

if scenetime=2000
{
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=3
{
CutsceneStage=rm_stage5

with actorscreen
{scenetime=0;
with oControl {cutscenename="VIVA" cutsceneline="HEY! HEY LADY! WAKE UP!"}
sprite_index=mask_none
x=0
y=0

newscript=function()
{
scenetime+=1;


if scenetime=520
{
with oControl {cutscenename="ROSY" cutsceneline="HUH?! YOU?! WHY YOU..."}
}

if scenetime=660
{
with oControl {cutscenename="VIVA" cutsceneline="NO TIME TO BEAT MY PRETTY FACE IN! THERE'S NO ONE ON THE WHEEL!"}
}

if scenetime=860
{
with oControl {cutscenename="ROSY" cutsceneline="ACH, CRAP! OUTTA MY WAY!"}
}

if scenetime=1060
{
with oControl {cutscenename="VIVA" cutsceneline="SO YOU AREN'T WORKING WITH THEM?"}
}

if scenetime=1300
{
with oControl {cutscenename="ROSY" cutsceneline="HECK NO! I WAS BUSY KICKING OUT STOWAWAYS THAT GOT ALL OVER MY PRECIOUS SHIP."}
}

if scenetime=1500
{
with oControl {cutscenename="BAHATI" cutsceneline="WELL I'M GLAD WE MANAGED TO SETTLE THIS ISSUE. AND I'M HAPPY YOU'RE GIVING US A HAND."}

}

if scenetime=1750
{
with oControl {cutscenename="ROSY" cutsceneline="OF COURSE, BAHATI! I'M YOUR BIGGEST FAN!"}

}

if scenetime=2000
{
with oControl {cutscenename="SOFIA" cutsceneline="THAT EXPLAINS A LOT. SO, WHERE IS THIS SHIP HEADIN?"}
}

if scenetime=2300
{
with oControl {cutscenename="ROSY" cutsceneline="IT'S HEADING TO THE PORT NEAR THAT DOJO CASINO PLACE. I DID HEAR THERE ARE SHADY PEOPLE SHOWING UP THERE RECENTLY."}
}

if scenetime=2600
{
with oControl {cutscenename="VIVA" cutsceneline="THEN THAT'S WHERE WE GOTTA GO TO FIND WHERE OUR TREASURE'S TAKEN."}
}

if scenetime=2900
{
with oControl {cutscenename="SOFIA" cutsceneline="GOOD! I CAN'T WAIT TO BEAT UP SOME NINJAS!"}
}

if scenetime=3320
{
oControl.stageEndFX=1
}
}
}
}


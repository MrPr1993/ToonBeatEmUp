///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4  ///Abandon Ship
with oControl {cutscenename="VIVA" cutsceneline="WE NEED TO GET THE PARACHUTES! BUT THE DOOR'S TOO FAR AWAY..."}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I GOT THEM!"}
}

if scenetime=480{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="HOW DID YOU- ERR. ALRIGHT. LET'S HURRY AND GET OFF!"}
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
with oControl {cutscenename="BAHATI" cutsceneline="THE PLANE'S GOING TO CRASH..."}
}

if scenetime=1000
{
with oControl {cutscenename="VIVA" cutsceneline="EHH I'M SURE THEY'LL BE FINE. WHERE ARE WE GOING TO LAND?"}
}

if scenetime=1220
{
with oControl {cutscenename="SOFIA" cutsceneline="WOAH. SPOOKY. LET'S LAND THERE!"}
}

////END SCENE PART
if scenetime=1000 oControl.stageEndFX=1
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
specialdraw=function()
{image_index+=0.25
draw_sprite(spr_cutscene2bB4,image_index,0,round(specialcheck[3]))
draw_sprite(spr_cutscene2bB3,image_index,0,round(specialcheck[2]))
draw_sprite(spr_cutscene2bB2,image_index,0,round(specialcheck[1]))
draw_sprite(spr_cutscene2bB1,image_index,0,round(specialcheck[0]))

if scenetime<60 {draw_set_color(c_black) draw_rectangle(-999,-999,9999,9999,false) draw_set_color(c_white)}
else
{
if scenetime<-100+420*4
{
specialcheck[0]=lerp(specialcheck[0],0,0.03)
specialcheck[1]=lerp(specialcheck[1],0,0.04)
specialcheck[2]=lerp(specialcheck[2],0,0.05)
specialcheck[3]=lerp(specialcheck[3],0,0.06)
}
else
{
specialcheck[0]+=4
specialcheck[1]+=4
specialcheck[2]+=4
specialcheck[3]+=4
}

}

}
	
newscript=function()
{scenetime+=1;
if scenetime=60{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WHAT WAS I THINKING?! WE ARE GONNA DIE!"}
}
if scenetime=180*4{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="WOW, DIDN'T YOU THINK OF A GOOD PLAN?"}}

if scenetime=240*4{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="YOU SERIOUS? WE ARE GONNA GO SPLAT!"}}

if scenetime=300*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="NOT UNLESS WE LAND ON SOMETHING TO BREAK OUR FALL."}}

if scenetime=360*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WHAT- HOW ARE WE GONNA DO THAT?"}}

if scenetime=420*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I KNOW A TRICK. TRUST ME. LOOK DOWN!"}}

////END SCENE PART
if scenetime=540*4 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Try to wake Rosy up
with oControl {cutscenename="VIVA" cutsceneline="THE HARPY! LET'S GRAB HER AND HANG ON TO THEM!"}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="I GOT THIS!"}
}
if scenetime=480{ x=0 y=0
with oControl {cutscenename="HARPILDA" cutsceneline="WELL I NEVER! YOU BETTER ANSWER ME WHAT ARE YOU DOING BEFORE I SHAKE YOU ALL OFF OF ME!"}
}
if scenetime=700{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="WE?! YOU ATTACJED US FIRST!"}
}
if scenetime=920{ x=0 y=0
with oControl {cutscenename="HARPILDA" cutsceneline="OF COURSE! YOU NO GOOD THIEVES WENT INTO MY TURF TO STEAL FROM THE WEAK!"}
}
if scenetime=1220{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="OH... YOU MAY HAVE GOTTEN THE WRONG PEOPLE, MA'AM. WE GOT ROBBED TOO!"}
}
if scenetime=1420{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="THEY STOLE MY TREASURE."}
}
if scenetime=1620{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="OUR TREASURE!!!"}
}
if scenetime=1820{ x=0 y=0
with oControl {cutscenename="HARPILDA" cutsceneline="OH, WELL THAT’S EMBARRASSING. WELL, I DO APOLOGIZE. MAYBE I CAN MAKE IT UP TO YOU DEARIES BY TAKING YOU TO ONE PLACE THEY MIGHT HAVE SHOWN UP MOSTLY?"}
}
if scenetime=2020{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="WHAT PLACE IS IT?"}
}
if scenetime=2220{ x=0 y=0
with oControl {cutscenename="HARPILDA" cutsceneline="THAT CASINO HAS TOUGH SECURITY, BUT THAT’S ONE PLACE WHERE YOU CAN FIND CLUES FOR WHERE YOUR PRECIOUS THINGS GOT TAKEN TO."}
}
if scenetime=2420{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="THEN LET'S GO. HOW HARD CAN IT BE?"}
}

////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"

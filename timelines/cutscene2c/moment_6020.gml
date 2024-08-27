///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

///Decision 1
if cutsceneDecmode=0
{CutsceneStage=rm_stage4  ///Abandon Ship
with oControl {cutscenename="BAHATI" cutsceneline="LADIES, WE GOT TO BE HONEST TO THE SHERIFF SO WE'LL TELL THE TRUTH."}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="NONE OF YOU HAVE TICKETS DO YOU?"}
}

if scenetime=480{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="NO... WE DON'T."}
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
with oControl {cutscenename="VIVA" cutsceneline="HONEST?! WELL, THAT'S WHAT WE GET!"}
}

if scenetime=1000
{
with oControl {cutscenename="BAHATI" cutsceneline="I'M SORRY I DIDN'T THINK SHE COULD ACTUALLY THROW US OFF LIKE THAT EVEN IN THAT STATE!"}
}

if scenetime=1220
{
with oControl {cutscenename="VIVA" cutsceneline="OH NO MATTER. WE HAD NO WAY TO STAY ON THE TRAIN ANYWAY."}
}

if scenetime=1420
{
with oControl {cutscenename="VIVA" cutsceneline="WHERE ARE WE...?"}
}

////END SCENE PART
if scenetime=1600 oControl.stageEndFX=1
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
with oControl {cutscenename="DOLORES" cutsceneline="C'MON I DON'T HAVE ALL DAY AND!"}
}
if scenetime=120*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="QUICK RUSH EM'!"}}

if scenetime=180*4{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="OW! HEY GET BACK HERE!"}}

if scenetime=240*4{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="I CALL DIBS ON THE COAL!"}}

if scenetime=300*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I'LL GIVE IT MORE FIRE."}}

if scenetime=360*4{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="HEY ARE YOU SURE YOU KNOW WHAT YOU'RE DOING?!"}}

if scenetime=420*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH WE DON'T WE DON'T!"}}

if scenetime=520*4{ x=0 y=0
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"}}

////END SCENE PART
if scenetime=740*4 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Try to wake Rosy up
with oControl {cutscenename="HINA" cutsceneline="OH... TICKETS!"}
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="WHEN THE HELL DID YOU BUY TICKETS?!"}
}
if scenetime=480{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="WHEN WE GOT ON THE TRAIN. IT'S ALWAYS THE RIGHT THING TO DO."}
}
if scenetime=700{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="...SUCH A PURE HEART, HINA."}
}
if scenetime=920{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="WELL LET ME SEE..."}
}
if scenetime=1220{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="YEP. THIS CHECKS OUT. FIND YOUR SEATS AND DON'T CAUSE ANY MORE TROUBLE THAN WHAT WE HAVE."}
}
if scenetime=1420{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="HEY VIVA ANYTHING IN THE NOTE THAT WOLF WOMAN LEFT?"}
}
if scenetime=1620{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="LOOKS LIKE THIS TRAIN IS HEADED TO THIS PLACE CALLED THE LUCKY DOJO CASINO."}
}
if scenetime=1820{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="I HEARD OF THAT PLACE! IT'S GOT NINA BUNNYGIRLS! I WANT TO FIGHT ONE!"}
}
if scenetime=2020{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="AND WE WILL TO GET OUR ANSWERS ABOUT OUR STOLEN STUFF."}
}
if scenetime=2220{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="COME ON. LET'S TAKE A SEAT. I GOTTA ORDER ME COMFORT FOOD."}
}
if scenetime=2420{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="A LOT OF IT."}
}

////END SCENE PART
if scenetime=3200 oControl.stageEndFX=1
}
}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"

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
{sprite_index=mask_none
	with oControl
	{
with actor1 {x=30-16 y=144 sprite_index=spr_viva_hit image_index=17 ground=0 spdZ=-8 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_viva_point image_index=0}}}}
	
with actor2 {x=30+16 y=144 sprite_index=spr_hina_hit image_index=17 ground=0 spdZ=-9 hspeed=3.5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_hina_point image_index=0}}}}
	
with actor3 {x=30-32 y=144 sprite_index=spr_bahati_hit image_index=17 ground=0 spdZ=-8.5 hspeed=4 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_bahati_point image_index=0}}}}
	
with actor4 {x=30+32 y=144 sprite_index=spr_sofia_hit image_index=17 ground=0 spdZ=-9 hspeed=5 anim=9999
newscript=function(){if !ground spdZ+=0.45 z+=spdZ if z>=0 {if anim!=9998 hspeed=0 z=0 ground=1} if ground{ anim=9998}
if anim=9998	{frame_set(0,19,0.25) frame_set(1,20,0.25)	frame_set(2,21,0.1)
	frame_set(3,21,0.1)	frame_set(4,21,0.1)	frame_set(5,22,0.25) frame_set(6,23,0.25)
	if AnimFrame=7 {AnimFrame=8 image_xscale=-1 sprite_index=spr_sofia_point image_index=0}}}}
}
	}

if scenetime>=930
if scenetime<=980 if oControl.actor1.ground=1 scenetime=970

if scenetime=980
{
with oControl {cutscenename="VIVA" cutsceneline="HONESTY?! THAT'S WHAT YOU GOT?!"}
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
{x=0 y=0 vspeed=-0.5
sprite_index=spr_lookamansion
with oControl {cutscenename="" cutsceneline=""}
}

if scenetime=1620
{

with oControl {cutscenename="VIVA" cutsceneline="WHERE ARE WE...?"}
}

////END SCENE PART
if scenetime=1800 oControl.stageEndFX=1
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
with oControl {cutscenename="DOLORES" cutsceneline="C'MON! I DON'T HAVE ALL DAY AND-"}
}
if scenetime=120*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="QUICK RUSH EM'!"}

with oControl
{
with actor1 {sprite_index=spr_viva_run image_speed=0.25 hspeed=4}
with actor2 {sprite_index=spr_hina_run image_speed=0.25 hspeed=4}
with actor3 {sprite_index=spr_bahati_run image_speed=0.25 hspeed=4}
with actor4 {sprite_index=spr_sofia_run image_speed=0.25 hspeed=4}
}

}

if scenetime=180*4{ x=0 y=0
	with oControl
	{
	with actor5 {sprite_index=spr_twoheads_hit image_index=24}
	with actorC1 {sprite_index=spr_cowboy_hit image_index=24}	
	with actorC2 {sprite_index=spr_cowboy_hit image_index=24}	
	}

with oControl {cutscenename="DOLORES" cutsceneline="HEY GET BACK HERE!"}}

if scenetime=240*4{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="I CALL DIBS ON THE COAL!"}}

if scenetime=300*4{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="I'LL GIVE IT MORE FIRE."}}

if scenetime=360*4{ x=0 y=0
with oControl {cutscenename="BAHATI" cutsceneline="HEY ARE YOU SURE YOU KNOW WHAT YOU'RE DOING?!"}}

if scenetime=420*4{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="AHHHHH WE DON'T WE DON'T!"}}

if scenetime>=520*4 oControl.quakeFXTime=10

if scenetime=520*4{ x=-480 y=128
	
sprite_index=spr_trainzoom hspeed=2
	
with oControl {cutscenename="DIVAS" cutsceneline="AAAAAAAAAAAAAAAAAAAHHHHHHH!!!!"}}

////END SCENE PART
if scenetime=740*4 oControl.stageEndFX=1
}
}
}

if cutsceneDecmode=2
{CutsceneStage=rm_stage5 ///Try to wake Rosy up
with oControl {cutscenename="HINA" cutsceneline="OH... TICKETS!"
	
	with actor2 {sprite_index=spr_hina_spin newscript=function()
	{
	frame_set(0,0,0.1) if AnimFrame=1 sprite_index=spr_hina_igottickets
	frame_set(1,0,0.25)	
	frame_set(2,1,0.25) if AnimFrame=3 with oControl {with actor1 sprite_index=spr_viva_wildtake7 image_xscale=-1 image_index=2}	
	frame_set(3,0,0.25)
	frame_set(4,2,0.25)	
	frame_set(5,3,0.25)	
	frame_set(6,3,0.25)
	}
	}	
	}
	
	
with actorscreen newscript=function()
{scenetime+=1;
if scenetime=240{ x=0 y=0
with oControl {cutscenename="SOFIA" cutsceneline="WHEN THE HELL DID YOU BUY TICKETS?!"}
}
if scenetime=480{ x=0 y=0
with oControl {cutscenename="HINA" cutsceneline="WHEN WE GOT ON THE TRAIN. IT'S ALWAYS THE RIGHT THING TO DO."}
}

if scenetime=680
{
with oControl {cutscenename="" cutsceneline=""
	
	
	with actor1 {image_index=0 image_xscale=1 sprite_index=spr_viva_bruh newscript=function()
	{
	frame_set(0,0,0.01) 
	frame_set(1,1,0.25)	
	frame_set(2,0,0.01)
	frame_set(3,2,0.05)
	frame_set(4,3,0.01)	
	frame_set(5,4,0.25)	
	frame_set(6,5,0.25)
	frame_set(7,6,0.25)
	}
	}
}
}

if scenetime=1000{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="...SUCH A PURE HEART, HINA."}
}
if scenetime=1220{ x=0 y=0
with oControl {cutscenename="DOLORES" cutsceneline="WELL LET ME SEE..."
	
	with actor5 {sprite_index=spr_twoheads_move hspeed=-2 image_speed=0.25
	
	newscript=function() {y=lerp(y,oControl.actor2.y,0.1)
		if x<=oControl.actor2.x+34 {
			with oControl.actor2 {sprite_index=spr_hina_grab image_index=0 }
			
			newscript=-1; sprite_index=spr_twoheads_talk image_speed=0 hspeed=0}
		}
	
	}
	
	}
}
if scenetime=1520{ x=0 y=0
with oControl {
	with actor5 {image_xscale=1 image_speed=0.25 hspeed=2 sprite_index=spr_twoheads_move}
	cutscenename="DOLORES" cutsceneline="YEP. THIS CHECKS OUT. FIND YOUR SEATS AND DON'T CAUSE ANY MORE TROUBLE THAN WHAT WE HAVE."}
}
if scenetime=1720{ x=0 y=0
with oControl {with actor2 {sprite_index=spr_hina_move image_speed=0.25 hspeed=2} cutscenename="BAHATI" cutsceneline="HEY VIVA ANYTHING IN THE NOTE THAT WOLF WOMAN LEFT?"}
}
if scenetime=2020{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="LOOKS LIKE THIS TRAIN IS HEADED TO THIS PLACE CALLED THE LUCKY DOJO CASINO."}
}
if scenetime=2320{ x=0 y=0
with oControl {with actor4 {sprite_index=spr_sofia_move image_speed=0.1 hspeed=1} cutscenename="SOFIA" cutsceneline="I HEARD OF THAT PLACE! IT'S GOT NINA BUNNYGIRLS! I WANT TO FIGHT ONE!"}
}
if scenetime=2560{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="AND WE WILL TO GET OUR ANSWERS ABOUT OUR STOLEN STUFF."}
}
if scenetime=2720{ x=0 y=0
with oControl {with actor1 {sprite_index=spr_viva_move image_speed=0.1 hspeed=1} cutscenename="VIVA" cutsceneline="COME ON. LET'S TAKE A SEAT. I GOTTA ORDER ME COMFORT FOOD."}
}
if scenetime=3120{ x=0 y=0
with oControl {cutscenename="VIVA" cutsceneline="A LOT OF IT."}
}

if scenetime=3220
{with oCameoChar {x=-99 y=-99}



x=-480 y=128
	
sprite_index=spr_trainzoom hspeed=1
	
with oControl {cutscenename="" cutsceneline=""}
}

////END SCENE PART
if scenetime=4000 oControl.stageEndFX=1
}
}

//cutscenename="VIVA"
//cutsceneline="WHAT?!"

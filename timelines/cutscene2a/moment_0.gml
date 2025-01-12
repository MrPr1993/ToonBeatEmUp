//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="THE SHIP WON'T STOP!\nWHAT WILL YOU DO?"
CDtextA="ABANDON SHIP!"
CDtextB="TAKE THE WHEEL!"
CDtextC="TRY TO WAKE ROSY UP!"

cutscenename=""
cutsceneline=""
}

actor1=instance_create_depth(86,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(50,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(46,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(76,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(215,170,-1,oCameoChar) with actor5
{sprite_index=spr_franki_hit image_index=21 shadow=spr_carshadow anim=9999 image_xscale=-1}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;
///280 for short sentences
if scenetime=60
{
with oControl
{cutscenename="VIVA"
cutsceneline="WELL THAT WAS SOMETHING."
}
}

if scenetime=340
{
with oControl
{cutscenename="HINA"
cutsceneline="WOW SHE'S HUGE."
}
}

if scenetime=680
{
with oControl
{cutscenename="VIVA"
cutsceneline="UGH... BUT THAT TRUCK GOT AWAY. NOW WHAT?"
}
}

if scenetime=1000
{
with oControl
{cutscenename="BAHATI"
cutsceneline="WE COULD ASK FOR THE CAPTAIN OF THE SHIP TO DRIVE US TO A PORT?"
}
}

if scenetime=1280
{
with oControl
{cutscenename="VIVA"
cutsceneline="WELL OF COURSE..."
}
}

if scenetime=1560
{
with oControl
{cutscenename="SOFIA"
cutsceneline="ONE PROBLEM."
}
}

if scenetime=1740
{
with oControl
{cutscenename="VIVA"
cutsceneline="AND WHAT'S THAT?"
}
}

if scenetime=1920
{
specialdraw=function()
{draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a,0,160,192)
draw_sprite(spr_cutscene2a2,0,160,192)
}

with oControl
{cutscenename="SOFIA"
cutsceneline="THRE IS NO ONE AT THE WHEEL!"
quakeFXTime=10
}
}

if scenetime=2200
{
with oControl
{cutscenename="VIVA"
cutsceneline="YOU CAN'T BE SERIOUS!"
}
}

if scenetime=2480
{y=480
specialdraw=function()
{y--; y=clamp(y,192,999)
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a2,1,160,y)
draw_sprite(spr_cutscene2a2,0,160,192)
}

with oControl
{cutscenename=""
cutsceneline=""
}
}

if scenetime=3100
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="SO... ANY OF YOU KNOW HOW TO DRIVE THIS?"

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,3060,3099) scenetime=3064

}
//////	

}
}

	
timeline_position=10
timeline_speed=0

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )


	
if global.CutsceneSkip=0 canSkipCutscene=1 else {stageIntro=0
	cutscenename=""
cutsceneline=""
audio_stop_all()

actorscreen.scenetime=2580

global.CutsceneSkip=0

timeline_position=5700
timeline_speed=1

canSkipCutscene=0

cutscenename=""
cutsceneline=""

with actorscreen
{scenetime=2580+240
{y=192
specialdraw=function()
{y--; y=clamp(y,192,999)
draw_sprite_ext(spr_whitecol,0,0,0,99,99,0,c_black,1)
draw_sprite(spr_cutscene2a2,1,160,y)
draw_sprite(spr_cutscene2a2,0,160,192)
}

with oControl
{
cutscenename="VIVA"
cutsceneline="SO... ANY OF YOU KNOW HOW TO DRIVE THIS?"
}
}
}

}

cutscenePlaying=1
}
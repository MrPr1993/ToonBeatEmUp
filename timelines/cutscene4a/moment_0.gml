//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="DECISION TIME!\nCUTSCENE CARNIVAL"
CDtextA="CHOICE 1."
CDtextB="CHOICE 2."
CDtextC="CHOICE 3."
}



actor1=instance_create_depth(76,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_stand anim=9999}
actor2=instance_create_depth(76,170-24,-1,oCameoChar) with actor2
{sprite_index=spr_hina_stand anim=9999}
actor3=instance_create_depth(76,170+24,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_stand anim=9999}
actor4=instance_create_depth(76,170+48,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_stand anim=9999}
actor5=instance_create_depth(76,170,-1,oCameoChar) with actor5
{sprite_index=spr_franki_stand anim=9999 image_xscale=-1}

actorscreen=instance_create_depth(160,240,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{
if oControl.timeline_position<=1800
{
visible=0
}
else
if oControl.timeline_position<=5500
{
visible=1
}
else 
if oControl.timeline_position<=999999
{
if specialcheck[0]=0
{specialcheck[0]+=1; specialcheck[1]=480

newscript=function()
{
///Draw the reactions here for the scene
frame_set(0,1,0.25)
}
specialdraw=function()
{
specialcheck[1]=lerp(specialcheck[1],200,0.1)
draw_sprite(spr_cutscene2a2,image_index,160,specialcheck[1])	
draw_sprite(spr_cutscene2a2,0,160,240)	
}

}
}

}
}

	
	
cutscenename="VIVA"
cutsceneline="CLOSE CALL. SHE IS BIG!"
	
if global.CutsceneSkip=0 canSkipCutscene=1 else {timeline_position=99997 stageIntro=0
	cutscenename=""
cutsceneline=""
	}




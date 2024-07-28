//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="THE SHIP WON'T STOP!\nWHAT WILL YOU DO?"
CDtextA="ABANDON SHIP!"
CDtextB="TAKE THE WHEEL!"
CDtextC="TRY TO WAKE ROSY UP!"

cutscenename="VIVA"
cutsceneline="OKAY THAT WAS ROUGH."
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

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;

if scenetime=240{ x=0 y=0 sprite_index=spr_cutscene5a1
with oControl
{cutscenename="SOFIA"
cutsceneline="YEAH. WHO KNEW THEY COULD GO AND GIVE UA HARD TIME."
}
}
if scenetime= 480{ x=0 y=0 sprite_index=spr_cutscene5a2 sceneno=5
with oControl
{
cutscenename="SOFIA"
cutsceneline="AND LOOKS "
}
}
if scenetime= 720{ x=0 y=0 sprite_index=spr_cutscene5a2
with oControl
{
cutscenename="VIVA"
cutsceneline="OF COURSE I KNOW HIM. HE'S MY COUSIN."
}
}
if scenetime=1040{ x=0 y=0 sprite_index=spr_cutscene5a2
with oControl
{
cutscenename="SOFIA"
cutsceneline="NO WAY!"
}
}
if scenetime= 1460{ x=0 y=0 sprite_index=spr_cutscene5a2 specialcheck[2]=1;
with oControl
{
cutscenename="PRINCE"
cutsceneline="OH ABSOLUTELY~!"
}

sceneno=5

}
//////	


if scenetime<=640
{
if sceneno=0
{sceneno+=1; sprite_index=spr_cutscene5a0 ///Laugh
with oControl
{
cutscenename="PRINCE"
cutsceneline="OHOHOHOH! THAT WAS A GOOD FIGHT, LADIES."
timeline_position=10
timeline_speed=0
}

specialdraw=function()
{
switch(sceneno)
{
case 5: 
x=lerp(x,-40,0.1) specialcheck[2]=lerp(specialcheck[2],0,0.1)
draw_sprite(sprite_index,image_index,round(x),y)
draw_sprite(sprite_index,image_index,round(x+320+320*specialcheck[2]),y)
break;
}
if oControl.betatest
draw_text(4,4,scenetime)
}

}
}




}
}

	
	

	
if global.CutsceneSkip=0 canSkipCutscene=1 else {timeline_position=99997 stageIntro=0
	cutscenename=""
cutsceneline=""
	}




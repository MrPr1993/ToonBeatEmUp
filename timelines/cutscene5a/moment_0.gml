//background_
instance_create_depth(-999,-999,-1,oTextBox)

with oControl
{
CDtextT="DECISION TIME!\nCUTSCENE UNDERWATER"
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

actorscreen=instance_create_depth(160,480,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene2a anim=9999 isDepth=0 depth=-3000

newscript=function()
{scenetime+=1;

if scenetime=320{ x=0 y=0 sprite_index=spr_cutscene5a1
with oControl
{
cutsceneline="AND ENJOY THE MEAL. IT'S ALL ON ME, LADIES! AND I'M SO HAPPY YOU CAME TO MY KINGDOM, MY SWEET VIVA!"
}
}
if scenetime= 640{ x=0 y=0 sprite_index=spr_cutscene5a2 sceneno=5
with oControl
{
cutscenename="SOFIA"
cutsceneline="WOW, YOU KNOW THE PRINCE?"
}
}
if scenetime= 1000{ x=0 y=0 sprite_index=spr_cutscene5a2
with oControl
{
cutscenename="VIVA"
cutsceneline="OF COURSE I KNOW HIM. HE'S MY COUSIN."
}
}
if scenetime=1200{ x=0 y=0 sprite_index=spr_cutscene5a2
with oControl
{
cutscenename="SOFIA"
cutsceneline="NO WAY!"
}
}
if scenetime= 1600{ x=0 y=0 sprite_index=spr_cutscene5a2 specialcheck[2]=1;
with oControl
{
cutscenename="PRINCE"
cutsceneline="OH ABSOLUTELY~!"
}

sceneno=5

}
//////	
	

if sceneno=3 y-=1

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
case 1:
y=lerp(y,200,0.1)
draw_sprite(sprite_index,image_index,x,y)
break;
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




//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[12]=1 feats_check(43);

with oControl
{
CDtextT="WHICH WAY WILL\nYOU GO?"
CDtextA="THE SNOWY MOUNTAIN."
CDtextB="THE MAGIC CAVE."
CDtextC="THE HOT AIR BALLOON."

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,150,-1,oCameoChar) with actorscreen
{sprite_index=spr_ufofall anim=9999 isDepth=0 depth=-3000 shadow=-1;

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(11215,170,-1,oCameoChar) with actor5
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor6=instance_create_depth(11215,17099,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor8=instance_create_depth(11215,170,-1,oCameoChar) with actor8
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1

with oControl
{
cutscenename="" cutsceneline= ""
}

layer_set_visible("SpaceBG",1)
layer_set_visible("BTG1",0)

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}



if scenetime<300 {specialcheck[0]++; scenetime=100;

if specialcheck[0]=120 { scenetime=310 vspeed=2 PlaySound(snd_explosion) oControl.quakeFXTime=10
	
	dust_make_ext(x,y+2,z-59,0,0,0,spr_explosion2,0) with dustmk {isDepth=0 depth=-3010}
	
	}

}

if scenetime=clamp(scenetime,310,315)
{
scenetime=312
if y>=240 {layer_set_visible("SpaceBG",0) scenetime=320 x=200 hspeed=-0.1 vspeed=1 y=-80}
}

if scenetime=clamp(scenetime,320,325)
{scenetime=322
if y>=180 {PlaySound(snd_explosion) scenetime=340 vspeed=0 hspeed=0
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.025 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_white depth=-4000
}	

dust_make_ext(x,y+2,z,0,0,0,spr_explosion,0) with dustmk {isDepth=0 depth=-3010}

	}
}

if scenetime=clamp(scenetime,340,345)
{scenetime=342
if flashscreen.image_alpha>=1.5
{x=0; y=0; sprite_index=spr_divasleaveufo; image_index=0; image_alpha=1 specialdraw=-1;
with flashscreen {fadeSpd=0 isfading=0 image_alpha=1
	
	}
scenetime=680
}
}

if scenetime=720
{
with oControl
{image_index=1 
cutscenename="VIVA" cutsceneline= "...So we're all in agreement to never speak of this again, right?"
if global.Language!=0 cutsceneline=languagedialogue[1]
}
}

if scenetime=clamp(scenetime,720,800) flashscreen.image_alpha-=0.1;

if scenetime=1020
{	
with oControl
{image_index=1
cutscenename="HINA" cutsceneline= "YUP."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=1100
{	
with oControl
{image_index=1
cutscenename="BAHATI" cutsceneline= "Absolutely."
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1200
{	
with oControl
{image_index=1
cutscenename="SOFIA" cutsceneline= "Talk about what again?"
if global.Language!=0 cutsceneline=languagedialogue[4]
}
}

if scenetime=1340
{	specialcheck[0]=320
with oControl
{image_index=1 
cutscenename="VIVA" cutsceneline= "GOOD."
if global.Language!=0 cutsceneline=languagedialogue[5]
}

specialdraw=function()
{
draw_self();

draw_sprite_ext(spr_whitecol,0,specialcheck[0],0,21,20,0,c_black,1)
}
}

if scenetime=clamp(scenetime,1400,5600)
{scenetime=5540
specialcheck[0]-=8;
if specialcheck[0]<=0 {scenetime=6000-60 with oControl canSkipCutscene=0}
}

if scenetime=6000
{layer_set_visible("SpaceBG",0) layer_set_visible("BTG1",1)
sprite_index=mask_none

with actor1 {x=52; image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
with actor2 {x=48; image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
with actor3 {x=32; image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
with actor4 {x=24; image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}

with actor6 {x=400}
with actor7 {x=520-32 sprite_index=spr_ufoscene_signs image_xscale=1}
with actor8 {x=640-32 sprite_index=spr_hotairballoon image_xscale=1 image_index=0}

with oControl
{
cutscenename="VIVA" cutsceneline= "Now.... Which way are we going here...?"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=6120
{
	
	
with actor1 {image_speed=0 sprite_index=spr_viva_stand; hspeed=0}
with actor2 {image_speed=0 sprite_index=spr_hina_stand; hspeed=0}
with actor3 {image_speed=0 sprite_index=spr_bahati_stand; hspeed=0}
with actor4 {image_speed=0 sprite_index=spr_sofia_stand; hspeed=0}
with actor5 {image_speed=0 sprite_index=spr_prince_stand; image_xscale=-1 hspeed=0}
}

if scenetime=clamp(scenetime,6000,6300) specialcheck[0]-=8;

if scenetime=clamp(scenetime,6120,6300)
{
with oControl {SceneX+=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=6310
{
with oControl
{
timeline_position=6000-60;
timeline_speed=1
}
}

//cutscenename="SOFIA" cutsceneline= "Viva you never told us this royal fishman hunk was your cousin! What was up with you?"
//cutscenename="VIVA" cutsceneline= "Simple, I find him obnoxious."
//cutscenename="PRINCE" cutsceneline= "I'm terribly sorry that my people attacked you so suddenly, but they needed to test you! Although... What brings you here anyway? And how is that diamond I gave you, Viva?"
//cutscenename="VIVA" cutsceneline= "Err... I can answer both of those questions at once... Thieves are on the run with it and these girls' treasures as well..."
//cutscenename="PRINCE" cutsceneline= "WHAT?! OH SWEET SCALLOPS THIS IS TERRIBLE! That diamond is enchanted! Terrible things could happen with it in the wrong hands! Quickly! We must pursue those fiends posthaste! My servants and I will send you on your way!" 

//MrPr1993 — 09/08/2024 11:21 PM
///Ooh ooh make Viva's reply about the diamond with a very nervous tone 
//Flash Trickstar — 09/08/2024 11:31 PM


if scenetime=57600
{
	with oControl
	{canSkipCutscene=0
cutscenename="VIVA"
cutsceneline="FORGET IT! WE NEED TO THINK HOW TO GET OUTTA THIS!"

timeline_position=5700
timeline_speed=1
}

if scenetime=clamp(scenetime,760,799) scenetime=764

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


cutscenePlaying=1

with oControl
switch(global.Language)
{
case 1: ////Portuguese
CDtextT="¿A DÓNDE IRÁS?"
CDtextA="LA MONTAÑA NEVADA."
CDtextB="LA CUEVA MÁGICA."
CDtextC="EL GLOBO AEROSTÁTICO."


languagedialogue[1]="...Así que estamos todas de acuerdo en no volver a hablar de esto nunca más, ¿cierto?"
languagedialogue[2]="Sip."
languagedialogue[3]="Totalmente."
languagedialogue[4]="¿Hablar de qué otra vez?"
languagedialogue[5]="BIEN."
languagedialogue[6]="Ahora… ¿Hacia dónde vamos…?"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;	

case 2: ////Portuguese
CDtextT="PARA ONDE\nVOCÊS VÃO?"
CDtextA="A MONTANHA NEVADA."
CDtextB="A CAVERNA MÁGICA."
CDtextC="O BALÃO DE AR QUENTE."

languagedialogue[1]="...Então, estamos todos de acordo em nunca mais falar sobre isso, certo?"
languagedialogue[2]="Sim."
languagedialogue[3]="Com certeza."
languagedialogue[4]="Falar sobre o quê?"
languagedialogue[5]="ÓTIMO."
languagedialogue[6]="Agora... Para onde vamos?"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}


//cutscenename="VIVA" cutsceneline= "...So we're all in agreement to never speak of this again, right?"
//cutscenename="SOFIA" cutsceneline= "Si..."
//cutscenename="BAHATI" cutsceneline= "Absolutely."
//cutscenename="HINA" cutsceneline= "Talk about what again?"
//cutscenename="VIVA" cutsceneline= "Good... Now.... Which way are we going here...?"


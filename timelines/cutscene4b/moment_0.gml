//background_
if cutscenePlaying=0
{
instance_create_depth(-999,-999,-1,oTextBox)

global.UnlockCutscene[9]=1 feats_check(43);

with oControl
{
CDtextT="WHAT DO YOU SEE\nIN THE CAULDRON?"
CDtextA="A CORNFIELD!"
CDtextB="A PRINCE!"
CDtextC="A DESERT!"

cutscenename=""
cutsceneline=""
}

SceneX=0
__view_set( e__VW.XView, 0, SceneX )
SceneY=0
__view_set( e__VW.XView, 0, SceneY )

actorscreen=instance_create_depth(160,192+96,-1,oCameoChar) with actorscreen
{sprite_index=spr_cutscene4b0 anim=9999 isDepth=0 depth=-3000 shadow=-1; x=0; y=0; image_speed=0.05

musicplaystart(msc_weird)

actor1=instance_create_depth(1186,170,-1,oCameoChar) with actor1
{sprite_index=spr_viva_cutscene image_index=0 anim=9999}
actor2=instance_create_depth(1150,144,-1,oCameoChar) with actor2
{sprite_index=spr_hina_point image_index=0 anim=9999}
actor3=instance_create_depth(1146,160,-1,oCameoChar) with actor3
{sprite_index=spr_bahati_cutscene image_index=1 anim=9999}
actor4=instance_create_depth(1176,188,-1,oCameoChar) with actor4
{sprite_index=spr_sofia_taunt3 image_index=0 anim=9999}
actor5=instance_create_depth(3200-64,182,-1,oCameoChar) with actor5
{sprite_index=spr_witch_beaten image_speed=0.25 anim=9999 image_xscale=-1
	specialdraw=function()
	{var flip=1; if image_xscale=-1 flip=2;
pal_swap_set(pal_witch,flip,false);
	draw_sprite_ext(sprite_index,image_index,round(x),round(y+z+trainz),image_xscale,image_yscale,image_angle,image_blend,image_alpha)
pal_swap_reset()
	}
	}

actor6=instance_create_depth(11215,170,-1,oCameoChar) with actor6
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

actor7=instance_create_depth(11215,180,-1,oCameoChar) with actor7
{sprite_index=spr_harpy_dizzy anim=9999 image_xscale=-1}

////Cauldron Smoke
actor8=instance_create_depth(160,186,-1,oCameoChar) with actor8
{sprite_index=spr_cauldronspawn anim=9999 image_xscale=1 x+=999999 isDepth=0 depth=-3001
	

	
	specialdraw=function()
	{
	image_index+=0.2 if image_index>=10 image_index=7
	if image_index>=4
	draw_sprite(spr_cauldronspawn,specialcheck[3],x,y)
	draw_sprite(spr_cauldronspawn,image_index,x,y)
	
	}
	}

BGactor=instance_create_depth(0,0,-1,oCameoChar) with BGactor
{sprite_index=mask_none shadow=-1 anim=9999 isDepth=0 depth=10000}

if global.CutsceneSkip=0 with oControl canSkipCutscene=1


with oControl
{
cutscenename="KIANDRA"
cutsceneline="...YOU..."
}

y=-48

newscript=function()
{
scenetime+=1;


if scenetime<=2
if global.CutsceneSkip=1 {audio_stop_all() global.CutsceneSkip=0 canSkipCutscene=1 scenetime=6000}

if scenetime<120 {if y<230 y+=0.2;}
if scenetime=120
{sprite_index=mask_none scenetime=340 image_speed=0
	
with actor1 {x=64}
with actor2 {x=64-16}
with actor3 {x=64+32}
with actor4 {x=64-16}
with actor5 {x=320-64}
	
with oControl
{
cutsceneline="Why did you break into my home and beat me up?! Didn't you read the signs?!"
if global.Language!=0 cutsceneline=languagedialogue[2]
} x=0
y=0 vspeed=0.2 hspeed=0
}

if scenetime=640
{sprite_index=mask_none image_index=0 vspeed=0 x=0 y=0

with actor4 {image_xscale=-1 sprite_index=spr_sofia_talk2 image_speed=0.25}
	
with oControl
{
cutscenename="SOFIA"
cutsceneline= "Hey, it's what we do. We have questions for you, miss witch."
if global.Language!=0 cutsceneline=languagedialogue[3]
}
}
if scenetime=clamp(scenetime,1260,1300) specialcheck[0]-=3;

if scenetime=940
{
with actor4 {image_xscale=1 image_index=0 sprite_index=spr_sofia_stand image_speed=0}
	
with actor5 {sprite_index=spr_witch_attack2 image_speed=0 image_index=0}
with oControl
{cutscenename="KIANDRA" cutsceneline= "...do you ever get answers through violence, what is wrong with you?!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1260
{
with actor1 {sprite_index=spr_viva_cutscene image_index=7}
with actor2 {sprite_index=spr_hina_cutscene image_index=1}
with actor3 {sprite_index=spr_bahati_talk2 image_index=0}
with actor4 {sprite_index=spr_sofia_talk3 image_index=0}

with oControl
{cutscenename="HINA" cutsceneline= "Oh... um..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1460
{	with actor5 {sprite_index=spr_witch_talk image_speed=0 image_index=0}
with oControl
{image_index=1 
cutscenename="KIANDRA" cutsceneline= "Also, I'm not a witch. I'm a druid!"
if global.Language!=0 cutsceneline=languagedialogue[6]
}
hspeed=-2 
}

if scenetime=1660
{	
with actor3 {sprite_index=spr_bahati_talk2 image_speed=0.25}

with oControl
{image_index=1
cutscenename="BAHATI" cutsceneline= "Right, sorry... can you still help us? We are after thieves who were stealing treasures."
if global.Language!=0 cutsceneline=languagedialogue[7]
}

}

if scenetime=2040
{
with actor3 {image_speed=0 image_index=0}	

with oControl
{cutscenename="KIANDRA" cutsceneline="...fine. If it gets you out of here faster, then so be it... Let us consult my cauldron for your paths..."
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2340
{
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
}

if scenetime=2440 {flashscreen.image_alpha=0 flashscreen.image_xscale=0 scenetime=6000}

if scenetime=6000
{hspeed=0 audio_stop_all();
	x=0 y=0
with actor1 {x=640}
with actor2 {x=640}
with actor3 {x=640}
with actor4 {x=640}
with actor5 {x=620}		

extrablack=instance_create_depth(0,0,-1,oCameoChar) with extrablack
{
sprite_index=spr_allblackscreen isDepth=0 anim=99999 depth=999
vspeed=-1
}

sprite_index=spr_cauldronshow x=0 y=100 image_speed=0

with oControl
{
cutscenename="KIANDRA" cutsceneline= "Have a look at the cauldron and I'll show you the way from what you choose."
if global.Language!=0 cutsceneline=languagedialogue[9]
}
}

if scenetime=clamp(scenetime,6000,6100) {y--; y=clamp(y,0,9999)}

if scenetime=6200
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
case 2: ////Portuguese
CDtextT="O QUE VOCÊ VÊ NO\nCALDEIRÃO?"
CDtextA="UM MILHARAL!"
CDtextB="UM PRÍNCIPE!"
CDtextC="UM DESERTO!"

languagedialogue[1]="...VOCÊS..."
languagedialogue[2]="Por que invadiram minha casa e me agrediram?! Não leram as placas?!"
languagedialogue[3]="É, é o que fazemos. E temos perguntas para você, senhorita bruxa."
languagedialogue[4]="...vocês tiram respostas através da violência? O que há de errado com vocês?!"
languagedialogue[5]="Oh... hum..."
languagedialogue[6]="Além disso, não sou uma bruxa. Sou uma druida!"
languagedialogue[7]="Certo, foi mal... pode nos ajudar mesmo assim? Estamos atrás de ladrões que roubam tesouros."
languagedialogue[8]="...certo. Se isso fizer com que vocês saiam daqui rápido, que seja... Vamos consultar meu caldeirão para saber seus caminhos..."
languagedialogue[9]="Dêem uma olhada no caldeirão e eu mostrarei o caminho a partir do que vocês escolherem."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]
break;
}

}




///@description Decision Results
canSkipCutscene=2
actorscreen.scenetime=0
timeline_speed=0

/////////////DECISION 1
if cutsceneDecmode=0
{
CutsceneStage=rm_stagesnow

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
//-Red Oni is lying(Swamp)-
cutscenename="PRINCE" cutsceneline= "In here! Bevalve will give you a lift to the surface!"


}

x=0
y=0

with oControl
switch(global.Language)
{
case 1: ////Portuguese
languagedialogue[1]="¡Por aquí! ¡Bevalve las llevará a la superficie!"
languagedialogue[2]= "¿Soy yo o esta almeja huele peor por dentro…?"
languagedialogue[3]="Gracias, primo. Bien chicas, ¡vámonos!"
languagedialogue[4]= "¡¡BLEEEEEECH!!"
languagedialogue[5]="Tan… pegajoso…"
languagedialogue[6]="Bueno, esto sí que no lo vi venir…"
languagedialogue[7]="Prínce… otra razón por la que no te visito…"
languagedialogue[8]="Oigan, ¿soy yo o hace frío aquí?"
languagedialogue[9]= "No, Hina. Es por eso."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;	

case 2: ////Portuguese
languagedialogue[1]="Entrem! Esta Bivalve levará vocês até à superfície!"
languagedialogue[2]="É impressão minha ou essa amêijoa fede ainda mais por dentro..."
languagedialogue[3]="Obrigada, primo. Muito bem, meninas, vamos lá!"
languagedialogue[4]="BLEHHHHHH!!!!!"
languagedialogue[5]="Tão... gosmento..."
languagedialogue[6]="É o ditado, quem ri por último come mais chocolate..."
languagedialogue[7]="Prince... mais um motivo pra eu não visitar..."
languagedialogue[8]="Uau, é impressão minha ou está frio aqui?"
languagedialogue[9]="É porque tá mesmo, Hina."

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;
}

//with actor6 {x=400}
//with actor7 {x=520 }
//with actor8 {x=640}

newscript=function()
{
scenetime+=1;

if scenetime<100
{
with oControl {SceneX-=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=200
{with actor4 {sprite_index=spr_sofia_itemthrow} with actor5 {sprite_index=spr_prince_stand image_speed=0 image_index=0}
with oControl
{
//One clam ride later
cutscenename="SOFIA" cutsceneline= "Is it me or is this clam smellier on the inside..."
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=400
{
with oControl
{
cutscenename="VIVA" cutsceneline= "Thank you, cousin. Alright girls let's go!"
if global.Language!=0 cutsceneline=languagedialogue[3]
}

//with actor1 {image_speed=0.25 sprite_index=spr_viva_move; hspeed=2}
//with actor2 {image_speed=0.25 sprite_index=spr_hina_move; hspeed=2}
//with actor3 {image_speed=0.25 sprite_index=spr_bahati_move; hspeed=2}
//with actor4 {image_speed=0.25 sprite_index=spr_sofia_move; hspeed=2}

flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}



}

//////
if scenetime=620
{musicplaystart(msc_stageselect) with oBGwave spr_background=bg_stylefx2
with flashscreen{image_alpha=1 fadeSpd=-0.05}
with oControl
{
//Zombies grab the divas and chuck them out
with oCameoChar x=9999

with oControl {SceneX=0 __view_set( e__VW.XView, 0, 0)}

cutscenename="" cutsceneline= ""
}
with actor6
{x=160 shadow=-1 y=240 vspeed=-4 image_index=1 image_xscale=1
}

layer_set_visible("BGcity2",0)
layer_set_visible("BGcity",0)

}

if scenetime=760
{
layer_set_visible("SurfaceTiles",1)
layer_set_visible("SurfaceGround",1)

with actor6
{sprite_index=mask_none x=160 y=160 vspeed=0}
with oControl {cutscenename="" cutsceneline= ""}
}

if scenetime=800
{
with actor6
{PlaySound(snd_splash2) flashFX(x,y+2,0,spr_watersplash,0,0.25,10,1,1,c_white,1)
x=160 y=160 vspeed=0 image_index=2
sprite_index=spr_mermaidcutscene_clam
}
}

if scenetime=900
{audio_stop_all() PlaySound(snd_woodbreakl) PlaySound(snd_hit4) oControl.quakeFXTime=10
with actor6
{
x=160 y=160
image_index=3
}
scenetime=1220
}

if scenetime=1220
{
with oControl {cutscenename="BAHATI" cutsceneline= "BLECHHHHHH!!!!!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
	}
}

if scenetime=1320
{
with oControl {cutscenename="HINA" cutsceneline= "So... gooey..."
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
}

if scenetime=1520
{
with oControl {cutscenename="SOFIA" cutsceneline= "Well this wasn't something I'm meant to get sooner..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

if scenetime=1720
{
with oControl {cutscenename="VIVA" cutsceneline= "Prince... another reason I don't visit..."
	if global.Language!=0 cutsceneline=languagedialogue[7]
	}
}

if scenetime=1920
{
with oControl {cutscenename="HINA" cutsceneline= "Woah is just me or is it cold here?"
	if global.Language!=0 cutsceneline=languagedialogue[8]
	}
}

if scenetime=2120
{
sprite_index=spr_mermaidcutscene_clam_lookmountain x=0 y=-48 vspeed=0.2
with oControl {cutscenename="VIVA" cutsceneline= "Well, Hina, it's because that's why."
	if global.Language!=0 cutsceneline=languagedialogue[9]
	}
}

if scenetime=2320
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 2
if cutsceneDecmode=1
{
CutsceneStage=rm_stagecave

with actorscreen
{scenetime=0;

sprite_index=mask_none
with oControl
{
//-Seahorses- 
cutscenename="PRINCE" cutsceneline= "Take our seahorses! They'll get you to your destination in a blink!"
}
x=0
y=0

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]= "¡Tomen nuestros caballitos de mar! ¡Las llevarán a su destino en un abrir y cerrar de ojos!"
languagedialogue[2]="¡¿No pueden ir más rápido?!"
languagedialogue[3]="¡Nunca atraparemos a esos ladrones a este paso!"
languagedialogue[4]="Esperen… ¡creo que están acelerando!"
languagedialogue[5]= "¡Woah woah WOOAH! ¡¡¡NO TANTO!!!"
languagedialogue[6]= "…Ni una palabra… Solo… vámonos…"

cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;
}

newscript=function()
{
scenetime+=1;

if scenetime<100
{
with oControl {SceneX-=2; __view_set( e__VW.XView, 0, SceneX )}
}

if scenetime=400
{with oControl {cutscenename="" cutsceneline= ""}
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
musicplaystart(msc_stageselect)
}

if scenetime=520
{with flashscreen{image_alpha=1 fadeSpd=-0.05}
with oCameoChar x=-999

with actor1 {x=-96; image_speed=0.25 sprite_index=spr_viva_seahorse; hspeed=2.5}
with actor2 {x=-130; y+=4 image_speed=0.25 sprite_index=spr_hina_seahorse; hspeed=1.9}
with actor3 {x=-90; image_speed=0.25 sprite_index=spr_bahati_seahorse; hspeed=2.3}
with actor4 {x=-122; image_speed=0.25 sprite_index=spr_sofia_seahorse; hspeed=2.1}

with oControl {cutscenename="" cutsceneline= ""}

layer_hspeed("BGcity",-2)
layer_hspeed("BGcity2",-2)
}

if scenetime=700 with oCameoChar hspeed=0

if scenetime=660
{
with oControl {//Riding
cutscenename="SOFIA" cutsceneline= "Can't they go any faster?!"
if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=860
{
with oControl {cutscenename="BAHATI" cutsceneline= "We'll never catch those crooks at this rate!"
	if global.Language!=0 cutsceneline=languagedialogue[3]
}
}

if scenetime=1060
{
layer_hspeed("BGcity",-4)
layer_hspeed("BGcity2",-4)
with oControl {
cutscenename="HINA" cutsceneline= "Wait... I think they're speeding up!"
if global.Language!=0 cutsceneline=languagedialogue[4]

}
}

if scenetime=1300
{////They walk off
PlaySound(snd_carengine) oControl.quakeFXTime=10
with actor1 {image_speed=0.5 sprite_index=spr_viva_seahorse2; hspeed=4}
with actor2 {image_speed=0.5 sprite_index=spr_hina_seahorse2; hspeed=4}
with actor3 {image_speed=0.5 sprite_index=spr_bahati_seahorse2; hspeed=4}
with actor4 {image_speed=0.5 sprite_index=spr_sofia_seahorse2; hspeed=4}

layer_hspeed("BGcity",-8)
layer_hspeed("BGcity2",-8)
with oControl {cutscenename="VIVA" cutsceneline= "Woah woah WOAH! NOT THAT MUCH!!!"
	if global.Language!=0 cutsceneline=languagedialogue[5]
//Nyoom and splash onto cave entrance
//Flash Trickstar — 09/08/2024 11:40 PM
}
}

if scenetime=1500
{audio_stop_all()
flashscreen=instance_create_depth(0,0,-1,oAlphaFadeFX) with flashscreen
{image_alpha=0 fadeSpd=0.05 isfading=1 image_xscale=99 image_yscale=99
sprite_index=spr_whitecol image_blend=c_black depth=-4000
}
with oControl {//KERSMASH!
cutscenename="" cutsceneline= ""}
}

if scenetime=1700
{with flashscreen instance_destroy();
with oControl {//KERSMASH!
	quakeFXTime=10
cutscenename="" cutsceneline= ""}
sprite_index=spr_mermaidcutscene_crazyhair x=0 y=0 PlaySound(snd_hit2)
with oControl {SceneX=0; __view_set( e__VW.XView, 0, SceneX )}
layer_hspeed("BGcity",0)
layer_hspeed("BGcity2",0)
}

if scenetime=1800
{
with oControl {cutscenename="VIVA" cutsceneline="...Not one word... Just... Go..."
	if global.Language!=0 cutsceneline=languagedialogue[6]
	}
}

///Splash

if scenetime=2120
{
oControl.stageEndFX=1
}
}
}
}

/////////////DECISION 3
if cutsceneDecmode=2
{
CutsceneStage=rm_stageclouds



with actorscreen
{scenetime=0;
with oControl {//-Blue Oni is lying(Beach)-
cutscenename="" cutsceneline= "" //SceneX-=32; __view_set( e__VW.XView, 0, SceneX )
}

with oControl
switch(global.Language)
{
case 2: ////Portuguese
languagedialogue[1]= "¡Este geiser expulsará un chorro de agua! ¡Móntenlo y deberían alcanzar a esos bribones!"
languagedialogue[2]="¡Su alteza! ¡TENEMOS UN PROBLEMA!"
languagedialogue[3]="¡La trayectoria del geiser está completamente desviada!"
languagedialogue[4]="¿¡QUÉ?!"
languagedialogue[5]="¡PRÍNCIPE, MALDITO IMBÉ—"
languagedialogue[6]="..."
languagedialogue[7]= "Estoy bastante seguro de que estarán bien."
languagedialogue[8]= "Ay madre…"
//cutsceneline=languagedialogue[1]
//if global.Language!=0 cutsceneline=languagedialogue[1]

break;
}

sprite_index=spr_allblackscreen image_xscale=2000 x=oControl.SceneX+320 hspeed=-16 y=0


musicplaystart(msc_action)

with actor1
{x=11215-16 y=171 image_xscale=-1}
with actor2
{x=11215+16 y=171 image_xscale=-1}
with actor3
{x=11215-16 y=171-16 image_xscale=-1}
with actor4
{x=11215+16 y=171-16 image_xscale=-1}

newscript=function()
{
scenetime+=1;

if scenetime=60
{
sprite_index=spr_allblackscreen image_xscale=1 x=oControl.SceneX hspeed=-16 y=0

with oControl {SceneX-=0; __view_set( e__VW.XView, 0, SceneX )}
	
with actor6 {x=9999} with actor7 {x=9999} 

//with flashscreen {image_alpha=1 fadeSpd=-0.05}

with actor5 {image_xscale=1 x=oControl.SceneX+110}

actor1.x=actor8.x-24 actor1.y=actor8.y actor1.image_xscale=-1
actor2.x=actor8.x+24 actor2.y=actor8.y actor1.image_xscale=-1
actor3.x=actor8.x-24 actor3.y=actor8.y-8 actor1.image_xscale=-1
actor4.x=actor8.x+24 actor4.y=actor8.y-8 actor1.image_xscale=-1

sprite_index=mask_none
with oControl {cutscenename="PRINCE" cutsceneline= "Water will rocket out of this spout! Ride it and you should be able to catch those miscreants!"
	if global.Language!=0 cutsceneline=languagedialogue[1]
	}
}

if scenetime=clamp(scenetime,620,660) {with oControl {SceneX-=0.5; __view_set( e__VW.XView, 0, SceneX )}}

if scenetime=620
{actor6.y=actor5.y
with actor6 {x=oControl.camX-128 image_xscale=1 sprite_index=spr_davey_move image_speed=0.25 hspeed=3.5}	

with actor5 {image_xscale=-1 image_speed=0 image_index=24 sprite_index=spr_prince_hit}

with oControl {cutscenename="DAVEY" cutsceneline= "Your highness! WE GOT A PROBLEM!"
	if global.Language!=0 cutsceneline=languagedialogue[2]
}
}

if scenetime=660
{
with actor6 {hspeed=0 image_speed=0 image_speed=0 image_index=24 sprite_index=spr_davey_stand}

}

if scenetime=860
{audio_stop_all();
with oControl {cutscenename="DAVEY" cutsceneline= "The trajectory of the spout is way off!"
	if global.Language!=0 cutsceneline=languagedialogue[3]

	}
}

if scenetime=1060
{
with oControl {cutscenename="DIVAS" cutsceneline= "WHAT?!"
	if global.Language!=0 cutsceneline=languagedialogue[4]
}
with actor1 {image_speed=0 image_index=0 sprite_index=spr_viva_wildtake}
with actor2 {image_speed=0 image_index=0 sprite_index=spr_hina_wildtake}
with actor3 {image_speed=0 image_index=0 sprite_index=spr_bahati_wildtake}
with actor4 {image_speed=0 image_index=0 sprite_index=spr_sofia_wildtake}

with actor5 image_xscale=1
}

if scenetime=1200
{PlaySound(snd_tremor2)
with oControl {quakeFXTime=160 cutscenename="VIVA" cutsceneline="PRINCE YOU STUPID FU-"
	if global.Language!=0 cutsceneline=languagedialogue[5]
	}
scenetime=1400
}

if scenetime=1480
{with actor8 {sprite_index=spr_mermaidcutscene_pool2 image_speed=0.5 flashFX(x,y+4,0,spr_watersplash,0,0.25,10,1,1,c_white,1)}
with oControl {//Divas move
cutscenename="" cutsceneline="" PlaySound(snd_explosion)}

with actor1 {sprite_index=spr_viva_bdance shadow=-1; newscript=function(){z-=16}}
with actor2 {sprite_index=spr_hina_bdance shadow=-1; newscript=function(){z-=16}}
with actor3 {sprite_index=spr_bahati_bdance shadow=-1; newscript=function(){z-=16}}
with actor4 {sprite_index=spr_sofia_bdance shadow=-1; newscript=function(){z-=16}}

with actor5 {sprite_index=spr_prince_cutscene image_index=0}
with actor6 {sprite_index=spr_davey_stand image_index=1}

}

if scenetime=1700
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="..."
if global.Language!=0 cutsceneline=languagedialogue[6]
}
}

if scenetime=1800
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="I'm pretty sure they'll be fine."
if global.Language!=0 cutsceneline=languagedialogue[7]
}

//with actor5 {sprite_index=spr_prince_hit image_index=24}
with actor6 {sprite_index=spr_davey_stand image_index=0}

}

if scenetime=1960
{
with oControl {//SMASH!
cutscenename="PRINCE" cutsceneline="Hoo boy..."
if global.Language!=0 cutsceneline=languagedialogue[8]
}

with actor5 {sprite_index=spr_prince_cutscene image_index=1}

}

if scenetime=2120
{
oControl.stageEndFX=1
}
}
}
}


arcade_saving(CutsceneStage)